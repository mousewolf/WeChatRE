package unk.com.tencent.mm.protocal.a;

import a.a.a.c;

public final class ao extends com.tencent.mm.ae.a
{
  private int bDc;
  private boolean bDd;
  private x byC;
  private boolean byD;

  public final void a(a.a.a.c.a parama)
  {
    parama.Y(1, this.byC.cE());
    this.byC.a(parama);
    parama.aa(2, this.bDc);
  }

  public final int cE()
  {
    return 0 + a.a.a.a.U(2, this.bDc) + (0 + a.a.a.a.V(1, this.byC.cE()));
  }

  public final ao im(int paramInt)
  {
    this.bDc = paramInt;
    this.bDd = true;
    return this;
  }

  public final ao p(x paramx)
  {
    this.byC = paramx;
    this.byD = true;
    return this;
  }

  public final byte[] toByteArray()
  {
    if ((!this.byD) || (!this.bDd))
      throw new c("Not all required fields were included (false = not included in message),  BaseRequest:" + this.byD + " BindType:" + this.bDd);
    return super.toByteArray();
  }

  public final String toString()
  {
    String str1 = "" + getClass().getName() + "(";
    String str2 = str1 + "BaseRequest = " + this.byC + "   ";
    String str3 = str2 + "BindType = " + this.bDc + "   ";
    return str3 + ")";
  }
}

/* Location:           /home/danghvu/0day/WeChat/WeChat_4.5_dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ao
 * JD-Core Version:    0.6.2
 */