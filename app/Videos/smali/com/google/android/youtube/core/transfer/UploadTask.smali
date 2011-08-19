.class public Lcom/google/android/youtube/core/transfer/UploadTask;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Lcom/google/android/youtube/core/transfer/TransferTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;,
        Lcom/google/android/youtube/core/transfer/UploadTask$ProgressEntity;
    }
.end annotation


# static fields
.field private static final PROGRESS_NOTIFY_THRESHOLD:I = 0xc800

.field private static final RE_RANGE_HEADER:Ljava/util/regex/Pattern; = null

.field private static final SC_INCOMPLETE:I = 0x134


# instance fields
.field private volatile canceled:Z

.field private volatile currentRequest:Lorg/apache/http/client/methods/HttpUriRequest;

.field private fileLength:J

.field private final filePath:Ljava/lang/String;

.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private final listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

.field private final networkUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "bytes=(\\d+)-(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/transfer/UploadTask;->RE_RANGE_HEADER:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferTask$Listener;)V
    .locals 1
    .parameter "httpClient"
    .parameter "networkUri"
    .parameter "filePath"
    .parameter "listener"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 51
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->filePath:Ljava/lang/String;

    .line 52
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->networkUri:Ljava/lang/String;

    .line 53
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/transfer/UploadTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/transfer/UploadTask;)Lcom/google/android/youtube/core/transfer/TransferTask$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    return-object v0
.end method

.method private consumeContentResponse(Lorg/apache/http/HttpResponse;)V
    .locals 1
    .parameter "httpResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 171
    .local v0, httpEntity:Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 174
    :cond_0
    return-void
.end method

