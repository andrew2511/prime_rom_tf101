.class public Lcom/google/android/maps/driveabout/app/ck;
.super Ljava/lang/Object;


# static fields
.field private static volatile k:I


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/bS;

.field private b:F

.field private c:J

.field private d:Laa/E;

.field private e:LG/m;

.field private f:I

.field private g:F

.field private h:J

.field private i:D

.field private final j:Lac/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x7d0

    sput v0, Lcom/google/android/maps/driveabout/app/ck;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/bS;Lac/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ck;->a:Lcom/google/android/maps/driveabout/vector/bS;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ck;->j:Lac/p;

    return-void
.end method

.method private a(LG/m;LG/Q;)I
    .locals 10

    invoke-virtual {p1}, LG/m;->b()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-instance v1, LG/Q;

    invoke-direct {v1}, LG/Q;-><init>()V

    new-instance v2, LG/Q;

    invoke-direct {v2}, LG/Q;-><init>()V

    new-instance v3, LG/Q;

    invoke-direct {v3}, LG/Q;-><init>()V

    const v4, 0x7f7fffff

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v9, v6

    move v6, v4

    move v4, v9

    :goto_0
    if-ge v4, v0, :cond_1

    invoke-virtual {p1, v4, v1}, LG/m;->a(ILG/Q;)V

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v7, v2}, LG/m;->a(ILG/Q;)V

    invoke-static {v1, v2, p2, v3}, LG/Q;->b(LG/Q;LG/Q;LG/Q;LG/Q;)F

    move-result v7

    cmpg-float v8, v7, v6

    if-gez v8, :cond_0

    move v5, v4

    move v6, v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v5
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/google/android/maps/driveabout/app/ck;->k:I

    return-void
.end method

