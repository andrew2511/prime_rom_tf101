.class public Lcom/android/gallery3d/data/DownloadUtils;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static download(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/io/OutputStream;)Z
    .locals 4
    .parameter "jc"
    .parameter "url"
    .parameter "output"

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, input:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 86
    invoke-static {p0, v0, p2}, Lcom/android/gallery3d/data/DownloadUtils;->dump(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    const/4 v2, 0x1

    .line 92
    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return v2

    .line 88
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 89
    .local v1, t:Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "DownloadService"

    const-string v3, "fail to download"

    invoke-static {v2, v3, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    const/4 v2, 0x0

    .line 92
    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method public static dump(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .parameter "jc"
    .parameter "is"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 65
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 66
    .local v0, buffer:[B
    array-length v3, v0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 67
    .local v1, rc:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 68
    .local v2, thread:Ljava/lang/Thread;
    new-instance v3, Lcom/android/gallery3d/data/DownloadUtils$1;

    invoke-direct {v3, v2}, Lcom/android/gallery3d/data/DownloadUtils$1;-><init>(Ljava/lang/Thread;)V

    invoke-interface {p0, v3}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 73
    :goto_0
    if-lez v1, :cond_1

    .line 74
    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    throw v3

    .line 75
    :cond_0
    invoke-virtual {p2, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 76
    array-length v3, v0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0

    .line 78
    :cond_1
    const/4 v3, 0x0

    invoke-interface {p0, v3}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 79
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 80
    return-void
.end method

.method public static requestDownload(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/io/File;)Z
    .locals 4
    .parameter "jc"
    .parameter "url"
    .parameter "file"

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p0, p1, v1}, Lcom/android/gallery3d/data/DownloadUtils;->download(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 43
    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 40
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 41
    .local v2, t:Ljava/lang/Throwable;
    :goto_1
    const/4 v3, 0x0

    .line 43
    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    .end local v0           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 40
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    move-object v2, v3

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static requestDownload(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;)[B
    .locals 5
    .parameter "jc"
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-static {p0, p1, v1}, Lcom/android/gallery3d/data/DownloadUtils;->download(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 59
    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    :goto_0
    return-object v3

    .line 54
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 59
    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 55
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 56
    .local v2, t:Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    const-string v3, "DownloadService"

    invoke-static {v3, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v4

    goto :goto_0

    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 55
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v3

    move-object v2, v3

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method
