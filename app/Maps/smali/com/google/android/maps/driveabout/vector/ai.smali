.class Lcom/google/android/maps/driveabout/vector/ai;
.super Lcom/google/android/maps/driveabout/vector/M;


# instance fields
.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:Z

.field private volatile i:Z

.field private final j:Lcom/google/android/maps/driveabout/vector/O;

.field private final k:[F


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/O;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/M;-><init>(Lcom/google/android/maps/driveabout/vector/bI;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->k:[F

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/ai;->j:Lcom/google/android/maps/driveabout/vector/O;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Lcom/google/android/maps/driveabout/vector/cm;
    .locals 12

    const/high16 v8, 0x42c8

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_0
    iget v4, p0, Lcom/google/android/maps/driveabout/vector/ai;->d:F

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/ai;->e:F

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->f:F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ai;->g:F

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/ai;->h:Z

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ai;->b:F

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/ai;->c:F

    :goto_0
    iget v7, p0, Lcom/google/android/maps/driveabout/vector/ai;->b:F

    sub-float/2addr v7, v3

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/ai;->b:F

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/ai;->c:F

    sub-float/2addr v7, v6

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/ai;->c:F

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/ai;->d:F

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/ai;->f:F

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/ai;->e:F

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/ai;->g:F

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/google/android/maps/driveabout/vector/ai;->h:Z

    cmpl-float v7, v3, v9

    if-nez v7, :cond_4

    cmpl-float v7, v6, v9

    if-nez v7, :cond_4

    if-nez v2, :cond_0

    cmpl-float v7, v4, v0

    if-nez v7, :cond_4

    cmpl-float v7, v5, v1

    if-nez v7, :cond_4

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->i:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->a:Lcom/google/android/maps/driveabout/vector/bI;

    monitor-exit p0

    :goto_1
    return-object v0

    :cond_1
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ai;->b:F

    cmpg-float v3, v3, v9

    if-gez v3, :cond_2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ai;->b:F

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/ai;->b:F

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/ai;->b:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/ai;->b:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, v8

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :goto_2
    iget v6, p0, Lcom/google/android/maps/driveabout/vector/ai;->c:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_3

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/ai;->c:F

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/ai;->c:F

    iget v8, p0, Lcom/google/android/maps/driveabout/vector/ai;->c:F

    mul-float/2addr v7, v8

    const v8, -0x42333333

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ai;->b:F

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/ai;->b:F

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/ai;->b:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/ai;->b:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, v8

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_2

    :cond_3
    iget v6, p0, Lcom/google/android/maps/driveabout/vector/ai;->c:F

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/ai;->c:F

    iget v8, p0, Lcom/google/android/maps/driveabout/vector/ai;->c:F

    mul-float/2addr v7, v8

    const v8, 0x3dcccccd

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_0

    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_a

    cmpl-float v2, v4, v0

    if-nez v2, :cond_5

    cmpl-float v2, v5, v1

    if-eqz v2, :cond_a

    :cond_5
    move v2, v11

    :goto_3
    cmpl-float v7, v6, v9

    if-eqz v7, :cond_b

    move v7, v11

    :goto_4
    cmpl-float v8, v3, v9

    if-eqz v8, :cond_c

    move v8, v11

    :goto_5
    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ai;->a:Lcom/google/android/maps/driveabout/vector/bI;

    sub-float/2addr v0, v4

    sub-float/2addr v1, v5

    invoke-static {v2, p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/bF;FF)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->a:Lcom/google/android/maps/driveabout/vector/bI;

    if-nez v7, :cond_6

    if-eqz v8, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->a:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/bF;->a(Lcom/google/android/maps/driveabout/vector/bI;)V

    :cond_7
    if-eqz v7, :cond_8

    invoke-virtual {p1, v4, v5}, Lcom/google/android/maps/driveabout/vector/bF;->d(FF)LG/Q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ai;->j:Lcom/google/android/maps/driveabout/vector/O;

    invoke-static {p1, v1, v0, v6}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/O;LG/Q;F)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->a:Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz v8, :cond_8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->a:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/bF;->a(Lcom/google/android/maps/driveabout/vector/bI;)V

    :cond_8
    if-eqz v8, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->a:Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ai;->j:Lcom/google/android/maps/driveabout/vector/O;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/O;FFF)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->a:Lcom/google/android/maps/driveabout/vector/bI;

    :cond_9
    move-object v0, p0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    move v2, v10

    goto :goto_3

    :cond_b
    move v7, v10

    goto :goto_4

    :cond_c
    move v8, v10

    goto :goto_5
.end method

.method declared-synchronized a(FFFFFFZ)[F
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->b:F

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->c:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->c:F

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/ai;->d:F

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/ai;->e:F

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->h:Z

    if-nez v0, :cond_0

    if-nez p7, :cond_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->h:Z

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/ai;->f:F

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/ai;->g:F

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->i:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->k:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ai;->a:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ai;->b:F

    add-float/2addr v2, v3

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bD;->i()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->k:[F

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ai;->a:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ai;->c:F

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/google/android/maps/driveabout/vector/bD;->e(F)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->k:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->i:Z

    if-nez v0, :cond_1

    iput p5, p0, Lcom/google/android/maps/driveabout/vector/ai;->f:F

    iput p6, p0, Lcom/google/android/maps/driveabout/vector/ai;->g:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ai;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
