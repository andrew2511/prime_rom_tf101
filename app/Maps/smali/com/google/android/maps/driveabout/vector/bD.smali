.class public Lcom/google/android/maps/driveabout/vector/bD;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/a;


# static fields
.field private static final a:F

.field private static final c:Lcom/google/android/maps/driveabout/vector/bI;

.field private static d:F


# instance fields
.field protected final b:Landroid/content/Context;

.field private final e:Z

.field private final f:Lcom/google/android/maps/driveabout/vector/O;

.field private volatile g:Lcom/google/android/maps/driveabout/vector/bI;

.field private volatile h:Lcom/google/android/maps/driveabout/vector/bI;

.field private volatile i:F

.field private volatile j:Lcom/google/android/maps/driveabout/vector/cm;

.field private volatile k:Z

.field private l:Z

.field private m:Lcom/google/android/maps/driveabout/vector/cb;

.field private n:Lcom/google/android/maps/driveabout/vector/bw;

.field private o:Lcom/google/android/maps/driveabout/vector/aQ;

.field private p:Lcom/google/android/maps/driveabout/vector/e;

.field private q:Z

.field private r:I

.field private s:F

.field private t:Lau/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/bD;->a:F

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bD;->c:Lcom/google/android/maps/driveabout/vector/bI;

    const/high16 v0, 0x41a8

    sput v0, Lcom/google/android/maps/driveabout/vector/bD;->d:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/O;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/O;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->f:Lcom/google/android/maps/driveabout/vector/O;

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->r:I

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->s:F

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bD;->b:Landroid/content/Context;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bF;->b:Lcom/google/android/maps/driveabout/vector/bI;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->g:Lcom/google/android/maps/driveabout/vector/bI;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bF;->b:Lcom/google/android/maps/driveabout/vector/bI;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->b:Landroid/content/Context;

    invoke-static {v0}, Las/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->e:Z

    invoke-static {}, Lau/e;->a()Lau/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->t:Lau/e;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(F)F
    .locals 7

    const-wide v5, 0x4076800000000000L

    move v0, p0

    :goto_0
    float-to-double v1, v0

    cmpl-double v1, v1, v5

    if-ltz v1, :cond_0

    float-to-double v0, v0

    sub-double/2addr v0, v5

    double-to-float v0, v0

    goto :goto_0

    :cond_0
    :goto_1
    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    float-to-double v0, v0

    add-double/2addr v0, v5

    double-to-float v0, v0

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/O;LG/Q;F)Lcom/google/android/maps/driveabout/vector/bI;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->b()LG/Q;

    move-result-object v0

    invoke-virtual {v0}, LG/Q;->f()I

    move-result v1

    invoke-virtual {p2}, LG/Q;->f()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, LG/Q;->g()I

    move-result v0

    invoke-virtual {p2}, LG/Q;->g()I

    move-result v2

    sub-int/2addr v0, v2

    float-to-double v2, p3

    const-wide v4, 0x400921fb54442d18L

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L

    div-double/2addr v2, v4

    double-to-float v2, v2

    neg-float v3, v2

    invoke-static {v3}, Landroid/util/FloatMath;->sin(F)F

    move-result v3

    neg-float v2, v2

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    int-to-float v4, v1

    mul-float/2addr v4, v2

    int-to-float v5, v0

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    int-to-float v1, v1

    mul-float/2addr v1, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    new-instance v1, LG/Q;

    invoke-virtual {p2}, LG/Q;->f()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p2}, LG/Q;->g()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {v1, v2, v0}, LG/Q;-><init>(II)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->i()F

    move-result v0

    add-float/2addr v0, p3

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bD;->a(F)F

    move-result v4

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->j()F

    move-result v3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/O;->a(Lcom/google/android/maps/driveabout/vector/bI;)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/bF;FF)Lcom/google/android/maps/driveabout/vector/bI;
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->q()F

    move-result v0

    mul-float/2addr v0, p2

    neg-float v1, p3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->q()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->j()F

    move-result v2

    const v3, 0x3c8efa35

    mul-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->m()LG/Q;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->n()LG/Q;

    move-result-object v3

    new-instance v4, LG/Q;

    invoke-virtual {v2}, LG/Q;->f()I

    move-result v5

    invoke-virtual {v2}, LG/Q;->g()I

    move-result v2

    invoke-direct {v4, v5, v2}, LG/Q;-><init>(II)V

    new-instance v5, LG/Q;

    invoke-virtual {v3}, LG/Q;->f()I

    move-result v2

    invoke-virtual {v3}, LG/Q;->g()I

    move-result v3

    invoke-direct {v5, v2, v3}, LG/Q;-><init>(II)V

    invoke-static {v4, v0, v4}, LG/Q;->b(LG/Q;FLG/Q;)V

    invoke-static {v5, v1, v5}, LG/Q;->b(LG/Q;FLG/Q;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->b()LG/Q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v2

    invoke-virtual {v0}, LG/Q;->h()I

    move-result v3

    invoke-virtual {v0, v4}, LG/Q;->e(LG/Q;)LG/Q;

    move-result-object v1

    invoke-static {v1, v5, v1}, LG/Q;->a(LG/Q;LG/Q;LG/Q;)V

    invoke-virtual {v1, v3}, LG/Q;->c(I)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    return-object v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/O;FFF)Lcom/google/android/maps/driveabout/vector/bI;
    .locals 8

    const/high16 v1, 0x4000

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float v6, p4, v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->e()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float v7, p5, v0

    invoke-static {p0, p1, v6, v7}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/bF;FF)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/vector/O;->a(Lcom/google/android/maps/driveabout/vector/bI;)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v4

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v1

    sget v2, Lcom/google/android/maps/driveabout/vector/bD;->d:F

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v3

    add-float/2addr v3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/bF;->a(Lcom/google/android/maps/driveabout/vector/bI;)V

    neg-float v1, v6

    neg-float v2, v7

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/bF;FF)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/cm;Lcom/google/android/maps/driveabout/vector/bI;)V
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/vector/T;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->k:Z

    :cond_0
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->l:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->f:Lcom/google/android/maps/driveabout/vector/O;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/cm;->b()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/O;->a(Lcom/google/android/maps/driveabout/vector/bI;)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->g:Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->f:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/vector/O;->a(Lcom/google/android/maps/driveabout/vector/bI;)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->h:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->n:Lcom/google/android/maps/driveabout/vector/bw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->n:Lcom/google/android/maps/driveabout/vector/bw;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bw;->a(ZZ)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

