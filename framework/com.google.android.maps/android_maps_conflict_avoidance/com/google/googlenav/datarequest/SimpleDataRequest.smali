.class public Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;
.source "SimpleDataRequest.java"


# instance fields
.field private final data:[B

.field private final foreground:Z

.field private final immediate:Z

.field private received:Z

.field private final requestType:I

.field private sent:Z

.field private final waitObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I[BZZ)V
    .registers 11
    .parameter "requestType"
    .parameter "data"
    .parameter "immediate"
    .parameter "foreground"

    .prologue
    .line 37
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;-><init>(I[BZZLjava/lang/Object;)V

    .line 38
    return-void
.end method

.method public constructor <init>(I[BZZLjava/lang/Object;)V
    .registers 6
    .parameter "requestType"
    .parameter "data"
    .parameter "immediate"
    .parameter "foreground"
    .parameter "waitObject"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;-><init>()V

    .line 52
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->requestType:I

    .line 53
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->data:[B

    .line 54
    iput-boolean p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->immediate:Z

    .line 55
    iput-boolean p4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->foreground:Z

    .line 56
    iput-object p5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    .line 57
    return-void
.end method


# virtual methods
.method public getRequestType()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->requestType:I

    return v0
.end method

.method public isForeground()Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->foreground:Z

    return v0
.end method

.method public isImmediate()Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->immediate:Z

    return v0
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .registers 5
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 82
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->received:Z

    .line 83
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    if-eqz v0, :cond_10

    .line 84
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_a
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 86
    monitor-exit v0

    .line 89
    :cond_10
    return v2

    .line 86
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw v1
.end method

.method public writeRequestData(Ljava/io/DataOutput;)V
    .registers 4
    .parameter "dos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->data:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->sent:Z

    .line 74
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    if-eqz v0, :cond_15

    .line 75
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_f
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 77
    monitor-exit v0

    .line 79
    :cond_15
    return-void

    .line 77
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v1
.end method
