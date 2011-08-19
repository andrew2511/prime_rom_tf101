.class public Li/v;
.super Li/x;


# static fields
.field private static J:Z

.field private static L:Ljava/util/Vector;

.field public static final c:I

.field private static final d:Lf/l;


# instance fields
.field private E:Ljava/lang/String;

.field private F:Lx/J;

.field private G:Lx/J;

.field private H:Z

.field private I:Z

.field private K:LaO/b;

.field private M:Lx/S;

.field private N:Z

.field a:LH/f;

.field b:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    sput-object v0, Li/v;->d:Lf/l;

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v0

    sput v0, Li/v;->c:I

    const/4 v0, 0x0

    sput-boolean v0, Li/v;->J:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;LH/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Li/x;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V

    iput-object v0, p0, Li/v;->E:Ljava/lang/String;

    iput-object v0, p0, Li/v;->F:Lx/J;

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/v;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Li/v;->N:Z

    iput-object p5, p0, Li/v;->a:LH/f;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;LH/f;Lcom/google/googlenav/j;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Li/x;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/j;)V

    iput-object v6, p0, Li/v;->E:Ljava/lang/String;

    iput-object v6, p0, Li/v;->F:Lx/J;

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/v;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Li/v;->N:Z

    iput-object p5, p0, Li/v;->a:LH/f;

    invoke-direct {p0}, Li/v;->bo()V

    return-void
.end method

