.class public final LaJ;
.super Ljava/lang/Object;


# static fields
.field private static d:LaJ;


# instance fields
.field private a:Z

.field private b:J

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, LaJ;->a:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LaJ;->b:J

    const-string v0, "RequestNewInstallId"

    invoke-static {v0, v2}, Lg;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, LaJ;->c:Z

    iget-boolean v0, p0, LaJ;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, LaJ;->c()V

    :cond_0
    return-void
.end method

.method static synthetic a(LaJ;J)J
    .locals 0

    iput-wide p1, p0, LaJ;->b:J

    return-wide p1
.end method

.method public static declared-synchronized a()LaJ;
    .locals 2

    const-class v0, LaJ;

    monitor-enter v0

    :try_start_0
    sget-object v1, LaJ;->d:LaJ;

    if-nez v1, :cond_0

    new-instance v1, LaJ;

    invoke-direct {v1}, LaJ;-><init>()V

    sput-object v1, LaJ;->d:LaJ;

    :cond_0
    sget-object v1, LaJ;->d:LaJ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(LaJ;)V
    .locals 0

    invoke-direct {p0}, LaJ;->e()V

    return-void
.end method

.method static synthetic a(LaJ;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LaJ;->c:Z

    return v0
.end method

.method static synthetic b(LaJ;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LaJ;->a:Z

    return v0
.end method

.method private declared-synchronized c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LaJ;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lal;->b()Lal;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, LaJ;->a:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, LaJ;->c:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, LaJ;->b:J

    invoke-direct {p0}, LaJ;->e()V

    new-instance v1, LaC;

    const-string v2, "g:c"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, LaC;-><init>(Ljava/lang/String;I)V

    new-instance v2, LaK;

    invoke-direct {v2, p0}, LaK;-><init>(LaJ;)V

    invoke-virtual {v1, v2}, LaF;->a(LaG;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lal;->a(LaF;Z)V
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

.method private declared-synchronized d()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, LaJ;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .locals 3

    const-string v0, "InstallId"

    iget-wide v1, p0, LaJ;->b:J

    invoke-static {v0, v1, v2}, Lg;->a(Ljava/lang/String;J)V

    const-string v0, "RequestNewInstallId"

    iget-boolean v1, p0, LaJ;->c:Z

    invoke-static {v0, v1}, Lg;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lb;->a()Lb;

    move-result-object v0

    invoke-virtual {v0}, Lb;->g()LE;

    move-result-object v0

    invoke-interface {v0}, LE;->a()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized b()J
    .locals 5

    const-wide/16 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LaJ;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, LaJ;->c()V

    iget-wide v0, p0, LaJ;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    iget-wide v0, p0, LaJ;->b:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    const-string v0, "InstallId"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lg;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, LaJ;->b:J

    :cond_1
    iget-wide v0, p0, LaJ;->b:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    invoke-direct {p0}, LaJ;->d()V

    :cond_2
    iget-wide v0, p0, LaJ;->b:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    invoke-direct {p0}, LaJ;->c()V

    :cond_3
    iget-wide v0, p0, LaJ;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
