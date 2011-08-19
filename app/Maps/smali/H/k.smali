.class public LH/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ln/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, LH/k;->a:Ljava/lang/String;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    sput-object v0, LH/k;->b:Ln/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .locals 3

    const-class v0, LH/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, LH/k;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    sget-object v1, LH/k;->b:Ln/a;

    const-string v2, "GlsPlatformKey"

    invoke-interface {v1, v2}, Ln/a;->b_(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v2, LH/k;->a:Ljava/lang/String;

    :cond_0
    :goto_0
    sget-object v1, LH/k;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_1
    const-string v1, ""

    sput-object v1, LH/k;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    const-class v0, LH/k;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, LH/k;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    sget-object v1, LH/k;->b:Ln/a;

    const-string v2, "GlsPlatformKey"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ln/a;->a(Ljava/lang/String;[B)Z

    sget-object v1, LH/k;->b:Ln/a;

    invoke-interface {v1}, Ln/a;->a()V

    sput-object p0, LH/k;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
