.class public Lnet/yostore/aws/ansytask/DownloadAndOpenTask;
.super Landroid/os/AsyncTask;
.source "DownloadAndOpenTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/ansytask/DownloadAndOpenTask$DownloaderException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHUNK_SIZE:I = 0x8000


# instance fields
.field final TAG:Ljava/lang/String;

.field _mdialog:Landroid/app/ProgressDialog;

.field apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private cacheItem:Lnet/yostore/aws/sqlite/entity/CacheItem;

.field ctx:Landroid/content/Context;

.field fileExt:Ljava/lang/String;

.field fileId:J

.field fileName:Ljava/lang/String;

.field fileSize:J

.field fileTime:J

.field private mDownloadedSize:J

.field mFileIOBuffer:[B

.field private mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private mHttpGet:Lorg/apache/http/client/methods/HttpGet;

.field private mReportedProgress:I

.field openFile:Ljava/io/File;

.field root:Ljava/io/File;

.field task:Landroid/os/AsyncTask;

.field totalFolderCount:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;JLjava/lang/String;JJ)V
    .locals 4
    .parameter "ctx"
    .parameter "apicfg"
    .parameter "fileId"
    .parameter "fileName"
    .parameter "fileSize"
    .parameter "fileTime"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    iput-object p0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->task:Landroid/os/AsyncTask;

    .line 46
    iput-wide v2, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileId:J

    .line 47
    iput-object v1, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileName:Ljava/lang/String;

    .line 56
    const-string v0, "DownloadAndOpenTask"

    iput-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->TAG:Ljava/lang/String;

    .line 58
    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->mFileIOBuffer:[B

    .line 61
    iput-object v1, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->cacheItem:Lnet/yostore/aws/sqlite/entity/CacheItem;

    .line 62
    iput-wide v2, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->totalFolderCount:J

    .line 66
    iput-object p2, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 67
    iput-wide p3, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileId:J

    .line 68
    iput-object p5, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileName:Ljava/lang/String;

    .line 69
    iput-wide p6, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileSize:J

    .line 71
    iput-wide p8, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileTime:J

    .line 72
    iput-object p1, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->ctx:Landroid/content/Context;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->root:Ljava/io/File;

    .line 74
    iput-object p0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->task:Landroid/os/AsyncTask;

    .line 75
    return-void
.end method

.method static synthetic access$3(Lnet/yostore/aws/ansytask/DownloadAndOpenTask;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    invoke-direct {p0}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->showFailDialog()V

    return-void
.end method

.method private downloadFile()I
    .locals 9

    .prologue
    const-wide/16 v3, 0x0

    .line 185
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 186
    const/4 v8, 0x0

    .line 187
    .local v8, rtn:I
    iput-wide v3, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->mDownloadedSize:J

    .line 188
    const/4 v7, 0x0

    .line 191
    .local v7, os:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->root:Ljava/io/File;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->getFileSize(Ljava/io/File;)J

    move-result-wide v0

    iget-wide v3, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileSize:J

    add-long/2addr v0, v3

    const-wide/32 v3, 0xc800000

    cmp-long v0, v0, v3

    if-gtz v0, :cond_1

    .line 192
    iget-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->ctx:Landroid/content/Context;

    iget-wide v3, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileId:J

    invoke-static {v0, v3, v4}, Lnet/yostore/aws/sqlite/helper/CacheQueueHelper;->deleteCacheItem(Landroid/content/Context;J)Z

    .line 193
    iget-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->openFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 194
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->openFile:Ljava/io/File;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/yostore/aws/ansytask/DownloadAndOpenTask$DownloaderException; {:try_start_0 .. :try_end_0} :catch_2

    .line 195
    .end local v7           #os:Ljava/io/FileOutputStream;
    .local v2, os:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-wide v3, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileId:J

    invoke-direct {p0, v0, v3, v4}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->getDirectDownloadUri(Lnet/yostore/aws/api/ApiConfig;J)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileSize:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->downloadPart(Ljava/lang/String;Ljava/io/FileOutputStream;JJ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lnet/yostore/aws/ansytask/DownloadAndOpenTask$DownloaderException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v8

    .line 209
    :goto_0
    if-eqz v2, :cond_0

    .line 212
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 220
    :cond_0
    :goto_1
    return v8

    .line 197
    .end local v2           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :cond_1
    const/4 v8, -0x1

    move-object v2, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v2       #os:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 200
    .end local v2           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    move-object v2, v7

    .line 209
    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v2       #os:Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v2, :cond_0

    .line 212
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 214
    :catch_1
    move-exception v0

    goto :goto_1

    .line 204
    .end local v2           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v2, v7

    .line 209
    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v2       #os:Ljava/io/FileOutputStream;
    :goto_3
    if-eqz v2, :cond_0

    .line 212
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 214
    :catch_3
    move-exception v0

    goto :goto_1

    .line 208
    .end local v2           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    move-object v2, v7

    .line 209
    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v2       #os:Ljava/io/FileOutputStream;
    :goto_4
    if-eqz v2, :cond_2

    .line 212
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 219
    :cond_2
    :goto_5
    throw v0

    .line 214
    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_1

    .line 208
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 204
    :catch_6
    move-exception v0

    goto :goto_3

    .line 200
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method private downloadPart(Ljava/lang/String;Ljava/io/FileOutputStream;JJ)I
    .locals 16
    .parameter "src"
    .parameter "os"
    .parameter "startOffset"
    .parameter "expectedLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lnet/yostore/aws/ansytask/DownloadAndOpenTask$DownloaderException;
        }
    .end annotation

    .prologue
    .line 225
    const/4 v15, 0x0

    .line 226
    .local v15, rtn:I
    const-wide/16 v3, 0x0

    cmp-long v3, p5, v3

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    move v14, v3

    .line 227
    .local v14, lengthIsKnown:Z
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-gez v3, :cond_1

    .line 228
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Negative startOffset:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 226
    .end local v14           #lengthIsKnown:Z
    :cond_0
    const/4 v3, 0x0

    move v14, v3

    goto :goto_0

    .line 230
    .restart local v14       #lengthIsKnown:Z
    :cond_1
    if-eqz v14, :cond_2

    cmp-long v3, p3, p5

    if-lez v3, :cond_2

    .line 231
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startOffset > expectedLength"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    .line 233
    invoke-direct/range {v3 .. v8}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->getInputStream(Ljava/lang/String;JJ)Ljava/io/InputStream;

    move-result-object v13

    .line 235
    .local v13, is:Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->downloadStream(Ljava/io/InputStream;Ljava/io/FileOutputStream;)J

    move-result-wide v9

    .line 236
    .local v9, bytesRead:J
    if-eqz v14, :cond_3

    .line 237
    sub-long v11, p5, p3

    .line 238
    .local v11, expectedBytesRead:J
    cmp-long v3, v11, v9

    if-eqz v3, :cond_4

    .line 239
    const-string v3, "DownloadAndOpenTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad file transfer from server: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v3, Lnet/yostore/aws/ansytask/DownloadAndOpenTask$DownloaderException;

    const-string v4, "Incorrect number of bytes received from server"

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask$DownloaderException;-><init>(Lnet/yostore/aws/ansytask/DownloadAndOpenTask;Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9           #bytesRead:J
    .end local v11           #expectedBytesRead:J
    :catchall_0
    move-exception v3

    .line 246
    :cond_3
    :goto_1
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 247
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 248
    return v15

    .line 242
    .restart local v9       #bytesRead:J
    .restart local v11       #expectedBytesRead:J
    :cond_4
    const/4 v15, 0x1

    goto :goto_1
.end method

.method private downloadStream(Ljava/io/InputStream;Ljava/io/FileOutputStream;)J
    .locals 13
    .parameter "is"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/ansytask/DownloadAndOpenTask$DownloaderException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    const-wide/16 v3, 0x0

    .line 256
    .local v3, totalBytesRead:J
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 257
    const-string v5, "DownloadAndOpenTask"

    const-string v6, "downloader thread interrupted."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v5, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 259
    new-instance v5, Lnet/yostore/aws/ansytask/DownloadAndOpenTask$DownloaderException;

    const-string v6, "Thread interrupted"

    invoke-direct {v5, p0, v6}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask$DownloaderException;-><init>(Lnet/yostore/aws/ansytask/DownloadAndOpenTask;Ljava/lang/String;)V

    throw v5

    .line 261
    :cond_1
    iget-object v5, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->mFileIOBuffer:[B

    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 262
    .local v0, bytesRead:I
    if-gez v0, :cond_2

    .line 278
    return-wide v3

    .line 268
    :cond_2
    int-to-long v5, v0

    add-long/2addr v3, v5

    .line 269
    iget-object v5, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->mFileIOBuffer:[B

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 270
    iget-wide v5, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->mDownloadedSize:J

    int-to-long v7, v0

    add-long/2addr v5, v7

    iput-wide v5, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->mDownloadedSize:J

    .line 271
    iget-wide v5, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileSize:J

    iget-wide v7, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->mDownloadedSize:J

    const-wide/16 v9, 0x2710

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x1

    iget-wide v11, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileSize:J

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    div-long/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v2, v5

    .line 272
    .local v2, progress:I
    iget v5, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->mReportedProgress:I

    if-eq v2, v5, :cond_0

    .line 273
    iput v2, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->mReportedProgress:I

    .line 274
    div-int/lit8 v1, v2, 0x64

    .line 275
    .local v1, percent:I
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getDirectDownloadUri(Lnet/yostore/aws/api/ApiConfig;J)Ljava/lang/String;
    .locals 2
    .parameter "apicfg"
    .parameter "fileId"

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/webrelay/directdownload/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 386
    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 387
    const-string v1, "?dis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/api/entity/ApiCookies;->sid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 388
    const-string v1, "&fi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 389
    const-string v1, "&pv=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getInputStream(Ljava/lang/String;JJ)Ljava/io/InputStream;
    .locals 11
    .parameter "url"
    .parameter "startOffset"
    .parameter "expectedLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    const-string v8, "DownloadAndOpenTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Get "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 287
    const/16 v3, 0xc8

    .line 288
    .local v3, expectedStatusCode:I
    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-lez v8, :cond_1

    .line 289
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bytes="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 290
    .local v5, range:Ljava/lang/String;
    const-wide/16 v8, 0x0

    cmp-long v8, p4, v8

    if-ltz v8, :cond_0

    .line 291
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v9, 0x1

    sub-long v9, p4, v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 293
    :cond_0
    const-string v8, "DownloadAndOpenTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "requesting byte range "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v8, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    const-string v9, "Range"

    invoke-virtual {v8, v9, v5}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/16 v3, 0xce

    .line 297
    .end local v5           #range:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v9, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v8, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 298
    .local v6, response:Lorg/apache/http/HttpResponse;
    const-wide/16 v0, 0x0

    .line 299
    .local v0, bytesToSkip:J
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 300
    .local v7, statusCode:I
    if-eq v7, v3, :cond_2

    .line 301
    const/16 v8, 0xc8

    if-ne v7, v8, :cond_4

    const/16 v8, 0xce

    if-ne v3, v8, :cond_4

    .line 302
    const-string v8, "DownloadAndOpenTask"

    const-string v9, "Byte range request ignored"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    move-wide v0, p2

    .line 308
    :cond_2
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 309
    .local v2, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 310
    .local v4, is:Ljava/io/InputStream;
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_3

    .line 311
    invoke-virtual {v4, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 313
    :cond_3
    return-object v4

    .line 305
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #is:Ljava/io/InputStream;
    :cond_4
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unexpected Http status code "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " expected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private static quietClose(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"

    .prologue
    .line 366
    if-eqz p0, :cond_0

    .line 367
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static quietClose(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "os"

    .prologue
    .line 376
    if-eqz p0, :cond_0

    .line 377
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showFailDialog()V
    .locals 4

    .prologue
    .line 324
    iget-object v1, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->ctx:Landroid/content/Context;

    iget-wide v2, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileId:J

    invoke-static {v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/CacheQueueHelper;->deleteCacheItem(Landroid/content/Context;J)Z

    .line 328
    iget-object v1, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->openFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->openFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 331
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 332
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "Fail!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 333
    const-string v1, "Fail!!"

    new-instance v2, Lnet/yostore/aws/ansytask/DownloadAndOpenTask$2;

    invoke-direct {v2, p0}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask$2;-><init>(Lnet/yostore/aws/ansytask/DownloadAndOpenTask;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 342
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 343
    return-void

    .line 325
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showNoSpaceDialog()V
    .locals 3

    .prologue
    .line 346
    iget-object v1, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_0
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 350
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0600f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 351
    const v1, 0x7f06002a

    new-instance v2, Lnet/yostore/aws/ansytask/DownloadAndOpenTask$3;

    invoke-direct {v2, p0}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask$3;-><init>(Lnet/yostore/aws/ansytask/DownloadAndOpenTask;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 361
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 362
    return-void

    .line 347
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 9
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    .line 79
    const/4 v3, 0x0

    .line 81
    .local v3, rtn:I
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v4}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->publishProgress([Ljava/lang/Object;)V

    .line 82
    iget-object v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->root:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 83
    iget-object v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->root:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 86
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->root:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".nomedia"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .local v1, nomediaFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 89
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_1
    :goto_0
    iget-object v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileName:Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 94
    .local v0, dotPos:I
    iget-object v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileName:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileExt:Ljava/lang/String;

    .line 95
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->root:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileExt:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->openFile:Ljava/io/File;

    .line 96
    iget-object v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->openFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 97
    iget-object v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->ctx:Landroid/content/Context;

    iget-wide v5, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileId:J

    invoke-static {v4, v5, v6}, Lnet/yostore/aws/sqlite/helper/CacheQueueHelper;->getCacheItem(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/CacheItem;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->cacheItem:Lnet/yostore/aws/sqlite/entity/CacheItem;

    .line 98
    iget-object v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->cacheItem:Lnet/yostore/aws/sqlite/entity/CacheItem;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->openFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-object v6, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->cacheItem:Lnet/yostore/aws/sqlite/entity/CacheItem;

    iget-wide v6, v6, Lnet/yostore/aws/sqlite/entity/CacheItem;->lastmodifytime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    iget-object v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->openFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-object v6, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->cacheItem:Lnet/yostore/aws/sqlite/entity/CacheItem;

    iget-wide v6, v6, Lnet/yostore/aws/sqlite/entity/CacheItem;->size:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 99
    iget-object v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->openFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->openFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, openFileTime:Ljava/lang/String;
    iget-object v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->openFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileSize:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget-wide v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    const/4 v3, 0x1

    .line 114
    .end local v2           #openFileTime:Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 103
    .restart local v2       #openFileTime:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->openFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 104
    invoke-direct {p0}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->downloadFile()I

    move-result v3

    goto :goto_1

    .line 107
    .end local v2           #openFileTime:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->openFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 108
    invoke-direct {p0}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->downloadFile()I

    move-result v3

    goto :goto_1

    .line 111
    :cond_4
    invoke-direct {p0}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->downloadFile()I

    move-result v3

    goto :goto_1

    .line 90
    .end local v0           #dotPos:I
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize(Ljava/io/File;)J
    .locals 8
    .parameter "folder"

    .prologue
    .line 393
    iget-wide v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->totalFolderCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->totalFolderCount:J

    .line 395
    const-wide/16 v1, 0x0

    .line 397
    .local v1, foldersize:J
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 398
    .local v0, filelist:[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_0

    .line 407
    return-wide v1

    .line 399
    :cond_0
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 400
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->getFileSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 398
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 403
    :cond_1
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v1, v4

    goto :goto_1
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 121
    iget-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 12
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 148
    new-array v0, v3, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->publishProgress([Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 151
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v9, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v10

    .line 153
    .local v10, mMimeTypeMap:Landroid/webkit/MimeTypeMap;
    iget-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->ctx:Landroid/content/Context;

    iget-wide v1, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileId:J

    iget-object v3, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->openFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v5, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->openFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lnet/yostore/aws/sqlite/helper/CacheQueueHelper;->insertCache(Landroid/content/Context;JJJ)V

    .line 154
    iget-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->openFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 155
    .local v8, fileUri:Landroid/net/Uri;
    iget-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileExt:Ljava/lang/String;

    invoke-virtual {v10, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 156
    .local v11, mimetype:Ljava/lang/String;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 157
    iget-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileExt:Ljava/lang/String;

    invoke-virtual {v10, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v8, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    :goto_0
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->ctx:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v8           #fileUri:Landroid/net/Uri;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #mMimeTypeMap:Landroid/webkit/MimeTypeMap;
    .end local v11           #mimetype:Ljava/lang/String;
    :goto_1
    return-void

    .line 159
    .restart local v8       #fileUri:Landroid/net/Uri;
    .restart local v9       #intent:Landroid/content/Intent;
    .restart local v10       #mMimeTypeMap:Landroid/webkit/MimeTypeMap;
    .restart local v11       #mimetype:Ljava/lang/String;
    :cond_0
    const-string v0, "*/*"

    invoke-virtual {v9, v8, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 173
    .local v7, e:Landroid/content/ActivityNotFoundException;
    const-string v0, "*/*"

    invoke-virtual {v9, v8, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->ctx:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 176
    .end local v7           #e:Landroid/content/ActivityNotFoundException;
    .end local v8           #fileUri:Landroid/net/Uri;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #mMimeTypeMap:Landroid/webkit/MimeTypeMap;
    .end local v11           #mimetype:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 178
    invoke-direct {p0}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->showNoSpaceDialog()V

    goto :goto_1

    .line 180
    :cond_2
    invoke-direct {p0}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->showFailDialog()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 7
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 130
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 131
    aget-object v0, p1, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 132
    iget-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->_mdialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_2

    .line 135
    iget-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->ctx:Landroid/content/Context;

    const v5, 0x7f06007b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, p1, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lnet/yostore/aws/ansytask/DownloadAndOpenTask$1;

    invoke-direct {v5, p0}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask$1;-><init>(Lnet/yostore/aws/ansytask/DownloadAndOpenTask;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->_mdialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->_mdialog:Landroid/app/ProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->ctx:Landroid/content/Context;

    const v4, 0x7f060048

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->fileName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
