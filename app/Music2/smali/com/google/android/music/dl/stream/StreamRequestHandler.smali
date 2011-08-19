.class public Lcom/google/android/music/dl/stream/StreamRequestHandler;
.super Ljava/lang/Object;
.source "StreamRequestHandler.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpRequestHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/stream/StreamRequestHandler$1;,
        Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT:Ljava/lang/String; = "60"

#the value of this static final field might be set in the static constructor
.field protected static final LOCAL_LOGV:Z = false

.field private static final RANGE_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final SEEK_PATTERN:Ljava/lang/String; = "&seek="

.field protected static final TAG:Ljava/lang/String; = "Streamer"


# instance fields
.field private final mAllowedToStreamFile:J

.field private final mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

.field private mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "Streamer"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->LOCAL_LOGV:Z

    .line 38
    const-string v0, "bytes=(\\d+)-?(\\d*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->RANGE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/dl/DownloadManager;J)V
    .locals 0
    .parameter "downloadManager"
    .parameter "allowedToStreamFile"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    .line 53
    iput-wide p2, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mAllowedToStreamFile:J

    .line 54
    return-void
.end method

.method private convertRangeToMs(J)J
    .locals 7
    .parameter "requestedRange"

    .prologue
    .line 138
    iget-object v2, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadLength()J

    move-result-wide v0

    .line 139
    .local v0, downloadLength:J
    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 140
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested Range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " outside of size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_0
    long-to-float v2, p1

    long-to-float v3, v0

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-wide v3, v3, Lcom/google/android/music/dl/DownloadOrder;->duration:J

    iget-object v5, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-wide v5, v5, Lcom/google/android/music/dl/DownloadOrder;->seekPoint:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    return-wide v2
.end method


# virtual methods
.method public getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    return-object v0
.end method

.method public handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 24
    .parameter "request"
    .parameter "response"
    .parameter "context"

    .prologue
    .line 57
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v12

    .line 61
    .local v12, reqLine:Lorg/apache/http/RequestLine;
    invoke-interface {v12}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v11

    .line 62
    .local v11, path:Ljava/lang/String;
    const/16 v20, 0x2f

    move-object v0, v11

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 63
    .local v9, lastSlash:I
    const/16 v20, -0x1

    move v0, v9

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 64
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown URL requested: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 66
    :cond_0
    const-string v20, "&seek="

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    .line 69
    .local v15, seekIdx:I
    add-int/lit8 v20, v9, 0x1

    const/16 v21, -0x1

    move v0, v15

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    :try_start_0
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v21

    :goto_0
    move-object v0, v11

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 75
    .local v7, id:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mAllowedToStreamFile:J

    move-wide/from16 v20, v0

    cmp-long v20, v7, v20

    if-eqz v20, :cond_3

    .line 77
    sget-boolean v20, Lcom/google/android/music/dl/stream/StreamRequestHandler;->LOCAL_LOGV:Z

    if-eqz v20, :cond_1

    .line 78
    const-string v20, "Streamer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Requesting file ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ") which is not mAllowedToBeStreamed ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mAllowedToStreamFile:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    const/16 v20, 0x194

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 134
    :goto_1
    return-void

    .end local v7           #id:J
    :cond_2
    move/from16 v21, v15

    .line 69
    goto :goto_0

    .line 71
    :catch_0
    move-exception v20

    move-object/from16 v5, v20

    .line 72
    .local v5, e:Ljava/lang/NumberFormatException;
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown URL requested: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 84
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local v7       #id:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/dl/DownloadManager;->getStreamingDownload(J)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    .line 86
    const/16 v20, -0x1

    move v0, v15

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    const-wide/16 v20, 0x0

    move-wide/from16 v16, v20

    .line 89
    .local v16, startMs:J
    :goto_2
    const-string v20, "Range"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 90
    .local v6, headerRange:Lorg/apache/http/Header;
    if-eqz v6, :cond_5

    .line 93
    sget-object v20, Lcom/google/android/music/dl/stream/StreamRequestHandler;->RANGE_PATTERN:Ljava/util/regex/Pattern;

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 94
    .local v10, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 95
    const/16 v20, 0x1

    move-object v0, v10

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 96
    .local v13, requestByte:J
    sget-boolean v20, Lcom/google/android/music/dl/stream/StreamRequestHandler;->LOCAL_LOGV:Z

    if-eqz v20, :cond_4

    const-string v20, "Streamer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Server requesting byte: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_4
    move-object/from16 v0, p0

    move-wide v1, v13

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/dl/stream/StreamRequestHandler;->convertRangeToMs(J)J

    move-result-wide v20

    add-long v16, v16, v20

    .line 103
    .end local v10           #matcher:Ljava/util/regex/Matcher;
    .end local v13           #requestByte:J
    :cond_5
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-eqz v20, :cond_7

    .line 104
    const-string v20, "Streamer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Starting playback from: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide v1, v7

    move-wide/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/dl/DownloadManager;->getPartialDownload(JJ)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v20, v0

    if-nez v20, :cond_7

    .line 107
    const-string v20, "Streamer"

    const-string v21, "Failed to resume download"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/16 v20, 0x19a

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto/16 :goto_1

    .line 86
    .end local v6           #headerRange:Lorg/apache/http/Header;
    .end local v16           #startMs:J
    :cond_6
    const-string v20, "&seek="

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v20, v20, v15

    move-object v0, v11

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v16, v20

    goto/16 :goto_2

    .line 113
    .restart local v6       #headerRange:Lorg/apache/http/Header;
    .restart local v16       #startMs:J
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v20, v0

    if-nez v20, :cond_8

    .line 114
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "File is not being downloaded: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 117
    :cond_8
    sget-boolean v20, Lcom/google/android/music/dl/stream/StreamRequestHandler;->LOCAL_LOGV:Z

    if-eqz v20, :cond_9

    .line 118
    const-string v20, "Streamer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Received request ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/music/dl/DownloadOrder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_9
    const-string v20, "content-type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/dl/DownloadOrder;->getHandler()Lcom/google/android/music/dl/DownloadHandler;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/dl/DownloadHandler;->getContentType()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v20, "X-SocketTimeout"

    const-string v21, "60"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-wide/16 v18, 0x0

    .line 125
    .local v18, startReadByte:J
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-eqz v20, :cond_a

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadOrder;->seekPoint:J

    move-wide/from16 v20, v0

    sub-long v20, v16, v20

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadOrder;->duration:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    long-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadLength()J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-long v0, v0

    move-wide/from16 v18, v0

    .line 131
    :cond_a
    new-instance v20, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/dl/DownloadOrder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Lcom/google/android/music/dl/TailStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/dl/TailStream;-><init>(Lcom/google/android/music/dl/DownloadOrder;J)V

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/google/android/music/dl/stream/StreamRequestHandler$1;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 133
    const/16 v20, 0xc8

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto/16 :goto_1
.end method
