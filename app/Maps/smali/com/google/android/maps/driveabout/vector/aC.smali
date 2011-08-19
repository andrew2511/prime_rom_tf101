.class Lcom/google/android/maps/driveabout/vector/aC;
.super Lcom/google/android/maps/driveabout/vector/M;


# instance fields
.field private b:F

.field private volatile c:Z

.field private final d:Lcom/google/android/maps/driveabout/vector/O;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/O;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/M;-><init>(Lcom/google/android/maps/driveabout/vector/bI;)V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/aC;->d:Lcom/google/android/maps/driveabout/vector/O;

    return-void
.end method

.method private a(LG/Q;)[F
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aC;->b(LG/Q;)F

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p1}, LG/Q;->f()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, LG/Q;->g()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    aput v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, LG/Q;->h()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v0

    aput v0, v1, v2

    return-object v1
.end method

.method private b(F)D
    .locals 2

    const/high16 v0, 0x3f80

    const/high16 v1, -0x4080

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private b(LG/Q;)F
    .locals 3

    invoke-virtual {p1}, LG/Q;->f()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, LG/Q;->g()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, LG/Q;->h()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Lcom/google/android/maps/driveabout/vector/cm;
    .locals 18

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/aC;->b:F

    move v3, v0

    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/driveabout/vector/aC;->b:F

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/aC;->c:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aC;->a:Lcom/google/android/maps/driveabout/vector/bI;

    move-object v3, v0

    monitor-exit p0

    :goto_0
    return-object v3

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/bF;->l()LG/Q;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aC;->a:Lcom/google/android/maps/driveabout/vector/bI;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/bF;->e()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f40

    mul-float/2addr v7, v8

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bF;->d(FF)LG/Q;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aC;->d:Lcom/google/android/maps/driveabout/vector/O;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/vector/O;->b()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aC;->a:Lcom/google/android/maps/driveabout/vector/bI;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v8

    invoke-static {v8}, Lcom/google/android/maps/driveabout/vector/O;->b(F)F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    const/4 v3, 0x0

    move v6, v3

    :cond_1
    :goto_1
    const/high16 v3, 0x42b4

    sub-float/2addr v3, v6

    float-to-double v3, v3

    const-wide v8, 0x3f91df46a2529d39L

    mul-double/2addr v8, v3

    invoke-static {v7}, LG/Q;->a(LG/Q;)LG/Q;

    move-result-object v3

    invoke-virtual {v3}, LG/Q;->f()I

    move-result v4

    invoke-virtual {v5}, LG/Q;->f()I

    move-result v10

    sub-int/2addr v4, v10

    invoke-virtual {v3}, LG/Q;->g()I

    move-result v10

    invoke-virtual {v5}, LG/Q;->g()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v3}, LG/Q;->h()I

    move-result v11

    invoke-virtual {v5}, LG/Q;->h()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v3, v4, v10, v11}, LG/Q;->a(III)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/aC;->a(LG/Q;)[F

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aC;->a:Lcom/google/android/maps/driveabout/vector/bI;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v4

    invoke-virtual {v4}, LG/Q;->f()I

    move-result v10

    invoke-virtual {v5}, LG/Q;->f()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v4}, LG/Q;->g()I

    move-result v11

    invoke-virtual {v5}, LG/Q;->g()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v4}, LG/Q;->h()I

    move-result v12

    invoke-virtual {v5}, LG/Q;->h()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v4, v10, v11, v12}, LG/Q;->a(III)V

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/aC;->a(LG/Q;)[F

    move-result-object v4

    const/4 v10, 0x0

    aget v10, v3, v10

    const/4 v11, 0x0

    aget v11, v4, v11

    mul-float/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v3, v11

    const/4 v12, 0x1

    aget v12, v4, v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/4 v11, 0x2

    aget v3, v3, v11

    const/4 v11, 0x2

    aget v4, v4, v11

    mul-float/2addr v3, v4

    add-float/2addr v3, v10

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/aC;->b(F)D

    move-result-wide v10

    invoke-virtual {v7, v5}, LG/Q;->c(LG/Q;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    div-double v3, v12, v3

    neg-double v3, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aC;->a:Lcom/google/android/maps/driveabout/vector/bI;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3f91df46a2529d39L

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v3

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v3, v14

    neg-double v3, v3

    double-to-int v3, v3

    new-instance v4, LG/Q;

    invoke-virtual {v7}, LG/Q;->f()I

    move-result v14

    add-int v14, v14, v16

    invoke-virtual {v7}, LG/Q;->g()I

    move-result v7

    add-int/2addr v3, v7

    invoke-direct {v4, v14, v3}, LG/Q;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aC;->a:Lcom/google/android/maps/driveabout/vector/bI;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v3

    invoke-virtual {v3, v5}, LG/Q;->c(LG/Q;)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aC;->a:Lcom/google/android/maps/driveabout/vector/bI;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v5

    invoke-static {v5}, Lcom/google/android/maps/driveabout/vector/bI;->b(F)F

    move-result v5

    div-float v3, v5, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    div-double v10, v12, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    div-double v7, v12, v7

    add-double/2addr v7, v10

    double-to-float v5, v7

    mul-float/2addr v3, v5

    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/bI;->a(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aC;->d:Lcom/google/android/maps/driveabout/vector/O;

    move-object v9, v0

    new-instance v3, Lcom/google/android/maps/driveabout/vector/bI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aC;->a:Lcom/google/android/maps/driveabout/vector/bI;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    invoke-virtual {v9, v3}, Lcom/google/android/maps/driveabout/vector/O;->a(Lcom/google/android/maps/driveabout/vector/bI;)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/aC;->a:Lcom/google/android/maps/driveabout/vector/bI;

    move-object/from16 v3, p0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_2
    cmpl-float v4, v3, v6

    if-gtz v4, :cond_1

    move v6, v3

    goto/16 :goto_1
.end method

.method declared-synchronized a(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aC;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aC;->b:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aC;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aC;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
