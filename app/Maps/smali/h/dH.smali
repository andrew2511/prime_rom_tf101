.class public Lh/dH;
.super Lh/eR;

# interfaces
.implements Lh/cD;


# static fields
.field public static a:[I


# instance fields
.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:Lu/g;

.field protected f:Lcom/google/googlenav/bL;

.field private l:Lu/r;

.field private m:Z

.field private final n:LH/f;

.field private o:Lx/v;

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Lh/eY;LH/f;Lcom/google/googlenav/bL;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lh/eR;-><init>(Lh/eY;)V

    iput v0, p0, Lh/dH;->b:I

    iput v1, p0, Lh/dH;->c:I

    iput v1, p0, Lh/dH;->d:I

    iput-boolean v0, p0, Lh/dH;->p:Z

    iput-boolean v0, p0, Lh/dH;->q:Z

    iput-object p2, p0, Lh/dH;->n:LH/f;

    iput-object p3, p0, Lh/dH;->f:Lcom/google/googlenav/bL;

    const-string v0, "locationMemory"

    invoke-static {v0}, Lu/r;->b(Ljava/lang/String;)Lu/r;

    move-result-object v0

    iput-object v0, p0, Lh/dH;->l:Lu/r;

    invoke-virtual {p0}, Lh/dH;->k()V

    return-void
.end method

.method private F()V
    .locals 9

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v6

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0xd5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v7

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x1b1

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0xd6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v8

    new-instance v0, Lx/v;

    iget v1, p0, Lh/dH;->c:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0xd8

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lh/dH;->x_()[Lax/e;

    move-result-object v3

    iget-object v4, p0, Lh/dH;->e:Lu/g;

    iget v5, p0, Lh/dH;->b:I

    invoke-direct/range {v0 .. v8}, Lx/v;-><init>(ILjava/lang/String;[Lax/e;Lu/g;ILcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    iput-object v0, p0, Lh/dH;->o:Lx/v;

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private G()V
    .locals 2

    invoke-direct {p0}, Lh/dH;->J()Lx/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lx/m;->a(I)V

    return-void
.end method

.method private H()V
    .locals 2

    invoke-direct {p0}, Lh/dH;->J()Lx/m;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lx/m;->a(I)V

    return-void
.end method

.method private I()Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lh/dH;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lh/dH;->G()V

    iget-object v0, p0, Lh/dH;->f:Lcom/google/googlenav/bL;

    const/16 v1, 0x2d8

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lh/dH;->p()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lh/dH;->H()V

    iget-object v0, p0, Lh/dH;->f:Lcom/google/googlenav/bL;

    const/16 v1, 0x2d7

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lh/dH;->j()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private J()Lx/m;
    .locals 0

    iget-object p0, p0, Lh/dH;->j:Lx/J;

    check-cast p0, Lx/m;

    return-object p0
.end method

.method private static K()V
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->H()Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v0, v2, 0x1

    :goto_0
    invoke-static {}, Lcom/google/googlenav/d;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-static {}, Lcom/google/googlenav/d;->I()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-static {}, Lcom/google/googlenav/d;->K()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    new-array v0, v0, [I

    sput-object v0, Lh/dH;->a:[I

    invoke-static {}, Lcom/google/googlenav/d;->H()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lh/dH;->a:[I

    add-int/lit8 v1, v2, 0x1

    aput v2, v0, v2

    move v0, v1

    :goto_1
    invoke-static {}, Lcom/google/googlenav/d;->G()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lh/dH;->a:[I

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    aput v3, v1, v0

    move v0, v2

    :cond_3
    invoke-static {}, Lcom/google/googlenav/d;->I()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lh/dH;->a:[I

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x2

    aput v3, v1, v0

    move v0, v2

    :cond_4
    invoke-static {}, Lcom/google/googlenav/d;->K()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lh/dH;->a:[I

    add-int/lit8 v2, v0, 0x1

    const/4 v2, 0x3

    aput v2, v1, v0

    :cond_5
    return-void

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method private L()V
    .locals 2

    iget-object v0, p0, Lh/dH;->n:LH/f;

    invoke-virtual {v0}, LH/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/dH;->n:LH/f;

    invoke-virtual {v0}, LH/f;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lh/dH;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lh/dH;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh/dH;->q()Lu/h;

    move-result-object v0

    invoke-virtual {v0}, Lu/h;->m()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lh/dH;->n:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh/dH;->n:LH/f;

    invoke-virtual {v0}, LH/f;->p()Lf/h;

    move-result-object v0

    invoke-static {v0}, Lu/h;->b(Lf/h;)Lu/h;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lh/dH;->e:Lu/g;

    invoke-virtual {v1, v0}, Lu/g;->a(Lu/h;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lu/h;->a()Lu/h;

    move-result-object v0

    goto :goto_0
.end method

.method private M()V
    .locals 3

    invoke-virtual {p0}, Lh/dH;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lh/dH;->f:Lcom/google/googlenav/bL;

    invoke-interface {v1}, Lcom/google/googlenav/bL;->L()Lcom/google/googlenav/bf;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/googlenav/bf;->G()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lh/dH;->e:Lu/g;

    move-object v0, v1

    check-cast v0, Lcom/google/googlenav/c;

    move-object p0, v0

    invoke-static {p0}, Lu/h;->a(Lcom/google/googlenav/c;)Lu/h;

    move-result-object v1

    invoke-virtual {v2, v1}, Lu/g;->b(Lu/h;)V

    goto :goto_0
.end method

.method private static N()I
    .locals 2

    sget-object v0, Lh/dH;->a:[I

    if-nez v0, :cond_0

    invoke-static {}, Lh/dH;->K()V

    :cond_0
    invoke-static {}, Lac/m;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lh/dH;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0
.end method

.method private O()V
    .locals 1

    iget v0, p0, Lh/dH;->b:I

    invoke-static {v0}, Lh/dH;->b(I)V

    return-void
.end method

.method private a(Lh/fc;)Z
    .locals 2

    invoke-virtual {p1}, Lh/fc;->a()I

    move-result v0

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lh/fc;->b()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lx/M;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lh/fc;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx/M;

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lx/M;->c(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)V
    .locals 5

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "DIRECTIONS_MODE"

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    int-to-byte v4, p0

    aput-byte v4, v2, v3

    invoke-interface {v0, v1, v2}, Ln/a;->a(Ljava/lang/String;[B)Z

    return-void
.end method

.method private c(I)V
    .locals 2

    iget-object v0, p0, Lh/dH;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dH;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->g()Lx/z;

    move-result-object v0

    iget-object v1, p0, Lh/dH;->o:Lx/v;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lh/dH;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->g()Lx/z;

    move-result-object v0

    iget v0, v0, Lx/z;->m:I

    iget-object v1, p0, Lh/dH;->o:Lx/v;

    iget v1, v1, Lx/v;->m:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lh/dH;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->l()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/dH;->j:Lx/J;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/dH;->j:Lx/J;

    invoke-virtual {p0, v0}, Lh/dH;->a(Lx/J;)V

    :cond_1
    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    iget-object v1, p0, Lh/dH;->o:Lx/v;

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/v;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/dH;->j:Lx/J;

    iget-object v0, p0, Lh/dH;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->c(I)V

    goto :goto_0
.end method

.method public static t()I
    .locals 5

    invoke-static {}, Lh/dH;->N()I

    move-result v0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->g()Ln/a;

    move-result-object v1

    const-string v2, "DIRECTIONS_MODE"

    invoke-interface {v1, v2}, Ln/a;->b_(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v0, 0x0

    aget-byte v0, v2, v0

    :goto_0
    return v0

    :cond_0
    const-string v2, "DIRECTIONS_MODE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ln/a;->a(Ljava/lang/String;[B)Z

    goto :goto_0
.end method


# virtual methods
.method public D_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public E_()V
    .locals 0

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/dH;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    iget v0, p0, Lh/dH;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const-string v0, "b"

    invoke-virtual {p0, v0}, Lh/dH;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/dH;->d()V

    iget v0, p0, Lh/dH;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/dH;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lh/dH;->k:I

    goto :goto_0
.end method

.method public a(Lax/e;)I
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/w;->n:Lax/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh/dH;->r()V

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected a()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-static {}, Lu/m;->a()Lu/m;

    move-result-object v0

    invoke-virtual {v0}, Lu/m;->c()V

    iput v3, p0, Lh/dH;->k:I

    invoke-virtual {p0}, Lh/dH;->p()Z

    move-result v0

    iput-boolean v0, p0, Lh/dH;->m:Z

    iget v0, p0, Lh/dH;->d:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    iget v1, p0, Lh/dH;->c:I

    if-eqz v1, :cond_1

    iget v1, p0, Lh/dH;->c:I

    if-eq v1, v3, :cond_1

    invoke-virtual {p0, v2}, Lh/dH;->a(I)V

    :goto_1
    iget v0, p0, Lh/dH;->c:I

    if-nez v0, :cond_0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    const-string v1, "route"

    invoke-virtual {v0, v1}, Lak/h;->h(Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_0
    move v0, v2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lh/dH;->F()V

    invoke-direct {p0, v0}, Lh/dH;->c(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(I)V
    .locals 3

    const/4 v1, 0x3

    iget v0, p0, Lh/dH;->c:I

    iput v0, p0, Lh/dH;->d:I

    iput p1, p0, Lh/dH;->c:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lh/dH;->g:Lh/eY;

    iget v1, p0, Lh/dH;->k:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lh/eY;->a(ILax/c;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lh/dH;->u()V

    iput v1, p0, Lh/dH;->k:I

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/dH;->q:Z

    const-string v0, "s"

    invoke-virtual {p0, v0}, Lh/dH;->b(Ljava/lang/String;)Law/e;

    move-result-object v0

    invoke-static {v0}, LaC/a;->a(Law/e;)V

    invoke-virtual {p0}, Lh/dH;->v()V

    invoke-virtual {p0, v0}, Lh/dH;->b(Law/e;)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/dH;->q:Z

    const-string v0, "e"

    invoke-virtual {p0, v0}, Lh/dH;->b(Ljava/lang/String;)Law/e;

    move-result-object v0

    invoke-static {v0}, LaC/a;->a(Law/e;)V

    invoke-virtual {p0}, Lh/dH;->v()V

    invoke-virtual {p0, v0}, Lh/dH;->b(Law/e;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "m"

    invoke-virtual {p0, v0}, Lh/dH;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/dH;->u()V

    iput v1, p0, Lh/dH;->k:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public a(Law/e;)V
    .locals 1

    new-instance v0, Lu/g;

    invoke-direct {v0}, Lu/g;-><init>()V

    invoke-virtual {v0, p1}, Lu/g;->a(Law/e;)V

    invoke-virtual {p0, v0}, Lh/dH;->b(Lu/g;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "q"

    invoke-static {v0, v1, p1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public a(Lu/g;)V
    .locals 1

    iput-object p1, p0, Lh/dH;->e:Lu/g;

    invoke-static {}, Lh/dH;->t()I

    move-result v0

    iput v0, p0, Lh/dH;->b:I

    invoke-direct {p0}, Lh/dH;->L()V

    invoke-virtual {p0}, Lh/dH;->u()V

    return-void
.end method

.method public a(Lu/g;I)V
    .locals 2

    iget v0, p0, Lh/dH;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lh/dH;->c:I

    :cond_0
    iput p2, p0, Lh/dH;->b:I

    invoke-static {p2}, Lh/dH;->b(I)V

    invoke-virtual {p0, p1}, Lh/dH;->a(Lu/g;)V

    return-void
.end method

.method public a(Lu/h;Ljava/lang/Long;Law/e;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_3

    const/16 v0, 0xb

    invoke-static {p3, v0}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    iget-boolean v1, p0, Lh/dH;->q:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lh/dH;->e:Lu/g;

    invoke-virtual {v1, p1}, Lu/g;->a(Lu/h;)V

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ss"

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    invoke-static {v1}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh/dH;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/dH;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lh/dH;->F()V

    invoke-direct {p0, v3}, Lh/dH;->c(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lh/dH;->e:Lu/g;

    invoke-virtual {v1, p1}, Lu/g;->b(Lu/h;)V

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "es"

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    invoke-static {v1}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh/dH;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/dH;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lh/dH;->F()V

    invoke-direct {p0, v4}, Lh/dH;->c(I)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lu/v;)V
    .locals 2

    invoke-virtual {p0, p1}, Lh/dH;->b(Lu/v;)I

    move-result v0

    invoke-virtual {p1}, Lu/v;->al()Lu/g;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lh/dH;->a(Lu/g;I)V

    return-void
.end method

.method public a(Lu/v;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lh/dH;->a(Lu/v;)V

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lh/dH;->G()V

    invoke-direct {p0}, Lh/dH;->J()Lx/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lx/m;->b(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lh/dH;->H()V

    invoke-direct {p0}, Lh/dH;->J()Lx/m;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lx/m;->b(I)V

    goto :goto_0
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lh/dH;->o:Lx/v;

    iget-object v0, v0, Lx/v;->a:Lu/g;

    iput-object v0, p0, Lh/dH;->e:Lu/g;

    iget-object v0, p0, Lh/dH;->o:Lx/v;

    iget v0, v0, Lx/v;->b:I

    iput v0, p0, Lh/dH;->b:I

    sparse-switch p1, :sswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0, v3}, Lh/dH;->a(I)V

    move v0, v3

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lh/dH;->a(I)V

    move v0, v3

    goto :goto_0

    :sswitch_2
    iput-boolean v3, p0, Lh/dH;->p:Z

    iget-object v0, p0, Lh/dH;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    new-instance v1, Lh/fc;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2}, Lh/fc;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    invoke-virtual {p0}, Lh/dH;->l()V

    move v0, v3

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lh/dH;->m()V

    move v0, v3

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lh/dH;->a(I)V

    move v0, v3

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0, v1}, Lh/dH;->a(I)V

    move v0, v3

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lh/dH;->r()V

    move v0, v3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xd4 -> :sswitch_0
        0xd5 -> :sswitch_1
        0xd6 -> :sswitch_2
        0xde -> :sswitch_4
        0xdf -> :sswitch_5
        0xe4 -> :sswitch_6
        0xec -> :sswitch_3
    .end sparse-switch
.end method

.method protected b(Lu/v;)I
    .locals 1

    instance-of v0, p1, Lu/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lu/a;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lu/u;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)Law/e;
    .locals 2

    const/4 v0, 0x4

    const-string v1, "q"

    invoke-static {v0, v1, p1}, LaC/a;->a(ILjava/lang/String;Ljava/lang/String;)Law/e;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .locals 0

    invoke-super {p0}, Lh/eR;->b()V

    invoke-direct {p0}, Lh/dH;->O()V

    return-void
.end method

.method public b(Law/e;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget v0, p0, Lh/dH;->c:I

    if-ne v0, v7, :cond_3

    move v0, v7

    :goto_0
    if-eqz v0, :cond_4

    const/16 v1, 0xaf

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {}, Lh/fQ;->j()I

    move-result v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh/dH;->q()Lu/h;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lh/dH;->q()Lu/h;

    move-result-object v3

    invoke-virtual {v3}, Lu/h;->m()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lh/dH;->o()Lu/h;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lh/dH;->o()Lu/h;

    move-result-object v3

    invoke-virtual {v3}, Lu/h;->m()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    xor-int/lit8 v2, v2, 0x4

    :cond_2
    xor-int/lit8 v2, v2, 0x8

    if-eqz v0, :cond_5

    const/16 v3, 0x3fa

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    if-eqz v0, :cond_6

    const/4 v4, 0x4

    :goto_3
    if-eqz v0, :cond_7

    const/16 v0, 0x43c

    :goto_4
    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lh/dH;->g:Lh/eY;

    new-instance v6, Lh/di;

    invoke-direct {v6}, Lh/di;-><init>()V

    invoke-virtual {v6, v1}, Lh/di;->a(Ljava/lang/String;)Lh/di;

    move-result-object v1

    invoke-virtual {v1, v2}, Lh/di;->a(I)Lh/di;

    move-result-object v1

    invoke-virtual {v1, v8}, Lh/di;->a(Z)Lh/di;

    move-result-object v1

    invoke-virtual {v1, p0}, Lh/di;->a(Lh/cD;)Lh/di;

    move-result-object v1

    invoke-virtual {v1, v7}, Lh/di;->c(I)Lh/di;

    move-result-object v1

    invoke-virtual {v1, v0}, Lh/di;->c(Ljava/lang/String;)Lh/di;

    move-result-object v0

    invoke-virtual {v0, v3}, Lh/di;->d(Ljava/lang/String;)Lh/di;

    move-result-object v0

    invoke-virtual {v0, v4}, Lh/di;->a(B)Lh/di;

    move-result-object v0

    invoke-virtual {v0, v7}, Lh/di;->b(Z)Lh/di;

    move-result-object v0

    invoke-virtual {v0, v8}, Lh/di;->c(Z)Lh/di;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/di;->a(Law/e;)Lh/di;

    move-result-object v0

    invoke-virtual {v5, v0}, Lh/eY;->a(Lh/di;)V

    return-void

    :cond_3
    move v0, v8

    goto :goto_0

    :cond_4
    const/16 v1, 0xad

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    const/16 v3, 0xf1

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    const/4 v4, 0x5

    goto :goto_3

    :cond_7
    const/16 v0, 0x43b

    goto :goto_4
.end method

.method public b(Lu/g;)V
    .locals 1

    invoke-virtual {p0}, Lh/dH;->k()V

    iput-object p1, p0, Lh/dH;->e:Lu/g;

    invoke-direct {p0}, Lh/dH;->L()V

    invoke-virtual {p0}, Lh/dH;->i()Z

    move-result v0

    invoke-direct {p0}, Lh/dH;->M()V

    if-eqz v0, :cond_0

    invoke-static {}, Li/v;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->C()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lh/dH;->t()I

    move-result v0

    iput v0, p0, Lh/dH;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/dH;->p:Z

    invoke-virtual {p0}, Lh/dH;->l()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lh/dH;->u()V

    goto :goto_0
.end method

.method public c(Lu/v;)V
    .locals 1

    invoke-virtual {p0, p1}, Lh/dH;->a(Lu/v;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/dH;->p:Z

    invoke-virtual {p0}, Lh/dH;->l()V

    return-void
.end method

.method public d()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, -0x1

    iget v0, p0, Lh/dH;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v1}, Lh/dH;->a(I)V

    iput v2, p0, Lh/dH;->k:I

    iget-object v0, p0, Lh/dH;->g:Lh/eY;

    iget v1, p0, Lh/dH;->k:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lh/eY;->a(ILax/c;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "b"

    invoke-virtual {p0, v0}, Lh/dH;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/dH;->j()V

    invoke-virtual {p0, v1}, Lh/dH;->a(I)V

    iget-object v0, p0, Lh/dH;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/dH;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->c()Lh/fc;

    move-result-object v0

    iget-object v1, p0, Lh/dH;->g:Lh/eY;

    invoke-virtual {v1}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v1

    invoke-static {v1, v0}, Li/v;->a(Lcom/google/googlenav/bL;Lh/fc;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lh/dH;->a(Lh/fc;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lh/dH;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->d()Lh/fc;

    :cond_1
    iput v2, p0, Lh/dH;->k:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lh/dH;->a(I)V

    const/4 v0, 0x3

    iput v0, p0, Lh/dH;->k:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public d(Lu/v;)V
    .locals 1

    invoke-virtual {p1}, Lu/v;->y()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lu/v;->k_()Lu/h;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lh/dH;->H()V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Lu/v;->aw()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lh/dH;->G()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lu/v;->ax()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lh/dH;->H()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lh/dH;->G()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public f()Z
    .locals 2

    iget v0, p0, Lh/dH;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Lh/eR;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lu/v;
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lh/dH;->i()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DirectionsWizard.getRequest() called too early!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lh/dH;->b:I

    if-ne v0, v3, :cond_1

    new-instance v0, Lu/d;

    iget-object v1, p0, Lh/dH;->e:Lu/g;

    iget-object v2, p0, Lh/dH;->i:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->ak()Lcom/google/googlenav/ui/bB;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lu/d;-><init>(Lu/n;Lcom/google/googlenav/ui/bB;)V

    :goto_0
    iget-boolean v1, p0, Lh/dH;->p:Z

    if-nez v1, :cond_4

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lu/v;->a(Z)V

    invoke-virtual {v0}, Lu/v;->aH()V

    return-object v0

    :cond_1
    iget v0, p0, Lh/dH;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v0, Lu/a;

    iget-object v1, p0, Lh/dH;->e:Lu/g;

    invoke-direct {v0, v1}, Lu/a;-><init>(Lu/n;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lh/dH;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    new-instance v0, Lu/u;

    iget-object v1, p0, Lh/dH;->e:Lu/g;

    invoke-direct {v0, v1}, Lu/u;-><init>(Lu/n;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lu/p;

    iget-object v1, p0, Lh/dH;->e:Lu/g;

    invoke-direct {v0, v1}, Lu/p;-><init>(Lu/n;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public i()Z
    .locals 1

    invoke-virtual {p0}, Lh/dH;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh/dH;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 2

    invoke-virtual {p0}, Lh/dH;->o()Lu/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh/dH;->o()Lu/h;

    move-result-object v0

    invoke-virtual {v0}, Lu/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dH;->l:Lu/r;

    invoke-virtual {p0}, Lh/dH;->o()Lu/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/r;->a(Lu/h;)Z

    :cond_0
    invoke-virtual {p0}, Lh/dH;->q()Lu/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lh/dH;->q()Lu/h;

    move-result-object v0

    invoke-virtual {v0}, Lu/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/dH;->l:Lu/r;

    invoke-virtual {p0}, Lh/dH;->q()Lu/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/r;->a(Lu/h;)Z

    :cond_1
    return-void
.end method

.method protected k()V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Lu/g;

    invoke-direct {v0}, Lu/g;-><init>()V

    iput-object v0, p0, Lh/dH;->e:Lu/g;

    iput v1, p0, Lh/dH;->c:I

    iput v1, p0, Lh/dH;->d:I

    invoke-static {}, Lh/dH;->K()V

    invoke-virtual {p0}, Lh/dH;->s()V

    return-void
.end method

.method protected l()V
    .locals 1

    invoke-direct {p0}, Lh/dH;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh/dH;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dH;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->g()Lh/ex;

    move-result-object v0

    invoke-virtual {v0}, Lh/ex;->v()V

    :cond_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lh/dH;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lh/dH;->v()V

    :cond_1
    iget-object v0, p0, Lh/dH;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->F()V

    const/4 v0, 0x4

    iput v0, p0, Lh/dH;->c:I

    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lh/dH;->k:I

    return-void
.end method

.method protected m()V
    .locals 5

    invoke-direct {p0}, Lh/dH;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "n"

    invoke-virtual {p0, v0}, Lh/dH;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lh/dH;->f:Lcom/google/googlenav/bL;

    invoke-virtual {p0}, Lh/dH;->q()Lu/h;

    move-result-object v1

    iget v2, p0, Lh/dH;->b:I

    const/4 v3, 0x0

    const-string v4, "w"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/googlenav/bL;->a(Lu/h;I[Law/e;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lh/dH;->k:I

    return-void
.end method

.method protected n()Z
    .locals 1

    invoke-virtual {p0}, Lh/dH;->o()Lu/h;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected o()Lu/h;
    .locals 1

    iget-object v0, p0, Lh/dH;->e:Lu/g;

    invoke-virtual {v0}, Lu/g;->j_()Lu/h;

    move-result-object v0

    return-object v0
.end method

.method protected p()Z
    .locals 1

    invoke-virtual {p0}, Lh/dH;->q()Lu/h;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected q()Lu/h;
    .locals 1

    iget-object v0, p0, Lh/dH;->e:Lu/g;

    invoke-virtual {v0}, Lu/g;->k_()Lu/h;

    move-result-object v0

    return-object v0
.end method

.method protected r()V
    .locals 3

    iget-object v0, p0, Lh/dH;->e:Lu/g;

    invoke-virtual {v0}, Lu/g;->j_()Lu/h;

    move-result-object v0

    iget-object v1, p0, Lh/dH;->e:Lu/g;

    iget-object v2, p0, Lh/dH;->e:Lu/g;

    invoke-virtual {v2}, Lu/g;->k_()Lu/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lu/g;->a(Lu/h;)V

    iget-object v1, p0, Lh/dH;->e:Lu/g;

    invoke-virtual {v1, v0}, Lu/g;->b(Lu/h;)V

    iget-object v0, p0, Lh/dH;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lh/dH;->c(I)V

    return-void
.end method

.method public s()V
    .locals 1

    invoke-static {}, Lh/dH;->t()I

    move-result v0

    iput v0, p0, Lh/dH;->b:I

    return-void
.end method

.method public x_()[Lax/e;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget v1, p0, Lh/dH;->c:I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/googlenav/ui/w;->n:Lax/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lax/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lax/e;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
