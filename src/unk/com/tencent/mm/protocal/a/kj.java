package unk.com.tencent.mm.protocal.a;

import a.a.a.c;

public final class kj extends com.tencent.mm.ae.a
{
  private int bRV;
  private boolean bRW;

  public final void a(a.a.a.c.a parama)
  {
    parama.aa(1, this.bRV);
  }

  public final int cE()
  {
    return 0 + (0 + a.a.a.a.U(1, this.bRV));
  }

  public final kj mu(int paramInt)
  {
    this.bRV = paramInt;
    this.bRW = true;
    return this;
  }

  public final byte[] toByteArray()
  {
    if (!this.bRW)
      throw new c("Not all required fields were included (false = not included in message),  CommentId:" + this.bRW);
    return super.toByteArray();
  }

  public final String toString()
  {
    String str1 = "" + getClass().getName() + "(";
    String str2 = str1 + "CommentId = " + this.bRV + "   ";
    return str2 + ")";
  }
}

/* Location:           /home/danghvu/0day/WeChat/WeChat_4.5_dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.kj
 * JD-Core Version:    0.6.2
 */