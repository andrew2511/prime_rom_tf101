.class public Lcom/google/android/maps/driveabout/vector/bb;
.super Lcom/google/android/maps/driveabout/vector/cr;


# instance fields
.field private final a:LG/m;

.field private b:LG/m;

.field private c:LG/m;

.field private final d:Ljava/util/List;

.field private e:LG/S;

.field private f:F

.field private g:F

.field private final h:Lcom/google/android/maps/driveabout/vector/br;

.field private final i:Lcom/google/android/maps/driveabout/vector/cq;

.field private final j:Lcom/google/android/maps/driveabout/vector/cs;

.field private final k:F

.field private final l:I

.field private m:Z


# direct methods
.method public constructor <init>(LG/m;FI)V
    .locals 2

    const/16 v1, 0x20

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cr;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bb;->a:LG/m;

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/bb;->k:F

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/bb;->l:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->d:Ljava/util/List;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/br;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/br;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->h:Lcom/google/android/maps/driveabout/vector/br;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cq;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cq;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->i:Lcom/google/android/maps/driveabout/vector/cq;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cs;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cs;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->j:Lcom/google/android/maps/driveabout/vector/cs;

    return-void
.end method

.method private a(F)LG/m;
    .locals 1

    const/high16 v0, 0x4120

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->a:LG/m;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bb;->d()V

    const/high16 v0, 0x40c0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->b:LG/m;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->c:LG/m;

    goto :goto_0
.end method

.method private a(LG/m;Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->e:LG/S;

    invoke-virtual {v0}, LG/S;->d()LG/Q;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->e:LG/S;

    invoke-virtual {v0}, LG/S;->g()I

    move-result v5

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->q()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bb;->k:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float v2, v0, v1

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->j:Lcom/google/android/maps/driveabout/vector/cs;

    const/high16 v6, 0x3f80

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/bb;->h:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/bb;->i:Lcom/google/android/maps/driveabout/vector/cq;

    const/4 v9, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/cs;->a(LG/m;FZLG/Q;IFLcom/google/android/maps/driveabout/vector/br;Lcom/google/android/maps/driveabout/vector/cq;Lcom/google/android/maps/driveabout/vector/az;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 3

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bb;->e:LG/S;

    invoke-virtual {v1}, LG/S;->d()LG/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bb;->e:LG/S;

    invoke-virtual {v2}, LG/S;->g()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, p2, v1, v2}, Lcom/google/android/maps/driveabout/vector/Y;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bF;LG/Q;F)V

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bb;->h:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bb;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->i:Lcom/google/android/maps/driveabout/vector/cq;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    return-void
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    const v4, 0xff00

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->l:I

    shr-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v4

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bb;->l:I

    shr-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v4

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bb;->l:I

    and-int/2addr v2, v4

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bb;->l:I

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v4

    invoke-interface {p1, v1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    return-void
.end method

.method private static b(I)I
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x1e

    sub-int/2addr v1, p0

    shl-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x100

    return v0
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->h:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->i:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/m;

    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/driveabout/vector/bb;->a(LG/m;Lcom/google/android/maps/driveabout/vector/bF;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->h()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->g:F

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3fa0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->m:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/bb;->m:Z

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->h()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bb;->g:F

    mul-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bb;->g:F

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 4

    const/high16 v3, 0x4000

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->e:LG/S;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->h()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bb;->f:F

    mul-float/2addr v1, v3

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bb;->f:F

    div-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->e:LG/S;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->t()LG/F;

    move-result-object v1

    invoke-virtual {v1}, LG/F;->c()LG/z;

    move-result-object v1

    invoke-virtual {v0, v1}, LG/S;->a(LG/z;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->b:LG/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->a:LG/m;

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/bb;->b(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, LG/m;->b(F)LG/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->b:LG/m;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->b:LG/m;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/bb;->b(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, LG/m;->b(F)LG/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->c:LG/m;

    :cond_0
    return-void
.end method

.method private d(Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 7

    const v6, 0x1fffffff

    const/high16 v5, -0x2000

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bb;->a(F)LG/m;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->t()LG/F;

    move-result-object v1

    invoke-virtual {v1}, LG/F;->b()LG/S;

    move-result-object v1

    invoke-virtual {v1}, LG/S;->g()I

    move-result v2

    invoke-virtual {v1}, LG/S;->h()I

    move-result v3

    const v4, 0x71c71c7

    if-gt v2, v4, :cond_0

    if-le v3, v4, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bb;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LG/S;

    new-instance v1, LG/Q;

    invoke-direct {v1, v5, v5}, LG/Q;-><init>(II)V

    new-instance v2, LG/Q;

    invoke-direct {v2, v6, v6}, LG/Q;-><init>(II)V

    invoke-direct {v0, v1, v2}, LG/S;-><init>(LG/Q;LG/Q;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->e:LG/S;

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bb;->b(I)I

    move-result v1

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bb;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/m;

    int-to-float v4, v1

    invoke-virtual {v0, v4}, LG/m;->b(F)LG/m;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    new-instance v4, LG/Q;

    mul-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v3, 0x4

    invoke-direct {v4, v2, v3}, LG/Q;-><init>(II)V

    invoke-virtual {v1}, LG/S;->d()LG/Q;

    move-result-object v2

    invoke-virtual {v2, v4}, LG/Q;->f(LG/Q;)LG/Q;

    move-result-object v2

    invoke-virtual {v1}, LG/S;->e()LG/Q;

    move-result-object v1

    invoke-virtual {v1, v4}, LG/Q;->e(LG/Q;)LG/Q;

    move-result-object v1

    invoke-virtual {v2, v2}, LG/Q;->j(LG/Q;)V

    invoke-virtual {v1, v1}, LG/Q;->j(LG/Q;)V

    new-instance v3, LG/S;

    invoke-direct {v3, v2, v1}, LG/S;-><init>(LG/Q;LG/Q;)V

    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/bb;->e:LG/S;

    new-instance v1, LG/k;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bb;->e:LG/S;

    invoke-direct {v1, v2}, LG/k;-><init>(LG/z;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bb;->d:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, LG/k;->a(LG/m;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->h()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->f:F

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 1

    if-nez p4, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->e:LG/S;

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/bb;->d(Lcom/google/android/maps/driveabout/vector/bF;)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/bb;->b(Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bb;->b(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->h:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bb;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    :cond_2
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bb;->c(Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bb;->d(Lcom/google/android/maps/driveabout/vector/bF;)V

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bb;->m:Z

    :cond_0
    return v1
.end method
