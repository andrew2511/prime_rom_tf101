.class public Lap/b;
.super LA/v;


# static fields
.field private static e:Lap/b;


# instance fields
.field private a:Z

.field private c:J

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, LA/v;-><init>()V

    iput-boolean v2, p0, Lap/b;->a:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lap/b;->c:J

    const-string v0, "RequestNewInstallId"

    invoke-static {v0, v2}, Lac/i;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lap/b;->d:Z

    iget-boolean v0, p0, Lap/b;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lap/b;->b()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lap/b;J)J
    .locals 0

    iput-wide p1, p0, Lap/b;->c:J

    return-wide p1
.end method

.method public static declared-synchronized a()Lap/b;
    .locals 2

    const-class v0, Lap/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lap/b;->e:Lap/b;

    if-nez v1, :cond_0

    new-instance v1, Lap/b;

    invoke-direct {v1}, Lap/b;-><init>()V

    sput-object v1, Lap/b;->e:Lap/b;

    :cond_0
    sget-object v1, Lap/b;->e:Lap/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lap/b;)V
    .locals 0

    invoke-direct {p0}, Lap/b;->e()V

    return-void
.end method

.method static synthetic a(Lap/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lap/b;->d:Z

    return p1
.end method

.method static synthetic b(Lap/b;)J
    .locals 2

    iget-wide v0, p0, Lap/b;->c:J

    return-wide v0
.end method

.method static synthetic b(Lap/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lap/b;->a:Z

    return p1
.end method

.method private declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    const-string v1, "InstallId"

    invoke-virtual {v0, v1}, Lac/m;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {v0}, Lac/r;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lap/b;->c:J

    invoke-direct {p0}, Lap/b;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :cond_0
    const-wide/16 v0, 0x0

    :try_start_2
    iput-wide v0, p0, Lap/b;->c:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .locals 3

    const-string v0, "InstallId"

    iget-wide v1, p0, Lap/b;->c:J

    invoke-static {v0, v1, v2}, Lac/i;->a(Ljava/lang/String;J)V

    const-string v0, "RequestNewInstallId"

    iget-boolean v1, p0, Lap/b;->d:Z

    invoke-static {v0, v1}, Lac/i;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0}, Ln/a;->a()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(LA/t;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lap/b;->c:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {p1, p0, v0}, LA/t;->a(LA/s;Ljava/lang/Object;)V

    invoke-super {p0, p1}, LA/v;->a(LA/t;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lap/b;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lp/b;->b()Lp/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lap/b;->a:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lap/b;->d:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lap/b;->c:J

    invoke-direct {p0}, Lap/b;->e()V

    new-instance v1, Ly/b;

    const-string v2, "g:c"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ly/b;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lap/a;

    invoke-direct {v2, p0}, Lap/a;-><init>(Lap/b;)V

    invoke-virtual {v1, v2}, Ly/d;->a(Ly/p;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lp/b;->a(Ly/d;Z)V
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

.method public declared-synchronized c()J
    .locals 5

    const-wide/16 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lap/b;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lap/b;->b()V

    iget-wide v0, p0, Lap/b;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lap/b;->c:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    const-string v0, "InstallId"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lac/i;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lap/b;->c:J

    :cond_1
    iget-wide v0, p0, Lap/b;->c:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    invoke-direct {p0}, Lap/b;->d()V

    :cond_2
    iget-wide v0, p0, Lap/b;->c:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lap/b;->b()V

    :cond_3
    iget-wide v0, p0, Lap/b;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
