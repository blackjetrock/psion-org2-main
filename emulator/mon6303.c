/**
 * emulates the HD6303 microprocessor.
 * From Jape emulator, this is used to monitor the other emulator
 * and halt if a difference is found
 */
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>


#define true 1
#define false 0
#define uint16_t int
#define uint8_t int

int ticks =  0;

void monprintf(char *fmt, ...);

typedef struct _PROC6303_STATE
{
  u_int16_t  PC;
  u_int16_t  X;
  u_int16_t  SP;
  u_int8_t   A;
  u_int8_t   B;
  u_int8_t   FLAGS;
  int        memory;        // Memory reference is being used
  u_int16_t  memory_addr;   // Address of memory being referenced
} PROC6303_STATE;

PROC6303_STATE pstate;

int _bus;
int _sleep=true;
int _trcon = 0;
int _trctrig = 0xcfa8;
int _trcn = 950;
int F_C  = 0x01;
int F_V  = 0x02;
int F_Z  = 0x04;
int F_N  = 0x08;
int F_I  = 0x10;
int F_H  = 0x20;

/** Main registers */
int _A = 0;
int _B = 0;
int _X = 0;
int fH = false, fI = false, fN = false;
int fZ = false, fC = false, fV = false;

/** Stack Pointer and Program Counter */
int _SP = 0, _PC = 0;

/** 8 bit register access */
int A()
{
  return _A;
}
int setA( int bite ) {
  _A = bite&0xff;
}
int B()
{
  return _B;
}
int setB( int bite )
{
  _B = bite&0xff;
}

/** 16 bit register access */
int D()
{
  return (_A<<8) + _B;
}
int setD( int word )
{
  setA(word>>8);
  setB(word);
}

int X() { return _X; }
int setX( int word ) { _X = word&0xffff; }

int PC() { return _PC; }
int setPC( int word ) { _PC = word&0xffff; }

int SP() { return _SP; }
int setSP( int word ) { _SP = word&0xffff; }

/** Flag access */
int setH( int f ) { fH = f; }
int setI( int f ) { fI = f; }
int setN( int f ) { fN = f; }
int setZ( int f ) { fZ = f; }
int setV( int f ) { fV = f; }
int setC( int f ) { fC = f; }
int Hset() { return fH; }
int Iset() { return fI; }
int Nset() { return fN; }
int Zset() { return fZ; }
int Vset() { return fV; }
int Cset() { return fC; }

int P() {
  return (
	  (Hset() ? F_H : 0) |
	  (Iset() ? F_I : 0) |
	  (Nset() ? F_N : 0) |
	  (Zset() ? F_Z : 0) |
	  (Cset() ? F_C : 0) |
	  (Vset() ? F_V : 0) |
	  0x40 );
}
int setP( int bite ) {

  setH( (bite & F_H) != 0 );
  setI( (bite & F_I) != 0 );
  setN( (bite & F_N) != 0 );
  setZ( (bite & F_Z) != 0 );
  setC( (bite & F_C) != 0 );
  setV( (bite & F_V) != 0 );

  monprintf("\nSetP %02X => %02x fh=%d", bite, P(), fH);
}

u_int8_t RD_ADDR(u_int16_t addr);

/** Byte access */
int peekb( int addr )
{
  int b = RD_ADDR(addr);
  monprintf("\nMON: Read %02X from %04X", b, addr);
  return(b);
}
extern int write_occurred;
extern int write_address;
extern int write_data;

int pokeb( int addr, int newByte ) {
  write_occurred = 1;
  write_address = addr;
  write_data = newByte;
}

/** Word access */
int pokew( int addr, int word ) {
  pokeb( addr, word >> 8 );
  pokeb( addr+1, word );
}
u_int16_t RDW_ADDR(u_int16_t addr);

int peekw( int addr ) {
  int t = peekb( addr )<<8;
  t += peekb( addr+1 );
  return t;
}

/** Stack access */
int pushw( int word ) {
  setSP( SP()-2 );
}
int popw() {
  int t  = peekw( SP() );
  setSP( SP()+2 );
  return t;
}
int pushb( int b ) {
  setSP( SP()-1 );
  pokeb( SP(), b );
}
int popb() {
  int t  = peekb( SP() );
  setSP( SP()+1 );
  return t;
}

/** Program access */
int nxtpcb() {
  int t = peekb( PC() );
  setPC( PC()+1 );
  return t;
}
int nxtpcw() {
  int t = peekw( PC() );
  setPC( PC()+2 );
  return t;
}

/** Reset all registers to power on state */
int resetForBoot() {
  setPC(peekw(0xfffe));
  setSP(0);
  setD(0);
  setX(0);
  setP(255);
}

/* Initialise the monitor emulator
 * We set the state up from the othe remulator for each instruction, then execute the
 * instruction with this emulator, then chek the result.
 */
void end_curses(void);
void mstate(void)
{
  end_curses();
  
  monprintf("\nMon:");
  monprintf("\n       X:%04X", X());
  monprintf("\n       A:%02X", A());
  monprintf("\n       B:%02X", B());
  monprintf("\n      PC:%04X", PC());
  monprintf("\n      SP:%04X", SP());
  monprintf("\n   FLAGS:%02X", P());

  monprintf("\nEm:");
  monprintf("\n       X:%04X", pstate.X);
  monprintf("\n       A:%02X", pstate.A);
  monprintf("\n       B:%02X", pstate.B);
  monprintf("\n      PC:%04X", pstate.PC);
  monprintf("\n      SP:%04X", pstate.SP);
  monprintf("\n   FLAGS:%02X", pstate.FLAGS);
  monprintf("\n");

}

