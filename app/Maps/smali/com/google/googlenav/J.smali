.class public Lcom/google/googlenav/J;
.super Lak/m;


# instance fields
.field private final a:Lcom/google/googlenav/bI;

.field private final b:Law/e;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bI;)V
    .locals 2

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/J;->a:Lcom/google/googlenav/bI;

    new-instance v0, Law/e;

    sget-object v1, Ls/j;->d:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iput-object v0, p0, Lcom/google/googlenav/J;->b:Law/e;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x49

    return v0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/J;->b:Law/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Law/e;->h(II)V

    return-void
.end method

.method public a(II)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/j;->b:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v0, v2, p1}, Law/e;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Law/e;->h(II)V

    iget-object v1, p0, Lcom/google/googlenav/J;->b:Law/e;

    invoke-virtual {v1, v2, v0}, Law/e;->a(ILaw/e;)V

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/J;->b:Law/e;

    invoke-virtual {v0}, Law/e;->d()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, Lcom/google/googlenav/J;->b:Law/e;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->b(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/J;->a:Lcom/google/googlenav/bI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/J;->a:Lcom/google/googlenav/bI;

    invoke-interface {v0, p1}, Lcom/google/googlenav/bI;->a(Ljava/io/DataInput;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public e_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()V
    .locals 1

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public n_()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/J;->a:Lcom/google/googlenav/bI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/J;->a:Lcom/google/googlenav/bI;

    invoke-interface {v0}, Lcom/google/googlenav/bI;->a()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ClientFeatureRestrictionsRequest"

    return-object v0
.end method
