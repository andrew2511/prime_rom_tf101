.class public final Lcom/google/api/client/http/InputStreamContent;
.super Ljava/lang/Object;
.source "InputStreamContent.java"

# interfaces
.implements Lcom/google/api/client/http/HttpContent;


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field public encoding:Ljava/lang/String;

.field public inputStream:Ljava/io/InputStream;

.field public length:J

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/api/client/http/InputStreamContent;->length:J

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "inputStream"
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    const/16 v2, 0x800

    :try_start_0
    new-array v1, v2, [B

    .line 185
    .local v1, tmp:[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, bytesRead:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 186
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 189
    .end local v0           #bytesRead:I
    .end local v1           #tmp:[B
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v2

    .restart local v0       #bytesRead:I
    .restart local v1       #tmp:[B
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 191
    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/api/client/http/InputStreamContent;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/google/api/client/http/InputStreamContent;->length:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/api/client/http/InputStreamContent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setByteArrayInput([B)V
    .locals 2
    .parameter "content"

    .prologue
    .line 113
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/api/client/http/InputStreamContent;->inputStream:Ljava/io/InputStream;

    .line 114
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/api/client/http/InputStreamContent;->length:J

    .line 115
    return-void
.end method

.method public setFileInput(Ljava/io/File;)V
    .locals 2
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/api/client/http/InputStreamContent;->inputStream:Ljava/io/InputStream;

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/http/InputStreamContent;->length:J

    .line 91
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 12
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    .line 118
    iget-object v3, p0, Lcom/google/api/client/http/InputStreamContent;->inputStream:Ljava/io/InputStream;

    .line 119
    .local v3, inputStream:Ljava/io/InputStream;
    iget-wide v1, p0, Lcom/google/api/client/http/InputStreamContent;->length:J

    .line 120
    .local v1, contentLength:J
    cmp-long v7, v1, v10

    if-gez v7, :cond_0

    .line 121
    invoke-static {v3, p1}, Lcom/google/api/client/http/InputStreamContent;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 140
    :goto_0
    return-void

    .line 123
    :cond_0
    const/16 v7, 0x800

    new-array v0, v7, [B

    .line 126
    .local v0, buffer:[B
    move-wide v5, v1

    .line 127
    .local v5, remaining:J
    :goto_1
    cmp-long v7, v5, v10

    if-lez v7, :cond_1

    .line 128
    const/4 v7, 0x0

    const-wide/16 v8, 0x800

    :try_start_0
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v3, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 130
    .local v4, read:I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    .line 137
    .end local v4           #read:I
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 133
    .restart local v4       #read:I
    :cond_2
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {p1, v0, v7, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    int-to-long v7, v4

    sub-long/2addr v5, v7

    .line 135
    goto :goto_1

    .line 137
    .end local v4           #read:I
    :catchall_0
    move-exception v7

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v7
.end method