void hd6303_check(void)
{
  if( X() != pstate.X )
    {
      printf("X does not match");
      mstate();
      exit(-1);
    }

  if( A() != pstate.A )
    {
      printf("A does not match");
      mstate();
      exit(-1);
    }

  if( B() != pstate.B )
    {
      printf("B does not match");
      mstate();
      exit(-1);
    }

  // Ignore top two bits
  
  if( (P() & 0x3f) != (pstate.FLAGS & 0x3f) )
    {
      printf("FLAGS do not match");
      mstate();
      exit(-1);
    }

}

/** set NZV flags for LD command */
int ld8( int a )
{
  setN( (a & 0x80 ) != 0 );
  setZ(  a == 0 );
  setV( false );
  return a;
}
int ld16( int a )
{
  setN( (a & 0x8000 ) != 0 );
  setZ(  a == 0 );
  setV( false );
  return a;
}
/** Decimal Adjust Accumulator */
int daa()
{
  int ans = A();
  if( Hset() ) ans+=0x06;
  if ( ((ans & 0x0f) > 0x09)) ans += 0x06;
  if( Cset() ) ans+=0x60;
  if ( ans > 0x9f ) ans += 0x60;
  if ( ans > 0x99 ) setC(true);

  setN( (ans & 0x80 ) != 0 );
  setZ( (ans & 0xff ) == 0 );
  // if a,b same sign, and answer is different sign then overflow
  setV( ((A() ^ ans) & 0x80) != 0 );
  setA(ans&0xff);
}


/** Negate - alters NZCV */
int neg8( int ans )
{
  int ans2 = (-ans)&0xff;
  setN( (ans2 & 0x80)!=0 );
  setZ( ans2 == 0 );
  setC( ans2 != 0 );
  setV( ans2 == 0x80 );
  return ans2;
}
/** Complement - alters NZCV */
int com8( int ans )
{
  int ans2 = ans^0xff;
  setN( (ans2 & 0x80)!=0 );
  setZ( ans2 == 0 );
  setV( false );
  setC( true );
  return ans2;
}
/** Logical Shift Right - alters NZCV */
int lsr( int ans )
{
  int c = (ans&1)!=0;
  setC( c );
  setV( c );
  int ans2 = ans>>1;
  setN( false );
  setZ( ans2==0 );
  return ans2;
}
/** Rotate Right - alters NZCV */
int ror8( int ans )
{
  int c = (ans&1)!=0;
  int n = Cset();
  int ans2 = ans>>1;
  if(n){
    ans2|=0x80;
  }
  setC( c );
  setN( n );
  setZ( ans2==0 );
  setV( n!=c );
  return ans2;
}
/** Arithmetical Shift Right - alters NZCV */
int asr8( int ans )
{
  int c=(ans&1)!=0;
  int msb=ans&0x80;
  int n= msb!=0;
  setC( c );
  int ans2=(ans>>1)+msb;
  setN( n );
  setZ( ans2==0 );
  setV( n!=c );
  return ans2;
}
/** Arithmetical Shift Left - alters NZCV */
int asl8( int ans )
{
  int c = (ans & 0x80) != 0;
  int ans2 = (ans << 1) & 0xff;
  int n = (ans2 & 0x80) != 0;
  setN( n );
  setZ( ans2 == 0 );
  setC( c );
  setV( n != c );
  return ans2;
}
/** Rotate Left - alters NZCV */
int rol8( int ans )
{
  int c = (ans&0x80)!=0;
  int ans2=(ans<<1)&0xff;
  int n = (ans2&0x80)!=0;
  if(Cset()) ans2++;
  setC( c );
  setN( n );
  setZ( ans2==0 );
  setV( n!=c );
  return ans2;
}
/** Decrease - alters NZV */
int dec8( int ans )
{
  setV( ans==0x80 );
  int ans2=(ans-1)&0xff;
  setN( (ans2&0x80)!=0 );
  setZ( ans2==0 );
  return ans2;
}
/** Increase - alters NZV */
int inc8( int ans )
{
  int ans2=(ans+1)&0xff;
  setV( ans2==0x80 );
  setN( (ans2&0x80)!=0 );
  setZ( ans2==0 );
  return ans2;
}
/** Test - alters NZVC */
int tst8( int ans )
{
  monprintf("\nTST:%02X", ans);
  setV( false );
  setC( false );
  setN( (ans&0x80)!=0 );
  setZ( ans==0 );
}
/** Clear - alters NZVC */
int clr8()
{
  setV( false );
  setC( false );
  setN( false );
  setZ( true );
  return(0);
}

/** And - alters NZV */
int and8( int a, int b )
{
  int ans=a&b;
  setV( false );
  setN( (ans&0x80)!=0 );
  setZ( ans==0 );
  return(ans);
}
/** or - alters NZV */
int or8( int a, int b )
{
  int ans=a|b;
  setV( false );
  setN( (ans&0x80)!=0 );
  setZ( ans==0 );
  return(ans);
}
/** eor - alters NZV */
int eor8( int a, int b )
{
  int ans=a^b;
  setV( false );
  setN( (ans&0x80)!=0 );
  setZ( ans==0 );
  return(ans);
}

