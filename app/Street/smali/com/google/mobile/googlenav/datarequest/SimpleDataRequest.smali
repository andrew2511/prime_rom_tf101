.class public Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;
.super Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;


# instance fields
.field private final data:[B

.field private final foreground:Z

.field private final immediate:Z

.field private received:Z

.field private final requestType:I

.field private sent:Z

.field private final waitObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I[BZZLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;-><init>()V

    iput p1, p0, Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;->requestType:I

    iput-object p2, p0, Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;->data:[B

    iput-boolean p3, p0, Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;->immediate:Z

    iput-boolean p4, p0, Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;->foreground:Z

    iput-object p5, p0, Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getRequestType()I
    .locals 1

    iget v0, p0, Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;->requestType:I

    return v0
.end method

.method public isForeground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;->foreground:Z

    return v0
.end method

.method public isImmediate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;->immediate:Z

    return v0
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;->received:Z

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    :cond_0
    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeRequestData(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;->data:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;->sent:Z

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