.method private static b(Laa/E;)Z
    .locals 2

    invoke-virtual {p0}, Laa/E;->f()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(LG/m;IFIF)F
    .locals 9

    if-ne p2, p4, :cond_0

    invoke-virtual {p1, p2}, LG/m;->a(I)LG/Q;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, LG/m;->a(I)LG/Q;

    move-result-object v1

    invoke-virtual {v0, v1}, LG/Q;->c(LG/Q;)F

    move-result v0

    sub-float v1, p5, p3

    mul-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    if-le p2, p4, :cond_3

    const/4 v0, 0x1

    move v1, p3

    move v2, p2

    move v3, p5

    move v4, p4

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {p1, v4}, LG/m;->a(I)LG/Q;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v7}, LG/m;->a(I)LG/Q;

    move-result-object v7

    invoke-virtual {v6, v7}, LG/Q;->c(LG/Q;)F

    move-result v6

    const/high16 v8, 0x3f80

    sub-float v3, v8, v3

    mul-float/2addr v3, v6

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v3

    move v3, v4

    move-object v4, v7

    :goto_2
    if-ge v3, v2, :cond_1

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1, v6}, LG/m;->a(I)LG/Q;

    move-result-object v6

    invoke-virtual {v4, v6}, LG/Q;->c(LG/Q;)F

    move-result v4

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v4

    move-object v4, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, LG/m;->a(I)LG/Q;

    move-result-object v2

    invoke-virtual {v4, v2}, LG/Q;->c(LG/Q;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v5

    if-eqz v0, :cond_2

    neg-float v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, p5

    move v2, p4

    move v3, p3

    move v4, p2

    goto :goto_1
.end method

.method public declared-synchronized a()I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ck;->j:Lac/p;

    invoke-interface {v0}, Lac/p;->c()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ck;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/ck;->c:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/ck;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/ck;->h:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/ck;->h:J

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/ck;->b(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Laa/E;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ck;->d:Laa/E;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Laa/E;->n()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ck;->d:Laa/E;

    invoke-virtual {v2}, Laa/E;->n()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :cond_0
    invoke-virtual {p1}, Laa/E;->n()J

    move-result-wide v1

    sget v3, Lcom/google/android/maps/driveabout/app/ck;->k:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/maps/driveabout/app/ck;->c:J

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/ck;->a(Laa/E;I)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ck;->d:Laa/E;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Laa/E;I)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/ck;->a:Lcom/google/android/maps/driveabout/vector/bS;

    move-object v3, v0

    invoke-virtual/range {p1 .. p1}, Laa/E;->f()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const v4, 0x3f2b851f

    :goto_0
    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/vector/bS;->b(F)V

    invoke-virtual/range {p1 .. p1}, Laa/E;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, LG/Q;->a(D)D

    move-result-wide v9

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v3

    invoke-virtual {v3}, Lad/t;->f()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual/range {p1 .. p1}, Laa/E;->i()LF/i;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Laa/E;->j()Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {v5}, LF/i;->d()D

    move-result-wide v11

    div-double/2addr v11, v9

    cmpg-double v3, v11, v3

    if-gez v3, :cond_3

    invoke-virtual {v5}, LF/i;->a()LF/M;

    move-result-object v3

    invoke-virtual {v3}, LF/M;->m()LG/m;

    move-result-object v3

    invoke-virtual {v5}, LF/i;->e()I

    move-result v4

    invoke-virtual {v5}, LF/i;->b()LG/Q;

    move-result-object v5

    move-object v11, v5

    move v7, v4

    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_9

    invoke-static/range {p1 .. p1}, Lcom/google/android/maps/driveabout/app/ck;->b(Laa/E;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v4, v7}, LG/m;->a(I)LG/Q;

    move-result-object v12

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v4, v3}, LG/m;->a(I)LG/Q;

    move-result-object v13

    invoke-static {v12, v13}, LG/H;->b(LG/Q;LG/Q;)F

    move-result v14

    const-wide/16 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Laa/E;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual/range {p1 .. p1}, Laa/E;->getSpeed()F

    move-result v3

    float-to-double v5, v3

    mul-double/2addr v5, v9

    const-wide v15, 0x408f400000000000L

    div-double/2addr v5, v15

    invoke-virtual/range {p1 .. p1}, Laa/E;->getBearing()F

    move-result v3

    sub-float v3, v14, v3

    float-to-double v15, v3

    const-wide v17, 0x3f91df46a2529d39L

    mul-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v5, v15

    move-wide v15, v5

    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/ck;->e:LG/m;

    move-object v3, v0

    if-ne v4, v3, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/ck;->f:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/ck;->g:F

    move v6, v0

    invoke-static {v12, v13, v11}, LG/Q;->d(LG/Q;LG/Q;LG/Q;)F

    move-result v8

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/maps/driveabout/app/ck;->a(LG/m;IFIF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    invoke-virtual/range {p1 .. p1}, Laa/E;->getAccuracy()F

    move-result v8

    move v0, v8

    float-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v8, v18, v9

    cmpg-double v5, v5, v8

    if-gez v5, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/ck;->f:I

    move v5, v0

    invoke-virtual {v4, v5}, LG/m;->c(I)F

    move-result v5

    sub-float/2addr v5, v14

    float-to-double v5, v5

    const-wide v8, 0x3f91df46a2529d39L

    mul-double/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v15

    if-lez p2, :cond_0

    move/from16 v0, p2

    int-to-float v0, v0

    move v8, v0

    div-float/2addr v3, v8

    float-to-double v8, v3

    add-double/2addr v5, v8

    :cond_0
    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/maps/driveabout/app/ck;->i:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/maps/driveabout/app/ck;->i:D

    move-wide v8, v0

    const-wide v15, 0x3f847ae147ae147bL

    cmpl-double v3, v8, v15

    if-ltz v3, :cond_a

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/driveabout/app/ck;->b:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/ck;->a:Lcom/google/android/maps/driveabout/vector/bS;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/ck;->b:F

    move v8, v0

    invoke-virtual {v3, v8}, Lcom/google/android/maps/driveabout/vector/bS;->a(F)V

    move/from16 v3, v17

    :goto_3
    if-eqz v3, :cond_1

    invoke-static {v12, v13, v11}, LG/Q;->d(LG/Q;LG/Q;LG/Q;)F

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/driveabout/app/ck;->g:F

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/maps/driveabout/app/ck;->i:D

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/app/ck;->e:LG/m;

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/driveabout/app/ck;->f:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/maps/driveabout/app/ck;->i:D

    move-wide v3, v0

    const-wide v5, 0x3f847ae147ae147bL

    cmpg-double v3, v3, v5

    if-gez v3, :cond_7

    invoke-virtual/range {p1 .. p1}, Laa/E;->getBearing()F

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/driveabout/app/ck;->b:F

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/ck;->j:Lac/p;

    move-object v3, v0

    invoke-interface {v3}, Lac/p;->c()J

    move-result-wide v3

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/maps/driveabout/app/ck;->h:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/app/ck;->b()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/maps/driveabout/app/ck;->h:J

    move-wide v3, v0

    invoke-virtual/range {p1 .. p1}, Laa/E;->n()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v3, v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/ck;->b(I)I

    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/ck;->a:Lcom/google/android/maps/driveabout/vector/bS;

    move-object v3, v0

    invoke-virtual/range {p1 .. p1}, Laa/E;->getAccuracy()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/vector/bS;->c(I)V

    return-void

    :cond_2
    const/high16 v4, 0x3f80

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Laa/E;->e()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual/range {p1 .. p1}, Laa/E;->g()LG/i;

    move-result-object v3

    invoke-virtual {v3}, LG/i;->c()LG/m;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Laa/E;->h()LG/Q;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/ck;->a(LG/m;LG/Q;)I

    move-result v5

    invoke-virtual {v3, v5}, LG/m;->c(I)F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Laa/E;->getBearing()F

    move-result v7

    sub-float v6, v7, v6

    const/high16 v7, -0x3ccc

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_4

    const/high16 v7, 0x43b4

    add-float/2addr v6, v7

    :cond_4
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x42b4

    cmpl-float v6, v6, v7

    if-lez v6, :cond_c

    invoke-virtual {v3}, LG/m;->e()LG/m;

    move-result-object v3

    invoke-virtual {v3}, LG/m;->b()I

    move-result v6

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    sub-int v5, v6, v5

    move-object v11, v4

    move v7, v5

    move-object v4, v3

    goto/16 :goto_1

    :cond_5
    const/4 v3, 0x1

    move-wide v5, v15

    goto/16 :goto_3

    :cond_6
    const/4 v3, 0x1

    move-wide v5, v15

    goto/16 :goto_3

    :cond_7
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/driveabout/app/ck;->b:F

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/ck;->a:Lcom/google/android/maps/driveabout/vector/bS;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/ck;->b:F

    move v4, v0

    invoke-virtual {v3, v11, v4}, Lcom/google/android/maps/driveabout/vector/bS;->a(LG/Q;F)V

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/app/ck;->e:LG/m;

    invoke-virtual/range {p1 .. p1}, Laa/E;->getBearing()F

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/driveabout/app/ck;->b:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/ck;->a:Lcom/google/android/maps/driveabout/vector/bS;

    move-object v3, v0

    invoke-virtual/range {p1 .. p1}, Laa/E;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Laa/E;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, LG/Q;->a(DD)LG/Q;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/ck;->b:F

    move v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/bS;->a(LG/Q;F)V

    goto/16 :goto_5

    :cond_a
    move/from16 v3, v17

    goto/16 :goto_3

    :cond_b
    move-wide v15, v5

    goto/16 :goto_2

    :cond_c
    move-object v11, v4

    move v7, v5

    move-object v4, v3

    goto/16 :goto_1

    :cond_d
    move-object v11, v8

    move-object v4, v6

    goto/16 :goto_1
.end method

.method b(I)I
    .locals 13

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    if-ltz p1, :cond_0

    sget v0, Lcom/google/android/maps/driveabout/app/ck;->k:I

    if-le p1, v0, :cond_1

    :cond_0
    move v0, v10

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ck;->e:LG/m;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/ck;->f:I

    invoke-virtual {v0, v1}, LG/m;->a(I)LG/Q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ck;->e:LG/m;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/ck;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, LG/m;->a(I)LG/Q;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/ck;->g:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/app/ck;->i:D

    int-to-double v6, p1

    mul-double/2addr v4, v6

    invoke-virtual {v0, v1}, LG/Q;->c(LG/Q;)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/google/android/maps/driveabout/app/ck;->g:F

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_1
    iget v2, p0, Lcom/google/android/maps/driveabout/app/ck;->g:F

    cmpl-float v2, v2, v11

    if-lez v2, :cond_4

    iget v2, p0, Lcom/google/android/maps/driveabout/app/ck;->f:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/ck;->e:LG/m;

    invoke-virtual {v3}, LG/m;->b()I

    move-result v3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ck;->a:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-static {v1, v0}, LG/H;->b(LG/Q;LG/Q;)F

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/bS;->a(LG/Q;F)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ck;->e:LG/m;

    move v0, v10

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/google/android/maps/driveabout/app/ck;->g:F

    sub-float/2addr v2, v11

    iput v2, p0, Lcom/google/android/maps/driveabout/app/ck;->g:F

    iget v2, p0, Lcom/google/android/maps/driveabout/app/ck;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/app/ck;->f:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ck;->e:LG/m;

    iget v3, p0, Lcom/google/android/maps/driveabout/app/ck;->f:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, LG/m;->a(I)LG/Q;

    move-result-object v2

    invoke-static {v0, v2}, LG/H;->b(LG/Q;LG/Q;)F

    move-result v3

    iget v4, p0, Lcom/google/android/maps/driveabout/app/ck;->b:F

    sub-float/2addr v4, v3

    float-to-double v4, v4

    const-wide v6, 0x3f91df46a2529d39L

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget v6, p0, Lcom/google/android/maps/driveabout/app/ck;->g:F

    float-to-double v6, v6

    invoke-virtual {v1, v0}, LG/Q;->c(LG/Q;)F

    move-result v1

    invoke-virtual {v0, v2}, LG/Q;->c(LG/Q;)F

    move-result v8

    div-float/2addr v1, v8

    float-to-double v8, v1

    mul-double/2addr v8, v4

    mul-double/2addr v6, v8

    double-to-float v1, v6

    iput v1, p0, Lcom/google/android/maps/driveabout/app/ck;->g:F

    iget-wide v6, p0, Lcom/google/android/maps/driveabout/app/ck;->i:D

    mul-double/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/maps/driveabout/app/ck;->i:D

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/app/ck;->i:D

    const-wide v6, 0x3f847ae147ae147bL

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_3

    iput v3, p0, Lcom/google/android/maps/driveabout/app/ck;->b:F

    :cond_3
    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ck;->a:Lcom/google/android/maps/driveabout/vector/bS;

    iget v3, p0, Lcom/google/android/maps/driveabout/app/ck;->g:F

    invoke-virtual {v1, v0, v3}, LG/Q;->a(LG/Q;F)LG/Q;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/ck;->b:F

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/bS;->a(LG/Q;F)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ck;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    move v0, v10

    goto/16 :goto_0
.end method

.method public b()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ck;->e:LG/m;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/app/ck;->i:D

    const-wide v2, 0x3f847ae147ae147bL

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/av;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ck;->a:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bS;->r()Lcom/google/android/maps/driveabout/vector/av;

    move-result-object v0

    return-object v0
.end method
