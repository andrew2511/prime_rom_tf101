.class public LaK/i;
.super Lf/Y;


# instance fields
.field private d:Lcom/google/android/maps/driveabout/vector/bD;

.field private e:LaK/j;

.field private final f:Lcom/google/android/maps/driveabout/vector/bF;

.field private final g:[F

.field private final h:LG/Q;

.field private final i:LG/Q;

.field private final j:LaU/a;

.field private k:F

.field private l:LaK/f;

.field private final m:Lcom/google/android/maps/driveabout/vector/e;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/bD;LaK/j;Lf/C;LaU/a;)V
    .locals 5

    const/high16 v4, 0x3f80

    invoke-direct {p0}, Lf/Y;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, LaK/i;->g:[F

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, LaK/i;->h:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, LaK/i;->i:LG/Q;

    iput v4, p0, LaK/i;->k:F

    new-instance v0, LaK/g;

    invoke-direct {v0, p0}, LaK/g;-><init>(LaK/i;)V

    iput-object v0, p0, LaK/i;->m:Lcom/google/android/maps/driveabout/vector/e;

    iput-object p1, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    iput-object p2, p0, LaK/i;->e:LaK/j;

    iput-object p4, p0, LaK/i;->j:LaU/a;

    invoke-static {p3, v4}, LaK/i;->a(Lf/C;F)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {p2}, LaK/j;->t()I

    move-result v2

    invoke-virtual {p2}, LaK/j;->s()I

    move-result v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bF;-><init>(Lcom/google/android/maps/driveabout/vector/bI;IIF)V

    iput-object v1, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v1, p0, LaK/i;->m:Lcom/google/android/maps/driveabout/vector/e;

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/e;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/cm;I)V

    invoke-virtual {p2}, LaK/j;->t()I

    move-result v0

    invoke-virtual {p2}, LaK/j;->s()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LaK/i;->c(II)V

    return-void
.end method

.method public static a(Lf/l;F)F
    .locals 3

    float-to-double v0, p1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cv;->a(D)F

    move-result v0

    invoke-virtual {p0}, Lf/l;->a()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float v0, v1, v0

    return v0
.end method

.method static synthetic a(LaK/i;LaK/f;)LaK/f;
    .locals 0

    iput-object p1, p0, LaK/i;->l:LaK/f;

    return-object p1
.end method

.method static synthetic a(LaK/i;)LaK/j;
    .locals 1

    iget-object v0, p0, LaK/i;->e:LaK/j;

    return-object v0
.end method

.method static a(Lf/C;F)Lcom/google/android/maps/driveabout/vector/bI;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lf/C;->a()Lf/h;

    move-result-object v1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-static {v1}, Lad/m;->a(Lf/h;)LG/Q;

    move-result-object v1

    invoke-virtual {p0}, Lf/C;->b()Lf/l;

    move-result-object v2

    invoke-static {v2, p1}, LaK/i;->a(Lf/l;F)F

    move-result v2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    return-object v0
.end method

