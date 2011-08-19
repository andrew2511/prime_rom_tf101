.class public Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;
.super Ljava/io/InputStream;
.source "AbortRequestOnCloseInputStream.java"


# instance fields
.field private mAbortable:Lorg/apache/http/client/methods/AbortableHttpRequest;

.field private mEofReached:Z

.field private mWrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/AbortableHttpRequest;)V
    .locals 3
    .parameter "wrappedStream"
    .parameter "abortable"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mEofReached:Z

    .line 24
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_1

    const-string v2, "wrappedStream"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v2, "abortable"

    goto :goto_0

    .line 28
    :cond_2
    iput-object p1, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mWrappedStream:Ljava/io/InputStream;

    .line 29
    iput-object p2, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mAbortable:Lorg/apache/http/client/methods/AbortableHttpRequest;

    .line 30
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mEofReached:Z

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mAbortable:Lorg/apache/http/client/methods/AbortableHttpRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/AbortableHttpRequest;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 59
    return-void

    .line 57
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public mark(I)V
    .locals 1
    .parameter "readlimit"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 69
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v1, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 35
    .local v0, read:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 36
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mEofReached:Z

    .line 38
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v1, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 44
    .local v0, read:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 45
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mEofReached:Z

    .line 47
    :cond_0
    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 79
    return-void
.end method

.method public skip(J)J
    .locals 2
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
