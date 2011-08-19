.class public Lcom/google/android/maps/driveabout/app/ax;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/maps/driveabout/app/ca;

.field private d:Landroid/database/sqlite/SQLiteDatabase;

.field private e:Ljava/util/HashMap;

.field private f:Ljava/util/HashMap;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "da_destination_history"

    new-instance v1, Lcom/google/android/maps/driveabout/app/cI;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/app/cI;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/app/ax;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/ca;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/ca;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ax;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ax;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/ax;->c:Lcom/google/android/maps/driveabout/app/ca;

    return-void
.end method

.method private a(ILjava/util/List;)F
    .locals 3

    const/4 v0, 0x1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/app/bn;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/bn;->f:I

    if-ne v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    const/high16 v1, 0x40e0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method private a(LG/y;Ljava/util/List;)F
    .locals 8

    const/high16 v6, 0x3f80

    if-nez p1, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, LG/Q;->a(LG/y;)LG/Q;

    move-result-object v0

    const v1, 0x3a83126f

    invoke-virtual {p1}, LG/y;->a()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3eb0c6f7a0b5ed8dL

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, LG/Q;->a(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x4080

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x40c90fdb

    mul-float/2addr v3, v2

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    div-float v3, v6, v3

    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/app/bn;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/bn;->b:LG/y;

    invoke-static {v6}, LG/Q;->a(LG/y;)LG/Q;

    move-result-object v6

    invoke-virtual {v0, v6}, LG/Q;->d(LG/Q;)F

    move-result v6

    mul-float/2addr v6, v1

    mul-float/2addr v6, v1

    neg-float v6, v6

    const/high16 v7, 0x4000

    mul-float/2addr v7, v2

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    double-to-float v6, v6

    add-float/2addr v4, v6

    goto :goto_1

    :cond_1
    mul-float v0, v4, v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3dcccccd

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private a(LF/u;ILjava/util/List;LG/y;II)Lcom/google/android/maps/driveabout/app/bv;
    .locals 2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/ax;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-direct {p0, p6, p3}, Lcom/google/android/maps/driveabout/app/ax;->a(ILjava/util/List;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-direct {p0, p5, p3}, Lcom/google/android/maps/driveabout/app/ax;->b(ILjava/util/List;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-direct {p0, p4, p3}, Lcom/google/android/maps/driveabout/app/ax;->a(LG/y;Ljava/util/List;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-direct {p0, p4, p3}, Lcom/google/android/maps/driveabout/app/ax;->b(LG/y;Ljava/util/List;)F

    move-result v1

    add-float/2addr v0, v1

    new-instance v1, Lcom/google/android/maps/driveabout/app/bv;

    invoke-direct {v1, p1, v0, p2}, Lcom/google/android/maps/driveabout/app/bv;-><init>(LF/u;FI)V

    return-object v1
.end method

.method private a(Lcom/google/android/maps/driveabout/app/dx;)Ljava/util/List;
    .locals 4

    iget-object v0, p1, Lcom/google/android/maps/driveabout/app/dx;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ax;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/app/dx;

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/app/dx;->a(Lcom/google/android/maps/driveabout/app/dx;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ax;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    move-object v0, p0

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/google/android/maps/driveabout/app/dx;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ax;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ax;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private a(Lcom/google/android/maps/driveabout/app/bn;)V
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/app/dx;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/app/bn;->c:LF/u;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/dx;-><init>(LF/u;)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/ax;->a(Lcom/google/android/maps/driveabout/app/dx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/google/android/maps/driveabout/app/ax;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/ax;->g:I

    return-void
.end method

.method private b(ILjava/util/List;)F
    .locals 5

    const/4 v4, 0x1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v4

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/app/bn;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/bn;->e:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v4, :cond_1

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    int-to-float v0, v1

    const/high16 v1, 0x4100

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method private b(LG/y;Ljava/util/List;)F
    .locals 8

    const/4 v7, 0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bn;

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/ax;->c:Lcom/google/android/maps/driveabout/app/ca;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/app/ca;->a()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/maps/driveabout/app/bn;->d:J

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget v3, v0, Lcom/google/android/maps/driveabout/app/bn;->a:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/ax;->g:I

    sub-int/2addr v4, v7

    if-ne v3, v4, :cond_1

    const-wide/32 v3, 0xdbba00

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    const/high16 v3, 0x3f00

    const/high16 v4, 0x3f80

    long-to-float v1, v1

    const v2, 0x4b5bba00

    div-float/2addr v1, v2

    sub-float v1, v4, v1

    mul-float/2addr v1, v3

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, LG/Q;->a(LG/y;)LG/Q;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/bn;->c:LF/u;

    invoke-virtual {v0}, LF/u;->e()LG/y;

    move-result-object v0

    invoke-static {v0}, LG/Q;->a(LG/y;)LG/Q;

    move-result-object v0

    const-wide v3, 0x407f400000000000L

    invoke-virtual {v2}, LG/Q;->e()D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-virtual {v2, v0}, LG/Q;->d(LG/Q;)F

    move-result v0

    float-to-double v5, v0

    mul-double v2, v3, v3

    cmpl-double v0, v5, v2

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ax;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    move v0, v12

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    :try_start_0
    new-instance v0, Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ax;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ax;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cU;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ax;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ax;->c:Lcom/google/android/maps/driveabout/app/ca;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/ca;->a()J

    move-result-wide v0

    const-wide v2, 0x134fd9000L

    sub-long/2addr v0, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ax;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "destination_history"

    const-string v3, "time<=?"

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ax;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ax;->f:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ax;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "destination_history"

    invoke-static {}, Lcom/google/android/maps/driveabout/app/bn;->b()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "time"

    const/16 v8, 0x1f4

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/maps/driveabout/app/ax;->g:I

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/bn;->a(ILandroid/database/Cursor;)Lcom/google/android/maps/driveabout/app/bn;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/app/ax;->a(Lcom/google/android/maps/driveabout/app/bn;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ax;->a()V

    iput-object v11, p0, Lcom/google/android/maps/driveabout/app/ax;->e:Ljava/util/HashMap;

    iput-object v11, p0, Lcom/google/android/maps/driveabout/app/ax;->f:Ljava/util/HashMap;

    move v0, v13

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v9

    move v0, v12

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(LG/y;I)Ljava/util/List;
    .locals 10

    const/4 v9, 0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/ax;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ax;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ax;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bn;

    iget-object v1, v0, Lcom/google/android/maps/driveabout/app/bn;->c:LF/u;

    iget v2, v0, Lcom/google/android/maps/driveabout/app/bn;->a:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ax;->c:Lcom/google/android/maps/driveabout/app/ca;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/ca;->c()I

    move-result v5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ax;->c:Lcom/google/android/maps/driveabout/app/ca;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/ca;->b()I

    move-result v6

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/ax;->a(LF/u;ILjava/util/List;LG/y;II)Lcom/google/android/maps/driveabout/app/bv;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v3, v0

    :goto_2
    if-ge v3, v1, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    sub-int/2addr v0, v9

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bv;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bv;->b(Lcom/google/android/maps/driveabout/app/bv;)LF/u;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ax;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ax;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ax;->d:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized a(LF/u;LF/u;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/ax;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/maps/driveabout/app/bn;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/ax;->g:I

    invoke-virtual {p1}, LF/u;->e()LG/y;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/ax;->c:Lcom/google/android/maps/driveabout/app/ca;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/app/ca;->a()J

    move-result-wide v4

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/ax;->c:Lcom/google/android/maps/driveabout/app/ca;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/app/ca;->c()I

    move-result v6

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/ax;->c:Lcom/google/android/maps/driveabout/app/ca;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/app/ca;->b()I

    move-result v7

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/bn;-><init>(ILG/y;LF/u;JII)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/ax;->a(Lcom/google/android/maps/driveabout/app/bn;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ax;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "destination_history"

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bn;->a()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
