.class public Lcom/google/android/music/dl/TailStream;
.super Ljava/io/InputStream;
.source "TailStream.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "TailStream"


# instance fields
.field private isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFile:Ljava/io/RandomAccessFile;

.field private final mOrder:Lcom/google/android/music/dl/DownloadOrder;

.field private final mStartReadPoint:J

.field private mTotalRead:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "TailStream"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/TailStream;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/dl/DownloadOrder;J)V
    .locals 3
    .parameter "order"
    .parameter "startReadingPoint"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/dl/TailStream;->mTotalRead:J

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/dl/TailStream;->mFile:Ljava/io/RandomAccessFile;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/music/dl/TailStream;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    sget-boolean v0, Lcom/google/android/music/dl/TailStream;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "TailStream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New TailStream for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " starting at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/google/android/music/dl/TailStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    .line 36
    iput-wide p2, p0, Lcom/google/android/music/dl/TailStream;->mStartReadPoint:J

    .line 37
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/music/dl/TailStream;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/android/music/dl/TailStream;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/dl/TailStream;->mFile:Ljava/io/RandomAccessFile;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/dl/TailStream;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/dl/TailStream;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 99
    iget-object v1, p0, Lcom/google/android/music/dl/TailStream;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 100
    monitor-exit v0

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read()I
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public read([BII)I
    .locals 8
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 46
    iget-object v2, p0, Lcom/google/android/music/dl/TailStream;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    sget-boolean v2, Lcom/google/android/music/dl/TailStream;->LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "TailStream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/dl/TailStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") returning -1 since we were closed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v2, v7

    .line 82
    :goto_0
    return v2

    .line 53
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/dl/TailStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-wide v3, p0, Lcom/google/android/music/dl/TailStream;->mStartReadPoint:J

    iget-wide v5, p0, Lcom/google/android/music/dl/TailStream;->mTotalRead:J

    add-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/dl/DownloadOrder;->waitForData(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    iget-object v2, p0, Lcom/google/android/music/dl/TailStream;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 61
    sget-boolean v2, Lcom/google/android/music/dl/TailStream;->LOGV:Z

    if-eqz v2, :cond_2

    const-string v2, "TailStream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/dl/TailStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") returning -1 since we were closed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v2, v7

    .line 62
    goto :goto_0

    .line 54
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 55
    .local v0, e:Ljava/lang/InterruptedException;
    sget-boolean v2, Lcom/google/android/music/dl/TailStream;->LOGV:Z

    if-eqz v2, :cond_3

    const-string v2, "TailStream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TailStream for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/dl/TailStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " interrupted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v2, v7

    .line 56
    goto :goto_0

    .line 65
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4
    iget-object v2, p0, Lcom/google/android/music/dl/TailStream;->mFile:Ljava/io/RandomAccessFile;

    if-nez v2, :cond_5

    .line 66
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/google/android/music/dl/TailStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->getLocalLocation()Ljava/io/File;

    move-result-object v3

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/music/dl/TailStream;->mFile:Ljava/io/RandomAccessFile;

    .line 67
    iget-object v2, p0, Lcom/google/android/music/dl/TailStream;->mFile:Ljava/io/RandomAccessFile;

    iget-wide v3, p0, Lcom/google/android/music/dl/TailStream;->mStartReadPoint:J

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 70
    :cond_5
    const/4 v1, 0x0

    .line 71
    .local v1, read:I
    iget-object v2, p0, Lcom/google/android/music/dl/TailStream;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 73
    if-lez v1, :cond_6

    .line 74
    iget-wide v2, p0, Lcom/google/android/music/dl/TailStream;->mTotalRead:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/music/dl/TailStream;->mTotalRead:J

    move v2, v1

    .line 75
    goto/16 :goto_0

    .line 77
    :cond_6
    if-gez v1, :cond_1

    iget-object v2, p0, Lcom/google/android/music/dl/TailStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->isFinishedStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    sget-boolean v2, Lcom/google/android/music/dl/TailStream;->LOGV:Z

    if-eqz v2, :cond_7

    .line 79
    const-string v2, "TailStream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/dl/TailStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " DownloadStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/dl/TailStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v4}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; returning -1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v2, v7

    .line 82
    goto/16 :goto_0
.end method
