.class public Lt/w;
.super Ljava/lang/Object;

# interfaces
.implements Lak/c;


# static fields
.field private static a:Lt/w;


# instance fields
.field private final b:Lak/h;

.field private final c:Lac/p;

.field private final d:Lad/g;

.field private final e:Lad/g;

.field private final f:Lt/ao;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lt/w;->b:Lak/h;

    iput-object v0, p0, Lt/w;->c:Lac/p;

    iput-object v0, p0, Lt/w;->d:Lad/g;

    iput-object v0, p0, Lt/w;->e:Lad/g;

    iput-object v0, p0, Lt/w;->f:Lt/ao;

    return-void
.end method

.method private constructor <init>(Lak/h;Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/w;->b:Lak/h;

    iget-object v0, p0, Lt/w;->b:Lak/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt/w;->b:Lak/h;

    invoke-virtual {v0, p0}, Lak/h;->a(Lak/c;)V

    :cond_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    iput-object v0, p0, Lt/w;->c:Lac/p;

    new-instance v0, Lad/g;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lad/g;-><init>(I)V

    iput-object v0, p0, Lt/w;->d:Lad/g;

    new-instance v0, Lad/g;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lad/g;-><init>(I)V

    iput-object v0, p0, Lt/w;->e:Lad/g;

    invoke-static {p2}, Lt/ao;->a(Ljava/io/File;)Lt/ao;

    move-result-object v0

    iput-object v0, p0, Lt/w;->f:Lt/ao;

    return-void
.end method

.method static synthetic a(Lt/w;)Lt/ao;
    .locals 1

    iget-object v0, p0, Lt/w;->f:Lt/ao;

    return-object v0
.end method

.method public static a(Lak/h;Ljava/io/File;)Lt/w;
    .locals 1

    sget-object v0, Lt/w;->a:Lt/w;

    if-nez v0, :cond_0

    new-instance v0, Lt/w;

    invoke-direct {v0, p0, p1}, Lt/w;-><init>(Lak/h;Ljava/io/File;)V

    sput-object v0, Lt/w;->a:Lt/w;

    :cond_0
    sget-object v0, Lt/w;->a:Lt/w;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lt/aB;)V
    .locals 4

    new-instance v0, Law/e;

    sget-object v1, Ls/r;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILjava/lang/String;)V

    invoke-virtual {p2}, Lt/aB;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p2}, Lt/aB;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    :cond_0
    new-instance v1, Lt/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p2, v2}, Lt/b;-><init>(Lt/w;Law/e;Lt/aB;Lt/av;)V

    new-instance v0, LaT/g;

    const-string v2, "addRequest"

    invoke-direct {v0, v2, v1}, LaT/g;-><init>(Ljava/lang/String;Lak/d;)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    iget-object v0, p0, Lt/w;->b:Lak/h;

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public static c()Lt/w;
    .locals 1

    sget-object v0, Lt/w;->a:Lt/w;

    return-object v0
.end method

.method public static d()V
    .locals 1

    sget-object v0, Lt/w;->a:Lt/w;

    if-eqz v0, :cond_0

    sget-object v0, Lt/w;->a:Lt/w;

    invoke-virtual {v0}, Lt/w;->a()V

    const/4 v0, 0x0

    sput-object v0, Lt/w;->a:Lt/w;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lt/ae;)Lt/aB;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lt/w;->a(Ljava/lang/String;Lt/ae;Z)Lt/aB;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lt/ae;Z)Lt/aB;
    .locals 7

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    iget-object v2, p0, Lt/w;->e:Lad/g;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lt/w;->e:Lad/g;

    invoke-virtual {v0, p1}, Lad/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/aB;

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lt/aB;

    invoke-direct {v0}, Lt/aB;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lt/aB;->a(Z)V

    iget-object v1, p0, Lt/w;->e:Lad/g;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v3}, Lad/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lt/w;->c:Lac/p;

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    invoke-virtual {v0}, Lt/aB;->g()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-gez v3, :cond_1

    invoke-direct {p0, p1, v0}, Lt/w;->a(Ljava/lang/String;Lt/aB;)V

    invoke-virtual {v0, v1, v2}, Lt/aB;->a(J)V

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lt/aB;->b()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p2}, Lt/aB;->a(Lt/ae;)V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    iget-object v1, p0, Lt/w;->d:Lad/g;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lt/w;->d:Lad/g;

    invoke-virtual {v0, p1}, Lad/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/aB;

    if-nez v0, :cond_4

    iget-object v0, p0, Lt/w;->f:Lt/ao;

    invoke-virtual {v0, p1}, Lt/ao;->a(Ljava/lang/String;)Lt/aB;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Lt/aB;

    invoke-direct {v0}, Lt/aB;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lt/aB;->a(Z)V

    :cond_5
    iget-object v2, p0, Lt/w;->d:Lad/g;

    invoke-virtual {v2, p1, v0}, Lad/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method a()V
    .locals 1

    iget-object v0, p0, Lt/w;->f:Lt/ao;

    invoke-virtual {v0}, Lt/ao;->a()V

    return-void
.end method

.method public a(IZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Lak/d;)V
    .locals 1

    instance-of v0, p1, Lt/b;

    if-eqz v0, :cond_0

    check-cast p1, Lt/b;

    invoke-virtual {p1}, Lt/b;->c()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lt/w;->e:Lad/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt/w;->e:Lad/g;

    invoke-virtual {v1}, Lad/g;->a()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lt/w;->d:Lad/g;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lt/w;->d:Lad/g;

    invoke-virtual {v1}, Lad/g;->a()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lt/w;->f:Lt/ao;

    invoke-virtual {v0}, Lt/ao;->c()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lt/w;->f:Lt/ao;

    invoke-virtual {v0}, Lt/ao;->b()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public b(Lak/d;)V
    .locals 0

    return-void
.end method
