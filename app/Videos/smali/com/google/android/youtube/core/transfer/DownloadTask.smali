.class public Lcom/google/android/youtube/core/transfer/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lcom/google/android/youtube/core/transfer/TransferTask;


# static fields
.field private static final BUFFER_SIZE:I = 0x10000

.field private static final CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern; = null

.field private static final HTTP_RANGE_NOT_SATISFIABLE:I = 0x1a0

.field private static final PROGRESS_GRANULARITY:I = 0x100000

.field private static final TIMEOUT:I = 0x4e20


# instance fields
.field private volatile canceled:Z

.field private final expectedSize:J

.field private final filePath:Ljava/lang/String;

.field private lastReportedProgress:J

.field private final listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

.field private final networkUri:Ljava/lang/String;

.field private final offset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/youtube/core/transfer/TransferTask$Listener;)V
    .locals 5
    .parameter "networkUri"
    .parameter "filePath"
    .parameter "offset"
    .parameter "expectedSize"
    .parameter "listener"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->networkUri:Ljava/lang/String;

    .line 74
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    .line 75
    cmp-long v0, p3, v3

    if-ltz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(Z)V

    .line 76
    iput-wide p3, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->offset:J

    .line 77
    cmp-long v0, p5, v3

    if-ltz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(Z)V

    .line 78
    iput-wide p5, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->expectedSize:J

    .line 79
    invoke-static {p7}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    .line 80
    return-void

    :cond_0
    move v0, v1

    .line 75
    goto :goto_0

    :cond_1
    move v0, v1

    .line 77
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/youtube/core/transfer/TransferTask$Listener;)V
    .locals 8
    .parameter "networkUri"
    .parameter "filePath"
    .parameter "expectedSize"
    .parameter "listener"

    .prologue
    .line 68
    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/core/transfer/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/youtube/core/transfer/TransferTask$Listener;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferTask$Listener;)V
    .locals 8
    .parameter "networkUri"
    .parameter "filePath"
    .parameter "listener"

    .prologue
    const-wide/16 v3, 0x0

    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, v3

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/core/transfer/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/youtube/core/transfer/TransferTask$Listener;)V

    .line 65
    return-void
.end method