.method private doUpload()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/google/android/youtube/core/transfer/TransferException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/io/File;

    iget-object v9, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->filePath:Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 81
    new-instance v9, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v10, "file not found"

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v9

    .line 83
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 84
    new-instance v9, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v10, "file is a directory"

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v9

    .line 86
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->fileLength:J

    .line 87
    iget-wide v9, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->fileLength:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    .line 88
    new-instance v9, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v10, "file is empty"

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v9

    .line 90
    :cond_2
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/UploadTask;->requestRange()Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 91
    .local v1, rangeResponse:Lorg/apache/http/HttpResponse;
    iget-boolean v9, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->canceled:Z

    if-eqz v9, :cond_3

    .line 92
    iget-object v9, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v10, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->filePath:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onCanceled(Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 95
    :cond_3
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 96
    .local v2, rangeStatusCode:I
    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/transfer/UploadTask;->consumeContentResponse(Lorg/apache/http/HttpResponse;)V

    .line 97
    const/16 v9, 0x134

    if-ne v2, v9, :cond_8

    .line 98
    const-string v9, "range"

    invoke-interface {v1, v9}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/android/youtube/core/transfer/UploadTask;->parseRangeHeaderLastByte(Lorg/apache/http/Header;)J

    move-result-wide v5

    .line 99
    .local v5, sentByte:J
    invoke-direct {p0, v0, v5, v6}, Lcom/google/android/youtube/core/transfer/UploadTask;->requestUpload(Ljava/io/File;J)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 100
    .local v7, uploadResponse:Lorg/apache/http/HttpResponse;
    iget-boolean v9, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->canceled:Z

    if-eqz v9, :cond_4

    .line 101
    iget-object v9, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v10, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->filePath:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onCanceled(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_4
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 105
    .local v8, uploadStatusCode:I
    const/16 v9, 0xc8

    if-eq v8, v9, :cond_5

    const/16 v9, 0xc9

    if-ne v8, v9, :cond_6

    .line 106
    :cond_5
    iget-object v9, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v10, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->filePath:Ljava/lang/String;

    iget-wide v11, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->fileLength:J

    invoke-interface {v9, v10, v11, v12}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onProgress(Ljava/lang/String;J)V

    .line 107
    iget-object v9, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v10, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->filePath:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onCompleted(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_6
    const/16 v9, 0x134

    if-ne v8, v9, :cond_7

    .line 109
    const-string v9, "range"

    invoke-interface {v1, v9}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/android/youtube/core/transfer/UploadTask;->parseRangeHeaderLastByte(Lorg/apache/http/Header;)J

    move-result-wide v3

    .line 110
    .local v3, sent:J
    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/transfer/UploadTask;->consumeContentResponse(Lorg/apache/http/HttpResponse;)V

    .line 111
    new-instance v9, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v10, "http status 308"

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v9

    .line 113
    .end local v3           #sent:J
    :cond_7
    new-instance v9, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http status "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v9

    .line 115
    .end local v5           #sentByte:J
    .end local v7           #uploadResponse:Lorg/apache/http/HttpResponse;
    .end local v8           #uploadStatusCode:I
    :cond_8
    const/16 v9, 0xc8

    if-eq v2, v9, :cond_9

    const/16 v9, 0xc9

    if-ne v2, v9, :cond_a

    .line 116
    :cond_9
    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/transfer/UploadTask;->consumeContentResponse(Lorg/apache/http/HttpResponse;)V

    .line 117
    iget-object v9, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v10, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->filePath:Ljava/lang/String;

    iget-wide v11, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->fileLength:J

    invoke-interface {v9, v10, v11, v12}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onProgress(Ljava/lang/String;J)V

    .line 118
    iget-object v9, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v10, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->filePath:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onCompleted(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_a
    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/transfer/UploadTask;->consumeContentResponse(Lorg/apache/http/HttpResponse;)V

    .line 121
    new-instance v9, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http status "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v9
.end method

.method private parseRangeHeaderLastByte(Lorg/apache/http/Header;)J
    .locals 6
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 178
    const-wide/16 v2, -0x1

    .line 185
    :goto_0
    return-wide v2

    .line 180
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, value:Ljava/lang/String;
    sget-object v2, Lcom/google/android/youtube/core/transfer/UploadTask;->RE_RANGE_HEADER:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 182
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    new-instance v2, Ljava/io/IOException;

    const-string v3, "malformed range header=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method private requestRange()Lorg/apache/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->networkUri:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    const-string v1, "Content-Range"

    const-string v2, "bytes */*"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->httpClient:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private requestUpload(Ljava/io/File;J)Lorg/apache/http/HttpResponse;
    .locals 13
    .parameter "file"
    .parameter "sentByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/transfer/TransferException;
        }
    .end annotation

    .prologue
    .line 126
    iget-boolean v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->canceled:Z

    if-eqz v1, :cond_0

    .line 127
    const/4 v1, 0x0

    .line 154
    :goto_0
    return-object v1

    .line 129
    :cond_0
    const-wide/16 v3, 0x1

    add-long v10, p2, v3

    .line 130
    .local v10, nextByte:J
    iget-wide v3, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->fileLength:J

    const-wide/16 v5, 0x1

    sub-long v8, v3, v5

    .line 132
    .local v8, lastByte:J
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->filePath:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->fileLength:J

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onSize(Ljava/lang/String;J)V

    .line 134
    new-instance v12, Lorg/apache/http/client/methods/HttpPut;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->networkUri:Ljava/lang/String;

    invoke-direct {v12, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 135
    .local v12, request:Lorg/apache/http/client/methods/HttpPut;
    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v12, v1, v2}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "Content-Range"

    const-string v2, "bytes %d-%d/%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-wide v5, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->fileLength:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 142
    .local v2, fis:Ljava/io/FileInputStream;
    invoke-virtual {v2, v10, v11}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v3

    cmp-long v1, v3, v10

    if-eqz v1, :cond_1

    .line 143
    new-instance v1, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v2, "unable to skip to upload position"

    .end local v2           #fis:Ljava/io/FileInputStream;
    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 146
    .local v7, e:Ljava/io/IOException;
    new-instance v1, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v2, 0x1

    invoke-direct {v1, v7, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    throw v1

    .line 150
    .end local v7           #e:Ljava/io/IOException;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_1
    :try_start_1
    new-instance v0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressEntity;

    iget-wide v3, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->fileLength:J

    sub-long/2addr v3, v10

    move-object v1, p0

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressEntity;-><init>(Lcom/google/android/youtube/core/transfer/UploadTask;Ljava/io/InputStream;JJ)V

    .line 151
    .local v0, entity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v12, v0}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 152
    iput-object v12, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 154
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    goto :goto_0

    .line 155
    .end local v0           #entity:Lorg/apache/http/HttpEntity;
    :catch_1
    move-exception v1

    move-object v7, v1

    .line 156
    .local v7, e:Lorg/apache/http/client/ClientProtocolException;
    new-instance v1, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    .end local v2           #fis:Ljava/io/FileInputStream;
    throw v1

    .line 157
    .end local v7           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    move-object v7, v1

    .line 158
    .local v7, e:Ljava/io/IOException;
    new-instance v1, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    .end local v2           #fis:Ljava/io/FileInputStream;
    throw v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->canceled:Z

    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 76
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload starting ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 59
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/UploadTask;->doUpload()V
    :try_end_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/youtube/core/transfer/TransferException; {:try_start_0 .. :try_end_0} :catch_3

    .line 69
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Lorg/apache/http/conn/HttpHostConnectException;
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->filePath:Ljava/lang/String;

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    invoke-direct {v3, v0, v4}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onError(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto :goto_0

    .line 62
    .end local v0           #e:Lorg/apache/http/conn/HttpHostConnectException;
    :catch_1
    move-exception v0

    .line 63
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->filePath:Ljava/lang/String;

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onError(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto :goto_0

    .line 64
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 65
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->filePath:Ljava/lang/String;

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    invoke-direct {v3, v0, v4}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onError(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto :goto_0

    .line 66
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 67
    .local v0, e:Lcom/google/android/youtube/core/transfer/TransferException;
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->filePath:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onError(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto :goto_0
.end method
