.class Lcom/android/server/RandomBlock;
.super Ljava/lang/Object;
.source "RandomBlock.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x1000

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RandomBlock"


# instance fields
.field private block:[B


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/RandomBlock;->block:[B

    .line 39
    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 93
    if-nez p0, :cond_3

    .line 100
    :goto_2
    return-void

    .line 96
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 97
    :catch_7
    move-exception v0

    .line 98
    .local v0, e:Ljava/io/IOException;
    const-string v1, "RandomBlock"

    const-string v2, "IOException thrown while closing Closeable"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method static fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;
    .registers 4
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, stream:Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    .line 46
    .end local v0           #stream:Ljava/io/InputStream;
    .local v1, stream:Ljava/io/InputStream;
    :try_start_6
    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromStream(Ljava/io/InputStream;)Lcom/android/server/RandomBlock;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_13

    move-result-object v2

    .line 48
    invoke-static {v1}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    .line 46
    return-object v2

    .line 48
    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v0       #stream:Ljava/io/InputStream;
    :catchall_e
    move-exception v2

    :goto_f
    invoke-static {v0}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    throw v2

    .end local v0           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    :catchall_13
    move-exception v2

    move-object v0, v1

    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v0       #stream:Ljava/io/InputStream;
    goto :goto_f
.end method

.method private static fromStream(Ljava/io/InputStream;)Lcom/android/server/RandomBlock;
    .registers 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1000

    .line 53
    new-instance v1, Lcom/android/server/RandomBlock;

    invoke-direct {v1}, Lcom/android/server/RandomBlock;-><init>()V

    .line 54
    .local v1, retval:Lcom/android/server/RandomBlock;
    const/4 v2, 0x0

    .line 55
    .local v2, total:I
    :goto_8
    if-ge v2, v5, :cond_1d

    .line 56
    iget-object v3, v1, Lcom/android/server/RandomBlock;->block:[B

    sub-int v4, v5, v2

    invoke-virtual {p0, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 57
    .local v0, result:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1b

    .line 58
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 60
    :cond_1b
    add-int/2addr v2, v0

    .line 61
    goto :goto_8

    .line 62
    .end local v0           #result:I
    :cond_1d
    return-object v1
.end method

.method private toDataOut(Ljava/io/DataOutput;)V
    .registers 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/RandomBlock;->block:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 89
    return-void
.end method

.method private static truncateIfPossible(Ljava/io/RandomAccessFile;)V
    .registers 3
    .parameter "f"

    .prologue
    .line 79
    const-wide/16 v0, 0x1000

    :try_start_2
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 85
    :goto_5
    return-void

    .line 80
    :catch_6
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method toFile(Ljava/lang/String;)V
    .registers 5
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, out:Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rws"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    .line 70
    .end local v0           #out:Ljava/io/RandomAccessFile;
    .local v1, out:Ljava/io/RandomAccessFile;
    :try_start_8
    invoke-direct {p0, v1}, Lcom/android/server/RandomBlock;->toDataOut(Ljava/io/DataOutput;)V

    .line 71
    invoke-static {v1}, Lcom/android/server/RandomBlock;->truncateIfPossible(Ljava/io/RandomAccessFile;)V
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_17

    .line 73
    invoke-static {v1}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    .line 75
    return-void

    .line 73
    .end local v1           #out:Ljava/io/RandomAccessFile;
    .restart local v0       #out:Ljava/io/RandomAccessFile;
    :catchall_12
    move-exception v2

    :goto_13
    invoke-static {v0}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    throw v2

    .end local v0           #out:Ljava/io/RandomAccessFile;
    .restart local v1       #out:Ljava/io/RandomAccessFile;
    :catchall_17
    move-exception v2

    move-object v0, v1

    .end local v1           #out:Ljava/io/RandomAccessFile;
    .restart local v0       #out:Ljava/io/RandomAccessFile;
    goto :goto_13
.end method
