.class public Lcom/amazon/system/io/internal/FileInputStream;
.super Lcom/amazon/system/io/IFileInputStream;
.source "FileInputStream.java"


# instance fields
.field private connection:Lcom/amazon/system/io/IFileConnection;

.field private inputStream:Ljava/io/InputStream;

.field private inputStreamSupportMark:Z

.field private markedPosition:J

.field private positionFromMark:J


# direct methods
.method public constructor <init>(Lcom/amazon/system/io/IFileConnection;)V
    .locals 3
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/amazon/system/io/IFileInputStream;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/system/io/internal/FileInputStream;->connection:Lcom/amazon/system/io/IFileConnection;

    .line 35
    invoke-interface {p1}, Lcom/amazon/system/io/IFileConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->inputStream:Ljava/io/InputStream;

    .line 36
    iput-wide v1, p0, Lcom/amazon/system/io/internal/FileInputStream;->positionFromMark:J

    .line 37
    iput-wide v1, p0, Lcom/amazon/system/io/internal/FileInputStream;->markedPosition:J

    .line 38
    iget-object v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->inputStreamSupportMark:Z

    .line 39
    iget-boolean v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->inputStreamSupportMark:Z

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Lcom/amazon/system/io/internal/FileInputStream;->size()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 43
    :cond_0
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
    .line 98
    iget-object v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->inputStream:Ljava/io/InputStream;

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
    .line 107
    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->positionFromMark:J

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->markedPosition:J

    .line 109
    iget-object v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :try_start_1
    iget-object v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->connection:Lcom/amazon/system/io/IFileConnection;

    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    :goto_0
    return-void

    .line 112
    :catchall_0
    move-exception v0

    .line 113
    :try_start_2
    iget-object v1, p0, Lcom/amazon/system/io/internal/FileInputStream;->connection:Lcom/amazon/system/io/IFileConnection;

    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 115
    :goto_1
    throw v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getFileConnection()Lcom/amazon/system/io/IFileConnection;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->connection:Lcom/amazon/system/io/IFileConnection;

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 4
    .parameter "readlimit"

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->inputStreamSupportMark:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 129
    :cond_0
    iget-wide v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->markedPosition:J

    iget-wide v2, p0, Lcom/amazon/system/io/internal/FileInputStream;->positionFromMark:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->markedPosition:J

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->positionFromMark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public position()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->positionFromMark:J

    iget-wide v2, p0, Lcom/amazon/system/io/internal/FileInputStream;->markedPosition:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 83
    iget-wide v1, p0, Lcom/amazon/system/io/internal/FileInputStream;->positionFromMark:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazon/system/io/internal/FileInputStream;->positionFromMark:J

    .line 85
    return v0
.end method

.method public read([B)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 162
    if-lez v0, :cond_0

    .line 164
    iget-wide v1, p0, Lcom/amazon/system/io/internal/FileInputStream;->positionFromMark:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazon/system/io/internal/FileInputStream;->positionFromMark:J

    .line 165
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 147
    if-lez v0, :cond_0

    .line 149
    iget-wide v1, p0, Lcom/amazon/system/io/internal/FileInputStream;->positionFromMark:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazon/system/io/internal/FileInputStream;->positionFromMark:J

    .line 150
    :cond_0
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 176
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->inputStreamSupportMark:Z

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 189
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->positionFromMark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 182
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 183
    iget-object v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->connection:Lcom/amazon/system/io/IFileConnection;

    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->inputStream:Ljava/io/InputStream;

    .line 184
    iget-wide v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->markedPosition:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->inputStream:Ljava/io/InputStream;

    iget-wide v1, p0, Lcom/amazon/system/io/internal/FileInputStream;->markedPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetAndSkip(J)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->positionFromMark:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-wide v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->positionFromMark:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/amazon/system/io/internal/FileInputStream;->reset()V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->inputStream:Ljava/io/InputStream;

    iget-wide v1, p0, Lcom/amazon/system/io/internal/FileInputStream;->positionFromMark:J

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 66
    iput-wide p1, p0, Lcom/amazon/system/io/internal/FileInputStream;->positionFromMark:J

    goto :goto_0
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amazon/system/io/internal/FileInputStream;->connection:Lcom/amazon/system/io/IFileConnection;

    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->fileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public skip(J)J
    .locals 4
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v2, p0, Lcom/amazon/system/io/internal/FileInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 198
    .local v0, bytesSkipped:J
    iget-wide v2, p0, Lcom/amazon/system/io/internal/FileInputStream;->positionFromMark:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/amazon/system/io/internal/FileInputStream;->positionFromMark:J

    .line 200
    return-wide v0
.end method
