.class public abstract Li/q;
.super Li/bl;

# interfaces
.implements Lcom/google/googlenav/S;
.implements Lcom/google/googlenav/bd;
.implements Lcom/google/googlenav/y;


# static fields
.field private static a:I

.field protected static final e:[Lax/e;


# instance fields
.field private E:Lo/bd;

.field private O:Lx/T;

.field private P:Lc/o;

.field private Q:Lx/d;

.field private R:Lx/d;

.field private S:Lcom/google/googlenav/c;

.field protected b:Lo/be;

.field protected c:Ljava/lang/String;

.field protected d:Lh/fP;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput v2, Li/q;->a:I

    const/4 v0, 0x1

    new-array v0, v0, [Lax/e;

    sget-object v1, Lcom/google/googlenav/ui/w;->p:Lax/e;

    aput-object v1, v0, v2

    sput-object v0, Li/q;->e:[Lax/e;

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Li/bl;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/j;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Li/bl;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/j;)V

    return-void
.end method

.method private i(I)V
    .locals 4

    const/4 v3, 0x0

    if-gez p1, :cond_0

    move v0, v3

    :goto_0
    iget-object v1, p0, Li/q;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {p0}, Li/q;->bL()Lcom/google/googlenav/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/c;->d()[Lcom/google/googlenav/c;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/google/googlenav/c;->e()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;ZI)V

    return-void

    :cond_0
    move v0, p1

    goto :goto_0
.end method


# virtual methods
.method protected B()Lo/be;
    .locals 4

    iget-object v0, p0, Li/q;->b:Lo/be;

    if-nez v0, :cond_0

    new-instance v0, Lo/be;

    iget-object v1, p0, Li/q;->g:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/q;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v2

    invoke-virtual {p0}, Li/q;->D()Lx/T;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/be;-><init>(Lcom/google/googlenav/ui/aT;Lh/eY;Lx/T;)V

    iput-object v0, p0, Li/q;->b:Lo/be;

    :cond_0
    iget-object v0, p0, Li/q;->b:Lo/be;

    return-object v0
.end method

.method protected C()Lc/o;
    .locals 1

    iget-object v0, p0, Li/q;->P:Lc/o;

    if-nez v0, :cond_0

    new-instance v0, Lc/o;

    invoke-direct {v0}, Lc/o;-><init>()V

    iput-object v0, p0, Li/q;->P:Lc/o;

    :cond_0
    iget-object v0, p0, Li/q;->P:Lc/o;

    return-object v0
.end method

.method protected D()Lx/T;
    .locals 1

    iget-object v0, p0, Li/q;->O:Lx/T;

    if-nez v0, :cond_0

    new-instance v0, Lx/T;

    invoke-direct {v0}, Lx/T;-><init>()V

    iput-object v0, p0, Li/q;->O:Lx/T;

    :cond_0
    iget-object v0, p0, Li/q;->O:Lx/T;

    return-object v0
.end method

.method protected E()Lax/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected F()Lo/bd;
    .locals 5

    iget-object v0, p0, Li/q;->E:Lo/bd;

    if-nez v0, :cond_0

    new-instance v0, Lo/bd;

    const/4 v1, 0x0

    invoke-virtual {p0}, Li/q;->bQ()LaD/t;

    move-result-object v2

    invoke-virtual {v2}, LaD/t;->b()LaD/r;

    move-result-object v2

    iget-object v3, p0, Li/q;->K:LaD/p;

    invoke-virtual {p0}, Li/q;->C()Lc/o;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lo/bd;-><init>(Lo/bn;LaD/r;LaD/p;Lc/o;)V

    iput-object v0, p0, Li/q;->E:Lo/bd;

    :cond_0
    iget-object v0, p0, Li/q;->E:Lo/bd;

    return-object v0
.end method

.method protected G()V
    .locals 2

    invoke-virtual {p0}, Li/q;->bL()Lcom/google/googlenav/c;

    move-result-object v0

    iget-object v1, p0, Li/q;->S:Lcom/google/googlenav/c;

    if-eq v1, v0, :cond_0

    iput-object v0, p0, Li/q;->S:Lcom/google/googlenav/c;

    invoke-virtual {p0}, Li/q;->L()V

    :cond_0
    invoke-super {p0}, Li/bl;->G()V

    return-void
.end method

.method public H()[Lax/e;
    .locals 6

    const/4 v5, 0x0

    new-array v0, v5, [Lax/e;

    invoke-virtual {p0}, Li/q;->aG()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Li/q;->F:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Li/q;->J()Lcom/google/googlenav/bG;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/googlenav/bG;->f()J

    move-result-wide v1

    invoke-static {}, Lo/H;->j()Lo/H;

    move-result-object v3

    invoke-virtual {v3}, Lo/H;->o()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    sget-object v0, Li/q;->e:[Lax/e;

    :cond_0
    invoke-super {p0}, Li/bl;->H()[Lax/e;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [Lax/e;

    array-length v3, v1

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    array-length v3, v0

    invoke-static {v0, v5, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    goto :goto_0
.end method

.method protected I()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Li/q;->J()Lcom/google/googlenav/bG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected J()Lcom/google/googlenav/bG;
    .locals 1

    invoke-virtual {p0}, Li/q;->D()Lx/T;

    move-result-object v0

    invoke-virtual {v0}, Lx/T;->g()Lcom/google/googlenav/bG;

    move-result-object v0

    return-object v0
.end method

.method protected K()V
    .locals 1

    iget v0, p0, Li/q;->F:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Li/q;->L()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected L()V
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Li/q;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Li/q;->d:Lh/fP;

    invoke-virtual {p0}, Li/q;->E()Lax/d;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-interface {v0, v1}, Lax/d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public M()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Li/q;->G:Z

    invoke-super {p0}, Li/bl;->M()V

    return-void
.end method

.method protected N()I
    .locals 1

    sget v0, Li/q;->a:I

    return v0
.end method

.method protected O()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Li/q;->N()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Li/q;->d(I)V

    const/4 v0, 0x0

    iput v0, p0, Li/q;->F:I

    invoke-virtual {p0}, Li/q;->G()V

    invoke-virtual {p0}, Li/q;->bL()Lcom/google/googlenav/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/c;->c()I

    move-result v0

    if-le v0, v2, :cond_0

    iput-boolean v2, p0, Li/q;->G:Z

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Li/q;->b(I)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/google/googlenav/c;Z)Lx/J;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Li/q;->C()Lc/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/o;->a(Lcom/google/googlenav/c;)V

    invoke-virtual {p0}, Li/q;->F()Lo/bd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Li/q;->D()Lx/T;

    move-result-object v2

    iget-object v3, p0, Li/q;->d:Lh/fP;

    if-nez v3, :cond_1

    move-object v3, v7

    :goto_0
    invoke-virtual {p1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Li/q;->c:Ljava/lang/String;

    invoke-virtual {p0}, Li/q;->E()Lax/d;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lo/bd;->a(ZLx/T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lax/d;)Lx/B;

    move-result-object v0

    check-cast v0, Lx/d;

    iput-object v0, p0, Li/q;->Q:Lx/d;

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    iget-object v1, p0, Li/q;->Q:Lx/d;

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    if-eqz p2, :cond_0

    const/16 v1, 0x191

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, v7}, Li/q;->a(IILjava/lang/Object;)Z

    :cond_0
    return-object v0

    :cond_1
    iget-object v3, p0, Li/q;->d:Lh/fP;

    iget-object v3, v3, Lh/fP;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/util/Vector;Ljava/util/Vector;Z)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Li/q;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->C()V

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Li/q;->bQ()LaD/t;

    move-result-object v0

    invoke-virtual {v0}, LaD/t;->b()LaD/r;

    move-result-object v0

    invoke-static {p2}, Lcom/google/googlenav/bB;->a(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v2

    iget-object v3, p0, Li/q;->N:LaD/n;

    invoke-virtual {v0, v2, v3}, LaD/r;->a(Ljava/util/Vector;LaD/n;)Z

    invoke-virtual {p0}, Li/q;->D()Lx/T;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lx/T;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    iget-object v0, p0, Li/q;->n:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/q;->Q:Lx/d;

    if-eqz v0, :cond_0

    iget v0, p0, Li/q;->F:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Li/q;->K:LaD/p;

    sget v3, Lo/bd;->a:I

    invoke-static {p1, v3}, Lcom/google/googlenav/bB;->a(Ljava/util/Vector;I)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Li/q;->N:LaD/n;

    invoke-virtual {v0, v3, v4}, LaD/p;->a(Ljava/util/List;LaD/n;)V

    invoke-virtual {p0}, Li/q;->F()Lo/bd;

    move-result-object v0

    iget-object v3, p0, Li/q;->d:Lh/fP;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Li/q;->bL()Lcom/google/googlenav/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Li/q;->c:Ljava/lang/String;

    invoke-virtual {p0}, Li/q;->E()Lax/d;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lo/bd;->a(ZLx/T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lax/d;)Lx/B;

    move-result-object v0

    iget-object v1, p0, Li/q;->Q:Lx/d;

    iget-object v0, v0, Lx/B;->h:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Lx/d;->a(Ljava/util/Vector;)V

    :cond_2
    :goto_2
    iget-object v0, p0, Li/q;->n:Lx/J;

    invoke-interface {v0}, Lx/J;->f()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Li/q;->d:Lh/fP;

    iget-object v3, v3, Lh/fP;->c:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Li/q;->K:LaD/p;

    sget v3, Lo/bd;->b:I

    invoke-static {p1, v3}, Lcom/google/googlenav/bB;->a(Ljava/util/Vector;I)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Li/q;->N:LaD/n;

    invoke-virtual {v0, v3, v4}, LaD/p;->a(Ljava/util/List;LaD/n;)V

    invoke-virtual {v2}, Lx/T;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Li/q;->F()Lo/bd;

    move-result-object v0

    iget-object v3, p0, Li/q;->c:Ljava/lang/String;

    invoke-virtual {p0}, Li/q;->E()Lax/d;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/bd;->a(ZLx/T;Ljava/lang/String;Lax/d;)Lx/B;

    move-result-object v0

    iget-object v1, p0, Li/q;->R:Lx/d;

    iget-object v0, v0, Lx/B;->h:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Lx/d;->a(Ljava/util/Vector;)V

    goto :goto_2
.end method

.method public a(ZLcom/google/googlenav/bG;)V
    .locals 3

    iget-object v0, p0, Li/q;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->C()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Li/q;->D()Lx/T;

    move-result-object v0

    invoke-virtual {v0, p2}, Lx/T;->a(Lcom/google/googlenav/bG;)V

    invoke-virtual {p0}, Li/q;->L()V

    invoke-virtual {p0}, Li/q;->ae()V

    invoke-virtual {p0}, Li/q;->aa()V

    invoke-virtual {p0}, Li/q;->bL()Lcom/google/googlenav/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Li/q;->a(Lcom/google/googlenav/c;Z)Lx/J;

    move-result-object v1

    iput-object v1, p0, Li/q;->n:Lx/J;

    iget-object v1, p0, Li/q;->n:Lx/J;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lx/J;->c(I)V

    invoke-virtual {v0}, Lx/T;->b()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0}, Lx/T;->d()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p1}, Li/q;->a(Ljava/util/Vector;Ljava/util/Vector;Z)V

    iget-object v0, p0, Li/q;->g:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x10a

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Li/q;->g:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x109

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(ZLcom/google/googlenav/bo;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Li/q;->B()Lo/be;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/aQ;

    invoke-virtual {p0}, Li/q;->bL()Lcom/google/googlenav/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/c;->J()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/google/googlenav/aQ;-><init>(Ljava/lang/String;Lcom/google/googlenav/S;)V

    invoke-virtual {v0, v1}, Lo/be;->a(Lcom/google/googlenav/aQ;)V

    invoke-virtual {p0}, Li/q;->L()V

    iget-object v0, p0, Li/q;->g:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x10d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Li/q;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->C()V

    iget-object v0, p0, Li/q;->g:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x10b

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3}, Li/bl;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Li/q;->b(I)V

    move v0, v5

    goto :goto_0

    :sswitch_1
    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Li/q;->c:Ljava/lang/String;

    move v0, v5

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Li/q;->B()Lo/be;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/aQ;

    invoke-virtual {p0}, Li/q;->bL()Lcom/google/googlenav/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/c;->J()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/google/googlenav/aQ;-><init>(Ljava/lang/String;Lcom/google/googlenav/S;)V

    invoke-virtual {v0, v1}, Lo/be;->a(Lcom/google/googlenav/aQ;)V

    move v0, v5

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Li/q;->B()Lo/be;

    move-result-object v7

    new-instance v0, Lcom/google/googlenav/aF;

    iget-object v1, p0, Li/q;->c:Ljava/lang/String;

    invoke-virtual {p0}, Li/q;->C()Lc/o;

    move-result-object v2

    invoke-virtual {v2}, Lc/o;->b()Law/e;

    move-result-object v2

    iget-object v3, p0, Li/q;->d:Lh/fP;

    invoke-static {}, Lo/H;->j()Lo/H;

    move-result-object v4

    invoke-virtual {v4}, Lo/H;->u()Ljava/lang/String;

    move-result-object v4

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/aF;-><init>(Ljava/lang/String;Law/e;Lh/fP;Ljava/lang/String;ZLcom/google/googlenav/y;)V

    invoke-virtual {v7, v0}, Lo/be;->a(Lak/m;)V

    move v0, v5

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Li/q;->B()Lo/be;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ab;

    iget-object v2, p0, Li/q;->c:Ljava/lang/String;

    invoke-virtual {p0}, Li/q;->I()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lo/H;->j()Lo/H;

    move-result-object v4

    invoke-virtual {v4}, Lo/H;->u()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/google/googlenav/ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/bd;)V

    invoke-virtual {v0, v1}, Lo/be;->a(Lak/m;)V

    move v0, v5

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Li/q;->C()Lc/o;

    move-result-object v0

    invoke-virtual {v0, v5}, Lc/o;->a(Z)V

    move v0, v5

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Li/q;->C()Lc/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lc/o;->a(Z)V

    move v0, v5

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Li/q;->B()Lo/be;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lo/be;->a(ILjava/lang/Object;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Li/q;->b(I)V

    move v0, v5

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0}, Li/q;->B()Lo/be;

    move-result-object v0

    invoke-virtual {p0}, Li/q;->J()Lcom/google/googlenav/bG;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lo/be;->a(Lcom/google/googlenav/bG;Li/q;)V

    move v0, v5

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p0}, Li/q;->B()Lo/be;

    move-result-object v0

    invoke-virtual {p0}, Li/q;->J()Lcom/google/googlenav/bG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bG;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/be;->a(Ljava/lang/String;)V

    move v0, v5

    goto/16 :goto_0

    :sswitch_a
    iput-boolean v5, p0, Li/q;->G:Z

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Li/q;->b(I)V

    move v0, v5

    goto/16 :goto_0

    :sswitch_b
    iput-boolean v5, p0, Li/q;->G:Z

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Li/q;->b(I)V

    move v0, v5

    goto/16 :goto_0

    :sswitch_c
    move v0, v5

    goto/16 :goto_0

    :sswitch_d
    invoke-direct {p0, p2}, Li/q;->i(I)V

    move v0, v5

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Li/q;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    new-instance v1, Li/bc;

    invoke-direct {v1, p0}, Li/bc;-><init>(Li/q;)V

    invoke-virtual {v0, v2, v1}, Lh/eY;->a(ILh/bv;)V

    move v0, v5

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x150 -> :sswitch_c
        0x151 -> :sswitch_b
        0x190 -> :sswitch_7
        0x191 -> :sswitch_2
        0x192 -> :sswitch_3
        0x193 -> :sswitch_4
        0x194 -> :sswitch_e
        0x197 -> :sswitch_5
        0x198 -> :sswitch_6
        0x199 -> :sswitch_1
        0x25e -> :sswitch_0
        0x4b0 -> :sswitch_a
        0x4b1 -> :sswitch_d
    .end sparse-switch
.end method

.method protected b(Lcom/google/googlenav/c;)Lx/J;
    .locals 5

    invoke-virtual {p0}, Li/q;->C()Lc/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/o;->a(Lcom/google/googlenav/c;)V

    invoke-virtual {p0}, Li/q;->D()Lx/T;

    move-result-object v1

    invoke-virtual {p0}, Li/q;->F()Lo/bd;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Li/q;->c:Ljava/lang/String;

    invoke-virtual {p0}, Li/q;->E()Lax/d;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lo/bd;->a(ZLx/T;Ljava/lang/String;Lax/d;)Lx/B;

    move-result-object v0

    check-cast v0, Lx/d;

    iput-object v0, p0, Li/q;->R:Lx/d;

    invoke-virtual {v1}, Lx/T;->g()Lcom/google/googlenav/bG;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/q;->a(Lcom/google/googlenav/bG;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    iget-object v1, p0, Li/q;->R:Lx/d;

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    return-object v0
.end method

.method protected b(I)V
    .locals 1

    iget v0, p0, Li/q;->F:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Li/q;->L()V

    :cond_0
    invoke-super {p0, p1}, Li/bl;->b(I)V

    return-void
.end method

.method public b(ZLcom/google/googlenav/bG;)V
    .locals 3

    if-eqz p1, :cond_0

    const/16 v0, 0x191

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Li/q;->a(IILjava/lang/Object;)Z

    invoke-virtual {p0}, Li/q;->d()V

    iget-object v0, p0, Li/q;->g:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x45

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Li/q;->g:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x48

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    goto :goto_0
.end method
