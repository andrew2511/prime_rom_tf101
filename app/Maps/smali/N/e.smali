.class public LN/e;
.super LN/j;


# instance fields
.field private c:B

.field private d:I

.field private e:Lcom/google/googlenav/aG;

.field private f:Lcom/google/googlenav/aG;

.field private g:Lcom/google/googlenav/aG;

.field private h:Lcom/google/googlenav/aG;


# direct methods
.method public constructor <init>(Li/x;)V
    .locals 1

    invoke-direct {p0, p1}, LN/j;-><init>(Li/x;)V

    const/16 v0, 0x12

    iput-byte v0, p0, LN/e;->c:B

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN/e;->b(I)V

    return-void
.end method

.method private c()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, LN/e;->b:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->o()Lk/j;

    move-result-object v0

    iget-object v1, p0, LN/e;->a:Li/x;

    invoke-virtual {v1}, Li/x;->aY()Z

    move-result v1

    iget v2, p0, LN/e;->d:I

    const/16 v3, 0x10

    invoke-static {v1, v5, v4, v2, v3}, Lcom/google/googlenav/ui/bl;->a(ZZIII)C

    move-result v2

    invoke-interface {v0, v2}, Lk/j;->e(C)Lk/l;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/aG;->a(Lk/l;)Lcom/google/googlenav/aG;

    move-result-object v2

    iput-object v2, p0, LN/e;->e:Lcom/google/googlenav/aG;

    iget-object v2, p0, LN/e;->e:Lcom/google/googlenav/aG;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->ai()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/aG;->a(Z)V

    iget v2, p0, LN/e;->d:I

    const/16 v3, 0x11

    invoke-static {v1, v5, v4, v2, v3}, Lcom/google/googlenav/ui/bl;->a(ZZIII)C

    move-result v2

    invoke-interface {v0, v2}, Lk/j;->e(C)Lk/l;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/aG;->a(Lk/l;)Lcom/google/googlenav/aG;

    move-result-object v2

    iput-object v2, p0, LN/e;->f:Lcom/google/googlenav/aG;

    iget-object v2, p0, LN/e;->f:Lcom/google/googlenav/aG;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->ai()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/aG;->a(Z)V

    iget v2, p0, LN/e;->d:I

    const/16 v3, 0x12

    invoke-static {v1, v5, v4, v2, v3}, Lcom/google/googlenav/ui/bl;->a(ZZIII)C

    move-result v2

    invoke-interface {v0, v2}, Lk/j;->e(C)Lk/l;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/aG;->a(Lk/l;)Lcom/google/googlenav/aG;

    move-result-object v2

    iput-object v2, p0, LN/e;->g:Lcom/google/googlenav/aG;

    iget-object v2, p0, LN/e;->g:Lcom/google/googlenav/aG;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->ai()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/aG;->a(Z)V

    iget v2, p0, LN/e;->d:I

    const/16 v3, 0x13

    invoke-static {v1, v5, v4, v2, v3}, Lcom/google/googlenav/ui/bl;->a(ZZIII)C

    move-result v1

    invoke-interface {v0, v1}, Lk/j;->e(C)Lk/l;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/aG;->a(Lk/l;)Lcom/google/googlenav/aG;

    move-result-object v0

    iput-object v0, p0, LN/e;->h:Lcom/google/googlenav/aG;

    iget-object v0, p0, LN/e;->h:Lcom/google/googlenav/aG;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->ai()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aG;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(ZBI)C
    .locals 3

    iget-object p0, p0, LN/e;->a:Li/x;

    check-cast p0, Li/aw;

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0}, Li/aw;->aY()Z

    move-result v1

    invoke-virtual {p0}, Li/aw;->bw()I

    move-result v2

    invoke-static {v1, p1, v0, v2, p2}, Lcom/google/googlenav/ui/bl;->a(ZZIII)C

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/z;->f(I)I

    move-result v0

    goto :goto_0
.end method

.method public a(I)Lcom/google/googlenav/aG;
    .locals 1

    iget-object v0, p0, LN/e;->a:Li/x;

    invoke-virtual {v0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/c;->V()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, LN/j;->a(I)Lcom/google/googlenav/aG;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-byte v0, p0, LN/e;->c:B

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN/e;->g:Lcom/google/googlenav/aG;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, LN/e;->e:Lcom/google/googlenav/aG;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, LN/e;->f:Lcom/google/googlenav/aG;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, LN/e;->g:Lcom/google/googlenav/aG;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, LN/e;->h:Lcom/google/googlenav/aG;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a()Z
    .locals 6

    const/16 v5, 0x13

    const/16 v4, 0xf

    const/16 v3, 0xc

    invoke-super {p0}, LN/j;->a()Z

    move-result v0

    iget-byte v1, p0, LN/e;->c:B

    iget-object v2, p0, LN/e;->a:Li/x;

    invoke-virtual {v2}, Li/x;->aX()Lf/l;

    move-result-object v2

    invoke-virtual {v2}, Lf/l;->a()I

    move-result v2

    if-ge v2, v3, :cond_1

    const/16 v2, 0x10

    iput-byte v2, p0, LN/e;->c:B

    :goto_0
    if-nez v0, :cond_0

    iget-byte v0, p0, LN/e;->c:B

    if-eq v1, v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    if-lt v2, v3, :cond_2

    if-ge v2, v4, :cond_2

    const/16 v2, 0x11

    iput-byte v2, p0, LN/e;->c:B

    goto :goto_0

    :cond_2
    if-lt v2, v4, :cond_3

    if-ge v2, v5, :cond_3

    const/16 v2, 0x12

    iput-byte v2, p0, LN/e;->c:B

    goto :goto_0

    :cond_3
    iput-byte v5, p0, LN/e;->c:B

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()B
    .locals 1

    iget-byte v0, p0, LN/e;->c:B

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, LN/e;->d:I

    invoke-direct {p0}, LN/e;->c()V

    return-void
.end method
