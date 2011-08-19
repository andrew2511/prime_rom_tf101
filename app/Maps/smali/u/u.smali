.class public Lu/u;
.super Lu/v;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/bB;)V
    .locals 1

    invoke-direct {p0, p1}, Lu/v;-><init>(Lcom/google/googlenav/ui/bB;)V

    const/4 v0, 0x3

    iput v0, p0, Lu/u;->b:I

    return-void
.end method

.method public constructor <init>(Lu/n;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lu/v;-><init>(Lu/n;Lcom/google/googlenav/ui/bB;)V

    const/4 v0, 0x3

    iput v0, p0, Lu/u;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/io/DataOutput;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lu/u;->f(I)Law/e;

    move-result-object v0

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a_()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Lu/v;
    .locals 2

    new-instance v0, Lu/u;

    invoke-virtual {p0}, Lu/u;->al()Lu/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/u;-><init>(Lu/n;)V

    return-object v0
.end method