/** Add - alters HNZCV */
int add8( int a, int b )
{
  int ans = a + b;
  setH( ((a & 0x0f) + (b & 0x0f)) >= 0x10 );
  setN( (ans & 0x80 ) != 0 );
  setZ( (ans & 0xff ) == 0 );
  setC( (ans & 0x100) != 0 );
  // if a,b same sign, and answer is different sign then overflow
  setV( ((a ^ ~b) & (a ^ ans) & 0x80) != 0 );
  return( ans & 0xff );
}

/** Add with carry - alters HNZCV */
int adc8( int a, int b )
{
  int c = Cset()?1:0;
  int ans = a + b + c;
  setH( ((a & 0x0f) + (b & 0x0f) + c) >= 0x10 );
  setN( (ans & 0x80 ) != 0 );
  setZ( (ans & 0xff ) == 0 );
  setC( (ans & 0x100) != 0 );
  // if a,b same sign, and answer is different sign then overflow
  setV( ((a ^ ~b) & (a ^ ans) & 0x80) != 0 );
  return ans & 0xff;
}
/** Subtract - alters NZCV */
int sub8( int a, int b )
{
  int ans = a - b;
  setN( (ans & 0x80 ) != 0 );
  setZ( (ans & 0xff ) == 0 );
  setC( (ans & 0x100) != 0 );
  // if a,b different sign, and answer is different sign then overflow
  setV( ((a ^ b) & (a ^ ans) & 0x80) != 0 );
  return( ans & 0xff );
}
/** Subtract with carry - alters NZCV */
int sbc8( int a, int b )
{
  int b2 = b;
  if( Cset() ) b2++;
  int ans = a - b2;
  setN( (ans & 0x80 ) != 0 );
  setZ( (ans & 0xff ) == 0 );
  setC( (ans & 0x100) != 0 );
  // if a,b different sign, and answer is different sign then overflow
  setV( ((a ^ b2) & (a ^ ans) & 0x80) != 0 );
  return ans & 0xff;
}
/** Subtract - alters NZCV */
int sub16( int a, int b )
{
  int ans = a - b;
  setN( (ans & 0x8000 ) != 0 );
  setZ( (ans & 0xffff ) == 0 );
  setC( (ans & 0x10000) != 0 );
  // if a,b different sign, and answer is different sign then overflow
  setV( ((a ^ b) & (a ^ ans) & 0x8000) != 0 );
  return ans & 0xffff;
}
/** Add - alters NZCV */
int add16( int a, int b )
{
  int ans = a + b;
  setN( (ans & 0x8000 ) != 0 );
  setZ( (ans & 0xffff ) == 0 );
  setC( (ans & 0x10000) != 0 );
  // if a,b same sign, and answer is different sign then overflow
  setV( ((a ^ ~b) & (a ^ ans) & 0x8000) != 0 );
  return ans & 0xffff;
}
/** Shift Left Arithmetically - alters NZCV */
int asl16( int ans )
{
  int c = (ans & 0x8000) != 0;
  int ans2 = (ans << 1) & 0xffff;
  int n = (ans2 & 0x8000) != 0;
  setN( n );
  setZ( ans2 == 0 );
  setC( c );
  setV( n != c );
  return ans2;
}

