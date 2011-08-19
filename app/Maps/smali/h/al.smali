.class public Lh/al;
.super Lh/eR;

# interfaces
.implements LaM/c;
.implements Lcom/google/googlenav/login/k;


# instance fields
.field private final a:Lcom/google/googlenav/bL;

.field private b:LaM/a;

.field private c:[LaM/b;

.field private d:[LaM/b;

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>(Lh/eY;Lcom/google/googlenav/bL;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lh/eR;-><init>(Lh/eY;)V

    iput-object v0, p0, Lh/al;->c:[LaM/b;

    iput-object v0, p0, Lh/al;->d:[LaM/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lh/al;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/al;->f:Z

    iput-object p2, p0, Lh/al;->a:Lcom/google/googlenav/bL;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lh/al;->g:Lh/eY;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/al;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/al;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->a()V

    :cond_0
    iget-object v0, p0, Lh/al;->a:Lcom/google/googlenav/bL;

    new-instance v1, Lcom/google/googlenav/V;

    invoke-direct {v1}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->a(I)Lcom/google/googlenav/V;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->e(I)Lcom/google/googlenav/V;

    move-result-object v1

    const/16 v2, 0x229

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->c(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->a(Lcom/google/googlenav/bs;)V

    return-void
.end method

.method private a(Ljava/util/Vector;[LaM/b;Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x0

    array-length v0, p2

    if-lez v0, :cond_1

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/av;->Q:Lcom/google/googlenav/ui/av;

    invoke-static {p3, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v0, v6

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    aget-object v2, p2, v0

    invoke-virtual {v2}, LaM/b;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    aget-object v2, p2, v0

    invoke-virtual {v2}, LaM/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, p2, v0

    invoke-virtual {v2}, LaM/b;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    invoke-static {v2, v3}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v3, v6

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    aget-object v4, v2, v3

    sget-object v5, Lcom/google/googlenav/ui/av;->x:Lcom/google/googlenav/ui/av;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j()Lx/B;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Lx/B;

    const/4 v1, 0x2

    const/16 v2, 0x261

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lh/al;->m()Ljava/util/Vector;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    return-object v0
.end method

.method private m()Ljava/util/Vector;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lh/al;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh/al;->c:[LaM/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh/al;->d:[LaM/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh/al;->c:[LaM/b;

    const/16 v2, 0x25e

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3ee

    invoke-direct {p0, v0, v1, v2, v3}, Lh/al;->a(Ljava/util/Vector;[LaM/b;Ljava/lang/String;I)V

    iget-object v1, p0, Lh/al;->d:[LaM/b;

    const/16 v2, 0x25f

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3ef

    invoke-direct {p0, v0, v1, v2, v3}, Lh/al;->a(Ljava/util/Vector;[LaM/b;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0x262

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->x:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lh/al;->j:Lx/J;

    if-nez v0, :cond_0

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    invoke-direct {p0}, Lh/al;->j()Lx/B;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/al;->j:Lx/J;

    iget-object v0, p0, Lh/al;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/al;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->g()Lx/z;

    move-result-object v0

    check-cast v0, Lx/B;

    invoke-direct {p0}, Lh/al;->m()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/B;->a(Ljava/util/Vector;)V

    iget-object v0, p0, Lh/al;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->f()V

    goto :goto_0
.end method


# virtual methods
.method public R_()V
    .locals 0

    return-void
.end method

.method public S_()V
    .locals 0

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/al;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/al;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    :cond_0
    iget v0, p0, Lh/al;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/al;->d()V

    iget v0, p0, Lh/al;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/al;->j:Lx/J;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/al;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    :cond_1
    iget v0, p0, Lh/al;->k:I

    goto :goto_0
.end method

.method protected a()V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lh/al;->k:I

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lh/al;->e:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lh/al;->c:[LaM/b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lh/al;->d:[LaM/b;

    if-eqz v2, :cond_0

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    :cond_0
    new-instance v0, LaM/a;

    invoke-direct {v0}, LaM/a;-><init>()V

    iput-object v0, p0, Lh/al;->b:LaM/a;

    iget-object v0, p0, Lh/al;->b:LaM/a;

    invoke-virtual {v0, p0}, LaM/a;->a(LaM/c;)V

    iget-boolean v0, p0, Lh/al;->f:Z

    if-eqz v0, :cond_2

    new-instance v0, Lh/fc;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lh/fc;-><init>(I)V

    move-object v3, v0

    :goto_0
    iget-object v0, p0, Lh/al;->g:Lh/eY;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/al;->g:Lh/eY;

    const/16 v1, 0x227

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lh/al;->b:LaM/a;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    :cond_1
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    iget-object v1, p0, Lh/al;->b:LaM/a;

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    invoke-virtual {p0}, Lh/al;->v()V

    :goto_1
    return-void

    :cond_2
    new-instance v0, Lh/fc;

    invoke-direct {v0, v6}, Lh/fc;-><init>(I)V

    move-object v3, v0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lh/al;->n()V

    goto :goto_1
.end method

.method public a(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lh/al;->u()V

    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/al;->f:Z

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/al;->f:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a([LaM/b;[LaM/b;)V
    .locals 2

    iget-object v0, p0, Lh/al;->g:Lh/eY;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/al;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lh/al;->b:LaM/a;

    iput-object p1, p0, Lh/al;->c:[LaM/b;

    iput-object p2, p0, Lh/al;->d:[LaM/b;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lh/al;->e:J

    invoke-virtual {p0}, Lh/al;->u()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x3

    packed-switch p1, :pswitch_data_0

    iput v2, p0, Lh/al;->k:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lh/al;->v()V

    iget-object v0, p0, Lh/al;->c:[LaM/b;

    aget-object v0, v0, p2

    invoke-virtual {v0}, LaM/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh/al;->c:[LaM/b;

    aget-object v1, v1, p2

    invoke-virtual {v1}, LaM/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lh/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lh/al;->k:I

    move v0, v3

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lh/al;->v()V

    iget-object v0, p0, Lh/al;->d:[LaM/b;

    aget-object v0, v0, p2

    invoke-virtual {v0}, LaM/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh/al;->d:[LaM/b;

    aget-object v1, v1, p2

    invoke-virtual {v1}, LaM/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lh/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lh/al;->k:I

    move v0, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3ee
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public an_()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lh/al;->c:[LaM/b;

    iput-object v0, p0, Lh/al;->d:[LaM/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lh/al;->e:J

    return-void
.end method

.method public ao_()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lh/al;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/al;->g:Lh/eY;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lh/eY;->a(ILax/c;)V

    :goto_0
    iput-boolean v3, p0, Lh/al;->f:Z

    iput v3, p0, Lh/al;->k:I

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lh/al;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->c()Lh/fc;

    move-result-object v0

    invoke-virtual {v0}, Lh/fc;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lh/al;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->d()Lh/fc;

    iget-object v0, p0, Lh/al;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->a(I)V

    iput v3, p0, Lh/al;->k:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lh/al;->g:Lh/eY;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/al;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    :cond_0
    iget-object v0, p0, Lh/al;->b:LaM/a;

    invoke-virtual {v0}, LaM/a;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x264

    :goto_0
    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh/al;->b:LaM/a;

    invoke-virtual {v1}, LaM/a;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/googlenav/login/j;->a(I)V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lh/al;->b:LaM/a;

    iget-object v1, p0, Lh/al;->a:Lcom/google/googlenav/bL;

    invoke-interface {v1, v0}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v0, 0x260

    goto :goto_0
.end method