.method private close(Ljava/io/InputStream;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 347
    if-nez p1, :cond_0

    .line 355
    :goto_0
    return-void

    .line 351
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private close(Ljava/nio/channels/FileChannel;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 327
    if-nez p1, :cond_0

    .line 344
    :goto_0
    return-void

    .line 331
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 332
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 339
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    goto :goto_0

    .line 333
    :catch_1
    move-exception v0

    .line 339
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 340
    :catch_2
    move-exception v0

    goto :goto_0

    .line 335
    :catch_3
    move-exception v0

    .line 339
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 340
    :catch_4
    move-exception v0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    .line 339
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 342
    :goto_1
    throw v0

    .line 340
    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method private doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V
    .locals 2
    .parameter "is"
    .parameter "fc"
    .parameter "connection"
    .parameter "e"

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download error ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->networkUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/DownloadTask;->close(Ljava/io/InputStream;)V

    .line 310
    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/transfer/DownloadTask;->close(Ljava/nio/channels/FileChannel;)V

    .line 311
    if-eqz p3, :cond_0

    .line 312
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    invoke-interface {v0, v1, p4}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onError(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V

    .line 315
    return-void
.end method

.method private doProgress(JZ)V
    .locals 4
    .parameter "downloaded"
    .parameter "last"

    .prologue
    .line 299
    iget-wide v0, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->lastReportedProgress:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    if-eqz p3, :cond_1

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onProgress(Ljava/lang/String;J)V

    .line 302
    iput-wide p1, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->lastReportedProgress:J

    .line 304
    :cond_1
    return-void
.end method

.method private download()V
    .locals 28

    .prologue
    .line 96
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "download starting ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 98
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v15, file:Ljava/io/File;
    const/4 v7, 0x0

    .line 100
    .local v7, connection:Ljava/net/HttpURLConnection;
    const/16 v16, 0x0

    .line 101
    .local v16, is:Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 102
    .local v14, fc:Ljava/nio/channels/FileChannel;
    const-wide/16 v21, 0x0

    .line 103
    .local v21, size:J
    const-wide/16 v11, 0x0

    .line 105
    .local v11, downloaded:J
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "opening output "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 107
    :try_start_0
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_0

    .line 108
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->mkdirs()Z

    .line 109
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 111
    :cond_0
    new-instance v18, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "rw"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v18, raf:Ljava/io/RandomAccessFile;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->offset:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-lez v24, :cond_1

    .line 113
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "writing from "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->offset:J

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->offset:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 115
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->offset:J

    move-wide v11, v0

    .line 121
    :goto_0
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 127
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->expectedSize:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-lez v24, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->expectedSize:J

    move-wide/from16 v24, v0

    cmp-long v24, v11, v24

    if-nez v24, :cond_2

    .line 129
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/transfer/DownloadTask;->close(Ljava/nio/channels/FileChannel;)V

    .line 130
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "download already completed ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onCompleted(Ljava/lang/String;)V

    .line 249
    .end local v18           #raf:Ljava/io/RandomAccessFile;
    :goto_1
    return-void

    .line 117
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    :cond_1
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v24

    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 118
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v11

    .line 119
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "appending from "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 122
    .end local v18           #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v24

    move-object/from16 v13, v24

    .line 123
    .local v13, e:Ljava/lang/Exception;
    new-instance v24, Lcom/google/android/youtube/core/transfer/TransferException;

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move-object v1, v13

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v14

    move-object v3, v7

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto :goto_1

    .line 135
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    :cond_2
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "opening input "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->networkUri:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 137
    :try_start_2
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->networkUri:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 138
    .local v23, url:Ljava/net/URL;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide v2, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/transfer/DownloadTask;->makeConnection(Ljava/net/URL;J)Ljava/net/HttpURLConnection;

    move-result-object v7

    .line 139
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v20

    .line 140
    .local v20, responseCode:I
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/transfer/DownloadTask;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v8

    .line 141
    .local v8, contentLength:J
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "responseCode="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " contentLength="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->expectedSize:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-nez v24, :cond_3

    const/16 v24, 0x1a0

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 147
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 148
    const-wide/16 v24, 0x1

    sub-long v24, v11, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/transfer/DownloadTask;->makeConnection(Ljava/net/URL;J)Ljava/net/HttpURLConnection;

    move-result-object v7

    .line 149
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .line 150
    .local v17, newResponseCode:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/transfer/DownloadTask;->is2xxStatusCode(I)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 151
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "download already completed ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/transfer/DownloadTask;->close(Ljava/nio/channels/FileChannel;)V

    .line 153
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-wide v2, v11

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onSize(Ljava/lang/String;J)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onCompleted(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 187
    .end local v8           #contentLength:J
    .end local v17           #newResponseCode:I
    .end local v20           #responseCode:I
    .end local v23           #url:Ljava/net/URL;
    :catch_1
    move-exception v24

    move-object/from16 v13, v24

    .line 188
    .restart local v13       #e:Ljava/lang/Exception;
    new-instance v24, Lcom/google/android/youtube/core/transfer/TransferException;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object v1, v13

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v14

    move-object v3, v7

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto/16 :goto_1

    .line 160
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v8       #contentLength:J
    .restart local v20       #responseCode:I
    .restart local v23       #url:Ljava/net/URL;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/transfer/DownloadTask;->is2xxStatusCode(I)Z

    move-result v24

    if-nez v24, :cond_4

    .line 161
    new-instance v24, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "http status "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/transfer/DownloadTask;->isFatalStatusCode(I)Z

    move-result v26

    invoke-direct/range {v24 .. v26}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v14

    move-object v3, v7

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto/16 :goto_1

    .line 164
    :cond_4
    const-wide/16 v24, 0x1

    cmp-long v24, v8, v24

    if-gez v24, :cond_5

    .line 165
    new-instance v24, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "content length "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    invoke-direct/range {v24 .. v26}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v14

    move-object v3, v7

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto/16 :goto_1

    .line 170
    :cond_5
    const-string v24, "Content-Range"

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 171
    .local v10, contentRangeHeader:Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Content-Range "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", not "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/google/android/youtube/core/utils/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 174
    add-long v21, v11, v8

    .line 175
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "size is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->expectedSize:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-lez v24, :cond_6

    .line 177
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->expectedSize:J

    move-wide/from16 v24, v0

    cmp-long v24, v21, v24

    if-eqz v24, :cond_7

    .line 178
    new-instance v24, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "unexpected size "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    invoke-direct/range {v24 .. v26}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v14

    move-object v3, v7

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto/16 :goto_1

    .line 183
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-wide/from16 v2, v21

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onSize(Ljava/lang/String;J)V

    .line 186
    :cond_7
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v16

    .line 192
    const/high16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object v5, v0

    .line 193
    .local v5, byteArray:[B
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 194
    .local v6, byteBuffer:Ljava/nio/ByteBuffer;
    const/16 v19, 0x0

    .line 195
    .local v19, read:I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->canceled:Z

    move/from16 v24, v0

    if-nez v24, :cond_8

    const/16 v24, -0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_8

    .line 198
    const/16 v24, 0x0

    const/high16 v25, 0x1

    :try_start_4
    move-object/from16 v0, v16

    move-object v1, v5

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v19

    .line 204
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->canceled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    .line 234
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/transfer/DownloadTask;->close(Ljava/io/InputStream;)V

    .line 235
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/transfer/DownloadTask;->close(Ljava/nio/channels/FileChannel;)V

    .line 236
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 238
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->canceled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_f

    .line 239
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "download canceled ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onCanceled(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 199
    :catch_2
    move-exception v13

    .line 200
    .restart local v13       #e:Ljava/lang/Exception;
    new-instance v24, Lcom/google/android/youtube/core/transfer/TransferException;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object v1, v13

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v14

    move-object v3, v7

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto/16 :goto_1

    .line 209
    .end local v13           #e:Ljava/lang/Exception;
    :cond_9
    :try_start_5
    invoke-virtual {v14}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v24

    cmp-long v24, v24, v11

    if-nez v24, :cond_c

    const/16 v24, 0x1

    :goto_3
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "fc.position "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v14}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " != "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/google/android/youtube/core/utils/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 211
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->offset:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-nez v24, :cond_a

    invoke-virtual {v14}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v24

    cmp-long v24, v24, v11

    if-nez v24, :cond_d

    :cond_a
    const/16 v24, 0x1

    :goto_4
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "fc.length "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v14}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " != "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/google/android/youtube/core/utils/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 220
    if-lez v19, :cond_b

    .line 221
    const/16 v24, 0x0

    :try_start_6
    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 222
    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 223
    invoke-virtual {v14, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 224
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v11, v11, v24

    .line 231
    :cond_b
    const/16 v24, -0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    const/16 v24, 0x1

    :goto_5
    move-object/from16 v0, p0

    move-wide v1, v11

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doProgress(JZ)V

    goto/16 :goto_2

    .line 209
    :cond_c
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 211
    :cond_d
    const/16 v24, 0x0

    goto :goto_4

    .line 213
    :catch_3
    move-exception v24

    move-object/from16 v13, v24

    .line 214
    .restart local v13       #e:Ljava/lang/Exception;
    new-instance v24, Lcom/google/android/youtube/core/transfer/TransferException;

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move-object v1, v13

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v14

    move-object v3, v7

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto/16 :goto_1

    .line 226
    .end local v13           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v24

    move-object/from16 v13, v24

    .line 227
    .restart local v13       #e:Ljava/lang/Exception;
    new-instance v24, Lcom/google/android/youtube/core/transfer/TransferException;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object v1, v13

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v14

    move-object v3, v7

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto/16 :goto_1

    .line 231
    .end local v13           #e:Ljava/lang/Exception;
    :cond_e
    const/16 v24, 0x0

    goto :goto_5

    .line 241
    :cond_f
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v24

    cmp-long v24, v24, v21

    if-eqz v24, :cond_10

    .line 242
    new-instance v24, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "download completed with unexpected size. Expected ["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "] but got ["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "] "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    invoke-direct/range {v24 .. v26}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v14

    move-object v3, v7

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/transfer/DownloadTask;->doError(Ljava/io/InputStream;Ljava/nio/channels/FileChannel;Ljava/net/HttpURLConnection;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto/16 :goto_1

    .line 246
    :cond_10
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "download completed ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onCompleted(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private getContentLength(Ljava/net/HttpURLConnection;)J
    .locals 12
    .parameter "connection"

    .prologue
    const/4 v11, 0x1

    .line 262
    const-wide/16 v0, -0x1

    .line 264
    .local v0, contentLength:J
    const-string v7, "Content-Length"

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, contentLengthHeader:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 267
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 273
    :cond_0
    :goto_0
    const-string v7, "Content-Range"

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, contentRangeHeader:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 275
    sget-object v7, Lcom/google/android/youtube/core/transfer/DownloadTask;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 276
    .local v6, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 278
    const/4 v7, 0x2

    :try_start_1
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1

    add-long v2, v7, v9

    .line 280
    .local v2, contentLengthFromRange:J
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-gez v7, :cond_2

    .line 283
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Using contentLength parsed from Content-Range "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 284
    move-wide v0, v2

    .line 295
    .end local v2           #contentLengthFromRange:J
    .end local v6           #matcher:Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    return-wide v0

    .line 286
    .restart local v2       #contentLengthFromRange:J
    .restart local v6       #matcher:Ljava/util/regex/Matcher;
    :cond_2
    cmp-long v7, v0, v2

    if-nez v7, :cond_3

    move v7, v11

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Content-Length "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not match Content-Range "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/youtube/core/utils/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 289
    .end local v2           #contentLengthFromRange:J
    :catch_0
    move-exception v7

    goto :goto_1

    .line 286
    .restart local v2       #contentLengthFromRange:J
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 268
    .end local v2           #contentLengthFromRange:J
    .end local v5           #contentRangeHeader:Ljava/lang/String;
    .end local v6           #matcher:Ljava/util/regex/Matcher;
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method private is2xxStatusCode(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 318
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFatalStatusCode(I)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 323
    div-int/lit8 v0, p1, 0x64

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x198

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeConnection(Ljava/net/URL;J)Ljava/net/HttpURLConnection;
    .locals 4
    .parameter "url"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x4e20

    .line 252
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 253
    .local v0, connection:Ljava/net/HttpURLConnection;
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 254
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 255
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 256
    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 258
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->canceled:Z

    .line 84
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 87
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 89
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/DownloadTask;->download()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/DownloadTask;->filePath:Ljava/lang/String;

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onError(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto :goto_0
.end method
