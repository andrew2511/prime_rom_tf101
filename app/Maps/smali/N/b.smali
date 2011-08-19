.class public LN/b;
.super LN/j;


# direct methods
.method public constructor <init>(Li/x;)V
    .locals 0

    invoke-direct {p0, p1}, LN/j;-><init>(Li/x;)V

    return-void
.end method


# virtual methods
.method public a(ZBI)C
    .locals 3

    iget-object p0, p0, LN/b;->a:Li/x;

    check-cast p0, Li/aY;

    invoke-virtual {p0}, Li/aY;->aY()Z

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p0}, Li/aY;->P()I

    move-result v2

    invoke-static {v0, p1, v1, v2, p2}, Lcom/google/googlenav/ui/bl;->a(ZZIII)C

    move-result v0

    return v0
.end method