.method private declared-synchronized a(IILcom/google/android/maps/driveabout/vector/bI;)Lf/h;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v0, p3}, Lcom/google/android/maps/driveabout/vector/bF;->a(Lcom/google/android/maps/driveabout/vector/bI;)V

    iget-object v0, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bF;->d(FF)LG/Q;

    move-result-object v0

    invoke-static {v0}, Lad/m;->b(LG/Q;)Lf/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/google/android/maps/driveabout/vector/bI;)Lf/h;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bF;->a(Lcom/google/android/maps/driveabout/vector/bI;)V

    iget-object v0, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bF;->b()LG/Q;

    move-result-object v0

    invoke-static {v0}, Lad/m;->b(LG/Q;)Lf/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(LG/Q;Lcom/google/android/maps/driveabout/vector/bI;LaF/a;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/vector/bF;->a(Lcom/google/android/maps/driveabout/vector/bI;)V

    iget-object v0, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v1, p0, LaK/i;->g:[F

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/bF;->a(LG/Q;[F)V

    iget-object v0, p0, LaK/i;->g:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, LaK/i;->g:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p3, v0, v1}, LaF/a;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lf/h;Lf/l;Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v0

    if-eqz p2, :cond_6

    iget v1, p0, LaK/i;->k:F

    invoke-static {p2, v1}, LaK/i;->a(Lf/l;F)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-eq v2, v3, :cond_6

    move v2, v1

    :goto_0
    iget-object v0, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/bF;->a(Lcom/google/android/maps/driveabout/vector/bI;)V

    iget v0, p0, LaK/i;->b:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, LaK/i;->c:I

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, LaK/i;->h:LG/Q;

    invoke-static {p1, v3}, Lad/m;->a(Lf/h;LG/Q;)V

    iget-object v3, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v5, p0, LaK/i;->h:LG/Q;

    invoke-virtual {v3, v5}, Lcom/google/android/maps/driveabout/vector/bF;->b(LG/Q;)[I

    move-result-object v3

    const/4 v5, 0x0

    aget v5, v3, v5

    sub-int v0, v5, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int v1, v3, v1

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, LaK/i;->b(I)I

    move-result v6

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v1, p0, LaK/i;->h:LG/Q;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    iget-object v1, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bI;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, LaK/i;->h:LG/Q;

    iget-object v3, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bF;->b()LG/Q;

    move-result-object v3

    invoke-virtual {v1, v3}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v7

    :goto_2
    iget-object v3, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    move v2, v7

    :goto_3
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, LaK/i;->a(ZZZ)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    if-eqz p3, :cond_5

    iget-object v3, p0, LaK/i;->l:LaK/f;

    if-eqz v3, :cond_2

    iget-object v3, p0, LaK/i;->l:LaK/f;

    invoke-virtual {v3, v0}, LaK/f;->a(Lcom/google/android/maps/driveabout/vector/bI;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    new-instance v3, LaK/f;

    invoke-direct {v3, v0}, LaK/f;-><init>(Lcom/google/android/maps/driveabout/vector/bI;)V

    iput-object v3, p0, LaK/i;->l:LaK/f;

    iget-object v0, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    iget-object v3, p0, LaK/i;->l:LaK/f;

    invoke-virtual {v0, v3, v6, v1, v2}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/cm;IZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v1, v8

    goto :goto_2

    :cond_4
    move v2, v8

    goto :goto_3

    :cond_5
    :try_start_2
    iget-object v3, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v3, v0, v6, v1, v2}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/cm;IZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_6
    move v2, v0

    goto/16 :goto_0
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/bI;)Lf/l;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v0

    sget-object v1, LaK/d;->a:LaK/d;

    invoke-virtual {p0, v0, v1}, LaK/i;->a(FLaK/d;)Lf/l;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(LaK/i;)V
    .locals 0

    invoke-virtual {p0}, LaK/i;->n()V

    return-void
.end method

.method static synthetic c(LaK/i;)LaU/a;
    .locals 1

    iget-object v0, p0, LaK/i;->j:LaU/a;

    return-object v0
.end method

.method private r()I
    .locals 5

    iget-object v0, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bF;->u()LG/F;

    move-result-object v0

    invoke-virtual {v0}, LG/F;->g()LG/Q;

    move-result-object v1

    invoke-virtual {v1}, LG/Q;->a()I

    move-result v1

    invoke-virtual {v0}, LG/F;->f()LG/Q;

    move-result-object v2

    invoke-virtual {v2}, LG/Q;->a()I

    move-result v2

    invoke-virtual {v0}, LG/F;->d()LG/Q;

    move-result-object v3

    invoke-virtual {v3}, LG/Q;->a()I

    move-result v3

    invoke-virtual {v0}, LG/F;->e()LG/Q;

    move-result-object v0

    invoke-virtual {v0}, LG/Q;->a()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v4, v0

    return v0
.end method

.method private s()I
    .locals 3

    iget-object v0, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bF;->u()LG/F;

    move-result-object v0

    invoke-virtual {v0}, LG/F;->a()LG/R;

    move-result-object v0

    invoke-virtual {v0}, LG/R;->d()I

    move-result v0

    iget-object v1, p0, LaK/i;->h:LG/Q;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, LG/Q;->d(II)V

    iget-object v0, p0, LaK/i;->h:LG/Q;

    invoke-virtual {v0}, LG/Q;->c()I

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized a(ILf/h;)F
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v1, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bF;->a(Lcom/google/android/maps/driveabout/vector/bI;)V

    iget-object v0, p0, LaK/i;->h:LG/Q;

    invoke-static {p2, v0}, Lad/m;->a(Lf/h;LG/Q;)V

    const/4 v0, 0x1

    iget-object v1, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v2, p0, LaK/i;->h:LG/Q;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/bF;->a(LG/Q;Z)F

    move-result v0

    int-to-float v1, p1

    iget-object v2, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v3, p0, LaK/i;->h:LG/Q;

    invoke-virtual {v3}, LG/Q;->e()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/maps/driveabout/vector/bF;->b(FF)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    mul-float/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v1, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bF;->a(Lcom/google/android/maps/driveabout/vector/bI;)V

    invoke-direct {p0}, LaK/i;->r()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lf/C;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    iget v1, p0, LaK/i;->k:F

    invoke-static {p1, v1}, LaK/i;->a(Lf/C;F)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bF;->a(Lcom/google/android/maps/driveabout/vector/bI;)V

    invoke-direct {p0}, LaK/i;->r()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lf/h;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LaK/i;->h:LG/Q;

    invoke-static {p1, v0}, Lad/m;->a(Lf/h;LG/Q;)V

    iget-object v0, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    iget-object v1, p0, LaK/i;->h:LG/Q;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bD;->a(LG/Q;)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lf/h;Lf/l;II)Lf/h;
    .locals 6

    iget-object v0, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v4

    iget-object v0, p0, LaK/i;->h:LG/Q;

    invoke-static {p1, v0}, Lad/m;->a(Lf/h;LG/Q;)V

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v1, p0, LaK/i;->h:LG/Q;

    iget v2, p0, LaK/i;->k:F

    invoke-static {p2, v2}, LaK/i;->a(Lf/l;F)F

    move-result v2

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    invoke-direct {p0, p3, p4, v0}, LaK/i;->a(IILcom/google/android/maps/driveabout/vector/bI;)Lf/h;

    move-result-object v0

    return-object v0
.end method

.method protected a(FLaK/d;)Lf/l;
    .locals 3

    iget v0, p0, LaK/i;->k:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cv;->a(D)F

    move-result v0

    const/high16 v1, 0x3f80

    add-float/2addr v1, p1

    add-float/2addr v0, v1

    sget-object v1, LaK/h;->a:[I

    invoke-virtual {p2}, LaK/d;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    const/16 v1, 0x16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    return-object v0

    :pswitch_0
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :pswitch_1
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized a(F)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    iget v1, p0, LaK/i;->b:I

    iget v2, p0, LaK/i;->c:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/maps/driveabout/vector/bF;->a(IIF)V

    iput p1, p0, LaK/i;->k:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, LaK/i;->e:LaK/j;

    invoke-virtual {v0, p1}, LaK/j;->b(I)V

    return-void
.end method

.method public declared-synchronized a(II)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, LaK/i;->a(ZZZ)V

    iget-object v0, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bD;->b(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(LG/Z;)V
    .locals 1

    iget-object v0, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bD;->a(LG/Z;)V

    return-void
.end method

.method protected declared-synchronized a(Lf/h;LaF/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LaK/i;->h:LG/Q;

    invoke-static {p1, v0}, Lad/m;->a(Lf/h;LG/Q;)V

    iget-object v0, p0, LaK/i;->h:LG/Q;

    iget-object v1, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, LaK/i;->a(LG/Q;Lcom/google/android/maps/driveabout/vector/bI;LaF/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lf/h;Lf/l;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, LaK/i;->a(Lf/h;Lf/l;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Lf/h;Lf/l;Lf/h;LaF/a;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v4

    iget-object v0, p0, LaK/i;->h:LG/Q;

    invoke-static {p1, v0}, Lad/m;->a(Lf/h;LG/Q;)V

    iget-object v0, p0, LaK/i;->i:LG/Q;

    invoke-static {p3, v0}, Lad/m;->a(Lf/h;LG/Q;)V

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v1, p0, LaK/i;->h:LG/Q;

    iget v2, p0, LaK/i;->k:F

    invoke-static {p2, v2}, LaK/i;->a(Lf/l;F)F

    move-result v2

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    iget-object v1, p0, LaK/i;->i:LG/Q;

    invoke-direct {p0, v1, v0, p4}, LaK/i;->a(LG/Q;Lcom/google/android/maps/driveabout/vector/bI;LaF/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Lf/l;II)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, LaK/i;->k:F

    invoke-static {p1, v0}, LaK/i;->a(Lf/l;F)F

    move-result v0

    iget-object v1, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, LaK/i;->a(ZZZ)V

    iget-object v1, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    int-to-float v2, p2

    int-to-float v3, p3

    const/16 v4, 0x14a

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bD;->a(FFFI)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a([Lf/h;IIILf/l;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    aget-object v0, p1, p3

    invoke-virtual {p0, v0, p5}, LaK/i;->d(Lf/h;Lf/l;)V

    goto :goto_0
.end method

.method public declared-synchronized b()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v1, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bF;->a(Lcom/google/android/maps/driveabout/vector/bI;)V

    invoke-direct {p0}, LaK/i;->s()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lf/C;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    iget v1, p0, LaK/i;->k:F

    invoke-static {p1, v1}, LaK/i;->a(Lf/C;F)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bF;->a(Lcom/google/android/maps/driveabout/vector/bI;)V

    invoke-direct {p0}, LaK/i;->s()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(F)V
    .locals 1

    iget-object v0, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bD;->c(F)V

    return-void
.end method

.method protected declared-synchronized b(Lf/h;Lf/l;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, LaK/i;->a(Lf/h;Lf/l;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Lf/h;
    .locals 3

    iget v0, p0, LaK/i;->b:I

    const/4 v1, 0x0

    iget-object v2, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, LaK/i;->a(IILcom/google/android/maps/driveabout/vector/bI;)Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lf/Y;->c(II)V

    iget-object v0, p0, LaK/i;->f:Lcom/google/android/maps/driveabout/vector/bF;

    iget v1, p0, LaK/i;->k:F

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/maps/driveabout/vector/bF;->a(IIF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized c(Lf/h;Lf/l;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v4

    iget-object v0, p0, LaK/i;->h:LG/Q;

    invoke-static {p1, v0}, Lad/m;->a(Lf/h;LG/Q;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v1, p0, LaK/i;->h:LG/Q;

    iget v2, p0, LaK/i;->k:F

    invoke-static {p2, v2}, LaK/i;->a(Lf/l;F)F

    move-result v2

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    iget-object v1, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/cm;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Lf/h;
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, LaK/i;->c:I

    iget-object v2, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, LaK/i;->a(IILcom/google/android/maps/driveabout/vector/bI;)Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public e()Lf/h;
    .locals 1

    iget-object v0, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    invoke-direct {p0, v0}, LaK/i;->a(Lcom/google/android/maps/driveabout/vector/bI;)Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public f()Lf/l;
    .locals 1

    iget-object v0, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    invoke-direct {p0, v0}, LaK/i;->b(Lcom/google/android/maps/driveabout/vector/bI;)Lf/l;

    move-result-object v0

    return-object v0
.end method

.method public g()F
    .locals 1

    iget-object v0, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v0

    return v0
.end method

.method public h()Lf/C;
    .locals 5

    iget-object v0, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    iget-object v1, p0, LaK/i;->e:LaK/j;

    invoke-virtual {v1}, LaK/j;->b()Lf/C;

    move-result-object v1

    new-instance v2, Lf/C;

    invoke-direct {p0, v0}, LaK/i;->a(Lcom/google/android/maps/driveabout/vector/bI;)Lf/h;

    move-result-object v3

    invoke-direct {p0, v0}, LaK/i;->b(Lcom/google/android/maps/driveabout/vector/bI;)Lf/l;

    move-result-object v0

    invoke-virtual {v1}, Lf/C;->c()I

    move-result v4

    invoke-virtual {v1}, Lf/C;->f()Z

    move-result v1

    invoke-direct {v2, v3, v0, v4, v1}, Lf/C;-><init>(Lf/h;Lf/l;IZ)V

    return-object v2
.end method

.method public i()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1}, LaK/i;->a(ZZZ)V

    return-void
.end method

.method public j()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, LaK/i;->a(ZZZ)V

    return-void
.end method

.method public k()Z
    .locals 3

    iget-object v0, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v0

    sget-object v1, LaK/d;->b:LaK/d;

    invoke-virtual {p0, v0, v1}, LaK/i;->a(FLaK/d;)Lf/l;

    move-result-object v1

    invoke-virtual {v1}, Lf/l;->c()Lf/l;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lf/l;->a()I

    move-result v1

    invoke-virtual {p0}, LaK/i;->e()Lf/h;

    move-result-object v2

    invoke-virtual {p0, v2}, LaK/i;->a(Lf/h;)I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bD;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    iget-object v0, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v0

    sget-object v1, LaK/d;->c:LaK/d;

    invoke-virtual {p0, v0, v1}, LaK/i;->a(FLaK/d;)Lf/l;

    move-result-object v1

    invoke-virtual {v1}, Lf/l;->d()Lf/l;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bD;->e()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, LaK/i;->d:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->h()Z

    move-result v0

    return v0
.end method