.method public static b(F)V
    .locals 0

    sput p0, Lcom/google/android/maps/driveabout/vector/bD;->d:F

    return-void
.end method

.method public static d()F
    .locals 1

    sget v0, Lcom/google/android/maps/driveabout/vector/bD;->d:F

    return v0
.end method

.method static synthetic e(F)F
    .locals 1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/bD;->a(F)F

    move-result v0

    return v0
.end method

.method static synthetic i()F
    .locals 1

    sget v0, Lcom/google/android/maps/driveabout/vector/bD;->d:F

    return v0
.end method


# virtual methods
.method public declared-synchronized a(FFFFFZ)F
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ai;

    const/4 v1, 0x0

    move v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/ai;->a(FFFFFFZ)[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ai;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->g:Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bD;->f:Lcom/google/android/maps/driveabout/vector/O;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/ai;-><init>(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/O;)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bD;->c:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/cm;Lcom/google/android/maps/driveabout/vector/bI;)V

    const/4 v1, 0x0

    move v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/ai;->a(FFFFFFZ)[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(FFFI)F
    .locals 7

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->g:Lcom/google/android/maps/driveabout/vector/bI;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ce;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bD;->f:Lcom/google/android/maps/driveabout/vector/O;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/ce;-><init>(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/O;FFFI)V

    sget-object v2, Lcom/google/android/maps/driveabout/vector/bD;->c:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/cm;Lcom/google/android/maps/driveabout/vector/bI;)V

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v0

    add-float/2addr v0, p1

    sget v1, Lcom/google/android/maps/driveabout/vector/bD;->d:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public a(LG/Q;)F
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->f:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/O;->a()Lcom/google/android/maps/driveabout/vector/bY;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/maps/driveabout/vector/bD;->d:F

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/bY;->a(LG/Q;)F

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)I
    .locals 4

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/T;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/T;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/T;->c()I

    move-result v1

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/T;->a(Lcom/google/android/maps/driveabout/vector/bF;)Lcom/google/android/maps/driveabout/vector/cm;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bD;->f:Lcom/google/android/maps/driveabout/vector/O;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/cm;->b()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/O;->a(Lcom/google/android/maps/driveabout/vector/bI;)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/bD;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/T;->c()I

    move-result v0

    or-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/vector/bF;->a(Lcom/google/android/maps/driveabout/vector/bI;)V

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->l:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->p:Lcom/google/android/maps/driveabout/vector/e;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->m:Lcom/google/android/maps/driveabout/vector/cb;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/maps/driveabout/vector/z;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/vector/z;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->m:Lcom/google/android/maps/driveabout/vector/cb;

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->m:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-interface {v1, p1}, Lcom/google/android/maps/driveabout/vector/cb;->a(Lcom/google/android/maps/driveabout/vector/bF;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bD;->p:Lcom/google/android/maps/driveabout/vector/e;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bD;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-interface {v2, v3, v1}, Lcom/google/android/maps/driveabout/vector/e;->a(Lcom/google/android/maps/driveabout/vector/bI;Ljava/util/List;)V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->l:Z

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->o:Lcom/google/android/maps/driveabout/vector/aQ;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->o:Lcom/google/android/maps/driveabout/vector/aQ;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/aQ;->a(Lcom/google/android/maps/driveabout/vector/bF;)V

    :cond_3
    return v0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->f:Lcom/google/android/maps/driveabout/vector/O;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/cm;->b()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/O;->a(Lcom/google/android/maps/driveabout/vector/bI;)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cm;->b()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->g:Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->k:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a()Lcom/google/android/maps/driveabout/vector/bI;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->h:Lcom/google/android/maps/driveabout/vector/bI;

    return-object v0
.end method

.method public declared-synchronized a(FF)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/af;->a(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/maps/driveabout/vector/af;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/cm;->b()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/af;-><init>(Lcom/google/android/maps/driveabout/vector/bI;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/af;->a(FF)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bD;->c:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/cm;Lcom/google/android/maps/driveabout/vector/bI;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(FI)V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/aC;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    check-cast p0, Lcom/google/android/maps/driveabout/vector/aC;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/aC;->a(F)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/vector/aC;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->g:Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bD;->f:Lcom/google/android/maps/driveabout/vector/O;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aC;-><init>(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/O;)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bD;->c:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/cm;Lcom/google/android/maps/driveabout/vector/bI;)V

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/aC;->a(F)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bD;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v0

    add-float v3, v0, p1

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/bD;->f:Lcom/google/android/maps/driveabout/vector/O;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v1

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v2

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v4

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    invoke-virtual {v6, v0}, Lcom/google/android/maps/driveabout/vector/O;->a(Lcom/google/android/maps/driveabout/vector/bI;)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/cm;I)V

    goto :goto_0
.end method

.method public a(LG/Q;I)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->g:Lcom/google/android/maps/driveabout/vector/bI;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v4

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/cm;I)V

    return-void
