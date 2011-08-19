.class final Lbb;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# direct methods
.method constructor <init>(Lba;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2
    .parameter

    .prologue
    .line 68
    const-class v0, LaZ;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-static {}, LaZ;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 70
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, LaZ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
