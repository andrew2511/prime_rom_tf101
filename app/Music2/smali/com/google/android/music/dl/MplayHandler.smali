.class public Lcom/google/android/music/dl/MplayHandler;
.super Lcom/google/android/music/dl/DownloadHandler;
.source "MplayHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/MplayHandler$1;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_MS:I = 0x2ee0

.field private static final FIRST_BUFFER_RECEIVED_EVENTCODE:I = 0x1

.field private static final HEADER_ESTIMATED_SIZE:Ljava/lang/String; = "X-Estimated-Content-Length"

.field private static final HEADER_ID3_FOOTER:Ljava/lang/String; = "X-ID3-Footer-Attached"

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LOG_HEADERS:Z = false

.field private static final MAX_REDIRECTS:I = 0xa

.field private static final REJECTED_REASON_ANOTHER_STREAM:Ljava/lang/String; = "ANOTHER_STREAM_BEING_PLAYED"

.field private static final REJECTED_REASON_DEVICE_NOT_AUTH:Ljava/lang/String; = "DEVICE_NOT_AUTHORIZED"

.field private static final REJECTED_REASON_HEADER_NAME:Ljava/lang/String; = "X-Rejected-Reason"

.field private static final REJECTED_REASON_RATE_LIMIT:Ljava/lang/String; = "STREAM_RATE_LIMIT_REACHED"

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "MusicStreaming"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private final mAndroidId:Ljava/lang/String;

.field private mDownloadSucceeded:Z

.field private final mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private final mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