void hd6303(int inst)
{

  /* Copy processor state into monitor state */

  setA(pstate.A);
  setB(pstate.B);
  setX(pstate.X);
  setP(pstate.FLAGS);
  setSP(pstate.SP);
  setPC(pstate.PC+1);

  switch ( inst ) {
  case 0:  /* TRAP */
    {
      break;
    }
  case 1:  /* NOP */
    { break; }
  case 4:  /* LSRD */
    { setD(lsr(D())); break; }
  case 5:  /* ASLD */
    { setD(asl16(D())); break; }
  case 6:  /* TAP */
    { setP(A()); break; }
  case 7:  /* TPA */
    { setA(P()); break; }
  case 8:  /* INX */
    { setX(X()+1); setZ(X()==0); break; }
  case 9:  /* DEX */
    { setX(X()-1); setZ(X()==0); break; }
  case 10: /* CLV */
    { setV(false); break; }
  case 11: /* SEV */
    { setV(true); break; }
  case 12: /* CLC */
    { setC(false); break; }
  case 13: /* SEC */
    { setC(true); break; }
  case 14: /* CLI */
    { setI(false); break; }
  case 15: /* SEI */
    { setI(true); break; }

  case 16: /* SBA */
    { setA(sub8(A(),B())); break; }
  case 17: /* CBA */
    { sub8(A(),B()); break; }

  case 22: /* TAB */
    { setB(ld8(A())); break; }
  case 23: /* TBA */
    { setA(ld8(B())); break; }
  case 24: /* XGDX */
    { int x=X();setX(D());setD(x);ticks++; break; }
  case 25: /* DAA */
    { daa();ticks++; break; }
  case 26: /* SLP */
    { ticks+=3; _sleep=true; break; }
  case 27: /* ABA */
    { setA(add8(A(),B())); break; }


  case 32: /* BRA dis */
    {
      int d = nxtpcb();
      if(d>=0x80) d-=0x100;
      setPC( PC()+d );
      ticks += 2;
      break;
    }
  case 33: /* BRN dis */
    {
      nxtpcb();
      ticks += 2;
      break;
    }
  case 34: /* BHI dis */
    {
      int d = nxtpcb();
      if( !Cset() && !Zset() ){
	if(d>=0x80) d-=0x100;
	setPC( PC()+d );
      }
      ticks += 2;
      break;
    }
  case 35: /* BLS dis */
    {
      int d = nxtpcb();
      if( Cset() || Zset() ){
	if(d>=0x80) d-=0x100;
	setPC( PC()+d );
      }
      ticks += 2;
      break;
    }
  case 36: /* BCC dis */
    {
      int d = nxtpcb();
      if( !Cset() ){
	if(d>=0x80) d-=0x100;
	setPC( PC()+d );
      }
      ticks += 2;
      break;
    }
  case 37: /* BCS dis */
    {
      int d = nxtpcb();
      if( Cset() ){
	if(d>=0x80) d-=0x100;
	setPC( PC()+d );
      }
      ticks += 2;
      break;
    }
  case 38: /* BNE dis */
    {
      int d = nxtpcb();
      if( !Zset() ){
	if(d>=0x80) d-=0x100;
	setPC( PC()+d );
      }
      ticks += 2;
      break;
    }
  case 39: /* BEQ dis */
    {
      int d = nxtpcb();
      if( Zset() ){
	if(d>=0x80) d-=0x100;
	setPC( PC()+d );
      }
      ticks += 2;
      break;
    }
  case 40: /* BVC dis */
    {
      int d = nxtpcb();
      if( !Vset() ){
	if(d>=0x80) d-=0x100;
	setPC( PC()+d );
      }
      ticks += 2;
      break;
    }
  case 41: /* BVS dis */
    {
      int d = nxtpcb();
      if( Vset() ){
	if(d>=0x80) d-=0x100;
	setPC( PC()+d);
      }
      ticks += 2;
      break;
    }
  case 42: /* BPL dis */
    {
      int d = nxtpcb();
      if( !Nset() ){
	if(d>=0x80) d-=0x100;
	setPC( PC()+d);
      }
      ticks += 2;
      break;
    }
  case 43: /* BMI dis */
    {
      int d = nxtpcb();
      if( Nset() ){
	if(d>=0x80) d-=0x100;
	setPC( PC()+d );
      }
      ticks += 2;
      break;
    }
  case 44: /* BGE dis */
    {
      int d = nxtpcb();
      if( Nset()==Vset() ){
	if(d>=0x80) d-=0x100;
	setPC( PC()+d);
      }
      ticks += 2;
      break;
    }
  case 45: /* BLT dis */
    {
      int d = nxtpcb();
      if( Nset()!=Vset() ){
	if(d>=0x80) d-=0x100;
	setPC( PC()+d );
      }
      ticks += 2;
      break;
    }
  case 46: /* BGT dis */
    {
      int d = nxtpcb();
      if( Nset()==Vset() && !Zset() ){
	if(d>=0x80) d-=0x100;
	setPC( PC()+d );
      }
      ticks += 2;
      break;
    }
  case 47: /* BLE dis */
    {
      int d = nxtpcb();
      if( Nset()!=Vset() || Zset() ){
	if(d>=0x80) d-=0x100;
	setPC(PC()+d);
      }
      ticks += 2;
      break;
    }

  case 48: /* TSX */
    { setX(SP()); break; }
  case 49: /* INS */
    { setSP(SP()+1); break; }
  case 50: /* PULA */
    { setA( popb() ); ticks+=2; break; }
  case 51: /* PULB */
    { setB( popb() ); ticks+=2; break; }
  case 52: /* DES */
    { setSP(SP()-1); break; }
  case 53: /* TXS */
    { setSP(X()); break; }
  case 54: /* PSHA */
    { pushb(A()); ticks+=3; break; }
  case 55: /* PSHB */
    { pushb(B()); ticks+=3; break; }
  case 56: /* PULX */
    { setX( popw() ); ticks+=3; break; }
  case 57: /* RTS */
    {
      setPC( popw() );ticks+=4; break;
    }
  case 58: /* ABX */
    { setX(X()+B()); break; }
  case 59: /* RTI */
    {
      setP( popb() );
      setB( popb() );
      setA( popb() );
      setX( popw() );
      setPC( popw() );
      ticks+=9;
      break;
    }
  case 60: /* PSHX */
    { pushw(X()); ticks+=4; break; }
  case 61: /* MUL */
    { setD(A()*B()); setC((B()&0x80)!=0); ticks+=6; break; }
  case 62: /* WAI */
    { ticks+=8; break; }
  case 63: /* SWI */
    {
      setI(1);
      break;
    }

  case 64: /* NEGA */
    { setA(neg8(A())); break; }
  case 67: /* COMA */
    { setA(com8(A())); break; }
  case 68: /* LSRA */
    { setA(lsr(A())); break; }
  case 70: /* RORA */
    { setA(ror8(A())); break; }
  case 71: /* ASRA */
    { setA(asr8(A())); break; }
  case 72: /* ASLA */
    { setA(asl8(A())); break; }
  case 73: /* ROLA */
    { setA(rol8(A())); break; }
  case 74: /* DECA */
    { setA(dec8(A())); break; }
  case 76: /* INCA */
    { setA(inc8(A())); break; }
  case 77: /* TSTA */
    { tst8(A()); break; }
  case 79: /* CLRA */
    { setA(clr8()); break; }

  case 80: /* NEGB */
    { setB(neg8(B())); break; }
  case 83: /* COMB */
    { setB(com8(B())); break; }
  case 84: /* LSRB */
    { setB(lsr(B())); break; }
  case 86: /* RORB */
    { setB(ror8(B())); break; }
  case 87: /* ASRB */
    { setB(asr8(B())); break; }
  case 88: /* ASLB */
    { setB(asl8(B())); break; }
  case 89: /* ROLB */
    { setB(rol8(B())); break; }
  case 90: /* DECB */
    { setB(dec8(B())); break; }
  case 92: /* INCB */
    { setB(inc8(B())); break; }
  case 93: /* TSTB */
    { tst8(B()); break; }
  case 95: /* CLRB */
    { setB(clr8()); break; }

  case 96: /* NEG d,X */
    { int m=X()+nxtpcb(); pokeb(m,neg8(peekb(m))); ticks+=5; break; }
  case 97: /* AIM #,d,X */
    { int b=nxtpcb(); int m=X()+nxtpcb(); pokeb(m,and8(b,peekb(m))); ticks+=6; break; }
  case 98: /* OIM #,d,X */
    { int b=nxtpcb(); int m=X()+nxtpcb(); pokeb(m,or8(b,peekb(m))); ticks+=6; break; }
  case 99: /* COM d,X */
    { int m=X()+nxtpcb(); pokeb(m,com8(peekb(m))); ticks+=5; break; }
  case 100:   /* LSR d,X */
    { int m=X()+nxtpcb(); pokeb(m,lsr(peekb(m))); ticks+=5; break; }
  case 101:   /* EIM #,d,X */
    { int b=nxtpcb(); int m=X()+nxtpcb(); pokeb(m,eor8(b,peekb(m))); ticks+=6; break; }
  case 102:   /* ROR d,X */
    { int m=X()+nxtpcb(); pokeb(m,ror8(peekb(m))); ticks+=5; break; }
  case 103:   /* ASR d,X */
    { int m=X()+nxtpcb(); pokeb(m,asr8(peekb(m))); ticks+=5; break; }
  case 104:   /* ASL d,X */
    { int m=X()+nxtpcb(); pokeb(m,asl8(peekb(m))); ticks+=5; break; }
  case 105:   /* ROL d,X */
    { int m=X()+nxtpcb(); pokeb(m,rol8(peekb(m))); ticks+=5; break; }
  case 106:   /* DEC d,X */
    { int m=X()+nxtpcb(); pokeb(m,dec8(peekb(m))); ticks+=5; break; }
  case 107:   /* TIM #,d,X */
    { int b=nxtpcb(); int m=X()+nxtpcb(); and8(b,peekb(m)); ticks+=4; break; }
  case 108:   /* INC d,X */
    { int m=X()+nxtpcb(); pokeb(m,inc8(peekb(m))); ticks+=5; break; }
  case 109:   /* TST d,X */
    { int m=X()+nxtpcb(); tst8(peekb(m)); ticks+=3; break; }
  case 110:   /* JMP d,X */
    { int m=X()+nxtpcb(); setPC(m); ticks+=2; break; }
  case 111:   /* CLR d,X */
    { int m=X()+nxtpcb(); pokeb(m,clr8()); ticks+=4; break; }


  case 112:   /* NEG mm */
    { int m=nxtpcw(); pokeb(m,neg8(peekb(m))); ticks+=5; break; }
  case 113:   /* AIM #,0m */
    { int b=nxtpcb(); int m=nxtpcb(); pokeb(m,and8(b,peekb(m))); ticks+=5; break; }
  case 114:   /* OIM #,0m */
    { int b=nxtpcb(); int m=nxtpcb(); pokeb(m,or8(b,peekb(m))); ticks+=5; break; }
  case 115:   /* COM mm */
    { int m=nxtpcw(); pokeb(m,com8(peekb(m))); ticks+=5; break; }
  case 116:   /* LSR mm */
    { int m=nxtpcw(); pokeb(m,lsr(peekb(m))); ticks+=5; break; }
  case 117:   /* EIM #,0m */
    { int b=nxtpcb(); int m=nxtpcb(); pokeb(m,eor8(b,peekb(m))); ticks+=5; break; }
  case 118:   /* ROR mm */
    { int m=nxtpcw(); pokeb(m,ror8(peekb(m))); ticks+=5; break; }
  case 119:   /* ASR mm */
    { int m=nxtpcw(); pokeb(m,asr8(peekb(m))); ticks+=5; break; }
  case 120:   /* ASL mm */
    { int m=nxtpcw(); pokeb(m,asl8(peekb(m))); ticks+=5; break; }
  case 121:   /* ROL mm */
    { int m=nxtpcw(); pokeb(m,rol8(peekb(m))); ticks+=5; break; }
  case 122:   /* DEC mm */
    { int m=nxtpcw(); pokeb(m,dec8(peekb(m))); ticks+=5; break; }
  case 123:   /* TIM #,0m */
    { int b=nxtpcb(); int m=nxtpcb(); and8(b,peekb(m)); ticks+=3; break; }
  case 124:   /* INC mm */
    { int m=nxtpcw(); pokeb(m,inc8(peekb(m))); ticks+=5; break; }
  case 125:   /* TST mm */
    { int m=nxtpcw(); tst8(peekb(m)); ticks+=3; break; }
  case 126:   /* JMP mm */
    { int m=nxtpcw(); setPC(m); ticks+=2; break; }
  case 127:   /* CLR mm */
    { int m=nxtpcw(); pokeb(m,clr8()); ticks+=4; break; }

  case 128:   /* SUBA # */
    { int m=nxtpcb(); setA(sub8(A(),m)); ticks++; break; }
  case 129:   /* CMPA # */
    { int m=nxtpcb(); sub8(A(),m); ticks++; break; }
  case 130:   /* SBCA # */
    { int m=nxtpcb(); setA(sbc8(A(),m)); ticks++; break; }
  case 131:   /* SUBD ## */
    { int m=nxtpcw(); setD(sub16(D(),m)); ticks+=2; break; }
  case 132:   /* ANDA # */
    { int m=nxtpcb(); setA(and8(A(),m)); ticks++; break; }
  case 133:   /* BITA # */
    { int m=nxtpcb(); and8(A(),m); ticks++; break; }
  case 134:   /* LDAA # */
    { int m=nxtpcb(); setA(ld8(m)); ticks++; break; }
  case 136:   /* EORA # */
    { int m=nxtpcb(); setA(eor8(A(),m)); ticks++; break; }
  case 137:   /* ADCA # */
    { int m=nxtpcb(); setA(adc8(A(),m)); ticks++; break; }
  case 138:   /* ORAA # */
    { int m=nxtpcb(); setA(or8(A(),m)); ticks++; break; }
  case 139:   /* ADDA # */
    { int m=nxtpcb();setA(add8(A(),m)); ticks++; break; }
  case 140:   /* CPX ## */
    { int m=nxtpcw(); sub16(X(),m); ticks+=2; break; }
  case 141:   /* BSR d */
    {
      int d = nxtpcb();
      pushw(PC());
      if(d>=0x80) d-=0x100;
      setPC(PC()+d );
      ticks+=4; break;
    }
  case 142:   /* LDS ## */
    { int m=nxtpcw(); setSP(ld16(m)); ticks+=2; break; }

  case 144:   /* SUBA 0m */
    { int m=peekb(nxtpcb()); setA(sub8(A(),m)); ticks+=2; break; }
  case 145:   /* CMPA 0m */
    { int m=peekb(nxtpcb()); sub8(A(),m); ticks+=2; break; }
  case 146:   /* SBCA 0m */
    { int m=peekb(nxtpcb()); setA(sbc8(A(),m)); ticks+=2; break; }
  case 147:   /* SUBD 0m */
    { int m=peekw(nxtpcb()); setD(sub16(D(),m)); ticks+=3; break; }
  case 148:   /* ANDA 0m */
    { int m=peekb(nxtpcb()); setA(and8(A(),m)); ticks+=2; break; }
  case 149:   /* BITA 0m */
    { int m=peekb(nxtpcb()); and8(A(),m); ticks+=2; break; }
  case 150:   /* LDAA 0m */
    { int m=peekb(nxtpcb()); setA(ld8(m)); ticks+=2; break; }
  case 151:   /* STAA 0m */
    { int m=nxtpcb(); pokeb(m,ld8(A())); ticks+=2; break; }
  case 152:   /* EORA 0m */
    { int m=peekb(nxtpcb()); setA(eor8(A(),m)); ticks+=2; break; }
  case 153:   /* ADCA 0m */
    { int m=peekb(nxtpcb()); setA(adc8(A(),m)); ticks+=2; break; }
  case 154:   /* ORAA 0m */
    { int m=peekb(nxtpcb()); setA(or8(A(),m)); ticks+=2; break; }
  case 155:   /* ADDA 0m */
    { int m=peekb(nxtpcb()); setA(add8(A(),m)); ticks+=2; break; }
  case 156:   /* CPX 0m */
    { int m=peekw(nxtpcb()); sub16(X(),m); ticks+=3; break; }
  case 157:   /* JSR 0m */
    { int m=nxtpcb(); pushw(PC()); setPC(m); ticks+=4; break; }
  case 158:   /* LDS 0m */
    { int m=peekw(nxtpcb()); setSP(ld16(m)); ticks+=3; break; }
  case 159:   /* STS 0m */
    { int m=nxtpcb(); pokew(m,ld16(SP())); ticks+=3; break; }

  case 160:   /* SUBA d,X */
    { int m=peekb(X()+nxtpcb()); setA(sub8(A(),m)); ticks+=3; break; }
  case 161:   /* CMPA d,X */
    { int m=peekb(X()+nxtpcb()); sub8(A(),m); ticks+=3; break; }
  case 162:   /* SBCA d,X */
    { int m=peekb(X()+nxtpcb()); setA(sbc8(A(),m)); ticks+=3; break; }
  case 163:   /* SUBD d,X */
    { int m=peekw(X()+nxtpcb()); setD(sub16(D(),m)); ticks+=4; break; }
  case 164:   /* ANDA d,X */
    { int m=peekb(X()+nxtpcb()); setA(and8(A(),m)); ticks+=3; break; }
  case 165:   /* BITA d,X */
    { int m=peekb(X()+nxtpcb()); and8(A(),m); ticks+=3; break; }
  case 166:   /* LDAA d,X */
    { int m=peekb(X()+nxtpcb()); setA(ld8(m)); ticks+=3; break; }
  case 167:   /* STAA d,X */
    { int m=X()+nxtpcb(); pokeb(m,ld8(A())); ticks+=3; break; }
  case 168:   /* EORA d,X */
    { int m=peekb(X()+nxtpcb()); setA(eor8(A(),m)); ticks+=3; break; }
  case 169:   /* ADCA d,X */
    { int m=peekb(X()+nxtpcb()); setA(adc8(A(),m)); ticks+=3; break; }
  case 170:   /* ORAA d,X */
    { int m=peekb(X()+nxtpcb()); setA(or8(A(),m)); ticks+=3; break; }
  case 171:   /* ADDA d,X */
    { int m=peekb(X()+nxtpcb()); setA(add8(A(),m)); ticks+=3; break; }
  case 172:   /* CPX d,X */
    { int m=peekw(X()+nxtpcb()); sub16(X(),m); ticks+=4; break; }
  case 173:   /* JSR d,X */
    { int m=X()+nxtpcb(); pushw(PC()); setPC(m); ticks+=4; break; }
  case 174:   /* LDS d,X */
    { int m=peekw(X()+nxtpcb()); setSP(ld16(m)); ticks+=4; break; }
  case 175:   /* STS d,X */
    { int m=X()+nxtpcb(); pokew(m,ld16(SP())); ticks+=4; break; }

  case 176:   /* SUBA mm */
    { int m=peekb(nxtpcw()); setA(sub8(A(),m)); ticks+=3; break; }
  case 177:   /* CMPA mm */
    { int m=peekb(nxtpcw()); sub8(A(),m); ticks+=3; break; }
  case 178:   /* SBCA mm */
    { int m=peekb(nxtpcw()); setA(sbc8(A(),m)); ticks+=3; break; }
  case 179:   /* SUBD mm */
    { int m=peekw(nxtpcw()); setD(sub16(D(),m)); ticks+=4; break; }
  case 180:   /* ANDA mm */
    { int m=peekb(nxtpcw()); setA(and8(A(),m)); ticks+=3; break; }
  case 181:   /* BITA mm */
    { int m=peekb(nxtpcw()); and8(A(),m); ticks+=3; break; }
  case 182:   /* LDAA mm */
    { int m=peekb(nxtpcw()); setA(ld8(m)); ticks+=3; break; }
  case 183:   /* STAA mm */
    { int m=nxtpcw(); pokeb(m,ld8(A())); ticks+=3; break; }
  case 184:   /* EORA mm */
    { int m=peekb(nxtpcw()); setA(eor8(A(),m)); ticks+=3; break; }
  case 185:   /* ADCA mm */
    { int m=peekb(nxtpcw()); setA(adc8(A(),m)); ticks+=3; break; }
  case 186:   /* ORAA mm */
    { int m=peekb(nxtpcw()); setA(or8(A(),m)); ticks+=3; break; }
  case 187:   /* ADDA mm */
    { int m=peekb(nxtpcw()); setA(add8(A(),m)); ticks+=3; break; }
  case 188:   /* CPX mm */
    { int m=peekw(nxtpcw()); sub16(X(),m); ticks+=4; break; }
  case 189:   /* JSR mm */
    { int m=nxtpcw(); pushw(PC()); setPC(m); ticks+=5; break; }
  case 190:   /* LDS mm */
    { int m=peekw(nxtpcw()); setSP(ld16(m)); ticks+=4; break; }
  case 191:   /* STS mm */
    { int m=nxtpcw(); pokew(m,ld16(SP())); ticks+=4; break; }


  case 192:   /* SUBB # */
    { int m=nxtpcb(); setB(sub8(B(),m)); ticks++; break; }
  case 193:   /* CMPB # */
    { int m=nxtpcb(); sub8(B(),m); ticks++; break; }
  case 194:   /* SBCB # */
    { int m=nxtpcb(); setB(sbc8(B(),m)); ticks++; break; }
  case 195:   /* ADDD ## */
    { int m=nxtpcw(); setD(add16(D(),m)); ticks+=2; break; }
  case 196:   /* ANDB # */
    { int m=nxtpcb(); setB(and8(B(),m)); ticks++; break; }
  case 197:   /* BITB # */
    { int m=nxtpcb(); and8(B(),m); ticks++; break; }
  case 198:   /* LDAB # */
    { int m=nxtpcb(); setB(ld8(m)); ticks++; break; }
  case 200:   /* EORB # */
    { int m=nxtpcb(); setB(eor8(B(),m)); ticks++; break; }
  case 201:   /* ADCB # */
    { int m=nxtpcb(); setB(adc8(B(),m)); ticks++; break; }
  case 202:   /* ORAB # */
    { int m=nxtpcb(); setB(or8(B(),m)); ticks++; break; }
  case 203:   /* ADDB # */
    { int m=nxtpcb(); setB(add8(B(),m)); ticks++; break; }
  case 204:   /* LDD ## */
    { int m=nxtpcw(); setD(ld16(m)); ticks+=2; break; }
  case 206:   /* LDX ## */
    { int m=nxtpcw(); setX(ld16(m)); ticks+=2; break; }

  case 208:   /* SUBB 0m */
    { int m=peekb(nxtpcb()); setB(sub8(B(),m)); ticks+=2; break; }
  case 209:   /* CMPB 0m */
    { int m=peekb(nxtpcb()); sub8(B(),m); ticks+=2; break; }
  case 210:   /* SBCB 0m */
    { int m=peekb(nxtpcb()); setB(sbc8(B(),m)); ticks+=2; break; }
  case 211:   /* ADDD 0m */
    { int m=peekw(nxtpcb()); setD(add16(D(),m)); ticks+=3; break; }
  case 212:   /* ANDB 0m */
    { int m=peekb(nxtpcb()); setB(and8(B(),m)); ticks+=2; break; }
  case 213:   /* BITB 0m */
    { int m=peekb(nxtpcb()); and8(B(),m); ticks+=2; break; }
  case 214:   /* LDAB 0m */
    { int m=peekb(nxtpcb()); setB(ld8(m)); ticks+=2; break; }
  case 215:   /* STAB 0m */
    { int m=nxtpcb(); pokeb(m,ld8(B())); ticks+=2; break; }
  case 216:   /* EORB 0m */
    { int m=peekb(nxtpcb()); setB(eor8(B(),m)); ticks+=2; break; }
  case 217:   /* ADCB 0m */
    { int m=peekb(nxtpcb()); setB(adc8(B(),m)); ticks+=2; break; }
  case 218:   /* ORAB 0m */
    { int m=peekb(nxtpcb()); setB(or8(B(),m)); ticks+=2; break; }
  case 219:   /* ADDB 0m */
    { int m=peekb(nxtpcb()); setB(add8(B(),m)); ticks+=2; break; }
  case 220:   /* LDD 0m */
    { int m=peekw(nxtpcb()); setD(ld16(m)); ticks+=3; break; }
  case 221:   /* STD 0m */
    { int m=nxtpcb(); pokew(m,ld16(D())); ticks+=3; break; }
  case 222:   /* LDX 0m */
    { int m=peekw(nxtpcb()); setX(ld16(m)); ticks+=3; break; }
  case 223:   /* STX 0m */
    { int m=nxtpcb(); pokew(m,ld16(X())); ticks+=3; break; }

  case 224:   /* SUBB d,X */
    { int m=peekb(X()+nxtpcb()); setB(sub8(B(),m)); ticks+=3; break; }
  case 225:   /* CMPB d,X */
    { int m=peekb(X()+nxtpcb()); sub8(B(),m); ticks+=3; break; }
  case 226:   /* SBCB d,X */
    { int m=peekb(X()+nxtpcb()); setB(sbc8(B(),m)); ticks+=3; break; }
  case 227:   /* ADDD d,X */
    { int m=peekw(X()+nxtpcb()); setD(add16(D(),m)); ticks+=4; break; }
  case 228:   /* ANDB d,X */
    { int m=peekb(X()+nxtpcb()); setB(and8(B(),m)); ticks+=3; break; }
  case 229:   /* BITB d,X */
    { int m=peekb(X()+nxtpcb()); and8(B(),m); ticks+=3; break; }
  case 230:   /* LDAB d,X */
    { int m=peekb(X()+nxtpcb()); setB(ld8(m)); ticks+=3; break; }
  case 231:   /* STAB d,X */
    { int m=X()+nxtpcb(); pokeb(m,ld8(B())); ticks+=3; break; }
  case 232:   /* EORB d,X */
    { int m=peekb(X()+nxtpcb()); setB(eor8(B(),m)); ticks+=3; break; }
  case 233:   /* ADCB d,X */
    { int m=peekb(X()+nxtpcb()); setB(adc8(B(),m)); ticks+=3; break; }
  case 234:   /* ORAB d,X */
    { int m=peekb(X()+nxtpcb()); setB(or8(B(),m)); ticks+=3; break; }
  case 235:   /* ADDB d,X */
    { int m=peekb(X()+nxtpcb()); setB(add8(B(),m)); ticks+=3; break; }
  case 236:   /* LDD d,X */
    { int m=peekw(X()+nxtpcb()); setD(ld16(m)); ticks+=4; break; }
  case 237:   /* STD d,X */
    { int m=X()+nxtpcb(); pokew(m,ld16(D())); ticks+=4; break; }
  case 238:   /* LDX d,X */
    { int m=peekw(X()+nxtpcb()); setX(ld16(m)); ticks+=4; break; }
  case 239:   /* STX d,X */
    { int m=X()+nxtpcb(); pokew(m,ld16(X())); ticks+=4; break; }

  case 240:   /* SUBB mm */
    { int m=peekb(nxtpcw()); setB(sub8(B(),m)); ticks+=3; break; }
  case 241:   /* CMPB mm */
    { int m=peekb(nxtpcw()); sub8(B(),m); ticks+=3; break; }
  case 242:   /* SBCB mm */
    { int m=peekb(nxtpcw()); setB(sbc8(B(),m)); ticks+=3; break; }
  case 243:   /* ADDD mm */
    { int m=peekw(nxtpcw()); setD(add16(D(),m)); ticks+=4; break; }
  case 244:   /* ANDB mm */
    { int m=peekb(nxtpcw()); setB(and8(B(),m)); ticks+=3; break; }
  case 245:   /* BITB mm */
    { int m=peekb(nxtpcw()); and8(B(),m); ticks+=3; break; }
  case 246:   /* LDAB mm */
    { int m=peekb(nxtpcw()); setB(ld8(m)); ticks+=3; break; }
  case 247:   /* STAB mm */
    { int m=nxtpcw(); pokeb(m,ld8(B())); ticks+=3; break; }
  case 248:   /* EORB mm */
    { int m=peekb(nxtpcw()); setB(eor8(B(),m)); ticks+=3; break; }
  case 249:   /* ADCB mm */
    { int m=peekb(nxtpcw()); setB(adc8(B(),m)); ticks+=3; break; }
  case 250:   /* ORAB mm */
    { int m=peekb(nxtpcw()); setB(or8(B(),m)); ticks+=3; break; }
  case 251:   /* ADDB mm */
    { int m=peekb(nxtpcw()); setB(add8(B(),m)); ticks+=3; break; }
  case 252:   /* LDD mm */
    { int m=peekw(nxtpcw()); setD(ld16(m)); ticks+=4; break; }
  case 253:   /* STD mm */
    { int m=nxtpcw(); pokew(m,ld16(D())); ticks+=4; break; }
  case 254:   /* LDX mm */
    { int m=peekw(nxtpcw()); setX(ld16(m)); ticks+=4; break; }
  case 255:   /* STX mm */
    { int m=nxtpcw(); pokew(m,ld16(X())); ticks+=4; break; }
  default:
    {
      printf("error!  instr=%02X PC:%04X", inst, PC());
      break;
    }
  }

} // end while



