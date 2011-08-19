.class public final Llibcore/io/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static native close(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .parameter "closeable"

    .prologue
    .line 38
    if-eqz p0, :cond_5

    .line 40
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 44
    :cond_5
    :goto_5
    return-void

    .line 41
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .registers 2
    .parameter "socket"

    .prologue
    .line 50
    if-eqz p0, :cond_5

    .line 52
    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 56
    :cond_5
    :goto_5
    return-void

    .line 53
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static native getFd(Ljava/io/FileDescriptor;)I
.end method

.method public static newFileDescriptor(I)Ljava/io/FileDescriptor;
    .registers 2
    .parameter "fd"

    .prologue
    .line 67
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 68
    .local v0, result:Ljava/io/FileDescriptor;
    invoke-static {v0, p0}, Llibcore/io/IoUtils;->setFd(Ljava/io/FileDescriptor;I)V

    .line 69
    return-object v0
.end method

.method public static native pipe([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static readFileAsByteArray(Ljava/lang/String;)[B
    .registers 6
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, f:Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_16

    .line 96
    .end local v1           #f:Ljava/io/RandomAccessFile;
    .local v2, f:Ljava/io/RandomAccessFile;
    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v0, v3, [B

    .line 97
    .local v0, buf:[B
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_1b

    .line 100
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    .end local v0           #buf:[B
    .end local v2           #f:Ljava/io/RandomAccessFile;
    .restart local v1       #f:Ljava/io/RandomAccessFile;
    :catchall_16
    move-exception v3

    :goto_17
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .end local v1           #f:Ljava/io/RandomAccessFile;
    .restart local v2       #f:Ljava/io/RandomAccessFile;
    :catchall_1b
    move-exception v3

    move-object v1, v2

    .end local v2           #f:Ljava/io/RandomAccessFile;
    .restart local v1       #f:Ljava/io/RandomAccessFile;
    goto :goto_17
.end method

.method public static native setBlocking(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native setFd(Ljava/io/FileDescriptor;I)V
.end method