.end method

.method public a(LG/S;IIFI)V
    .locals 6

    const/high16 v4, 0x4380

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, LG/S;->f()LG/Q;

    move-result-object v1

    invoke-virtual {p1}, LG/S;->g()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    mul-float/2addr v0, p4

    int-to-float v2, p2

    div-float/2addr v0, v2

    invoke-virtual {p1}, LG/S;->h()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    mul-float/2addr v2, p4

    int-to-float v4, p3

    div-float/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v2, 0x41f0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    double-to-float v0, v4

    sget v4, Lcom/google/android/maps/driveabout/vector/bD;->a:F

    mul-float/2addr v0, v4

    sub-float/2addr v2, v0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    invoke-virtual {p0, v0, p5}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/cm;I)V

    goto :goto_0
.end method

.method public a(LG/Z;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->t:Lau/e;

    invoke-virtual {v0, p1}, Lau/e;->a(LG/Z;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aQ;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bD;->o:Lcom/google/android/maps/driveabout/vector/aQ;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bY;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->f:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/O;->a(Lcom/google/android/maps/driveabout/vector/bY;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bw;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bD;->n:Lcom/google/android/maps/driveabout/vector/bw;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->q:Z

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cm;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/cm;IZZ)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cm;IZZ)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/bD;->q:Z

    move v3, v0

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/bD;->q:Z

    move v3, v0

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/bD;->q:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bD;->g:Lcom/google/android/maps/driveabout/vector/bI;

    move-object v4, v0

    invoke-interface/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/cm;->b()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/bI;)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/driveabout/vector/bD;->i:F

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v5

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    if-eqz v3, :cond_2

    invoke-virtual {v5}, Lad/t;->z()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lad/t;->A()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v6, v5

    if-lez v5, :cond_3

    :cond_2
    sget-object v3, Lcom/google/android/maps/driveabout/vector/bD;->c:Lcom/google/android/maps/driveabout/vector/bI;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/cm;Lcom/google/android/maps/driveabout/vector/bI;)V

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/T;

    move v3, v0

    if-eqz v3, :cond_0

    check-cast p1, Lcom/google/android/maps/driveabout/vector/T;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/T;->a()V

    goto :goto_0

    :cond_3
    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v5

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v7

    add-float/2addr v5, v7

    const/high16 v7, 0x3f00

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/16 v7, 0x1e

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/high16 v7, 0x4000

    shr-int v5, v7, v5

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v8

    invoke-virtual {v7, v8}, LG/Q;->c(LG/Q;)F

    move-result v8

    int-to-float v7, v5

    div-float v10, v8, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bD;->r:I

    move v7, v0

    int-to-float v7, v7

    cmpg-float v7, v10, v7

    if-gtz v7, :cond_4

    const/4 v7, 0x1

    if-eqz p3, :cond_6

    const/4 v5, 0x0

    cmpl-float v5, v6, v5

    if-eqz v5, :cond_6

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v5, 0x4100

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v5, 0x4100

    div-float/2addr v3, v5

    const/high16 v5, 0x3f40

    mul-float/2addr v3, v5

    const/high16 v5, 0x3fc0

    add-float/2addr v3, v5

    const/high16 v5, 0x442f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    move v6, v3

    :goto_2
    const/4 v8, 0x0

    new-instance v3, Lcom/google/android/maps/driveabout/vector/bX;

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/maps/driveabout/vector/bX;-><init>(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/cm;IZF)V

    sget-object v4, Lcom/google/android/maps/driveabout/vector/bD;->c:Lcom/google/android/maps/driveabout/vector/bI;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/cm;Lcom/google/android/maps/driveabout/vector/bI;)V

    goto/16 :goto_0

    :cond_4
    if-eqz p4, :cond_5

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bD;->r:I

    move v3, v0

    int-to-float v3, v3

    sub-float v3, v10, v3

    const/high16 v6, 0x4e80

    int-to-float v5, v5

    div-float v5, v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bD;->r:I

    move v6, v0

    int-to-float v6, v6

    sub-float/2addr v5, v6

    div-float/2addr v3, v5

    const v5, 0x40833333

    mul-float/2addr v3, v5

    const v5, 0x3fb33333

    add-float/2addr v3, v5

    const/high16 v5, 0x442f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    const/16 v5, 0x9c4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bD;->s:F

    move v5, v0

    mul-float/2addr v3, v5

    float-to-int v6, v3

    const-wide/high16 v10, 0x4000

    const-wide v12, 0x40031eb851eb851fL

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    sget v3, Lcom/google/android/maps/driveabout/vector/bD;->a:F

    move v0, v3

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    mul-double/2addr v12, v14

    const-wide v14, 0x404d5ae147ae147bL

    sub-double/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v8, v10

    new-instance v3, Lcom/google/android/maps/driveabout/vector/bX;

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/maps/driveabout/vector/bX;-><init>(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/cm;IZF)V

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/cm;Lcom/google/android/maps/driveabout/vector/bI;)V

    goto/16 :goto_0

    :cond_5
    sget-object v3, Lcom/google/android/maps/driveabout/vector/bD;->c:Lcom/google/android/maps/driveabout/vector/bI;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/cm;Lcom/google/android/maps/driveabout/vector/bI;)V

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/T;

    move v3, v0

    if-eqz v3, :cond_0

    check-cast p1, Lcom/google/android/maps/driveabout/vector/T;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/T;->a()V

    goto/16 :goto_0

    :cond_6
    move v6, v3

    goto/16 :goto_2

    :cond_7
    move/from16 v3, p2

    goto/16 :goto_1
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/e;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bD;->p:Lcom/google/android/maps/driveabout/vector/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(FFFFFZ)F
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ai;

    const/4 v2, 0x0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/ai;->a(FFFFFFZ)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->i:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ai;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/cm;->b()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bD;->f:Lcom/google/android/maps/driveabout/vector/O;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/ai;-><init>(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/O;)V

    const/4 v2, 0x0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/ai;->a(FFFFFFZ)[F

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lcom/google/android/maps/driveabout/vector/bD;->c:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/cm;Lcom/google/android/maps/driveabout/vector/bI;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(FI)F
    .locals 7

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bD;->g:Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/bD;->f:Lcom/google/android/maps/driveabout/vector/O;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v1

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v2

    add-float/2addr v2, p1

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v3

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v4

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    invoke-virtual {v6, v0}, Lcom/google/android/maps/driveabout/vector/O;->a(Lcom/google/android/maps/driveabout/vector/bI;)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/cm;I)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v0

    return v0
.end method

.method public declared-synchronized b(FF)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/cg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cg;->a(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cg;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Lcom/google/android/maps/driveabout/vector/cm;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/cm;->b()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cg;-><init>(Lcom/google/android/maps/driveabout/vector/bI;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cg;->a(FF)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bD;->c:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/cm;Lcom/google/android/maps/driveabout/vector/bI;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->f:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/O;->a(F)V

    return-void
.end method

.method public d(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bD;->s:F

    return-void
.end method

.method public e()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->f:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/O;->a()Lcom/google/android/maps/driveabout/vector/bY;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, 0x4000

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/bY;->h()F

    move-result v0

    goto :goto_0
.end method

.method public f()Lcom/google/android/maps/driveabout/vector/bI;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->g:Lcom/google/android/maps/driveabout/vector/bI;

    return-object v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->i:F

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->k:Z

    return v0
.end method
