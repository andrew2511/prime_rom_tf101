.class public Lh/g;
.super Lh/eR;


# instance fields
.field private a:Lh/bv;

.field private b:Lac/k;

.field private c:I


# direct methods
.method public constructor <init>(Lh/eY;Lac/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/eR;-><init>(Lh/eY;)V

    iput-object p2, p0, Lh/g;->b:Lac/k;

    return-void
.end method

.method private h()I
    .locals 1

    iget v0, p0, Lh/g;->c:I

    if-nez v0, :cond_0

    const/16 v0, 0x17

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public T_()V
    .locals 2

    iget v0, p0, Lh/g;->c:I

    iget-object v1, p0, Lh/g;->a:Lh/bv;

    invoke-virtual {p0}, Lh/g;->v()V

    invoke-virtual {p0, v0, v1}, Lh/g;->a(ILh/bv;)V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/g;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/g;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method public a(Lax/c;)I
    .locals 1

    iget-object v0, p0, Lh/g;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/g;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected a()V
    .locals 4

    invoke-direct {p0}, Lh/g;->h()I

    move-result v0

    const/16 v1, 0x190

    new-instance v2, Lx/L;

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lh/g;->c:I

    invoke-direct {v2, v0, v1, v3}, Lx/L;-><init>(ILjava/lang/String;I)V

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    iget-object v1, p0, Lh/g;->b:Lac/k;

    invoke-virtual {v0, v2, p0, v1}, Lx/k;->a(Lx/L;Lcom/google/googlenav/ui/aY;Lac/k;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/g;->j:Lx/J;

    :goto_0
    iget-object v0, p0, Lh/g;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void

    :cond_0
    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    iget-object v1, p0, Lh/g;->b:Lac/k;

    invoke-virtual {v0, v2, p0, v1}, Lx/k;->b(Lx/L;Lcom/google/googlenav/ui/aY;Lac/k;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/g;->j:Lx/J;

    goto :goto_0
.end method

.method public a(ILh/bv;)V
    .locals 0

    iput-object p2, p0, Lh/g;->a:Lh/bv;

    iput p1, p0, Lh/g;->c:I

    invoke-virtual {p0}, Lh/g;->u()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    iget-object v0, p0, Lh/g;->a:Lh/bv;

    check-cast p3, Lh/fP;

    invoke-interface {v0, p3}, Lh/bv;->a(Lh/fP;)V

    invoke-virtual {p0}, Lh/g;->v()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lh/g;->d()V

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/g;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    check-cast p3, Ljava/lang/String;

    invoke-interface {v0, p3}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lh/g;->d()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected b()V
    .locals 1

    invoke-super {p0}, Lh/eR;->b()V

    iget-object v0, p0, Lh/g;->a:Lh/bv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/g;->a:Lh/bv;

    invoke-interface {v0}, Lh/bv;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lh/g;->a:Lh/bv;

    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lh/g;->v()V

    return-void
.end method