.field private mPassthroughCookies:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "MusicStreaming"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/MplayHandler;->LOG_HEADERS:Z

    .line 78
    const-string v0, "MusicStreaming"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/common/http/GoogleHttpClient;)V
    .locals 9
    .parameter "context"
    .parameter "httpClient"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/DownloadHandler;-><init>(Landroid/content/Context;)V

    .line 80
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/music/dl/MplayHandler;->mDownloadSucceeded:Z

    .line 85
    iput-object p2, p0, Lcom/google/android/music/dl/MplayHandler;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/music/dl/MplayHandler;->mAndroidId:Ljava/lang/String;

    .line 89
    new-instance v5, Lcom/google/android/music/sync/google/MusicAuthInfo;

    invoke-direct {v5, p1}, Lcom/google/android/music/sync/google/MusicAuthInfo;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/music/dl/MplayHandler;->mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "music_download_passthrough_cookies"

    const-string v7, "sjsc"

    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, passthroughCookies:Ljava/lang/String;
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    iput-object v5, p0, Lcom/google/android/music/dl/MplayHandler;->mPassthroughCookies:Ljava/util/TreeSet;

    .line 93
    if-eqz v4, :cond_1

    .line 97
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 98
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 99
    iget-object v5, p0, Lcom/google/android/music/dl/MplayHandler;->mPassthroughCookies:Ljava/util/TreeSet;

    invoke-virtual {v5, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #len$:I
    :cond_1
    return-void
.end method


# virtual methods
.method public downloadSucceeded()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/google/android/music/dl/MplayHandler;->mDownloadSucceeded:Z

    return v0
.end method

.method public downloadTo(Ljava/io/OutputStream;)V
    .locals 12
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 133
    iget-object v6, p0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStartTime(J)V

    .line 135
    invoke-virtual {p0}, Lcom/google/android/music/dl/MplayHandler;->getDownloadStream()Ljava/io/InputStream;

    move-result-object v3

    .line 137
    .local v3, is:Ljava/io/InputStream;
    const/16 v6, 0x400

    :try_start_0
    new-array v0, v6, [B

    .line 139
    .local v0, buff:[B
    const/4 v2, 0x0

    .line 140
    .local v2, first_buffer_received:Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 141
    .local v1, currentThread:Ljava/lang/Thread;
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, read:I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 142
    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 143
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .end local v0           #buff:[B
    .end local v1           #currentThread:Ljava/lang/Thread;
    .end local v2           #first_buffer_received:Z
    .end local v5           #read:I
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v6

    .line 145
    .restart local v0       #buff:[B
    .restart local v1       #currentThread:Ljava/lang/Thread;
    .restart local v2       #first_buffer_received:Z
    .restart local v5       #read:I
    :cond_0
    if-nez v2, :cond_2

    .line 146
    :try_start_1
    iget-object v6, p0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-object v7, p0, Lcom/google/android/music/dl/MplayHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/google/android/music/dl/DownloadOrder;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 147
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v4, :cond_1

    .line 148
    const v6, 0x12113

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-wide v9, v9, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v9}, Lcom/google/android/music/dl/DownloadOrder;->calculateLatency()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 151
    const-string v6, "MusicStreaming"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event logging MUSIC_DOWNLOAD_STATUS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-wide v8, v8, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": first buffer received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->calculateLatency()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " subtype: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1
    const/4 v2, 0x1

    .line 158
    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 163
    :cond_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 165
    iput-boolean v11, p0, Lcom/google/android/music/dl/MplayHandler;->mDownloadSucceeded:Z

    .line 166
    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    const-string v0, "audio/mpeg"

    return-object v0
.end method

.method protected getDownloadStream()Ljava/io/InputStream;
    .locals 52
    .annotation build Lcom/google/android/music/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadOrder;->seekPoint:J

    move-wide/from16 v40, v0

    .line 172
    .local v40, seekTo:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcom/google/android/music/jumper/MusicPreferences;->getLoggingId()Ljava/lang/String;

    move-result-object v28

    .line 174
    .local v28, loggingId:Ljava/lang/String;
    const/16 v37, 0x0

    .line 175
    .local v37, response:Lorg/apache/http/HttpResponse;
    const/16 v43, 0x1f4

    .line 176
    .local v43, status:I
    const/16 v33, 0xa

    .line 178
    .local v33, redirectsLeft:I
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v46, urlBuilder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadOrder;->remoteUrl:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, "&targetkbps="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/google/android/music/dl/DownloadOrder;->getRecommendedBitrate()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    sget-object v48, Lcom/google/android/music/dl/MplayHandler$1;->$SwitchMap$com$google$android$music$dl$DownloadOrder$ScheduledBy:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->ordinal()I

    move-result v49

    aget v48, v48, v49

    packed-switch v48, :pswitch_data_0

    .line 193
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v8

    .line 194
    .local v8, completedLength:J
    const-wide/16 v48, 0x0

    cmp-long v48, v8, v48

    if-eqz v48, :cond_0

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadOrder;->duration:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadOrder;->seekPoint:J

    move-wide/from16 v50, v0

    sub-long v48, v48, v50

    move-wide/from16 v0, v48

    long-to-float v0, v0

    move/from16 v48, v0

    move-wide v0, v8

    long-to-float v0, v0

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadLength()J

    move-result-wide v50

    move-wide/from16 v0, v50

    long-to-float v0, v0

    move/from16 v50, v0

    div-float v49, v49, v50

    mul-float v5, v48, v49

    .line 197
    .local v5, appendSeek:F
    move-wide/from16 v0, v40

    long-to-float v0, v0

    move/from16 v48, v0

    add-float v48, v48, v5

    move/from16 v0, v48

    float-to-long v0, v0

    move-wide/from16 v40, v0

    .line 199
    .end local v5           #appendSeek:F
    :cond_0
    const-wide/16 v48, 0x0

    cmp-long v48, v40, v48

    if-eqz v48, :cond_1

    .line 200
    const-string v48, "&start="

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 204
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    move-object/from16 v48, v0

    sget-object v49, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->STREAMING:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-ne v0, v1, :cond_4

    .line 205
    const-string v48, "&pt=e"

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_2
    :goto_1
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 211
    .local v45, url:Ljava/lang/String;
    const/4 v7, 0x0

    .line 212
    .local v7, authToken:Ljava/lang/String;
    new-instance v4, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mAccountName:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mAccountType:Ljava/lang/String;

    move-object/from16 v49, v0

    move-object v0, v4

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .local v4, account:Landroid/accounts/Account;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/sync/google/MusicAuthInfo;->getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 227
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 228
    .local v13, cookies:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/16 v24, 0x1

    .line 229
    .local v24, isFirstRequest:Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    .line 230
    .local v14, currentThread:Ljava/lang/Thread;
    :cond_3
    :goto_2
    if-lez v33, :cond_14

    .line 231
    invoke-virtual {v14}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v48

    if-eqz v48, :cond_6

    .line 232
    new-instance v48, Ljava/lang/InterruptedException;

    invoke-direct/range {v48 .. v48}, Ljava/lang/InterruptedException;-><init>()V

    throw v48

    .line 186
    .end local v4           #account:Landroid/accounts/Account;
    .end local v7           #authToken:Ljava/lang/String;
    .end local v8           #completedLength:J
    .end local v13           #cookies:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v14           #currentThread:Ljava/lang/Thread;
    .end local v24           #isFirstRequest:Z
    .end local v45           #url:Ljava/lang/String;
    :pswitch_0
    const-string v48, "&dt=uc"

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 190
    :pswitch_1
    const-string v48, "&dt=pc"

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 206
    .restart local v8       #completedLength:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    move-object/from16 v48, v0

    sget-object v49, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->USER_PLAYLIST:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-ne v0, v1, :cond_2

    .line 207
    const-string v48, "&pt=a"

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 215
    .restart local v4       #account:Landroid/accounts/Account;
    .restart local v7       #authToken:Ljava/lang/String;
    .restart local v45       #url:Ljava/lang/String;
    :catch_0
    move-exception v48

    move-object/from16 v15, v48

    .line 216
    .local v15, e:Landroid/accounts/AuthenticatorException;
    invoke-virtual {v15}, Landroid/accounts/AuthenticatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v48

    move-object/from16 v0, v48

    instance-of v0, v0, Landroid/accounts/OperationCanceledException;

    move/from16 v48, v0

    if-eqz v48, :cond_5

    .line 217
    const-string v48, "MusicStreaming"

    const-string v49, "Getting auth token canceled"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v18, Ljava/lang/InterruptedException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/InterruptedException;-><init>()V

    .line 219
    .local v18, ex:Ljava/lang/InterruptedException;
    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/InterruptedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 220
    throw v18

    .line 222
    .end local v18           #ex:Ljava/lang/InterruptedException;
    :cond_5
    const-string v48, "MusicStreaming"

    const-string v49, "Failed to get auth token"

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object v2, v15

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    new-instance v48, Lorg/apache/http/client/HttpResponseException;

    const/16 v49, 0x191

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "Unable to obtain auth token for music streaming: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual {v15}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-direct/range {v48 .. v50}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v48

    .line 234
    .end local v15           #e:Landroid/accounts/AuthenticatorException;
    .restart local v13       #cookies:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v14       #currentThread:Ljava/lang/Thread;
    .restart local v24       #isFirstRequest:Z
    :cond_6
    new-instance v19, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v19

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 235
    .local v19, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v32

    .line 236
    .local v32, params:Lorg/apache/http/params/HttpParams;
    const/16 v48, 0x2ee0

    move-object/from16 v0, v32

    move/from16 v1, v48

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 237
    const/16 v48, 0x2710

    move-object/from16 v0, v32

    move/from16 v1, v48

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 238
    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 240
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v48

    if-eqz v48, :cond_7

    .line 241
    new-instance v48, Ljava/io/IOException;

    const-string v49, "No auth token available."

    invoke-direct/range {v48 .. v49}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v48

    .line 243
    :cond_7
    if-eqz v24, :cond_a

    .line 247
    const-string v48, "Authorization"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "GoogleLogin auth="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v19

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/16 v24, 0x0

    .line 256
    :cond_8
    const-string v48, "X-Device-ID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mAndroidId:Ljava/lang/String;

    move-object/from16 v49, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v48, "X-Device-Logging-ID"

    move-object/from16 v0, v19

    move-object/from16 v1, v48

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-boolean v48, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v48, :cond_9

    .line 260
    const-string v48, "MusicStreaming"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Requesting URL: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v37

    .line 263
    invoke-interface/range {v37 .. v37}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v44

    .line 264
    .local v44, statusLine:Lorg/apache/http/StatusLine;
    if-nez v44, :cond_b

    .line 265
    const-string v48, "MusicStreaming"

    const-string v49, "Stream-download response status line is null."

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v48, Ljava/io/IOException;

    const-string v49, "StatusLine is null -- should not happen."

    invoke-direct/range {v48 .. v49}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v48

    .line 250
    .end local v44           #statusLine:Lorg/apache/http/StatusLine;
    :cond_a
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v48

    if-lez v48, :cond_8

    .line 251
    invoke-virtual {v13}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 252
    .local v10, cookie:Ljava/lang/String;
    const-string v48, "Cookie"

    move-object/from16 v0, v19

    move-object/from16 v1, v48

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 269
    .end local v10           #cookie:Ljava/lang/String;
    .end local v21           #i$:Ljava/util/Iterator;
    .restart local v44       #statusLine:Lorg/apache/http/StatusLine;
    :cond_b
    invoke-interface/range {v44 .. v44}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v43

    .line 270
    invoke-interface/range {v37 .. v37}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    .line 271
    .local v17, entity:Lorg/apache/http/HttpEntity;
    sget-boolean v48, Lcom/google/android/music/dl/MplayHandler;->LOG_HEADERS:Z

    if-eqz v48, :cond_c

    .line 272
    invoke-interface/range {v37 .. v37}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v6

    .local v6, arr$:[Lorg/apache/http/Header;
    move-object v0, v6

    array-length v0, v0

    move/from16 v25, v0

    .local v25, len$:I
    const/16 v21, 0x0

    .local v21, i$:I
    :goto_4
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    aget-object v20, v6, v21

    .line 273
    .local v20, header:Lorg/apache/http/Header;
    const-string v48, "MusicStreaming"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Response header: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ": "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 276
    .end local v6           #arr$:[Lorg/apache/http/Header;
    .end local v20           #header:Lorg/apache/http/Header;
    .end local v21           #i$:I
    .end local v25           #len$:I
    :cond_c
    const/16 v48, 0xc8

    move/from16 v0, v43

    move/from16 v1, v48

    if-lt v0, v1, :cond_13

    const/16 v48, 0x12c

    move/from16 v0, v43

    move/from16 v1, v48

    if-ge v0, v1, :cond_13

    if-eqz v17, :cond_13

    .line 277
    sget-boolean v48, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v48, :cond_d

    .line 278
    const-string v48, "MusicStreaming"

    const-string v49, "Received valid response for playback"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_d
    const-string v48, "Content-Length"

    move-object/from16 v0, v37

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v26

    .line 283
    .local v26, lengthHeaders:[Lorg/apache/http/Header;
    if-eqz v26, :cond_e

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v48, v0

    if-nez v48, :cond_f

    .line 284
    :cond_e
    const-string v48, "X-Estimated-Content-Length"

    move-object/from16 v0, v37

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v26

    .line 286
    :cond_f
    if-eqz v26, :cond_11

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v48, v0

    if-eqz v48, :cond_11

    .line 287
    const/16 v48, 0x0

    aget-object v48, v26, v48

    invoke-interface/range {v48 .. v48}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v47

    .line 289
    .local v47, value:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v48, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v49

    move-wide/from16 v0, v49

    move-object/from16 v2, v48

    iput-wide v0, v2, Lcom/google/android/music/dl/DownloadOrder;->transcodedLength:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    .end local v47           #value:Ljava/lang/String;
    :cond_10
    :goto_5
    new-instance v23, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;

    invoke-static/range {v17 .. v17}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v48

    move-object/from16 v0, v23

    move-object/from16 v1, v48

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/AbortableHttpRequest;)V

    .line 300
    .local v23, in:Ljava/io/InputStream;
    const-string v48, "X-ID3-Footer-Attached"

    move-object/from16 v0, v37

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v22

    .line 301
    .local v22, id3Footer:[Lorg/apache/http/Header;
    if-eqz v22, :cond_12

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v48, v0

    if-eqz v48, :cond_12

    .line 302
    new-instance v48, Lcom/google/android/music/dl/ID3v1FooterInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v23

    move-object/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/dl/ID3v1FooterInputStream;-><init>(Ljava/io/InputStream;Lcom/google/android/music/dl/DownloadOrder;)V

    .line 304
    :goto_6
    return-object v48

    .line 290
    .end local v22           #id3Footer:[Lorg/apache/http/Header;
    .end local v23           #in:Ljava/io/InputStream;
    .restart local v47       #value:Ljava/lang/String;
    :catch_1
    move-exception v48

    move-object/from16 v15, v48

    .line 291
    .local v15, e:Ljava/lang/NumberFormatException;
    const-string v48, "MusicStreaming"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Server sent invalid content length: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object v2, v15

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 293
    .end local v15           #e:Ljava/lang/NumberFormatException;
    .end local v47           #value:Ljava/lang/String;
    :cond_11
    sget-boolean v48, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v48, :cond_10

    .line 294
    const-string v48, "MusicStreaming"

    const-string v49, "No Content-Length or X-Estimated-Content-Length provided"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .restart local v22       #id3Footer:[Lorg/apache/http/Header;
    .restart local v23       #in:Ljava/io/InputStream;
    :cond_12
    move-object/from16 v48, v23

    .line 304
    goto :goto_6

    .line 308
    .end local v22           #id3Footer:[Lorg/apache/http/Header;
    .end local v23           #in:Ljava/io/InputStream;
    .end local v26           #lengthHeaders:[Lorg/apache/http/Header;
    :cond_13
    const/16 v48, 0x12e

    move/from16 v0, v43

    move/from16 v1, v48

    if-ne v0, v1, :cond_1b

    .line 312
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 313
    const-string v48, "Location"

    move-object/from16 v0, v37

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v27

    .line 314
    .local v27, location:Lorg/apache/http/Header;
    if-nez v27, :cond_15

    .line 315
    const-string v48, "MusicStreaming"

    const/16 v49, 0x3

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v48

    if-eqz v48, :cond_14

    .line 316
    const-string v48, "MusicStreaming"

    const-string v49, "Redirect requested but no Location specified."

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .end local v17           #entity:Lorg/apache/http/HttpEntity;
    .end local v19           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v27           #location:Lorg/apache/http/Header;
    .end local v32           #params:Lorg/apache/http/params/HttpParams;
    .end local v44           #statusLine:Lorg/apache/http/StatusLine;
    :cond_14
    if-nez v33, :cond_2c

    .line 429
    new-instance v48, Ljava/io/IOException;

    const-string v49, "Unable to download stream due to too many redirects."

    invoke-direct/range {v48 .. v49}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v48

    .line 320
    .restart local v17       #entity:Lorg/apache/http/HttpEntity;
    .restart local v19       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v27       #location:Lorg/apache/http/Header;
    .restart local v32       #params:Lorg/apache/http/params/HttpParams;
    .restart local v44       #statusLine:Lorg/apache/http/StatusLine;
    :cond_15
    const-string v48, "MusicStreaming"

    const/16 v49, 0x3

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v48

    if-eqz v48, :cond_16

    .line 321
    const-string v48, "MusicStreaming"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Following redirect to "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-interface/range {v27 .. v27}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_16
    invoke-interface/range {v27 .. v27}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v45

    .line 325
    add-int/lit8 v33, v33, -0x1

    .line 328
    const-string v48, "Set-Cookie"

    move-object/from16 v0, v37

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v11

    .line 329
    .local v11, cookieHeaders:[Lorg/apache/http/Header;
    move-object v6, v11

    .restart local v6       #arr$:[Lorg/apache/http/Header;
    move-object v0, v6

    array-length v0, v0

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v21, 0x0

    .restart local v21       #i$:I
    :goto_7
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    aget-object v10, v6, v21

    .line 330
    .local v10, cookie:Lorg/apache/http/Header;
    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v42

    .line 331
    .local v42, setCookieString:Ljava/lang/String;
    if-eqz v42, :cond_17

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v48

    if-nez v48, :cond_18

    .line 329
    :cond_17
    :goto_8
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 334
    :cond_18
    const/16 v48, 0x3d

    move-object/from16 v0, v42

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v30

    .line 335
    .local v30, nameLength:I
    const/16 v48, 0x3b

    move-object/from16 v0, v42

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 336
    .local v16, endOfCookieIndex:I
    const/16 v48, -0x1

    move/from16 v0, v30

    move/from16 v1, v48

    if-eq v0, v1, :cond_19

    const/16 v48, -0x1

    move/from16 v0, v16

    move/from16 v1, v48

    if-ne v0, v1, :cond_1a

    .line 337
    :cond_19
    const-string v48, "MusicStreaming"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Invalid cookie format: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 340
    :cond_1a
    const/16 v48, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v48

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 341
    .local v12, cookieName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mPassthroughCookies:Ljava/util/TreeSet;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_17

    .line 342
    const/16 v48, 0x0

    add-int/lit8 v49, v16, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v48

    move-object v0, v13

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 345
    .end local v6           #arr$:[Lorg/apache/http/Header;
    .end local v10           #cookie:Lorg/apache/http/Header;
    .end local v11           #cookieHeaders:[Lorg/apache/http/Header;
    .end local v12           #cookieName:Ljava/lang/String;
    .end local v16           #endOfCookieIndex:I
    .end local v21           #i$:I
    .end local v25           #len$:I
    .end local v27           #location:Lorg/apache/http/Header;
    .end local v30           #nameLength:I
    .end local v42           #setCookieString:Ljava/lang/String;
    :cond_1b
    const/16 v48, 0x191

    move/from16 v0, v43

    move/from16 v1, v48

    if-ne v0, v1, :cond_21

    .line 346
    const-string v29, "Received 401 Unauthorized from server."

    .line 347
    .local v29, msg:Ljava/lang/String;
    sget-boolean v48, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v48, :cond_1c

    .line 348
    const-string v48, "MusicStreaming"

    move-object/from16 v0, v48

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_1c
    const-string v48, "X-Rejected-Reason"

    move-object/from16 v0, v37

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v36

    .line 351
    .local v36, rejectionReasonHeader:Lorg/apache/http/Header;
    if-eqz v36, :cond_20

    .line 352
    invoke-interface/range {v36 .. v36}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v34

    .line 353
    .local v34, rejectionReason:Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v48

    if-nez v48, :cond_1f

    .line 354
    const/16 v35, 0x0

    .line 355
    .local v35, rejectionReasonEnum:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;
    const-string v48, "DEVICE_NOT_AUTHORIZED"

    move-object/from16 v0, v48

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_1d

    .line 356
    sget-object v35, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->DEVICE_NOT_AUTHORIZED:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    .line 358
    :cond_1d
    if-eqz v35, :cond_1e

    .line 361
    new-instance v48, Lcom/google/android/music/dl/ServerRejectionException;

    move-object/from16 v0, v48

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/google/android/music/dl/ServerRejectionException;-><init>(Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;)V

    throw v48

    .line 363
    :cond_1e
    const-string v48, "MusicStreaming"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Server returned an unknown rejection reason: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .end local v34           #rejectionReason:Ljava/lang/String;
    .end local v35           #rejectionReasonEnum:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;
    :cond_1f
    :goto_9
    new-instance v48, Lorg/apache/http/client/HttpResponseException;

    move-object/from16 v0, v48

    move/from16 v1, v43

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v48

    .line 368
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object v1, v4

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/sync/google/MusicAuthInfo;->invalidateAuthToken(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_9

    .line 371
    .end local v29           #msg:Ljava/lang/String;
    .end local v36           #rejectionReasonHeader:Lorg/apache/http/Header;
    :cond_21
    const/16 v48, 0x193

    move/from16 v0, v43

    move/from16 v1, v48

    if-ne v0, v1, :cond_26

    .line 372
    const-string v48, "X-Rejected-Reason"

    move-object/from16 v0, v37

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v36

    .line 373
    .restart local v36       #rejectionReasonHeader:Lorg/apache/http/Header;
    if-eqz v36, :cond_25

    .line 374
    invoke-interface/range {v36 .. v36}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v34

    .line 375
    .restart local v34       #rejectionReason:Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v48

    if-nez v48, :cond_25

    .line 376
    const/16 v35, 0x0

    .line 377
    .restart local v35       #rejectionReasonEnum:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;
    const-string v48, "ANOTHER_STREAM_BEING_PLAYED"

    move-object/from16 v0, v48

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_23

    .line 378
    sget-object v35, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->ANOTHER_STREAM_BEING_PLAYED:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    .line 382
    :cond_22
    :goto_a
    if-eqz v35, :cond_24

    .line 385
    new-instance v48, Lcom/google/android/music/dl/ServerRejectionException;

    move-object/from16 v0, v48

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/google/android/music/dl/ServerRejectionException;-><init>(Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;)V

    throw v48

    .line 379
    :cond_23
    const-string v48, "STREAM_RATE_LIMIT_REACHED"

    move-object/from16 v0, v48

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_22

    .line 380
    sget-object v35, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->STREAM_RATE_LIMIT_REACHED:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    goto :goto_a

    .line 387
    :cond_24
    const-string v48, "MusicStreaming"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Server returned an unknown rejection reason: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v34           #rejectionReason:Ljava/lang/String;
    .end local v35           #rejectionReasonEnum:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;
    :cond_25
    new-instance v48, Lorg/apache/http/client/HttpResponseException;

    const-string v49, "Unable to stream due to 403 error"

    move-object/from16 v0, v48

    move/from16 v1, v43

    move-object/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v48

    .line 394
    .end local v36           #rejectionReasonHeader:Lorg/apache/http/Header;
    :cond_26
    const/16 v48, 0x194

    move/from16 v0, v43

    move/from16 v1, v48

    if-ne v0, v1, :cond_28

    .line 395
    const-string v29, "Unable to download stream due to 404 (file not found) error"

    .line 396
    .restart local v29       #msg:Ljava/lang/String;
    sget-boolean v48, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v48, :cond_27

    .line 397
    const-string v48, "MusicStreaming"

    move-object/from16 v0, v48

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_27
    new-instance v48, Lorg/apache/http/client/HttpResponseException;

    move-object/from16 v0, v48

    move/from16 v1, v43

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v48

    .line 400
    .end local v29           #msg:Ljava/lang/String;
    :cond_28
    const/16 v48, 0x1f7

    move/from16 v0, v43

    move/from16 v1, v48

    if-ne v0, v1, :cond_2a

    .line 401
    const-string v48, "Retry-After"

    move-object/from16 v0, v37

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v48

    if-eqz v48, :cond_29

    .line 403
    :try_start_2
    const-string v48, "Retry-After"

    move-object/from16 v0, v37

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v48

    invoke-interface/range {v48 .. v48}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Long;->longValue()J

    move-result-wide v38

    .line 405
    .local v38, retryAfterInSeconds:J
    const-string v48, "MusicStreaming"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Server said to retry after "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, " seconds"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v48, Lcom/google/android/music/dl/ServiceUnavailableException;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Unable to download stream due to 503 (Service Unavailable) error.  Unavailable for "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, " seconds."

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v48

    move-wide/from16 v1, v38

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/dl/ServiceUnavailableException;-><init>(JLjava/lang/String;)V

    throw v48
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 410
    .end local v38           #retryAfterInSeconds:J
    :catch_2
    move-exception v48

    move-object/from16 v31, v48

    .line 414
    .local v31, ne:Ljava/lang/NumberFormatException;
    new-instance v48, Lorg/apache/http/client/HttpResponseException;

    const-string v49, "Unable to download stream due to 503 error."

    move-object/from16 v0, v48

    move/from16 v1, v43

    move-object/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v48

    .line 418
    .end local v31           #ne:Ljava/lang/NumberFormatException;
    :cond_29
    const-string v48, "MusicStreaming"

    const-string v49, "Received 503 with no Retry-After header"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 421
    :cond_2a
    sget-boolean v48, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v48, :cond_2b

    .line 422
    const-string v48, "MusicStreaming"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Unable to download stream due to HTTP error "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_2b
    new-instance v48, Lorg/apache/http/client/HttpResponseException;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Unable to download stream due to HTTP error "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v48

    move/from16 v1, v43

    move-object/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v48

    .line 434
    .end local v17           #entity:Lorg/apache/http/HttpEntity;
    .end local v19           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v32           #params:Lorg/apache/http/params/HttpParams;
    .end local v44           #statusLine:Lorg/apache/http/StatusLine;
    :cond_2c
    new-instance v48, Ljava/io/IOException;

    const-string v49, "Unable to retreive stream"

    invoke-direct/range {v48 .. v49}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v48

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public populateOrder(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/store/MusicFile;)V
    .locals 6
    .parameter "order"
    .parameter "summaryMusicFile"

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Lcom/google/android/music/dl/DownloadHandler;->populateOrder(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/store/MusicFile;)V

    .line 115
    iget-object v4, p0, Lcom/google/android/music/dl/MplayHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    .line 116
    .local v3, store:Lcom/google/android/music/store/Store;
    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 118
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/music/store/MusicFile;->getSourceAccount()I

    move-result v4

    invoke-static {v1, v4}, Lcom/google/android/music/sync/google/ClientSyncState$Helpers;->get(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/accounts/Account;

    move-result-object v0

    .line 120
    .local v0, account:Landroid/accounts/Account;
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/music/dl/MplayHandler;->mAccountName:Ljava/lang/String;

    .line 121
    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/music/dl/MplayHandler;->mAccountType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/music/sync/common/ProviderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    invoke-virtual {v3, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 128
    .end local v0           #account:Landroid/accounts/Account;
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/music/store/MusicFile;->getSourcePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/google/android/music/dl/DownloadOrder;->remoteUrl:Ljava/lang/String;

    .line 129
    return-void

    .line 122
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 123
    .local v2, e:Lcom/google/android/music/sync/common/ProviderException;
    :try_start_1
    const-string v4, "MusicStreaming"

    const-string v5, "Sync account is not found"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    invoke-virtual {v3, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .end local v2           #e:Lcom/google/android/music/sync/common/ProviderException;
    :catchall_0
    move-exception v4

    invoke-virtual {v3, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
.end method
