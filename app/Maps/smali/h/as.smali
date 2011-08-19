.class public Lh/as;
.super Lh/eR;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lak/i;

.field private c:Lh/fc;

.field private d:Z

.field private e:Lx/I;

.field private f:J

.field private l:J


# direct methods
.method public constructor <init>(Lh/eY;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/eR;-><init>(Lh/eY;)V

    return-void
.end method

.method private j()Lx/I;
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lh/as;->a:Ljava/lang/String;

    const-string v1, "\n"

    invoke-static {v0, v1}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    sget-object v2, Lcom/google/googlenav/ui/av;->av:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->ay:Lcom/google/googlenav/ui/av;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v2, v5

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    aget-object v4, v0, v2

    invoke-static {v4, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    new-instance v1, Lx/I;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lh/as;->d:Z

    invoke-direct {v1, v5, v2, v0, v3}, Lx/I;-><init>(ILjava/lang/String;Lcom/google/googlenav/ui/bx;Z)V

    return-object v1
.end method


# virtual methods
.method public T_()V
    .locals 6

    iget-object v0, p0, Lh/as;->a:Ljava/lang/String;

    iget-object v1, p0, Lh/as;->b:Lak/i;

    iget-object v2, p0, Lh/as;->c:Lh/fc;

    iget-wide v3, p0, Lh/as;->f:J

    iget-boolean v5, p0, Lh/as;->d:Z

    invoke-virtual {p0}, Lh/as;->v()V

    iput-object v0, p0, Lh/as;->a:Ljava/lang/String;

    iput-object v1, p0, Lh/as;->b:Lak/i;

    iput-object v2, p0, Lh/as;->c:Lh/fc;

    iput-wide v3, p0, Lh/as;->f:J

    iput-boolean v5, p0, Lh/as;->d:Z

    invoke-virtual {p0}, Lh/as;->u()V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/as;->d()V

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method protected a()V
    .locals 4

    invoke-direct {p0}, Lh/as;->j()Lx/I;

    move-result-object v0

    iput-object v0, p0, Lh/as;->e:Lx/I;

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    iget-object v1, p0, Lh/as;->e:Lx/I;

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/I;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/as;->j:Lx/J;

    iget-object v0, p0, Lh/as;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    iget-wide v0, p0, Lh/as;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lh/as;->l:J

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lh/as;->e:Lx/I;

    invoke-virtual {v0, p1, p2}, Lx/I;->a(II)V

    iget-object v0, p0, Lh/as;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/as;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->f()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V
    .locals 0

    iput-object p1, p0, Lh/as;->a:Ljava/lang/String;

    iput-object p2, p0, Lh/as;->b:Lak/i;

    iput-object p3, p0, Lh/as;->c:Lh/fc;

    iput-wide p4, p0, Lh/as;->f:J

    iput-boolean p6, p0, Lh/as;->d:Z

    invoke-virtual {p0}, Lh/as;->u()V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0}, Lh/eR;->b()V

    iput-object v0, p0, Lh/as;->a:Ljava/lang/String;

    iput-object v0, p0, Lh/as;->b:Lak/i;

    iput-object v0, p0, Lh/as;->c:Lh/fc;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lh/as;->f:J

    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lh/as;->b:Lak/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/as;->b:Lak/i;

    invoke-interface {v0}, Lak/i;->X_()V

    :cond_0
    invoke-virtual {p0}, Lh/as;->w()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lh/as;->c:Lh/fc;

    invoke-virtual {p0}, Lh/as;->v()V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lh/as;->g:Lh/eY;

    invoke-virtual {v1}, Lh/eY;->I()Lh/eo;

    move-result-object v1

    invoke-virtual {v1}, Lh/eo;->k()Lh/dH;

    move-result-object v1

    invoke-virtual {v1}, Lh/dH;->w()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lh/as;->g:Lh/eY;

    invoke-virtual {v1}, Lh/eY;->I()Lh/eo;

    move-result-object v1

    invoke-virtual {v1}, Lh/eo;->k()Lh/dH;

    move-result-object v1

    invoke-virtual {v1}, Lh/dH;->u()V

    :cond_3
    invoke-virtual {v0}, Lh/fc;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lh/as;->g:Lh/eY;

    const-string v1, "15"

    invoke-virtual {v0, v1}, Lh/eY;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lh/as;->g:Lh/eY;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lh/eY;->a(ILax/c;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lh/as;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->a(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xb -> :sswitch_1
        0xf -> :sswitch_2
    .end sparse-switch
.end method

.method public h()V
    .locals 4

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lh/as;->l:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lh/as;->f:J

    sub-long v0, v2, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, LT/a;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v3

    invoke-direct {v2, v3, p0}, LT/a;-><init>(LT/c;Ljava/lang/Runnable;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, LT/a;->a(I)V

    invoke-virtual {v2, v0, v1}, LT/a;->a(J)V

    invoke-virtual {v2}, LT/a;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lh/as;->v()V

    goto :goto_0
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lh/as;->v()V

    return-void
.end method
