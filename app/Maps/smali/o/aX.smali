.class public Lo/aX;
.super Ljava/lang/Object;


# static fields
.field private static a:J

.field private static b:I

.field private static c:[Lo/aq;

.field private static d:J

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, -0x8000

    sput-wide v0, Lo/aX;->a:J

    const/16 v0, 0x64

    sput v0, Lo/aX;->b:I

    const-wide/32 v0, 0xea60

    sput-wide v0, Lo/aX;->d:J

    const/4 v0, 0x4

    sput v0, Lo/aX;->e:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()I
    .locals 6

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    sget-wide v2, Lo/aX;->a:J

    const-wide/high16 v4, -0x8000

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    sget-wide v2, Lo/aX;->a:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    sget v0, Lo/aX;->b:I

    :goto_0
    return v0

    :cond_0
    sput-wide v0, Lo/aX;->a:J

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->al()I

    move-result v0

    sput v0, Lo/aX;->b:I

    sget v0, Lo/aX;->b:I

    goto :goto_0
.end method

.method public static a(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(ZJJ)J
    .locals 4

    if-eqz p0, :cond_0

    move-wide v0, p1

    :goto_0
    sget-wide v2, Lo/aX;->d:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    move-wide v0, p3

    goto :goto_0
.end method

.method public static declared-synchronized a(ZZ)J
    .locals 8

    const-wide/32 v6, 0x249f00

    const-wide/32 v4, 0xea60

    const-class v0, Lo/aX;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lo/aX;->k()[Lo/aq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    move-wide v1, v4

    :goto_0
    monitor-exit v0

    return-wide v1

    :cond_1
    move-wide v1, v6

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {}, Lo/aX;->j()Lo/aq;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz p0, :cond_3

    invoke-virtual {v2}, Lo/aq;->b()I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lo/aq;->c()I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed battery steps "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, LA/r;->a([Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at battery level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lo/aX;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x42

    const-string v3, "m"

    invoke-static {v2, v3, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_5

    move-wide v1, v4

    goto :goto_0

    :cond_5
    move-wide v1, v6

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static a(I[Lo/aq;)Lo/aq;
    .locals 2

    const/4 v1, 0x0

    aget-object v0, p1, v1

    invoke-virtual {v0}, Lo/aq;->a()I

    move-result v0

    if-le p0, v0, :cond_0

    aget-object v0, p1, v1

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lo/aq;->a()I

    move-result v1

    if-gt p0, v1, :cond_1

    aget-object v0, p1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not get here."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized a(Law/e;)V
    .locals 2

    const-class v0, Lo/aX;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lo/aX;->a(Law/e;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Law/e;Z)V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x0

    invoke-virtual {p0, v5}, Law/e;->i(I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lo/aX;->c:[Lo/aq;

    if-eqz v1, :cond_2

    sget-object v1, Lo/aX;->c:[Lo/aq;

    array-length v1, v1

    new-array v1, v1, [Lo/aq;

    sget-object v2, Lo/aX;->c:[Lo/aq;

    sget-object v3, Lo/aX;->c:[Lo/aq;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    new-array v1, v0, [Lo/aq;

    move v2, v4

    :goto_1
    if-ge v2, v0, :cond_4

    new-instance v3, Lo/aq;

    invoke-virtual {p0, v5, v2}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-direct {v3, v4}, Lo/aq;-><init>(Law/e;)V

    const/4 v4, 0x1

    if-lt v2, v4, :cond_3

    :cond_3
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    sput-object v1, Lo/aX;->c:[Lo/aq;

    if-nez p1, :cond_0

    invoke-static {p0}, Lo/aX;->b(Law/e;)V

    goto :goto_0
.end method

.method public static b(I)D
    .locals 2

    invoke-static {}, Lo/aX;->j()Lo/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lo/aq;->a(I)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x3fe3333333333333L

    goto :goto_0
.end method

.method private static b(Law/e;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "LOCATION_REPORTING_INTERVAL_SETTINGS"

    invoke-virtual {p0}, Law/e;->f()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ln/a;->a(Ljava/lang/String;[B)Z

    invoke-interface {v0}, Ln/a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized b()Z
    .locals 2

    const-class v0, Lo/aX;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lo/aX;->j()Lo/aq;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/aq;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c(I)I
    .locals 1

    invoke-static {}, Lo/aX;->j()Lo/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lo/aq;->b(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static declared-synchronized c()J
    .locals 3

    const-class v0, Lo/aX;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lo/aX;->j()Lo/aq;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/aq;->e()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    int-to-long v1, v1

    :goto_0
    monitor-exit v0

    return-wide v1

    :cond_0
    const-wide/32 v1, 0x249f00

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d()J
    .locals 3

    const-class v0, Lo/aX;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lo/aX;->j()Lo/aq;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/aq;->h()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    int-to-long v1, v1

    :goto_0
    monitor-exit v0

    return-wide v1

    :cond_0
    :try_start_1
    sget-wide v1, Lo/aX;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static d(I)J
    .locals 2

    invoke-static {}, Lo/aX;->j()Lo/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lo/aq;->c(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x493e0

    goto :goto_0
.end method

.method public static declared-synchronized e()Z
    .locals 5

    const-class v0, Lo/aX;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lo/aX;->d()J

    move-result-wide v1

    sget-wide v3, Lo/aX;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized f()Z
    .locals 4

    const/4 v3, 0x0

    const-class v0, Lo/aX;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lo/aX;->j()Lo/aq;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lo/aq;->g()I

    move-result v1

    sget v2, Lo/aX;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized g()V
    .locals 3

    const-class v0, Lo/aX;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lo/aX;->d()J

    move-result-wide v1

    sput-wide v1, Lo/aX;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized h()V
    .locals 2

    const-class v0, Lo/aX;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lo/aX;->j()Lo/aq;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/aq;->g()I

    move-result v1

    sput v1, Lo/aX;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized i()Z
    .locals 4

    const/4 v3, 0x0

    const-class v0, Lo/aX;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lo/aX;->k()[Lo/aq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    invoke-static {}, Lo/aX;->j()Lo/aq;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lo/aq;->g()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static j()Lo/aq;
    .locals 3

    invoke-static {}, Lo/aX;->k()[Lo/aq;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lo/aX;->a()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/16 v1, 0x32

    :cond_1
    invoke-static {v1, v0}, Lo/aX;->a(I[Lo/aq;)Lo/aq;

    move-result-object v0

    goto :goto_0
.end method

.method public static k()[Lo/aq;
    .locals 1

    sget-object v0, Lo/aX;->c:[Lo/aq;

    if-nez v0, :cond_0

    invoke-static {}, Lo/aX;->w()V

    :cond_0
    sget-object v0, Lo/aX;->c:[Lo/aq;

    return-object v0
.end method

.method public static declared-synchronized l()V
    .locals 2

    const-class v0, Lo/aX;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lo/aX;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static m()Z
    .locals 1

    invoke-static {}, Lo/aX;->j()Lo/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/aq;->i()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static n()J
    .locals 2

    invoke-static {}, Lo/aX;->j()Lo/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/aq;->j()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x2710

    goto :goto_0
.end method

.method public static o()D
    .locals 2

    invoke-static {}, Lo/aX;->j()Lo/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/aq;->k()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3fe0

    goto :goto_0
.end method

.method public static p()I
    .locals 1

    invoke-static {}, Lo/aX;->j()Lo/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/aq;->l()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x12c

    goto :goto_0
.end method

.method public static q()I
    .locals 1

    invoke-static {}, Lo/aX;->j()Lo/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/aq;->m()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xd

    goto :goto_0
.end method

.method public static r()I
    .locals 1

    invoke-static {}, Lo/aX;->j()Lo/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/aq;->n()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static s()J
    .locals 2

    invoke-static {}, Lo/aX;->j()Lo/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/aq;->o()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x2bf20

    goto :goto_0
.end method

.method public static t()I
    .locals 1

    invoke-static {}, Lo/aX;->j()Lo/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/aq;->p()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static u()I
    .locals 1

    invoke-static {}, Lo/aX;->j()Lo/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/aq;->q()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x12c

    goto :goto_0
.end method

.method public static v()I
    .locals 1

    invoke-static {}, Lo/aX;->j()Lo/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/aq;->r()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc8

    goto :goto_0
.end method

.method private static w()V
    .locals 3

    :try_start_0
    new-instance v0, Law/e;

    sget-object v1, Ls/N;->e:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->g()Ln/a;

    move-result-object v1

    const-string v2, "LOCATION_REPORTING_INTERVAL_SETTINGS"

    invoke-interface {v1, v2}, Ln/a;->b_(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v1}, Law/e;->a([B)Law/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/aX;->a(Law/e;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
