.class Landroid/os/TokenWatcher$1;
.super Ljava/lang/Object;
.source "TokenWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TokenWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/TokenWatcher;


# direct methods
.method constructor <init>(Landroid/os/TokenWatcher;)V
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 133
    iget-object v1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    #getter for: Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;
    invoke-static {v1}, Landroid/os/TokenWatcher;->access$000(Landroid/os/TokenWatcher;)Ljava/util/WeakHashMap;

    move-result-object v1

    monitor-enter v1

    .line 134
    :try_start_7
    iget-object v2, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    #getter for: Landroid/os/TokenWatcher;->mNotificationQueue:I
    invoke-static {v2}, Landroid/os/TokenWatcher;->access$100(Landroid/os/TokenWatcher;)I

    move-result v0

    .line 135
    .local v0, value:I
    iget-object v2, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    const/4 v3, -0x1

    #setter for: Landroid/os/TokenWatcher;->mNotificationQueue:I
    invoke-static {v2, v3}, Landroid/os/TokenWatcher;->access$102(Landroid/os/TokenWatcher;I)I

    .line 136
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1d

    .line 137
    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 138
    iget-object v1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    invoke-virtual {v1}, Landroid/os/TokenWatcher;->acquired()V

    .line 143
    :cond_1c
    :goto_1c
    return-void

    .line 136
    .end local v0           #value:I
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v2

    .line 140
    .restart local v0       #value:I
    :cond_20
    if-nez v0, :cond_1c

    .line 141
    iget-object v1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    invoke-virtual {v1}, Landroid/os/TokenWatcher;->released()V

    goto :goto_1c
.end method
