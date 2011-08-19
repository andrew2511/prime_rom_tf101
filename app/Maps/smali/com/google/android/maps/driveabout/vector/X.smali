.class public Lcom/google/android/maps/driveabout/vector/X;
.super Lcom/google/android/maps/driveabout/vector/cr;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/bd;

.field private b:Lcom/google/android/maps/driveabout/vector/bd;

.field private c:Lcom/google/android/maps/driveabout/vector/bd;

.field private final d:Ljava/util/ArrayList;

.field private e:LG/S;

.field private f:F

.field private g:F

.field private h:I

.field private final i:Lcom/google/android/maps/driveabout/vector/br;

.field private final j:Lcom/google/android/maps/driveabout/vector/cq;

.field private final k:Lcom/google/android/maps/driveabout/vector/az;

.field private final l:Lcom/google/android/maps/driveabout/vector/cs;

.field private m:I

.field private final n:F

.field private final o:I

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(LG/m;II[IF)V
    .locals 2

    const/16 v1, 0x20

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cr;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bd;

    invoke-direct {v0, p1, p4}, Lcom/google/android/maps/driveabout/vector/bd;-><init>(LG/m;[I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->a:Lcom/google/android/maps/driveabout/vector/bd;

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/X;->h:I

    iput p5, p0, Lcom/google/android/maps/driveabout/vector/X;->n:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->d:Ljava/util/ArrayList;

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/X;->o:I

    new-instance v0, Lcom/google/android/maps/driveabout/vector/br;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/br;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->i:Lcom/google/android/maps/driveabout/vector/br;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/az;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/az;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->k:Lcom/google/android/maps/driveabout/vector/az;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cq;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cq;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->j:Lcom/google/android/maps/driveabout/vector/cq;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cs;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cs;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->l:Lcom/google/android/maps/driveabout/vector/cs;

    const v0, 0x249f0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/X;->m:I

    return-void
.end method

.method static a(Lcom/google/android/maps/driveabout/vector/bd;FI)Lcom/google/android/maps/driveabout/vector/bd;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bd;->a:LG/m;

    invoke-virtual {v0, p1, p2}, LG/m;->a(FI)[Z

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bd;->b:[I

    if-eqz v1, :cond_1

    move v1, v6

    :goto_0
    array-length v2, v0

    sub-int/2addr v2, v6

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bd;->b:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bd;->b:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    if-eq v2, v3, :cond_0

    aput-boolean v6, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v5

    move v2, v5

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    aget-boolean v3, v0, v1

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bd;->a:LG/m;

    invoke-virtual {v1}, LG/m;->b()I

    move-result v1

    if-ne v2, v1, :cond_4

    move-object v0, p0

    :goto_2
    return-object v0

    :cond_4
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bd;->b:[I

    if-eqz v3, :cond_5

    new-array v1, v2, [I

    :cond_5
    mul-int/lit8 v2, v2, 0x3

    new-array v2, v2, [I

    new-instance v3, LG/Q;

    invoke-direct {v3}, LG/Q;-><init>()V

    move v4, v5

    :goto_3
    array-length v6, v0

    if-ge v4, v6, :cond_8

    aget-boolean v6, v0, v4

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/bd;->a:LG/m;

    invoke-virtual {v6, v4, v3}, LG/m;->a(ILG/Q;)V

    invoke-virtual {v3, v2, v5}, LG/Q;->a([II)V

    if-eqz v1, :cond_6

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/bd;->b:[I

    aget v6, v6, v4

    aput v6, v1, v5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bd;

    invoke-static {v2}, LG/m;->a([I)LG/m;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/android/maps/driveabout/vector/bd;-><init>(LG/m;[I)V

    goto :goto_2
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/bd;Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->e:LG/S;

    invoke-virtual {v0}, LG/S;->d()LG/Q;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->e:LG/S;

    invoke-virtual {v0}, LG/S;->g()I

    move-result v5

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->q()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/X;->n:F

    mul-float v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->l:Lcom/google/android/maps/driveabout/vector/cs;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/bd;->a:LG/m;

    const/high16 v6, 0x3f80

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/X;->i:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/X;->j:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/cs;->a(LG/m;FZLG/Q;IFLcom/google/android/maps/driveabout/vector/br;Lcom/google/android/maps/driveabout/vector/cq;Lcom/google/android/maps/driveabout/vector/az;)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/X;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/bd;->b:[I

    move-object v5, v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/X;->l:Lcom/google/android/maps/driveabout/vector/cs;

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/bd;->a:LG/m;

    invoke-virtual {v0}, LG/m;->b()I

    move-result v2

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/X;->o:I

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/X;->k:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/cs;->a(IZI[ILcom/google/android/maps/driveabout/vector/az;)V

    return-void

    :cond_0
    move-object v5, v9

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 4

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/X;->e:LG/S;

    invoke-virtual {v1}, LG/S;->d()LG/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/X;->e:LG/S;

    invoke-virtual {v2}, LG/S;->g()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, p2, v1, v2}, Lcom/google/android/maps/driveabout/vector/Y;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bF;LG/Q;F)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->l()V

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/X;->i:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/X;->k:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/az;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/X;->h:I

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/bU;->a(I)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/p;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->j:Lcom/google/android/maps/driveabout/vector/cq;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->i:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->j:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->k:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/az;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bd;

    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/driveabout/vector/X;->a(Lcom/google/android/maps/driveabout/vector/bd;Lcom/google/android/maps/driveabout/vector/bF;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->h()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/X;->g:F

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3fa0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/X;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/X;->q:Z

    monitor-exit p0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->h()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/X;->g:F

    mul-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/X;->g:F

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    :cond_1
    move v0, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method private static c(I)I
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x1e

    sub-int/2addr v1, p0

    shl-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x100

    return v0
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 4

    const/high16 v3, 0x4000

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->e:LG/S;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->h()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/X;->f:F

    mul-float/2addr v1, v3

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/X;->f:F

    div-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->e:LG/S;

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
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->b:Lcom/google/android/maps/driveabout/vector/bd;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->a:Lcom/google/android/maps/driveabout/vector/bd;

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/X;->c(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/X;->a(Lcom/google/android/maps/driveabout/vector/bd;FI)Lcom/google/android/maps/driveabout/vector/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->b:Lcom/google/android/maps/driveabout/vector/bd;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->b:Lcom/google/android/maps/driveabout/vector/bd;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/X;->c(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/X;->a(Lcom/google/android/maps/driveabout/vector/bd;FI)Lcom/google/android/maps/driveabout/vector/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->c:Lcom/google/android/maps/driveabout/vector/bd;

    :cond_0
    return-void
.end method

.method private d(Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 8

    const v6, 0x1fffffff

    const/high16 v5, -0x2000

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/X;->a(F)Lcom/google/android/maps/driveabout/vector/bd;

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

    if-le v3, v4, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/X;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, LG/S;

    new-instance v1, LG/Q;

    invoke-direct {v1, v5, v5}, LG/Q;-><init>(II)V

    new-instance v2, LG/Q;

    invoke-direct {v2, v6, v6}, LG/Q;-><init>(II)V

    invoke-direct {v0, v1, v2}, LG/S;-><init>(LG/Q;LG/Q;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->e:LG/S;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/X;->c(I)I

    move-result v1

    move v2, v7

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/X;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bd;

    int-to-float v4, v1

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/google/android/maps/driveabout/vector/X;->a(Lcom/google/android/maps/driveabout/vector/bd;FI)Lcom/google/android/maps/driveabout/vector/bd;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
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

    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/X;->e:LG/S;

    new-instance v1, LG/k;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/X;->e:LG/S;

    invoke-direct {v1, v2}, LG/k;-><init>(LG/z;)V

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/bd;->b:[I

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bd;->a:LG/m;

    invoke-virtual {v1, v0, v2}, LG/k;->a(LG/m;Ljava/util/List;)V

    move v1, v7

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/X;->d:Ljava/util/ArrayList;

    new-instance v4, Lcom/google/android/maps/driveabout/vector/bd;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/m;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/google/android/maps/driveabout/vector/bd;-><init>(LG/m;[I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/bd;->a:LG/m;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bd;->b:[I

    invoke-virtual {v1, v4, v0, v2, v3}, LG/k;->a(LG/m;[ILjava/util/List;Ljava/util/List;)V

    move v4, v7

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/X;->d:Ljava/util/ArrayList;

    new-instance v6, Lcom/google/android/maps/driveabout/vector/bd;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/m;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-direct {v6, v0, v1}, Lcom/google/android/maps/driveabout/vector/bd;-><init>(LG/m;[I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->h()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/X;->f:F

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/X;->m:I

    return v0
.end method

.method a(F)Lcom/google/android/maps/driveabout/vector/bd;
    .locals 1

    const/high16 v0, 0x4120

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->a:Lcom/google/android/maps/driveabout/vector/bd;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/X;->d()V

    const/high16 v0, 0x40c0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->b:Lcom/google/android/maps/driveabout/vector/bd;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->c:Lcom/google/android/maps/driveabout/vector/bd;

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 1

    if-nez p4, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->e:LG/S;

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/X;->d(Lcom/google/android/maps/driveabout/vector/bF;)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/X;->b(Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/X;->b(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->i:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/X;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    :cond_2
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/X;->c(Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/X;->d(Lcom/google/android/maps/driveabout/vector/bF;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/X;->q:Z

    monitor-exit p0

    :cond_0
    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/X;->m:I

    return-void
.end method

.method public declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/X;->p:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/X;->p:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/X;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b_(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/X;->h:I

    return-void
.end method
