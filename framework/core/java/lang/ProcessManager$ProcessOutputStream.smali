.class Ljava/lang/ProcessManager$ProcessOutputStream;
.super Ljava/io/FileOutputStream;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessOutputStream"
.end annotation


# instance fields
.field private fd:Ljava/io/FileDescriptor;


# direct methods
.method private constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 2
    .parameter "fd"

    .prologue
    .line 390
    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 391
    iput-object p1, p0, Ljava/lang/ProcessManager$ProcessOutputStream;->fd:Ljava/io/FileDescriptor;

    .line 392
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 385
    invoke-direct {p0, p1}, Ljava/lang/ProcessManager$ProcessOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    :try_start_0
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_22

    .line 399
    monitor-enter p0

    .line 400
    :try_start_4
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessOutputStream;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessOutputStream;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_1f

    move-result v0

    if-eqz v0, :cond_18

    .line 402
    :try_start_10
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessOutputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a

    .line 404
    const/4 v0, 0x0

    :try_start_16
    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessOutputStream;->fd:Ljava/io/FileDescriptor;

    .line 407
    :cond_18
    monitor-exit p0

    .line 409
    return-void

    .line 404
    :catchall_1a
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/ProcessManager$ProcessOutputStream;->fd:Ljava/io/FileDescriptor;

    throw v0

    .line 407
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_1f

    throw v0

    .line 399
    :catchall_22
    move-exception v0

    monitor-enter p0

    .line 400
    :try_start_24
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessOutputStream;->fd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_38

    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessOutputStream;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_3f

    move-result v1

    if-eqz v1, :cond_38

    .line 402
    :try_start_30
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessOutputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_3a

    .line 404
    const/4 v1, 0x0

    :try_start_36
    iput-object v1, p0, Ljava/lang/ProcessManager$ProcessOutputStream;->fd:Ljava/io/FileDescriptor;

    .line 407
    :cond_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3f

    throw v0

    .line 404
    :catchall_3a
    move-exception v0

    const/4 v1, 0x0

    :try_start_3c
    iput-object v1, p0, Ljava/lang/ProcessManager$ProcessOutputStream;->fd:Ljava/io/FileDescriptor;

    throw v0

    .line 407
    :catchall_3f
    move-exception v0

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_3f

    throw v0
.end method