.method public static V()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private a(Lu/h;)Lu/h;
    .locals 5

    invoke-virtual {p1}, Lu/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lu/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lu/h;->f()Lf/h;

    move-result-object v1

    invoke-virtual {p1}, Lu/h;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lu/h;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lu/h;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lu/h;->a(Ljava/lang/String;Lf/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lu/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public static a(Lu/v;)Lu/v;
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Li/v;->L:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu/v;->aG()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v4

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Li/v;->L:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    sget-object v0, Li/v;->L:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/v;

    invoke-virtual {v0}, Lu/v;->m()I

    move-result v2

    invoke-virtual {p0}, Lu/v;->m()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lu/v;->j_()Lu/h;

    move-result-object v2

    invoke-virtual {v0}, Lu/v;->j_()Lu/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lu/h;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lu/v;->k_()Lu/h;

    move-result-object v2

    invoke-virtual {v0}, Lu/v;->k_()Lu/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lu/h;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move-object v0, v4

    goto :goto_0
.end method

.method private a(IZZ)V
    .locals 8

    const/4 v7, 0x0

    iget-object v1, p0, Li/v;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c()I

    move-result v5

    iget-object v1, p0, Li/v;->k:Lcom/google/googlenav/j;

    move-object v0, v1

    check-cast v0, Lu/n;

    move-object v2, v0

    iget-boolean v1, p0, Li/v;->N:Z

    if-eqz v1, :cond_1

    sget-object v1, Li/v;->d:Lf/l;

    move-object v6, v1

    :goto_0
    iput-boolean v7, p0, Li/v;->N:Z

    invoke-virtual {p0, p1}, Li/v;->d(I)V

    invoke-virtual {p0}, Li/v;->aN()Z

    if-ltz p1, :cond_0

    iget-object v1, p0, Li/v;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_3

    const/4 v1, -0x1

    if-eq v5, v1, :cond_4

    invoke-interface {v2, v5}, Lu/n;->a(I)I

    move-result v1

    invoke-interface {v2, p1}, Lu/n;->a(I)I

    move-result v3

    move v4, v3

    move v3, v1

    :goto_1
    if-ne v3, v4, :cond_2

    invoke-virtual {p0, v7, v6}, Li/v;->a(ZLf/l;)V

    :goto_2
    const/16 v1, 0x12

    const-string v2, "dd"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Li/v;->i:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->f()Lf/l;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Li/v;->i:Lf/Y;

    invoke-interface {v2}, Lu/n;->b_()[Lf/h;

    move-result-object v2

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual/range {v1 .. v6}, Lf/Y;->a([Lf/h;IIILf/l;)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v6}, Li/v;->a(ZLf/l;)V

    goto :goto_2

    :cond_4
    move v4, v7

    move v3, v7

    goto :goto_1
.end method

.method private a(Lax/b;I)V
    .locals 2

    iget-object v0, p0, Li/v;->k:Lcom/google/googlenav/j;

    invoke-interface {v0, p2}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lu/f;

    invoke-virtual {p0, p1}, Li/v;->a(Lax/b;)Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/f;->a(Lf/h;)V

    invoke-virtual {p0}, Li/v;->aA()V

    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ah()Lcom/google/googlenav/ui/bV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bV;->i()V

    invoke-virtual {p0}, Li/v;->aM()V

    invoke-virtual {p0, p2}, Li/v;->d(I)V

    invoke-virtual {p0}, Li/v;->aN()Z

    return-void
.end method

.method private a(Lcom/google/googlenav/j;Z)V
    .locals 10

    const/4 v9, -0x1

    const-wide v7, 0x3ff3333333333333L

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    check-cast p1, Lu/v;

    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->y()V

    sget-boolean v0, Li/v;->J:Z

    if-eqz v0, :cond_2

    sput-boolean v4, Li/v;->J:Z

    invoke-virtual {p0, v4, v6}, Li/v;->b(ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {p1}, Lu/v;->aK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Lu/v;->b(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Li/v;->e(Lu/v;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li/v;->E:Ljava/lang/String;

    invoke-static {}, Li/v;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Li/v;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lu/v;->aI()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li/v;->E:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Li/v;->bJ()V

    invoke-direct {p0}, Li/v;->bI()V

    return-void

    :cond_2
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->C()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lu/v;->m()I

    move-result v0

    if-eq v0, v5, :cond_5

    invoke-virtual {p0, v4, v6}, Li/v;->b(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lu/v;->ac()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v7

    double-to-int v0, v0

    invoke-virtual {p1}, Lu/v;->ab()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v7

    double-to-int v1, v1

    iget-object v2, p0, Li/v;->i:Lf/Y;

    invoke-virtual {p0, v5}, Li/v;->c(Z)I

    move-result v3

    invoke-virtual {p0}, Li/v;->q_()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lf/Y;->a(IIII)Lf/l;

    move-result-object v0

    invoke-virtual {p1}, Lu/v;->ad()Lf/h;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->U()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v5}, Li/v;->c(Z)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Li/v;->q_()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    neg-int v2, v2

    neg-int v3, v3

    invoke-virtual {v1, v2, v3, v0}, Lf/h;->a(IILf/l;)Lf/h;

    move-result-object v1

    :cond_3
    iget-object v2, p0, Li/v;->i:Lf/Y;

    invoke-virtual {v2, v1, v0}, Lf/Y;->d(Lf/h;Lf/l;)V

    invoke-virtual {p0, v9}, Li/v;->d(I)V

    iput-boolean v5, p0, Li/v;->N:Z

    :cond_4
    :goto_1
    invoke-static {p1}, Li/v;->b(Lu/v;)V

    invoke-virtual {p1}, Lu/v;->m()I

    move-result v0

    invoke-static {v0}, Lh/dH;->b(I)V

    goto/16 :goto_0

    :cond_5
    if-eqz p2, :cond_8

    move v0, v4

    :goto_2
    iget-object v1, p0, Li/v;->h:Lf/v;

    invoke-virtual {p1, v1}, Lu/v;->a(Lf/v;)Lf/l;

    move-result-object v1

    iget-object v2, p0, Li/v;->i:Lf/Y;

    invoke-virtual {v2}, Lf/Y;->f()Lf/l;

    move-result-object v2

    invoke-virtual {v2}, Lf/l;->a()I

    move-result v2

    const/16 v3, 0xe

    if-ge v2, v3, :cond_9

    move v2, v5

    :goto_3
    if-eqz v1, :cond_7

    iget-object v3, p0, Li/v;->i:Lf/Y;

    invoke-virtual {v3}, Lf/Y;->f()Lf/l;

    move-result-object v3

    invoke-virtual {v1, v3}, Lf/l;->b(Lf/l;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Li/v;->i:Lf/Y;

    invoke-virtual {p1}, Lu/v;->ap()Lf/h;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lf/Y;->e(Lf/h;Lf/l;)V

    :cond_7
    invoke-virtual {p1}, Lu/v;->ar()I

    move-result v1

    if-eq v1, v9, :cond_a

    invoke-virtual {p0, v4, v6}, Li/v;->b(ILjava/lang/Object;)V

    invoke-direct {p0, v1, p2, v4}, Li/v;->a(IZZ)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Li/v;->i:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->e()Lf/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/v;->a(Lf/h;)I

    move-result v0

    goto :goto_2

    :cond_9
    move v2, v4

    goto :goto_3

    :cond_a
    if-ltz v0, :cond_4

    invoke-direct {p0, v0, p2, v5}, Li/v;->a(IZZ)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/aT;Lu/v;)V
    .locals 0

    invoke-static {p0, p1}, Li/v;->b(Lcom/google/googlenav/ui/aT;Lu/v;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "da"

    invoke-static {v0, v1, p0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x4

    const-string v1, "v"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "v="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static a(ILx/M;Lcom/google/googlenav/bL;Lu/v;Lh/dH;Lh/l;Z)Z
    .locals 6

    const/16 v2, 0x1d

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p3}, Lu/v;->al()Lu/g;

    move-result-object v1

    packed-switch p0, :pswitch_data_0

    move v1, v4

    :goto_0
    return v1

    :pswitch_0
    const-string v1, "ti"

    invoke-static {v1}, Li/v;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Lx/M;->m()V

    move v1, v5

    goto :goto_0

    :pswitch_1
    const-string v2, "sd"

    invoke-static {v2}, Li/v;->a(Ljava/lang/String;)V

    new-instance v2, Lu/p;

    invoke-direct {v2, v1}, Lu/p;-><init>(Lu/n;)V

    invoke-virtual {p3}, Lu/v;->aI()I

    move-result v1

    invoke-virtual {v2, v1}, Lu/v;->r(I)V

    invoke-virtual {p5}, Lh/l;->a()V

    invoke-interface {p2, v2}, Lcom/google/googlenav/bL;->b(Lu/n;)V

    move v1, v5

    goto :goto_0

    :pswitch_2
    const-string v2, "sw"

    invoke-static {v2}, Li/v;->a(Ljava/lang/String;)V

    new-instance v2, Lu/a;

    invoke-direct {v2, v1}, Lu/a;-><init>(Lu/n;)V

    invoke-virtual {p3}, Lu/v;->aI()I

    move-result v1

    invoke-virtual {v2, v1}, Lu/v;->r(I)V

    invoke-virtual {p5}, Lh/l;->a()V

    invoke-interface {p2, v2}, Lcom/google/googlenav/bL;->b(Lu/n;)V

    move v1, v5

    goto :goto_0

    :pswitch_3
    const-string v2, "st"

    invoke-static {v2}, Li/v;->a(Ljava/lang/String;)V

    new-instance v2, Lu/d;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aV;->ak()Lcom/google/googlenav/ui/bB;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lu/d;-><init>(Lu/n;Lcom/google/googlenav/ui/bB;)V

    invoke-virtual {p3}, Lu/v;->aI()I

    move-result v1

    invoke-virtual {v2, v1}, Lu/v;->r(I)V

    invoke-virtual {p5}, Lh/l;->a()V

    invoke-interface {p2, v2}, Lcom/google/googlenav/bL;->b(Lu/n;)V

    move v1, v5

    goto :goto_0

    :pswitch_4
    const-string v2, "sk"

    invoke-static {v2}, Li/v;->a(Ljava/lang/String;)V

    new-instance v2, Lu/u;

    invoke-direct {v2, v1}, Lu/u;-><init>(Lu/n;)V

    invoke-virtual {p3}, Lu/v;->aI()I

    move-result v1

    invoke-virtual {v2, v1}, Lu/v;->r(I)V

    invoke-virtual {p5}, Lh/l;->a()V

    invoke-interface {p2, v2}, Lcom/google/googlenav/bL;->b(Lu/n;)V

    move v1, v5

    goto :goto_0

    :pswitch_5
    instance-of v1, p3, Lu/p;

    if-eqz v1, :cond_1

    const-string v1, "dn"

    invoke-static {v1}, Li/v;->a(Ljava/lang/String;)V

    invoke-virtual {p3}, Lu/v;->k_()Lu/h;

    move-result-object v1

    invoke-virtual {p3}, Lu/v;->q()[Law/e;

    move-result-object v2

    const-string v3, "d"

    invoke-interface {p2, v1, v4, v2, v3}, Lcom/google/googlenav/bL;->a(Lu/h;I[Law/e;Ljava/lang/String;)V

    :cond_0
    :goto_1
    move v1, v5

    goto/16 :goto_0

    :cond_1
    instance-of v1, p3, Lu/a;

    if-eqz v1, :cond_2

    const-string v1, "wn"

    invoke-static {v1}, Li/v;->a(Ljava/lang/String;)V

    invoke-virtual {p3}, Lu/v;->k_()Lu/h;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p3}, Lu/v;->q()[Law/e;

    move-result-object v3

    const-string v4, "d"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/google/googlenav/bL;->a(Lu/h;I[Law/e;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    instance-of v1, p3, Lu/d;

    if-eqz v1, :cond_0

    const-string v1, "tn"

    invoke-static {v1}, Li/v;->a(Ljava/lang/String;)V

    const/16 v1, 0x61

    const-string v2, "n"

    const-string v3, "h"

    invoke-static {v1, v2, v3}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lbb/b;->n()Lbb/b;

    move-result-object v1

    invoke-virtual {v1, v5}, Lbb/b;->a(Z)V

    move-object v0, p2

    check-cast v0, Lcom/google/googlenav/ui/aT;

    move-object v1, v0

    move-object v0, p3

    check-cast v0, Lu/d;

    move-object v2, v0

    invoke-static {v1, v2}, Li/v;->a(Lcom/google/googlenav/ui/aT;Lu/d;)Z

    move-result v1

    if-nez v1, :cond_0

    check-cast p3, Lu/d;

    invoke-interface {p2, p3}, Lcom/google/googlenav/bL;->a(Lu/d;)V

    goto :goto_1

    :pswitch_6
    const-string v1, "es"

    invoke-static {v1}, Li/v;->a(Ljava/lang/String;)V

    if-eqz p6, :cond_3

    invoke-interface {p1}, Lx/M;->k()V

    new-instance v1, Lh/fc;

    invoke-direct {v1, v2, p1}, Lh/fc;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p5, v1}, Lh/l;->a(Lh/fc;)V

    :cond_3
    invoke-virtual {p4, p3, v5}, Lh/dH;->a(Lu/v;Z)V

    move v1, v5

    goto/16 :goto_0

    :pswitch_7
    const-string v1, "ee"

    invoke-static {v1}, Li/v;->a(Ljava/lang/String;)V

    if-eqz p6, :cond_4

    invoke-interface {p1}, Lx/M;->k()V

    new-instance v1, Lh/fc;

    invoke-direct {v1, v2, p1}, Lh/fc;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p5, v1}, Lh/l;->a(Lh/fc;)V

    :cond_4
    invoke-virtual {p4, p3, v4}, Lh/dH;->a(Lu/v;Z)V

    move v1, v5

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xe8
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static a(Lcom/google/googlenav/bL;Lh/fc;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    instance-of v0, p0, Lcom/google/googlenav/ui/aT;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/googlenav/ui/aT;

    invoke-virtual {p1}, Lh/fc;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1}, Lh/fc;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lh/fc;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/aT;->b(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lh/fc;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/aT;->c(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lh/fc;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/aT;->d(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method private a(Lcom/google/googlenav/bf;Lcom/google/googlenav/bf;)Z
    .locals 3

    iget-object v0, p0, Li/v;->h:Lf/v;

    invoke-interface {p1}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/y;->a(Lf/h;Lf/h;)I

    move-result v1

    invoke-virtual {v0, v1}, Lf/v;->c(I)I

    move-result v0

    sget v1, Li/v;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/google/googlenav/ui/aT;Lu/d;)Z
    .locals 4

    invoke-static {p1}, Lcom/google/googlenav/ui/aM;->a(Lu/v;)J

    move-result-wide v0

    invoke-virtual {p1}, Lu/d;->k()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lcom/google/googlenav/ui/aM;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x61

    const-string v1, "sr"

    const-string v2, "s"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {p0, p1}, Li/v;->b(Lcom/google/googlenav/ui/aT;Lu/d;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)V
    .locals 4

    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v1

    invoke-virtual {v1}, Lu/v;->k_()Lu/h;

    move-result-object v1

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v2

    invoke-virtual {v2}, Lu/v;->q()[Law/e;

    move-result-object v2

    const-string v3, "d"

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/googlenav/ui/aT;->a(Lu/h;I[Law/e;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Lcom/google/googlenav/ui/aT;Lu/d;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    const/16 v1, 0x38e

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x38d

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x38c

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x38b

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Li/aW;

    invoke-direct {v7, p0, p1}, Li/aW;-><init>(Lcom/google/googlenav/ui/aT;Lu/d;)V

    invoke-virtual/range {v0 .. v7}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lh/eJ;)V

    return-void
.end method

.method private static b(Lcom/google/googlenav/ui/aT;Lu/v;)V
    .locals 4

    new-instance v0, Lu/g;

    invoke-virtual {p1}, Lu/v;->j_()Lu/h;

    move-result-object v1

    invoke-virtual {p1}, Lu/v;->k_()Lu/h;

    move-result-object v2

    invoke-virtual {p1}, Lu/v;->l_()Law/e;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lu/g;-><init>(Lu/h;Lu/h;Law/e;)V

    new-instance v1, Lu/d;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->ak()Lcom/google/googlenav/ui/bB;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lu/d;-><init>(Lu/n;Lcom/google/googlenav/ui/bB;)V

    invoke-static {}, Lu/s;->a()Lu/s;

    move-result-object v0

    invoke-virtual {v1, v0}, Lu/v;->a(Lu/s;)V

    invoke-virtual {v1}, Lu/v;->aH()V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/aT;->b(Lu/n;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "al"

    invoke-static {v0, v1, p0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static b(Lu/v;)V
    .locals 3

    sget-object v0, Li/v;->L:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Li/v;->L:Ljava/util/Vector;

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Li/v;->L:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    sget-object v0, Li/v;->L:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/v;

    invoke-virtual {v0}, Lu/v;->m()I

    move-result v0

    invoke-virtual {p0}, Lu/v;->m()I

    move-result v2

    if-ne v0, v2, :cond_1

    sget-object v0, Li/v;->L:Ljava/util/Vector;

    invoke-virtual {v0, p0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    sget-object v0, Li/v;->L:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private bA()V
    .locals 2

    const-string v0, "va"

    invoke-static {v0}, Li/v;->b(Ljava/lang/String;)V

    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->g(Lu/v;)V

    return-void
.end method

.method private bB()V
    .locals 4

    const-string v0, "r"

    invoke-static {v0}, Li/v;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v0

    new-instance v1, Lu/g;

    invoke-virtual {v0}, Lu/v;->k_()Lu/h;

    move-result-object v2

    invoke-direct {p0, v2}, Li/v;->a(Lu/h;)Lu/h;

    move-result-object v2

    invoke-virtual {v0}, Lu/v;->j_()Lu/h;

    move-result-object v3

    invoke-direct {p0, v3}, Li/v;->a(Lu/h;)Lu/h;

    move-result-object v3

    invoke-virtual {v0}, Lu/v;->l_()Law/e;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lu/g;-><init>(Lu/h;Lu/h;Law/e;)V

    invoke-virtual {p0, v1}, Li/v;->b(Lu/g;)V

    return-void
.end method

.method private bC()V
    .locals 4

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v0

    new-instance v1, Lu/g;

    iget-object v2, p0, Li/v;->a:LH/f;

    invoke-virtual {v2}, LH/f;->p()Lf/h;

    move-result-object v2

    invoke-static {v2}, Lu/h;->b(Lf/h;)Lu/h;

    move-result-object v2

    invoke-virtual {v0}, Lu/v;->k_()Lu/h;

    move-result-object v3

    invoke-virtual {v0}, Lu/v;->l_()Law/e;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lu/g;-><init>(Lu/h;Lu/h;Law/e;)V

    invoke-virtual {p0, v1}, Li/v;->b(Lu/g;)V

    return-void
.end method

.method private bD()V
    .locals 2

    const-string v0, "av"

    invoke-static {v0}, Li/v;->a(Ljava/lang/String;)V

    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Lu/v;)V

    return-void
.end method

.method private bE()Z
    .locals 1

    iget-object v0, p0, Li/v;->F:Lx/J;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bF()V
    .locals 2

    invoke-direct {p0}, Li/v;->bE()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Li/v;->bG()V

    :cond_0
    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v0

    const/16 v1, 0xd7

    invoke-static {v0, v1, p0}, Lcom/google/googlenav/ui/bs;->a(Lu/v;ILcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Li/v;->F:Lx/J;

    iget-object v0, p0, Li/v;->F:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method

.method private bG()V
    .locals 1

    iget-object v0, p0, Li/v;->F:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Li/v;->F:Lx/J;

    return-void
.end method

.method private bH()V
    .locals 2

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/v;->aB()Lu/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/v;->aH()V

    iget-object v1, p0, Li/v;->F:Lx/J;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bs;->a(Lu/v;Lx/J;)V

    invoke-direct {p0}, Li/v;->bG()V

    iget-object v1, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->b(Lu/n;)V

    return-void
.end method

.method private bI()V
    .locals 3

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->C()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->z()Li/w;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li/v;->M:Lx/S;

    if-nez v0, :cond_3

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v1

    invoke-virtual {p0}, Li/v;->K()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v2

    invoke-virtual {p0, v2}, Li/v;->d(Lu/v;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v1, p0, v2}, Lx/h;->a(Lu/v;Lcom/google/googlenav/ui/aY;Z)Lx/S;

    move-result-object v0

    iput-object v0, p0, Li/v;->M:Lx/S;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Li/v;->M:Lx/S;

    invoke-interface {v0}, Lx/S;->a()V

    goto :goto_0
.end method

.method private bJ()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->C()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Li/v;->M:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/v;->M:Lx/S;

    invoke-interface {v0}, Lx/S;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Li/v;->M:Lx/S;

    goto :goto_0
.end method

.method private bo()V
    .locals 3

    invoke-static {}, LaO/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LD/a;->a:LD/a;

    invoke-virtual {v0}, LD/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Law/e;

    sget-object v1, Ls/z;->b:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v2

    invoke-virtual {v2}, Lu/v;->l_()Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    new-instance v1, LaO/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, LaO/b;-><init>(ILaw/e;)V

    iput-object v1, p0, Li/v;->K:LaO/b;

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    iget-object v1, p0, Li/v;->K:LaO/b;

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    goto :goto_0
.end method

.method private bp()Z
    .locals 14

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x1

    invoke-direct {p0}, Li/v;->bq()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-static {}, LaA/b;->b()V

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v1

    invoke-virtual {v1}, Lu/v;->b_()[Lf/h;

    move-result-object v8

    iget-object v1, p0, Li/v;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c_()I

    move-result v9

    new-array v10, v9, [LaA/e;

    move v11, v2

    :goto_1
    if-ge v11, v9, :cond_1

    iget-object v1, p0, Li/v;->k:Lcom/google/googlenav/j;

    invoke-interface {v1, v11}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lu/f;

    move-object v3, v0

    invoke-virtual {v3}, Lu/f;->b()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    array-length v4, v8

    if-ge v2, v4, :cond_3

    invoke-virtual {v3}, Lu/f;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aget-object v2, v8, v2

    move-object v7, v2

    :goto_2
    sub-int/2addr v1, v12

    if-ltz v1, :cond_2

    invoke-virtual {v3}, Lu/f;->b()I

    move-result v1

    sub-int/2addr v1, v12

    aget-object v1, v8, v1

    move-object v6, v1

    :goto_3
    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v1

    invoke-static {v1, v3, v12}, Li/bp;->a(Lu/v;Lu/f;Z)Li/ag;

    move-result-object v1

    iget-object v4, v1, Li/ag;->a:Ljava/lang/String;

    new-instance v1, LaA/e;

    invoke-virtual {v3}, Lu/f;->h()Lf/h;

    move-result-object v2

    invoke-virtual {v3}, Lu/f;->k()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-direct/range {v1 .. v7}, LaA/e;-><init>(Lf/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf/h;Lf/h;)V

    aput-object v1, v10, v11

    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/v;->k:Lcom/google/googlenav/j;

    invoke-interface {v2}, Lcom/google/googlenav/j;->c()I

    move-result v2

    invoke-virtual {v1, v2, v10}, Lcom/google/googlenav/ui/aT;->a(I[LaA/e;)V

    move v1, v12

    goto :goto_0

    :cond_2
    move-object v6, v13

    goto :goto_3

    :cond_3
    move-object v7, v13

    goto :goto_2
.end method

.method private bq()Z
    .locals 1

    iget-object v0, p0, Li/v;->k:Lcom/google/googlenav/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/v;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Li/v;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object p0

    check-cast p0, Lu/f;

    invoke-virtual {p0}, Lu/f;->l()Z

    move-result v0

    goto :goto_0
.end method

.method private br()[Lcom/google/googlenav/ui/aU;
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Li/v;->D()Lu/d;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lu/d;->aa()I

    move-result v1

    if-ge v1, v7, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    sub-int v2, v1, v7

    new-array v2, v2, [Lcom/google/googlenav/ui/aU;

    const/4 v3, 0x0

    :goto_1
    sub-int v4, v1, v7

    if-ge v3, v4, :cond_2

    new-instance v4, Lcom/google/googlenav/ui/Y;

    invoke-virtual {v0, v3}, Lu/d;->n(I)Z

    move-result v5

    invoke-static {v5}, Lcom/google/googlenav/ui/Y;->b(Z)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    invoke-direct {v4, v0, v5, v3, v6}, Lcom/google/googlenav/ui/Y;-><init>(Lu/d;III)V

    aput-object v4, v2, v3

    aget-object p0, v2, v3

    check-cast p0, Lcom/google/googlenav/ui/Y;

    invoke-virtual {v0, v3}, Lu/d;->n(I)Z

    move-result v4

    invoke-static {v4}, Lcom/google/googlenav/ui/Y;->a(Z)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/Y;->a(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method private bs()[Lcom/google/googlenav/ui/aU;
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Li/v;->bx()Lu/a;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/bp;

    invoke-direct {v1, v0}, Lcom/google/googlenav/ui/bp;-><init>(Lu/v;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bp;->a(I)V

    const v0, -0x57f0f0f1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bp;->b(I)V

    new-array v0, v2, [Lcom/google/googlenav/ui/aU;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private bt()[Lcom/google/googlenav/ui/aU;
    .locals 4

    invoke-direct {p0}, Li/v;->by()Lu/u;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/ui/aU;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/googlenav/ui/bp;

    invoke-direct {v3, v0}, Lcom/google/googlenav/ui/bp;-><init>(Lu/v;)V

    aput-object v3, v1, v2

    return-object v1
.end method

.method private bu()[Lcom/google/googlenav/ui/aU;
    .locals 4

    invoke-direct {p0}, Li/v;->bw()Lu/p;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/ui/aU;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/googlenav/ui/bp;

    invoke-direct {v3, v0}, Lcom/google/googlenav/ui/bp;-><init>(Lu/v;)V

    aput-object v3, v1, v2

    return-object v1
.end method

.method private bv()I
    .locals 1

    iget v0, p0, Li/v;->e:I

    return v0
.end method

.method private bw()Lu/p;
    .locals 0

    iget-object p0, p0, Li/v;->k:Lcom/google/googlenav/j;

    check-cast p0, Lu/p;

    return-object p0
.end method

.method private bx()Lu/a;
    .locals 0

    iget-object p0, p0, Li/v;->k:Lcom/google/googlenav/j;

    check-cast p0, Lu/a;

    return-object p0
.end method

.method private by()Lu/u;
    .locals 0

    iget-object p0, p0, Li/v;->k:Lcom/google/googlenav/j;

    check-cast p0, Lu/u;

    return-object p0
.end method

.method private bz()V
    .locals 0

    invoke-virtual {p0}, Li/v;->I()V

    invoke-virtual {p0}, Li/v;->v()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v2

    invoke-virtual {v2}, Lu/v;->m()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/googlenav/ui/bs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static e(Lu/v;)Ljava/lang/String;
    .locals 3

    instance-of v0, p0, Lu/d;

    if-eqz v0, :cond_0

    check-cast p0, Lu/d;

    const/16 v0, 0x42f

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x433

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lu/d;->as()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Lu/a;

    if-eqz v0, :cond_1

    const/16 v0, 0x455

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lu/u;

    if-eqz v0, :cond_2

    const/16 v0, 0x3b

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v0, 0xe5

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private g(Lax/c;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Lax/c;->e()C

    move-result v0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Li/v;->aH()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i(I)V
    .locals 2

    const-string v0, "m"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Li/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_1

    iget-object v0, p0, Li/v;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Li/v;->a(IZZ)V

    :goto_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Li/v;->b(ILjava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Li/v;->d(I)V

    goto :goto_0
.end method

.method private static j(Z)I
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private j(I)V
    .locals 2

    iget-object v0, p0, Li/v;->A:Li/aM;

    check-cast v0, Li/at;

    invoke-virtual {v0, p1}, Li/at;->a(I)Lx/J;

    move-result-object v0

    iput-object v0, p0, Li/v;->G:Lx/J;

    iget-object v0, p0, Li/v;->G:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method


# virtual methods
.method public B()LaO/b;
    .locals 1

    iget-object v0, p0, Li/v;->K:LaO/b;

    return-object v0
.end method

.method protected C()Lu/v;
    .locals 0

    iget-object p0, p0, Li/v;->k:Lcom/google/googlenav/j;

    check-cast p0, Lu/v;

    return-object p0
.end method

.method public D()Lu/d;
    .locals 0

    iget-object p0, p0, Li/v;->k:Lcom/google/googlenav/j;

    check-cast p0, Lu/d;

    return-object p0
.end method

.method public F()Z
    .locals 1

    iget-object v0, p0, Li/v;->G:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/v;->G:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Li/v;->G:Lx/J;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected G()V
    .locals 0

    return-void
.end method

.method public H()[Lax/e;
    .locals 5

    invoke-virtual {p0}, Li/v;->aF()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/googlenav/ui/w;->r:Lax/e;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v1

    invoke-virtual {v1}, Lu/v;->W()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/google/googlenav/ui/w;->ah:Lax/e;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Li/v;->P()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v2

    invoke-virtual {v2}, Lu/v;->j_()Lu/h;

    move-result-object v2

    invoke-virtual {v2}, Lu/h;->m()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/google/googlenav/ui/w;->aj:Lax/e;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    sget-object v2, Lcom/google/googlenav/ui/w;->ai:Lax/e;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/google/googlenav/ui/bs;->a(Lu/v;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Li/v;->K()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/google/googlenav/ui/w;->as:Lax/e;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    invoke-virtual {p0, v1}, Li/v;->d(Lu/v;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/google/googlenav/ui/w;->ak:Lax/e;

    invoke-virtual {v1}, Lu/v;->m()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    sget-object v2, Lcom/google/googlenav/ui/w;->al:Lax/e;

    :cond_5
    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v1}, Lu/v;->b()Lcom/google/googlenav/bf;

    move-result-object v2

    if-nez v2, :cond_a

    invoke-virtual {v1}, Lu/v;->ap()Lf/h;

    move-result-object v2

    :goto_3
    invoke-virtual {v1}, Lu/v;->o()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0, v2}, Li/v;->b(Lf/h;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/google/googlenav/ui/w;->at:Lax/e;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lax/e;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    sget-object v2, Lcom/google/googlenav/ui/w;->ar:Lax/e;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    invoke-virtual {v1}, Lu/v;->m()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    sget-object v2, Lcom/google/googlenav/ui/w;->am:Lax/e;

    goto :goto_2

    :cond_a
    invoke-virtual {v1}, Lu/v;->b()Lcom/google/googlenav/bf;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v2

    goto :goto_3
.end method

.method public I()V
    .locals 2

    iget-object v0, p0, Li/v;->A:Li/aM;

    check-cast v0, Li/at;

    iget-object v1, p0, Li/v;->n:Lx/J;

    invoke-virtual {v0, v1}, Li/at;->a(Lx/J;)V

    return-void
.end method

.method protected J()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Li/v;->bE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nc"

    invoke-direct {p0, v0}, Li/v;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Li/v;->bG()V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Li/v;->F()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Li/v;->aF()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Li/v;->d(I)V

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->d()Lh/fc;

    move-result-object v0

    invoke-virtual {v0}, Lh/fc;->a()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_3
    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/aT;->a(Li/x;)V

    move v0, v2

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1, p0}, Lcom/google/googlenav/ui/aT;->a(Li/x;)V

    iget-object v1, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-static {v1, v0}, Li/v;->a(Lcom/google/googlenav/bL;Lh/fc;)Z

    move v0, v2

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v3, v5}, Li/v;->c(ILjava/lang/Object;)V

    move v0, v2

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v3, v5}, Li/v;->b(ILjava/lang/Object;)V

    move v0, v2

    goto :goto_0

    :sswitch_3
    move v0, v3

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Li/v;->k:Lcom/google/googlenav/j;

    instance-of v0, v0, Lu/d;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v0

    invoke-virtual {v0, v4}, Lu/v;->e(I)V

    :cond_4
    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->e(Lu/v;)V

    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/aT;->a(Li/x;)V

    move v0, v2

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->a(Lu/n;)V

    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/aT;->a(Li/x;)V

    move v0, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x6 -> :sswitch_0
        0x11 -> :sswitch_3
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public K()Z
    .locals 1

    iget-object v0, p0, Li/v;->k:Lcom/google/googlenav/j;

    instance-of v0, v0, Lu/d;

    return v0
.end method

.method public L()Z
    .locals 1

    iget-object v0, p0, Li/v;->k:Lcom/google/googlenav/j;

    instance-of v0, v0, Lu/p;

    return v0
.end method

.method protected L_()I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Li/v;->Q_()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    invoke-virtual {p0}, Li/v;->aV()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    add-int/2addr v0, v1

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v1

    invoke-virtual {p0, v1}, Li/v;->d(Lu/v;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public M_()[Lcom/google/googlenav/ui/r;
    .locals 1

    invoke-virtual {p0}, Li/v;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Li/v;->br()[Lcom/google/googlenav/ui/aU;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Li/v;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Li/v;->bs()[Lcom/google/googlenav/ui/aU;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Li/v;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Li/v;->bt()[Lcom/google/googlenav/ui/aU;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Li/v;->bu()[Lcom/google/googlenav/ui/aU;

    move-result-object v0

    goto :goto_0
.end method

.method public N()Z
    .locals 1

    iget-object v0, p0, Li/v;->k:Lcom/google/googlenav/j;

    instance-of v0, v0, Lu/a;

    return v0
.end method

.method public N_()V
    .locals 0

    invoke-virtual {p0}, Li/v;->F()Z

    invoke-super {p0}, Li/x;->N_()V

    invoke-direct {p0}, Li/v;->bJ()V

    return-void
.end method

.method public O()Z
    .locals 1

    iget-object v0, p0, Li/v;->k:Lcom/google/googlenav/j;

    instance-of v0, v0, Lu/u;

    return v0
.end method

.method P()Z
    .locals 1

    iget-object v0, p0, Li/v;->a:LH/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/v;->a:LH/f;

    invoke-virtual {v0}, LH/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/v;->a:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected P_()V
    .locals 1

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/v;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/v;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Li/v;->bw()Lu/p;

    move-result-object v0

    invoke-virtual {v0}, Lu/p;->l()I

    move-result v0

    iput v0, p0, Li/v;->e:I

    :cond_0
    return-void
.end method

.method Q()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/v;->N()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lu/v;->M()I

    move-result v1

    invoke-virtual {v0}, Lu/v;->ao()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/y;->a(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0}, Lu/v;->L()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xe7

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lu/v;->K()I

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const/16 v2, 0xda

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_2

    :cond_2
    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_2

    :cond_3
    move-object v0, v3

    goto :goto_1

    :cond_4
    move-object v1, v3

    goto :goto_0
.end method

.method Q_()Z
    .locals 1

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-virtual {v0}, Lu/k;->w()Z

    move-result v0

    return v0
.end method

.method R()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Li/v;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Li/v;->bw()Lu/p;

    move-result-object v0

    invoke-virtual {v0}, Lu/p;->L()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Li/v;->bv()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/v;->F()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x22c

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    const/16 v1, 0x3c

    if-lt v0, v1, :cond_4

    invoke-direct {p0}, Li/v;->bw()Lu/p;

    move-result-object v1

    invoke-virtual {v1}, Lu/p;->K()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x427

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method S()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Li/v;->K()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Li/v;->D()Lu/d;

    move-result-object v0

    invoke-virtual {v0}, Lu/d;->P()Law/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->a(Law/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc6

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->c(Law/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method protected T()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/v;->i(Z)V

    invoke-super {p0}, Li/x;->T()V

    return-void
.end method

.method public U()Z
    .locals 1

    iget-boolean v0, p0, Li/v;->H:Z

    return v0
.end method

.method protected W()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xd4

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected X()I
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Li/x;->X()I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/bf;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lax/b;)Lf/h;
    .locals 4

    iget-object v0, p0, Li/v;->h:Lf/v;

    invoke-virtual {p1}, Lax/b;->k()I

    move-result v1

    invoke-virtual {p1}, Lax/b;->l()I

    move-result v2

    sget v3, Li/v;->c:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lf/v;->b(II)Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Lu/g;)Lu/v;
    .locals 2

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v0

    instance-of v1, v0, Lu/d;

    if-eqz v1, :cond_0

    new-instance v0, Lu/d;

    iget-object v1, p0, Li/v;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->ak()Lcom/google/googlenav/ui/bB;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lu/d;-><init>(Lu/n;Lcom/google/googlenav/ui/bB;)V

    invoke-static {}, Lu/s;->a()Lu/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/v;->a(Lu/s;)V

    :goto_0
    invoke-virtual {v0}, Lu/v;->aH()V

    return-object v0

    :cond_0
    instance-of v1, v0, Lu/a;

    if-eqz v1, :cond_1

    new-instance v0, Lu/a;

    invoke-direct {v0, p1}, Lu/a;-><init>(Lu/n;)V

    goto :goto_0

    :cond_1
    instance-of v0, v0, Lu/u;

    if-eqz v0, :cond_2

    new-instance v0, Lu/u;

    invoke-direct {v0, p1}, Lu/u;-><init>(Lu/n;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lu/p;

    invoke-direct {v0, p1}, Lu/p;-><init>(Lu/n;)V

    goto :goto_0
.end method

.method protected a(Lcom/google/googlenav/j;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Li/v;->k:Lcom/google/googlenav/j;

    invoke-virtual {p0, v2}, Li/v;->i(Z)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/v;->m()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v2}, Li/v;->b(B)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/v;->ay()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    const-string v0, "a"

    invoke-direct {p0, v0}, Li/v;->d(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/v;->ar()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0, v2}, Li/v;->d(I)V

    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Li/v;->b(B)V

    goto :goto_0
.end method

.method protected a(Lu/h;I)V
    .locals 4

    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    new-instance v1, Lh/fc;

    invoke-direct {v1, p2}, Lh/fc;-><init>(I)V

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    const/4 v0, 0x0

    iget-object v1, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {p1}, Lu/h;->j()Lcom/google/googlenav/c;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/c;BZ)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    invoke-super {p0, p1}, Li/x;->a(Z)V

    const/4 v0, 0x0

    sput-object v0, Li/v;->L:Ljava/util/Vector;

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 11

    const/4 v10, 0x4

    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Li/v;->n:Lx/J;

    instance-of v0, v0, Lx/M;

    if-eqz v0, :cond_0

    iget-object v1, p0, Li/v;->n:Lx/J;

    check-cast v1, Lx/M;

    iget-object v2, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v3

    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->k()Lh/dH;

    move-result-object v4

    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v5

    move v0, p1

    invoke-static/range {v0 .. v6}, Li/v;->a(ILx/M;Lcom/google/googlenav/bL;Lu/v;Lh/dH;Lh/l;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v0, v6

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v10, v0}, Li/v;->c(ILjava/lang/Object;)V

    move v0, v7

    goto :goto_0

    :sswitch_1
    const-string v0, "sb"

    invoke-static {v0}, Li/v;->a(Ljava/lang/String;)V

    :sswitch_2
    invoke-direct {p0, p2}, Li/v;->i(I)V

    move v0, v7

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Li/v;->bD()V

    move v0, v7

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Li/v;->bA()V

    move v0, v7

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Li/v;->bB()V

    move v0, v7

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Li/v;->bC()V

    move v0, v7

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Li/v;->D()Lu/d;

    move-result-object v0

    invoke-virtual {v0}, Lu/d;->i()V

    invoke-direct {p0}, Li/v;->bz()V

    move v0, v7

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0}, Li/v;->D()Lu/d;

    move-result-object v0

    invoke-virtual {v0}, Lu/d;->h()V

    invoke-direct {p0}, Li/v;->bz()V

    move v0, v7

    goto :goto_0

    :sswitch_9
    invoke-direct {p0, p2}, Li/v;->j(I)V

    move v0, v7

    goto :goto_0

    :sswitch_a
    invoke-virtual {p0, p2}, Li/v;->d(I)V

    invoke-virtual {p0}, Li/v;->F()Z

    invoke-direct {p0}, Li/v;->bq()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Li/v;->bp()Z

    move v0, v7

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Li/v;->k:Lcom/google/googlenav/j;

    instance-of v0, v0, Lu/d;

    if-nez v0, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->J()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v2

    invoke-virtual {v2}, Lu/v;->as()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v10, v1}, Li/v;->d(ILjava/lang/Object;)Lh/fc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    :cond_3
    iget-object v0, p0, Li/v;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v1

    if-ne v0, v9, :cond_4

    move v0, v6

    :cond_4
    invoke-virtual {v1, v0}, Lu/v;->o(I)V

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v0

    invoke-virtual {v0, v9}, Lu/v;->e(I)V

    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->e(Lu/v;)V

    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/aT;->a(Li/x;)V

    move v0, v7

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/v;->m()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v6

    goto/16 :goto_0

    :pswitch_0
    const/16 v0, 0x25c

    invoke-virtual {p0, v0, p2, p3}, Li/v;->a(IILjava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    :pswitch_1
    const/16 v0, 0x260

    invoke-virtual {p0, v0, p2, p3}, Li/v;->a(IILjava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    :pswitch_2
    const/16 v0, 0x25f

    invoke-virtual {p0, v0, p2, p3}, Li/v;->a(IILjava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0x45

    const-string v1, "n"

    const-string v2, "d"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0, v6}, Li/v;->b(I)V

    move v0, v7

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0x45

    const-string v1, "n"

    const-string v2, "d"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0, v8}, Li/v;->b(I)V

    move v0, v7

    goto/16 :goto_0

    :sswitch_f
    const/16 v0, 0x61

    const-string v1, "n"

    const-string v2, "d"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lbb/b;->n()Lbb/b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lbb/b;->a(Z)V

    iget-object v0, p0, Li/v;->k:Lcom/google/googlenav/j;

    check-cast v0, Lu/d;

    iget-object v1, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-static {v1, v0}, Li/v;->a(Lcom/google/googlenav/ui/aT;Lu/d;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->a(Lu/d;)V

    :cond_5
    move v0, v7

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p0, p2}, Li/v;->d(I)V

    invoke-virtual {p0}, Li/v;->F()Z

    iget-object v1, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v2

    iget-object v0, p0, Li/v;->A:Li/aM;

    check-cast v0, Li/at;

    invoke-virtual {v0, v7}, Li/at;->a(Z)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/aT;->a(Lu/v;Ljava/util/Vector;)V

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "a=s"

    aput-object v1, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p0}, Li/v;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move v0, v7

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "od"

    invoke-direct {p0, v0}, Li/v;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Li/v;->bF()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_12
    invoke-direct {p0}, Li/v;->bE()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Li/v;->bH()V

    :cond_6
    move v0, v7

    goto/16 :goto_0

    :sswitch_13
    invoke-direct {p0}, Li/v;->bE()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "nc"

    invoke-direct {p0, v0}, Li/v;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Li/v;->bG()V

    :cond_7
    move v0, v7

    goto/16 :goto_0

    :sswitch_14
    iget-object v0, p0, Li/v;->K:LaO/b;

    invoke-virtual {v0}, LaO/b;->l()[Lcom/google/googlenav/c;

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v1, v0

    if-nez v1, :cond_9

    :cond_8
    move v0, v7

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Li/v;->aF()Z

    move-result v1

    invoke-static {v1}, Li/v;->j(Z)I

    move-result v1

    iget-object v2, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v2

    new-instance v3, Lh/fc;

    invoke-direct {v3, v1}, Lh/fc;-><init>(I)V

    invoke-virtual {v2, v3}, Lh/l;->a(Lh/fc;)V

    iget-object v1, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    aget-object v0, v0, v6

    invoke-virtual {v1, v0, v8, v7}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/c;BZ)V

    move v0, v7

    goto/16 :goto_0

    :sswitch_15
    invoke-super {p0, p1, p2, p3}, Li/x;->a(IILjava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_16
    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Li/v;->d(ILjava/lang/Object;)Lh/fc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    invoke-virtual {p0}, Li/v;->aB()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_17
    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v1

    invoke-static {v0, v1}, Li/v;->b(Lcom/google/googlenav/ui/aT;Lu/v;)V

    move v0, v7

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_15
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_3
        0xca -> :sswitch_4
        0xcb -> :sswitch_5
        0xcc -> :sswitch_6
        0xd0 -> :sswitch_7
        0xd1 -> :sswitch_8
        0xdc -> :sswitch_11
        0xdd -> :sswitch_12
        0xe5 -> :sswitch_a
        0xe6 -> :sswitch_11
        0xe7 -> :sswitch_9
        0xf0 -> :sswitch_17
        0xf1 -> :sswitch_0
        0xf2 -> :sswitch_b
        0x1f4 -> :sswitch_13
        0x25c -> :sswitch_d
        0x25f -> :sswitch_e
        0x260 -> :sswitch_f
        0x261 -> :sswitch_c
        0x2bc -> :sswitch_14
        0x3f9 -> :sswitch_16
        0x5e6 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Lax/b;Z)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Lax/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Li/v;->H:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Li/v;->I:Z

    if-eqz v0, :cond_0

    move v0, v5

    :goto_0
    invoke-direct {p0, p1, v0}, Li/v;->a(Lax/b;I)V

    move v0, v4

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Li/v;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lax/b;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Li/v;->H:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v0

    invoke-virtual {p0, p1}, Li/v;->a(Lax/b;)Lf/h;

    move-result-object v1

    invoke-static {v1}, Lu/h;->a(Lf/h;)Lu/h;

    move-result-object v1

    iget-boolean v2, p0, Li/v;->I:Z

    if-eqz v2, :cond_2

    new-instance v2, Lu/g;

    invoke-virtual {v0}, Lu/v;->k_()Lu/h;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lu/g;-><init>(Lu/h;Lu/h;)V

    move-object v0, v2

    :goto_2
    invoke-virtual {p0, v0}, Li/v;->b(Lu/g;)V

    invoke-virtual {p0}, Li/v;->p()V

    move v0, v4

    goto :goto_1

    :cond_2
    new-instance v2, Lu/g;

    invoke-virtual {v0}, Lu/v;->j_()Lu/h;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lu/g;-><init>(Lu/h;Lu/h;)V

    move-object v0, v2

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lax/b;->h()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lax/b;->f()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lax/b;->j()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_4
    iget-object v0, p0, Li/v;->h:Lf/v;

    invoke-virtual {p1}, Lax/b;->k()I

    move-result v1

    invoke-virtual {p1}, Lax/b;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lf/v;->b(II)Lf/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/v;->a(Lf/h;)I

    move-result v0

    if-ltz v0, :cond_b

    invoke-virtual {p1}, Lax/b;->j()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Li/v;->k:Lcom/google/googlenav/j;

    invoke-interface {v1, v0}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v1

    iget-object v2, p0, Li/v;->k:Lcom/google/googlenav/j;

    invoke-interface {v2}, Lcom/google/googlenav/j;->c_()I

    move-result v2

    sub-int/2addr v2, v4

    iget-object v3, p0, Li/v;->k:Lcom/google/googlenav/j;

    invoke-interface {v3, v5}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Li/v;->a(Lcom/google/googlenav/bf;Lcom/google/googlenav/bf;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v5

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    if-ne v0, v2, :cond_a

    :cond_6
    iput-boolean v4, p0, Li/v;->H:Z

    if-nez v0, :cond_8

    move v1, v4

    :goto_4
    iput-boolean v1, p0, Li/v;->I:Z

    iget-boolean v1, p0, Li/v;->I:Z

    if-eqz v1, :cond_9

    const-string v1, "ds"

    :goto_5
    invoke-static {v1}, Li/v;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Li/v;->a(Lax/b;I)V

    move v0, v4

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Li/v;->k:Lcom/google/googlenav/j;

    invoke-interface {v3, v2}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Li/v;->a(Lcom/google/googlenav/bf;Lcom/google/googlenav/bf;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v2

    goto :goto_3

    :cond_8
    move v1, v5

    goto :goto_4

    :cond_9
    const-string v1, "de"

    goto :goto_5

    :cond_a
    move v0, v4

    goto/16 :goto_1

    :cond_b
    move v0, v4

    :goto_6
    if-eqz v0, :cond_c

    const/4 v0, -0x1

    const-string v1, "c"

    const-string v2, "c"

    invoke-virtual {p0, v0, v1, v2}, Li/v;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Li/v;->aC()V

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Lax/b;->j()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v4

    goto/16 :goto_1

    :cond_c
    move v0, v5

    goto/16 :goto_1

    :cond_d
    move v0, v5

    goto :goto_6
.end method

.method protected a(Lax/c;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Lax/c;->e()C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Li/v;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "m"

    const-string v1, "#"

    invoke-direct {p0, v0, v1}, Li/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Li/v;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    invoke-direct {p0, v0}, Li/v;->i(I)V

    :goto_0
    move v0, v2

    :goto_1
    return v0

    :cond_0
    const-string v0, "l"

    const-string v1, "#"

    invoke-direct {p0, v0, v1}, Li/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Li/v;->c(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Li/v;->aJ()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Li/v;->g(Lax/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Li/v;->bp()Z

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Li/v;->i:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->e()Lf/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/v;->a(Lf/h;)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Li/v;->J()Z

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Li/v;->b(Lax/c;)Z

    move-result v0

    goto :goto_1
.end method

.method protected a(Ljava/io/DataInput;)Z
    .locals 2

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->ak()Lcom/google/googlenav/ui/bB;

    move-result-object v0

    :try_start_0
    invoke-static {p1, v0}, Lu/v;->a(Ljava/io/DataInput;Lcom/google/googlenav/ui/bB;)Lu/v;

    move-result-object v0

    instance-of v1, v0, Lu/p;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lu/v;->G()V

    :cond_0
    iput-object v0, p0, Li/v;->k:Lcom/google/googlenav/j;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "UI-TDW"

    invoke-static {v1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Lx/Q;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Li/v;->l:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/v;->l:Lx/S;

    if-eq p1, v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Li/x;->a(Lx/Q;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Li/v;->m:Lcom/google/googlenav/bf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Li/v;->m:Lcom/google/googlenav/bf;

    instance-of v0, v0, Lu/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Li/v;->m:Lcom/google/googlenav/bf;

    check-cast v0, Lu/f;

    invoke-virtual {v0}, Lu/f;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/v;->k_()Lu/h;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lu/h;->j()Lcom/google/googlenav/c;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Li/v;->a(Lu/h;I)V

    move v0, v2

    goto :goto_0

    :cond_2
    const/16 v0, 0x23

    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Li/v;->a(CI)Z

    move v0, v2

    goto :goto_0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/google/googlenav/bf;)I
    .locals 2

    invoke-interface {p1}, Lcom/google/googlenav/bf;->F()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    :goto_0
    neg-int v0, v0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Li/v;->f(Lcom/google/googlenav/bf;)I

    move-result v0

    neg-int v0, v0

    goto :goto_1
.end method

.method public b(Lcom/google/googlenav/j;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Li/v;->k:Lcom/google/googlenav/j;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v1

    invoke-virtual {v1}, Lu/v;->E()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v1

    invoke-virtual {v1}, Lu/v;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Li/v;->aY()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Li/v;->aJ()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Li/v;->aj()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lu/v;

    move-object v1, v0

    iget-object v2, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->C()V

    invoke-interface {p1}, Lcom/google/googlenav/j;->c_()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Li/v;->k:Lcom/google/googlenav/j;

    instance-of v2, v2, Lu/p;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Li/v;->bw()Lu/p;

    move-result-object v2

    invoke-virtual {v2}, Lu/p;->E()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-direct {p0, p1, v2}, Li/v;->a(Lcom/google/googlenav/j;Z)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lu/v;->o(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public b(Lu/g;)V
    .locals 2

    invoke-virtual {p0, p1}, Li/v;->a(Lu/g;)Lu/v;

    move-result-object v0

    iget-object v1, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->b(Lu/n;)V

    return-void
.end method

.method public b(Lax/c;)Z
    .locals 6

    const/16 v5, 0x36

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Li/v;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lax/c;->a()I

    move-result v0

    if-eq v0, v5, :cond_1

    const/16 v1, 0x34

    if-ne v0, v1, :cond_4

    :cond_1
    iget-object v1, p0, Li/v;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c()I

    move-result v1

    invoke-virtual {p0}, Li/v;->aD()Z

    move-result v2

    if-eqz v2, :cond_5

    if-ne v0, v5, :cond_3

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Li/v;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    if-gez v0, :cond_2

    move v0, v4

    :cond_2
    invoke-direct {p0, v0, v3, v3}, Li/v;->a(IZZ)V

    move v0, v3

    goto :goto_0

    :cond_3
    sub-int v0, v1, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public b(Lx/Q;)Z
    .locals 1

    invoke-virtual {p0}, Li/v;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    invoke-direct {p0, v0}, Li/v;->j(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public c(Lu/v;)V
    .locals 1

    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aT;->b(Lu/n;)V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Li/v;->J()Z

    return-void
.end method

.method d(Lu/v;)Z
    .locals 3

    invoke-virtual {p1}, Lu/v;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lu/v;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lu/v;->z()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lu/v;->au()Lf/h;

    move-result-object v0

    invoke-virtual {p1}, Lu/v;->av()Lf/h;

    move-result-object v1

    invoke-virtual {p1}, Lu/v;->m()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Li/v;->a(Lf/h;Lf/h;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()V
    .locals 2

    invoke-virtual {p0}, Li/v;->aI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/v;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/v;->b(B)V

    :cond_0
    invoke-super {p0}, Li/x;->h()V

    invoke-direct {p0}, Li/v;->bI()V

    return-void
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Li/v;->H:Z

    return v0
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Li/v;->J:Z

    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/v;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0}, Lu/v;->k_()Lu/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aZ;->a(Lu/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lu/v;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x216

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lu/v;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x209

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x217

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public t_()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Li/v;->E:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/v;->E:Ljava/lang/String;

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v1

    invoke-static {v1}, Li/v;->e(Lu/v;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Li/v;->k:Lcom/google/googlenav/j;

    instance-of v0, v0, Lu/p;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Li/v;->bw()Lu/p;

    move-result-object v0

    invoke-virtual {v0}, Lu/p;->Y()Lu/k;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Li/v;->bw()Lu/p;

    move-result-object v0

    invoke-virtual {v0}, Lu/p;->l()I

    move-result v0

    iget v1, p0, Li/v;->e:I

    if-eq v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()Lk/l;
    .locals 2

    iget-object v0, p0, Li/v;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/aV;->am:C

    invoke-interface {v0, v1}, Lk/j;->e(C)Lk/l;

    move-result-object v0

    return-object v0
.end method

.method public u_()Z
    .locals 1

    invoke-super {p0}, Li/x;->u_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Li/v;->H:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected v()V
    .locals 5

    invoke-super {p0}, Li/x;->v()V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-static {p0}, Li/aE;->i(Li/x;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v4

    invoke-virtual {v4, v3}, Lu/v;->b(Ljava/io/DataOutput;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ln/a;->b([BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "UI-DL save"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public v_()Lcom/google/googlenav/j;
    .locals 1

    iget-object v0, p0, Li/v;->k:Lcom/google/googlenav/j;

    return-object v0
.end method

.method public x()Z
    .locals 2

    invoke-static {p0}, Lac/i;->a(Lac/h;)V

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v0

    iget-object v1, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->a(Lu/v;)V

    invoke-virtual {v0}, Lu/v;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lu/v;->I_()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->b(Lu/v;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lu/v;->F()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->b(Lu/v;)V

    :cond_2
    iget-object v1, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lu/v;->p()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->d(Z)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public y()V
    .locals 2

    invoke-static {p0}, Lac/i;->c(Lac/h;)V

    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->B()V

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/v;->as()I

    move-result v0

    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v1

    invoke-virtual {v1}, Lu/v;->aB()Lu/v;

    move-result-object v1

    iput-object v1, p0, Li/v;->k:Lcom/google/googlenav/j;

    iget-object v1, p0, Li/v;->k:Lcom/google/googlenav/j;

    instance-of v1, v1, Lu/d;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Li/v;->D()Lu/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lu/d;->a_(I)V

    :cond_0
    invoke-virtual {p0}, Li/v;->C()Lu/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/v;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/v;->g:Lcom/google/googlenav/ui/aT;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->d(Z)V

    :cond_1
    return-void
.end method
