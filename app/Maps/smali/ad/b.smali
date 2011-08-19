.class public final Lad/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static volatile b:Z

.field private static volatile c:Lad/t;

.field private static volatile d:Lcom/google/android/maps/driveabout/vector/R;

.field private static volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lad/t;

    new-instance v1, Law/e;

    sget-object v2, Ls/q;->e:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-direct {v0, v1}, Lad/t;-><init>(Law/e;)V

    sput-object v0, Lad/b;->c:Lad/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lad/t;
    .locals 2

    const-class v0, Lad/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lad/b;->c:Lad/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lad/t;)Lad/t;
    .locals 0

    sput-object p0, Lad/b;->c:Lad/t;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/R;)Lcom/google/android/maps/driveabout/vector/R;
    .locals 0

    sput-object p0, Lad/b;->d:Lcom/google/android/maps/driveabout/vector/R;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Lak/h;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lad/b;->b(Landroid/content/Context;Lak/h;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lak/h;Ljava/lang/Runnable;Z)V
    .locals 6

    sget-boolean v0, Lad/b;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lad/b;->a:Z

    new-instance v0, Lad/j;

    const-string v1, "ParameterManagerLoad"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lad/j;-><init>(Ljava/lang/String;Landroid/content/Context;Lak/h;Ljava/lang/Runnable;Z)V

    invoke-virtual {v0}, Lad/j;->start()V

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lad/b;->e:Z

    return p0
.end method

.method public static declared-synchronized b()Lad/t;
    .locals 2

    const-class v0, Lad/b;

    monitor-enter v0

    :goto_0
    :try_start_0
    sget-boolean v1, Lad/b;->b:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lad/b;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-class v1, Lad/b;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_2
    sget-boolean v1, Lad/b;->b:Z

    if-eqz v1, :cond_1

    sget-object v1, Lad/b;->c:Lad/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized b(Landroid/content/Context;Lak/h;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v3, 0x0

    const-class v7, Lad/b;

    monitor-enter v7

    :try_start_0
    sget-object v0, Ls/q;->c:Law/f;

    invoke-static {p0, p3, v0}, Las/a;->a(Landroid/content/Context;Ljava/lang/String;Law/f;)Law/e;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_0
    new-instance v2, Lad/t;

    invoke-direct {v2, v0}, Lad/t;-><init>(Law/e;)V

    sput-object v2, Lad/b;->c:Lad/t;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Law/e;->e(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v2, v0

    :goto_1
    sget-object v0, Ls/q;->c:Law/f;

    invoke-static {p0, p4, v0}, Las/a;->a(Landroid/content/Context;Ljava/lang/String;Law/f;)Law/e;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/R;->a(Law/e;)Lcom/google/android/maps/driveabout/vector/R;

    move-result-object v1

    sput-object v1, Lad/b;->d:Lcom/google/android/maps/driveabout/vector/R;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Law/e;->e(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_2
    const-class v1, Lad/b;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    move-object v4, v0

    :goto_3
    if-eqz p1, :cond_2

    sget-object v0, Lad/b;->d:Lcom/google/android/maps/driveabout/vector/R;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lak/h;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lad/b;->e:Z

    const-class v0, Lad/b;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    new-instance v0, Lad/c;

    invoke-direct {v0, p1, p2}, Lad/c;-><init>(Lak/h;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lak/h;->a(Lak/c;)V

    new-instance v0, Lad/h;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lad/h;-><init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lad/j;)V

    invoke-virtual {p1, v0}, Lak/h;->c(Lak/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v7

    return-void

    :cond_3
    :try_start_1
    new-instance v0, Law/e;

    sget-object v1, Ls/q;->c:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    new-instance v1, Law/e;

    sget-object v2, Ls/q;->e:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_0

    :cond_4
    move-object v2, v3

    goto :goto_1

    :cond_5
    move-object v0, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_6
    move-object v4, v3

    goto :goto_3
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lad/b;->b:Z

    return p0
.end method

.method public static declared-synchronized c()Lcom/google/android/maps/driveabout/vector/R;
    .locals 2

    const-class v0, Lad/b;

    monitor-enter v0

    :goto_0
    :try_start_0
    sget-object v1, Lad/b;->d:Lcom/google/android/maps/driveabout/vector/R;

    if-nez v1, :cond_0

    sget-boolean v1, Lad/b;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-class v1, Lad/b;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_2
    sget-object v1, Lad/b;->d:Lcom/google/android/maps/driveabout/vector/R;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static d()Z
    .locals 1

    sget-object v0, Lad/b;->d:Lcom/google/android/maps/driveabout/vector/R;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lad/b;->e:Z

    sput-boolean v0, Lad/b;->a:Z

    sput-boolean v0, Lad/b;->b:Z

    return-void
.end method

.method static synthetic f()Lcom/google/android/maps/driveabout/vector/R;
    .locals 1

    sget-object v0, Lad/b;->d:Lcom/google/android/maps/driveabout/vector/R;

    return-object v0
.end method
