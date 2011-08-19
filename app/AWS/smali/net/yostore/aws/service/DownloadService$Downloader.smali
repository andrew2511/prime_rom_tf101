.class Lnet/yostore/aws/service/DownloadService$Downloader;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/service/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Downloader"
.end annotation


# static fields
.field private static final CHUNK_SIZE:I = 0x8000


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private mDownloadedSize:J

.field mFileIOBuffer:[B

.field private mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private mHttpGet:Lorg/apache/http/client/methods/HttpGet;

.field private mReportedProgress:I

.field private mTotalExpectedSize:J

.field final synthetic this$0:Lnet/yostore/aws/service/DownloadService;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/service/DownloadService;Lnet/yostore/aws/api/ApiConfig;)V
    .locals 1
    .parameter
    .parameter "apicfg"

    .prologue
    .line 471
    iput-object p1, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->this$0:Lnet/yostore/aws/service/DownloadService;

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mFileIOBuffer:[B

    .line 469
    iput-object p2, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-void
.end method

.method private download(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/sqlite/entity/DownloadItem;)V
    .locals 10
    .parameter "apicfg"
    .parameter "di"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/service/DownloadService$DownloaderException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    .line 545
    iput-wide v8, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mDownloadedSize:J

    .line 546
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/service/DownloadService$Downloader;->getSizes(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/sqlite/entity/DownloadItem;)J

    move-result-wide v0

    .line 547
    .local v0, remoteSize:J
    const-string v2, "Downloader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Total bytes to download: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mTotalExpectedSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    cmp-long v2, v0, v8

    if-ltz v2, :cond_2

    iget-wide v2, p2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->size:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->size:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 549
    :cond_0
    iget-wide v2, p2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->size:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 550
    iput-wide v0, p2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->size:J

    .line 551
    iget-object v2, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->this$0:Lnet/yostore/aws/service/DownloadService;

    invoke-static {v2}, Lnet/yostore/aws/service/DownloadService;->access$1(Lnet/yostore/aws/service/DownloadService;)Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    iget-wide v5, p2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->size:J

    invoke-static {v2, v3, v4, v5, v6}, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->setItemSize(Landroid/content/Context;JJ)V

    .line 552
    sget-object v2, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    if-eqz v2, :cond_1

    sget-object v2, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-wide v2, v2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    iget-wide v4, p2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 553
    sget-object v2, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-wide v3, p2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->size:J

    iput-wide v3, v2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->size:J

    .line 555
    :cond_1
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/service/DownloadService$Downloader;->downloadFile(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/sqlite/entity/DownloadItem;)V

    .line 560
    :goto_0
    return-void

    .line 558
    :cond_2
    const-string v2, "999"

    invoke-direct {p0, v2}, Lnet/yostore/aws/service/DownloadService$Downloader;->reportFailure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private downloadFile(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/sqlite/entity/DownloadItem;)V
    .locals 10
    .parameter "apicfg"
    .parameter "di"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/service/DownloadService$DownloaderException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 564
    const/4 v0, 0x1

    sput-boolean v0, Lnet/yostore/aws/service/DownloadService;->isDownLoading:Z

    .line 565
    const/4 v7, 0x0

    .line 566
    .local v7, append:Z
    new-instance v8, Ljava/io/File;

    iget-object v0, p2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->savepath:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v5, p2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".awsdltmp"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    .local v8, dest:Ljava/io/File;
    const-wide/16 v3, 0x0

    .line 568
    .local v3, bytesToSkip:J
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    const/4 v7, 0x1

    .line 571
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 572
    iget-wide v0, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mDownloadedSize:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mDownloadedSize:J

    .line 574
    :cond_0
    const/4 v2, 0x0

    .line 575
    .local v2, os:Ljava/io/FileOutputStream;
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-lez v0, :cond_1

    .line 577
    invoke-direct {p0, p2}, Lnet/yostore/aws/service/DownloadService$Downloader;->openInput(Lnet/yostore/aws/sqlite/entity/DownloadItem;)Ljava/io/FileInputStream;

    move-result-object v9

    .line 580
    .local v9, is:Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v9, v3, v4}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    invoke-static {v9}, Lnet/yostore/aws/service/DownloadService;->access$10(Ljava/io/InputStream;)V

    .line 589
    .end local v9           #is:Ljava/io/FileInputStream;
    :cond_1
    invoke-direct {p0, p2, v7}, Lnet/yostore/aws/service/DownloadService$Downloader;->openOutput(Lnet/yostore/aws/sqlite/entity/DownloadItem;Z)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 591
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/service/DownloadService$Downloader;->getDirectDownloadUri(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/sqlite/entity/DownloadItem;)Ljava/lang/String;

    move-result-object v1

    iget-wide v5, p2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->size:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/service/DownloadService$Downloader;->downloadPart(Ljava/lang/String;Ljava/io/FileOutputStream;JJ)V

    .line 592
    invoke-static {v2}, Lnet/yostore/aws/service/DownloadService;->access$11(Ljava/io/OutputStream;)V

    .line 593
    return-void

    .line 583
    .restart local v9       #is:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v0

    .line 584
    invoke-static {v9}, Lnet/yostore/aws/service/DownloadService;->access$10(Ljava/io/InputStream;)V

    .line 585
    throw v0
