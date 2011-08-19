.class public Lcom/google/android/music/dl/BufferProgressOutputStream;
.super Ljava/io/OutputStream;
.source "BufferProgressOutputStream.java"


# static fields
.field private static final DELAY_BUFFER_PROGRESS_BYTE_PERCENT:F = 0.1f

.field private static final DELAY_BUFFER_PROGRESS_MS:J = 0x3e8L


# instance fields
.field private final mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

.field private mNextNotification:J

.field private mNextNotificationBytes:J

.field private final mNotificationByteGap:J

.field private final mOrder:Lcom/google/android/music/dl/DownloadOrder;

.field private final mOut:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lcom/google/android/music/dl/BufferProgress;Ljava/io/OutputStream;Lcom/google/android/music/dl/DownloadOrder;)V
    .locals 4
    .parameter "bufferProgress"
    .parameter "out"
    .parameter "order"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    .line 29
    iput-object p2, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mOut:Ljava/io/OutputStream;

    .line 30
    iput-object p3, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mNextNotification:J

    .line 33
    iget-wide v0, p3, Lcom/google/android/music/dl/DownloadOrder;->length:J

    long-to-float v0, v0

    const v1, 0x3dcccccd

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mNotificationByteGap:J

    .line 34
    iget-wide v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mNotificationByteGap:J

    iput-wide v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mNextNotificationBytes:J

    .line 35
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mOut:Ljava/io/OutputStream;

    instance-of v0, v0, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mOut:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 71
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 76
    return-void
.end method

.method public sendBufferProgress()V
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    iget-object v1, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/BufferProgress;->notifyBufferProgress(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mNextNotification:J

    .line 62
    iget-object v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mNotificationByteGap:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mNextNotificationBytes:J

    .line 63
    return-void
.end method

.method public write(I)V
    .locals 1
    .parameter "a"

    .prologue
    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public write([B)V
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/music/dl/BufferProgressOutputStream;->write([BII)V

    .line 45
    return-void
.end method

.method public write([BII)V
    .locals 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v2, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 51
    iget-object v2, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    sub-int v3, p3, p2

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/dl/DownloadOrder;->incrementCompleted(J)J

    move-result-wide v0

    .line 53
    .local v0, completedLength:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mNextNotification:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mNextNotificationBytes:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/dl/BufferProgressOutputStream;->sendBufferProgress()V

    .line 57
    :cond_1
    return-void
.end method