.end method

.method private downloadPart(Ljava/lang/String;Ljava/io/FileOutputStream;JJ)V
    .locals 22
    .parameter "src"
    .parameter "os"
    .parameter "startOffset"
    .parameter "expectedLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lnet/yostore/aws/service/DownloadService$DownloaderException;
        }
    .end annotation

    .prologue
    .line 718
    const-wide/16 v3, 0x0

    cmp-long v3, p5, v3

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    move/from16 v17, v3

    .line 719
    .local v17, lengthIsKnown:Z
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-gez v3, :cond_1

    .line 720
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Negative startOffset:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lnet/yostore/aws/service/DownloadService$Downloader;->reportFailure(Ljava/lang/String;)V

    .line 721
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

    .line 718
    .end local v17           #lengthIsKnown:Z
    :cond_0
    const/4 v3, 0x0

    move/from16 v17, v3

    goto :goto_0

    .line 723
    .restart local v17       #lengthIsKnown:Z
    :cond_1
    if-eqz v17, :cond_2

    cmp-long v3, p3, p5

    if-lez v3, :cond_2

    .line 724
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startOffset > expectedLength"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lnet/yostore/aws/service/DownloadService$Downloader;->reportFailure(Ljava/lang/String;)V

    .line 725
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

    .line 727
    invoke-direct/range {v3 .. v8}, Lnet/yostore/aws/service/DownloadService$Downloader;->getInputStream(Ljava/lang/String;JJ)Ljava/io/InputStream;

    move-result-object v16

    .line 729
    .local v16, is:Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/service/DownloadService$Downloader;->downloadStream(Ljava/io/InputStream;Ljava/io/FileOutputStream;)J

    move-result-wide v9

    .line 730
    .local v9, bytesRead:J
    if-eqz v17, :cond_5

    .line 731
    const-wide/16 v3, 0x0

    cmp-long v3, v9, v3

    if-ltz v3, :cond_9

    .line 732
    sub-long v12, p5, p3

    .line 733
    .local v12, expectedBytesRead:J
    cmp-long v3, v12, v9

    if-eqz v3, :cond_4

    .line 734
    const-string v3, "Downloader"

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

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string v3, "Incorrect number of bytes received from server"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lnet/yostore/aws/service/DownloadService$Downloader;->reportFailure(Ljava/lang/String;)V

    .line 736
    new-instance v3, Lnet/yostore/aws/service/DownloadService$DownloaderException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/service/DownloadService$Downloader;->this$0:Lnet/yostore/aws/service/DownloadService;

    move-object v4, v0

    const-string v5, "Incorrect number of bytes received from server"

    invoke-direct {v3, v4, v5}, Lnet/yostore/aws/service/DownloadService$DownloaderException;-><init>(Lnet/yostore/aws/service/DownloadService;Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    .end local v9           #bytesRead:J
    .end local v12           #expectedBytesRead:J
    :catchall_0
    move-exception v3

    .line 763
    if-eqz v16, :cond_3

    .line 764
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 765
    :cond_3
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/yostore/aws/service/DownloadService$Downloader;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 766
    throw v3

    .line 738
    .restart local v9       #bytesRead:J
    .restart local v12       #expectedBytesRead:J
    :cond_4
    :try_start_1
    new-instance v21, Ljava/io/File;

    sget-object v3, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-object v3, v3, Lnet/yostore/aws/sqlite/entity/DownloadItem;->savepath:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-object v5, v5, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".awsdltmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    .local v21, successFile:Ljava/io/File;
    new-instance v19, Ljava/io/File;

    sget-object v3, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-object v3, v3, Lnet/yostore/aws/sqlite/entity/DownloadItem;->savepath:Ljava/lang/String;

    sget-object v4, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-object v4, v4, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    .local v19, renameFile:Ljava/io/File;
    sget-object v3, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-object v3, v3, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 741
    .local v11, dotPos:I
    sget-object v3, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-object v3, v3, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    const/4 v4, 0x0

    if-lez v11, :cond_7

    move v5, v11

    :goto_1
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 742
    .local v18, mainFileName:Ljava/lang/String;
    sget-object v3, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-object v3, v3, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 743
    .local v14, extFileName:Ljava/lang/String;
    const-string v20, "-"

    .line 744
    .local v20, spreatStr:Ljava/lang/String;
    const/4 v15, 0x0

    .line 745
    .local v15, i:I
    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8

    .line 749
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/service/DownloadService$Downloader;->this$0:Lnet/yostore/aws/service/DownloadService;

    move-object v3, v0

    sget-object v4, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-wide v4, v4, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    invoke-static {v3, v4, v5}, Lnet/yostore/aws/service/DownloadService;->access$12(Lnet/yostore/aws/service/DownloadService;J)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/service/DownloadService$Downloader;->this$0:Lnet/yostore/aws/service/DownloadService;

    move-object v3, v0

    invoke-static {v3}, Lnet/yostore/aws/service/DownloadService;->access$1(Lnet/yostore/aws/service/DownloadService;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-wide v4, v4, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    invoke-static {v3, v4, v5}, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->clearDownloadQueueItem(Landroid/content/Context;J)V

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/service/DownloadService$Downloader;->this$0:Lnet/yostore/aws/service/DownloadService;

    move-object v3, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/yostore/aws/service/DownloadService;->notifyFileOpen(Ljava/lang/String;)V

    .line 753
    const/4 v3, 0x0

    sput-object v3, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 763
    .end local v11           #dotPos:I
    .end local v12           #expectedBytesRead:J
    .end local v14           #extFileName:Ljava/lang/String;
    .end local v15           #i:I
    .end local v18           #mainFileName:Ljava/lang/String;
    .end local v19           #renameFile:Ljava/io/File;
    .end local v20           #spreatStr:Ljava/lang/String;
    .end local v21           #successFile:Ljava/io/File;
    :cond_5
    if-eqz v16, :cond_6

    .line 764
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 765
    :cond_6
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/yostore/aws/service/DownloadService$Downloader;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 767
    return-void

    .line 741
    .restart local v11       #dotPos:I
    .restart local v12       #expectedBytesRead:J
    .restart local v19       #renameFile:Ljava/io/File;
    .restart local v21       #successFile:Ljava/io/File;
    :cond_7
    :try_start_2
    sget-object v5, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-object v5, v5, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_1

    .line 746
    .restart local v14       #extFileName:Ljava/lang/String;
    .restart local v15       #i:I
    .restart local v18       #mainFileName:Ljava/lang/String;
    .restart local v20       #spreatStr:Ljava/lang/String;
    :cond_8
    add-int/lit8 v15, v15, 0x1

    .line 747
    new-instance v19, Ljava/io/File;

    .end local v19           #renameFile:Ljava/io/File;
    sget-object v3, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-object v3, v3, Lnet/yostore/aws/sqlite/entity/DownloadItem;->savepath:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v19       #renameFile:Ljava/io/File;
    goto :goto_2

    .line 756
    .end local v11           #dotPos:I
    .end local v12           #expectedBytesRead:J
    .end local v14           #extFileName:Ljava/lang/String;
    .end local v15           #i:I
    .end local v18           #mainFileName:Ljava/lang/String;
    .end local v19           #renameFile:Ljava/io/File;
    .end local v20           #spreatStr:Ljava/lang/String;
    .end local v21           #successFile:Ljava/io/File;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/service/DownloadService$Downloader;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 757
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileOutputStream;->close()V

    .line 758
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 759
    new-instance v3, Lnet/yostore/aws/service/DownloadService$DownloaderException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/service/DownloadService$Downloader;->this$0:Lnet/yostore/aws/service/DownloadService;

    move-object v4, v0

    const-string v5, "-2"

    invoke-direct {v3, v4, v5}, Lnet/yostore/aws/service/DownloadService$DownloaderException;-><init>(Lnet/yostore/aws/service/DownloadService;Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private downloadStream(Ljava/io/InputStream;Ljava/io/FileOutputStream;)J
    .locals 12
    .parameter "is"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/service/DownloadService$DownloaderException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 798
    const-wide/16 v2, 0x0

    .line 800
    .local v2, totalBytesRead:J
    :cond_0
    :goto_0
    sget-object v4, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    if-eqz v4, :cond_3

    .line 801
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 802
    const-string v4, "Downloader"

    const-string v5, "downloader thread interrupted."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v4, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 804
    const-string v4, "Thread interrupted"

    invoke-direct {p0, v4}, Lnet/yostore/aws/service/DownloadService$Downloader;->reportFailure(Ljava/lang/String;)V

    .line 805
    new-instance v4, Lnet/yostore/aws/service/DownloadService$DownloaderException;

    iget-object v5, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->this$0:Lnet/yostore/aws/service/DownloadService;

    const-string v6, "Thread interrupted"

    invoke-direct {v4, v5, v6}, Lnet/yostore/aws/service/DownloadService$DownloaderException;-><init>(Lnet/yostore/aws/service/DownloadService;Ljava/lang/String;)V

    throw v4

    .line 807
    :cond_1
    iget-object v4, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mFileIOBuffer:[B

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 808
    .local v0, bytesRead:I
    if-gez v0, :cond_2

    move-wide v4, v2

    .line 827
    .end local v0           #bytesRead:I
    :goto_1
    return-wide v4

    .line 814
    .restart local v0       #bytesRead:I
    :cond_2
    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 815
    iget-object v4, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mFileIOBuffer:[B

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 816
    iget-wide v4, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mDownloadedSize:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mDownloadedSize:J

    .line 817
    iget-wide v4, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mTotalExpectedSize:J

    iget-wide v6, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mDownloadedSize:J

    const-wide/16 v8, 0x2710

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x1

    iget-wide v10, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mTotalExpectedSize:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    div-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 818
    .local v1, progress:I
    iget v4, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mReportedProgress:I

    if-eq v1, v4, :cond_0

    .line 819
    iput v1, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mReportedProgress:I

    .line 820
    invoke-direct {p0, v1}, Lnet/yostore/aws/service/DownloadService$Downloader;->reportProgress(I)V

    goto :goto_0

    .line 823
    .end local v0           #bytesRead:I
    .end local v1           #progress:I
    :cond_3
    const-string v4, "-2"

    invoke-direct {p0, v4}, Lnet/yostore/aws/service/DownloadService$Downloader;->reportFailure(Ljava/lang/String;)V

    .line 824
    const-wide/16 v4, -0x1

    goto :goto_1
.end method

.method private getDirectDownloadUri(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/sqlite/entity/DownloadItem;)Ljava/lang/String;
    .locals 3
    .parameter "apicfg"
    .parameter "di"

    .prologue
    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/webrelay/directdownload/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 638
    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 639
    const-string v1, "?dis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/api/entity/ApiCookies;->sid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 640
    const-string v1, "&fi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 641
    const-string v1, "&pv=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 637
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
    .line 681
    const-string v8, "Downloader"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Get "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 684
    const/16 v3, 0xc8

    .line 685
    .local v3, expectedStatusCode:I
    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-lez v8, :cond_1

    .line 686
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

    .line 687
    .local v5, range:Ljava/lang/String;
    const-wide/16 v8, 0x0

    cmp-long v8, p4, v8

    if-ltz v8, :cond_0

    .line 688
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

    .line 690
    :cond_0
    const-string v8, "Downloader"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "requesting byte range "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v8, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    const-string v9, "Range"

    invoke-virtual {v8, v9, v5}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const/16 v3, 0xce

    .line 694
    .end local v5           #range:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v9, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v8, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 695
    .local v6, response:Lorg/apache/http/HttpResponse;
    const-wide/16 v0, 0x0

    .line 696
    .local v0, bytesToSkip:J
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 697
    .local v7, statusCode:I
    if-eq v7, v3, :cond_2

    .line 698
    const/16 v8, 0xc8

    if-ne v7, v8, :cond_4

    const/16 v8, 0xce

    if-ne v3, v8, :cond_4

    .line 699
    const-string v8, "Downloader"

    const-string v9, "Byte range request ignored"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    move-wide v0, p2

    .line 706
    :cond_2
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 707
    .local v2, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 708
    .local v4, is:Ljava/io/InputStream;
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_3

    .line 709
    invoke-virtual {v4, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 711
    :cond_3
    return-object v4

    .line 702
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #is:Ljava/io/InputStream;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unexpected Http status code "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lnet/yostore/aws/service/DownloadService$Downloader;->reportFailure(Ljava/lang/String;)V

    .line 703
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

.method private getSize(Ljava/lang/String;)J
    .locals 7
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 660
    const-string v4, "Downloader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Head "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    new-instance v2, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 662
    .local v2, httpGet:Lorg/apache/http/client/methods/HttpHead;
    iget-object v4, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 663
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    .line 664
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected Http status code "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lnet/yostore/aws/service/DownloadService$Downloader;->reportFailure(Ljava/lang/String;)V

    .line 665
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected Http status code "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 667
    :cond_0
    const-string v4, "Content-Length"

    invoke-interface {v3, v4}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 668
    .local v0, clHeaders:[Lorg/apache/http/Header;
    array-length v4, v0

    if-lez v4, :cond_1

    .line 669
    const/4 v4, 0x0

    aget-object v1, v0, v4

    .line 670
    .local v1, header:Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 672
    .end local v1           #header:Lorg/apache/http/Header;
    :goto_0
    return-wide v4

    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method private getSizes(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/sqlite/entity/DownloadItem;)J
    .locals 2
    .parameter "apicfg"
    .parameter "di"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lnet/yostore/aws/service/DownloadService$DownloaderException;
        }
    .end annotation

    .prologue
    .line 653
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/service/DownloadService$Downloader;->getDirectDownloadUri(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/sqlite/entity/DownloadItem;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/yostore/aws/service/DownloadService$Downloader;->getSize(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mTotalExpectedSize:J

    .line 655
    iget-wide v0, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mTotalExpectedSize:J

    return-wide v0
.end method

.method private openInput(Lnet/yostore/aws/sqlite/entity/DownloadItem;)Ljava/io/FileInputStream;
    .locals 6
    .parameter "di"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lnet/yostore/aws/service/DownloadService$DownloaderException;
        }
    .end annotation

    .prologue
    .line 784
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->savepath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".awsdltmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    .local v1, srcFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 786
    .local v0, parent:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 787
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 789
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create directory "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/yostore/aws/service/DownloadService$Downloader;->reportFailure(Ljava/lang/String;)V

    .line 791
    new-instance v2, Lnet/yostore/aws/service/DownloadService$DownloaderException;

    iget-object v3, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->this$0:Lnet/yostore/aws/service/DownloadService;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not create directory "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnet/yostore/aws/service/DownloadService$DownloaderException;-><init>(Lnet/yostore/aws/service/DownloadService;Ljava/lang/String;)V

    throw v2

    .line 793
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v2
.end method

.method private openOutput(Lnet/yostore/aws/sqlite/entity/DownloadItem;Z)Ljava/io/FileOutputStream;
    .locals 7
    .parameter "di"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lnet/yostore/aws/service/DownloadService$DownloaderException;
        }
    .end annotation

    .prologue
    .line 770
    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->savepath:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".awsdltmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    .local v0, destFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 772
    .local v2, parent:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 773
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 775
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 776
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not create directory "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/yostore/aws/service/DownloadService$Downloader;->reportFailure(Ljava/lang/String;)V

    .line 777
    new-instance v3, Lnet/yostore/aws/service/DownloadService$DownloaderException;

    iget-object v4, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->this$0:Lnet/yostore/aws/service/DownloadService;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not create directory "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnet/yostore/aws/service/DownloadService$DownloaderException;-><init>(Lnet/yostore/aws/service/DownloadService;Ljava/lang/String;)V

    throw v3

    .line 779
    :cond_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 780
    .local v1, os:Ljava/io/FileOutputStream;
    return-object v1
.end method

.method private persistantDownload(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/sqlite/entity/DownloadItem;)V
    .locals 3
    .parameter "apicfg"
    .parameter "di"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Lnet/yostore/aws/service/DownloadService$DownloaderException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    :try_start_0
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/service/DownloadService$Downloader;->download(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/sqlite/entity/DownloadItem;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    .line 515
    :cond_0
    const-string v1, "Downloader"

    const-string v2, "Network connectivity issue, retrying."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 503
    .local v0, e:Ljava/net/SocketException;
    iget-object v1, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->this$0:Lnet/yostore/aws/service/DownloadService;

    invoke-static {v1}, Lnet/yostore/aws/service/DownloadService;->access$8(Lnet/yostore/aws/service/DownloadService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    throw v0

    .line 508
    .end local v0           #e:Ljava/net/SocketException;
    :catch_1
    move-exception v0

    .line 510
    .local v0, e:Ljava/net/SocketTimeoutException;
    iget-object v1, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->this$0:Lnet/yostore/aws/service/DownloadService;

    invoke-static {v1}, Lnet/yostore/aws/service/DownloadService;->access$8(Lnet/yostore/aws/service/DownloadService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    throw v0
.end method

.method private reportFailure(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 524
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->this$0:Lnet/yostore/aws/service/DownloadService;

    invoke-static {v0}, Lnet/yostore/aws/service/DownloadService;->access$9(Lnet/yostore/aws/service/DownloadService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->this$0:Lnet/yostore/aws/service/DownloadService;

    invoke-static {v1}, Lnet/yostore/aws/service/DownloadService;->access$9(Lnet/yostore/aws/service/DownloadService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 525
    return-void
.end method

.method private reportProgress(I)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 529
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->this$0:Lnet/yostore/aws/service/DownloadService;

    invoke-static {v0}, Lnet/yostore/aws/service/DownloadService;->access$9(Lnet/yostore/aws/service/DownloadService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->this$0:Lnet/yostore/aws/service/DownloadService;

    invoke-static {v1}, Lnet/yostore/aws/service/DownloadService;->access$9(Lnet/yostore/aws/service/DownloadService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 530
    return-void
.end method

.method private reportSuccess()V
    .locals 3

    .prologue
    .line 520
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->this$0:Lnet/yostore/aws/service/DownloadService;

    invoke-static {v0}, Lnet/yostore/aws/service/DownloadService;->access$9(Lnet/yostore/aws/service/DownloadService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->this$0:Lnet/yostore/aws/service/DownloadService;

    invoke-static {v1}, Lnet/yostore/aws/service/DownloadService;->access$9(Lnet/yostore/aws/service/DownloadService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 521
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 476
    :goto_0
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->this$0:Lnet/yostore/aws/service/DownloadService;

    invoke-static {v1}, Lnet/yostore/aws/service/DownloadService;->access$1(Lnet/yostore/aws/service/DownloadService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->getTopDownloadQueueItem(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/DownloadItem;

    move-result-object v1

    sput-object v1, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    if-eqz v1, :cond_0

    .line 478
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v1, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 481
    iget-object v1, p0, Lnet/yostore/aws/service/DownloadService$Downloader;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    sget-object v2, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    invoke-direct {p0, v1, v2}, Lnet/yostore/aws/service/DownloadService$Downloader;->persistantDownload(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/sqlite/entity/DownloadItem;)V

    .line 484
    invoke-direct {p0}, Lnet/yostore/aws/service/DownloadService$Downloader;->reportSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 489
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 490
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/yostore/aws/service/DownloadService$Downloader;->reportFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 486
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lnet/yostore/aws/service/DownloadService$Downloader;->reportSuccess()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 493
    return-void
.end method
