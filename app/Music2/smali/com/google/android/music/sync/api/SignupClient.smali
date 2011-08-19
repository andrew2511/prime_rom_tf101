.class public Lcom/google/android/music/sync/api/SignupClient;
.super Ljava/lang/Object;
.source "SignupClient.java"


# static fields
.field private static final APP_AND_VERSION:Ljava/lang/String; = "Android-Music/1.0"

.field private static final SIGNUP_URL:Ljava/lang/String; = "https://android.clients.google.com/music/signupstatus"

.field private static final TAG:Ljava/lang/String; = "MusicStreaming"


# instance fields
.field private final mAndroidId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mHoldoffDuration:J

.field private final mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private final mLoggingId:Ljava/lang/String;

.field private final mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/music/sync/api/SignupClient;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/google/android/music/sync/api/SignupClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->getLoggingId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/api/SignupClient;->mLoggingId:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/api/SignupClient;->mAndroidId:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/google/android/music/sync/google/MusicAuthInfo;

    iget-object v1, p0, Lcom/google/android/music/sync/api/SignupClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/google/MusicAuthInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/music/sync/api/SignupClient;->mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

    .line 54
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    iget-object v1, p0, Lcom/google/android/music/sync/api/SignupClient;->mContext:Landroid/content/Context;

    const-string v2, "Android-Music/1.0"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/music/sync/api/SignupClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 56
    iget-object v0, p0, Lcom/google/android/music/sync/api/SignupClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    const-string v1, "MusicStreaming"

    sget-boolean v2, Lcom/google/android/music/DebugUtils;->AUTO_LOG_ALL:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/sync/api/SignupClient;->mHoldoffDuration:J

    .line 59
    return-void

    .line 56
    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method


# virtual methods
.method public checkInviteStatus(Landroid/accounts/Account;)Z
    .locals 18
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v4, 0x0

    .line 65
    .local v4, closeAfterDone:Ljava/io/Closeable;
    const/4 v10, 0x0

    .line 66
    .local v10, response:Lorg/apache/http/HttpResponse;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/SignupClient;->mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/music/sync/google/MusicAuthInfo;->getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, authToken:Ljava/lang/String;
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    const-string v14, "https://android.clients.google.com/music/signupstatus"

    invoke-direct {v6, v14}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 68
    .local v6, get:Lorg/apache/http/client/methods/HttpGet;
    const-string v14, "Authorization"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "GoogleLogin auth="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v14, "X-Device-Logging-ID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/SignupClient;->mLoggingId:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v6, v14, v15}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v14, "X-Device-ID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/SignupClient;->mAndroidId:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v6, v14, v15}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/SignupClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    move-object v14, v0

    invoke-virtual {v14, v6}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 72
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 73
    .local v13, status:I
    const/16 v14, 0xc8

    if-lt v13, v14, :cond_1

    const/16 v14, 0x12c

    if-ge v13, v14, :cond_1

    .line 75
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 77
    .local v9, reader:Ljava/io/BufferedReader;
    move-object v4, v9

    .line 78
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, line:Ljava/lang/String;
    const-string v14, "yes"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    if-eqz v14, :cond_7

    .line 80
    const/4 v14, 0x1

    .line 107
    if-eqz v4, :cond_0

    .line 109
    :try_start_1
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #reader:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return v14

    .line 82
    :cond_1
    const/16 v14, 0x191

    if-ne v13, v14, :cond_3

    .line 83
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/SignupClient;->mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/sync/google/MusicAuthInfo;->invalidateAuthToken(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 84
    new-instance v14, Lorg/apache/http/client/HttpResponseException;

    const-string v15, "Unable to download stream due to invalid auth token."

    invoke-direct {v14, v13, v15}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .end local v3           #authToken:Ljava/lang/String;
    .end local v6           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #status:I
    :catchall_0
    move-exception v14

    if-eqz v4, :cond_2

    .line 109
    :try_start_3
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 111
    :cond_2
    :goto_1
    throw v14

    .line 86
    .restart local v3       #authToken:Ljava/lang/String;
    .restart local v6       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v13       #status:I
    :cond_3
    const/16 v14, 0x1f7

    if-ne v13, v14, :cond_6

    .line 89
    :try_start_4
    const-string v14, "Retry-After"

    invoke-interface {v10, v14}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v7

    .line 90
    .local v7, headers:[Lorg/apache/http/Header;
    array-length v14, v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-lez v14, :cond_7

    .line 92
    const/4 v14, 0x0

    :try_start_5
    aget-object v14, v7, v14

    invoke-interface {v14}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 93
    .local v11, retryAfter:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/sync/api/SignupClient;->mHoldoffDuration:J

    move-wide v14, v0

    cmp-long v14, v11, v14

    if-ltz v14, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/sync/api/SignupClient;->mHoldoffDuration:J

    move-wide v14, v0

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-gez v14, :cond_5

    .line 94
    :cond_4
    move-wide v0, v11

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/sync/api/SignupClient;->mHoldoffDuration:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    .line 99
    .end local v11           #retryAfter:J
    :cond_5
    :goto_2
    :try_start_6
    new-instance v14, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v14

    .line 96
    :catch_0
    move-exception v14

    move-object v5, v14

    .line 97
    .local v5, e:Ljava/lang/NumberFormatException;
    const-string v14, "MusicStreaming"

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 103
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .end local v7           #headers:[Lorg/apache/http/Header;
    :cond_6
    new-instance v14, Lorg/apache/http/client/HttpResponseException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Server returned illegal response: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 107
    :cond_7
    if-eqz v4, :cond_8

    .line 109
    :try_start_7
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 114
    :cond_8
    :goto_3
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 110
    .restart local v8       #line:Ljava/lang/String;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v15

    goto/16 :goto_0

    .end local v8           #line:Ljava/lang/String;
    .end local v9           #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v14

    goto :goto_3

    .end local v3           #authToken:Ljava/lang/String;
    .end local v6           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #status:I
    :catch_3
    move-exception v15

    goto :goto_1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/music/sync/api/SignupClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v0}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 123
    return-void
.end method

.method public getHoldoffDurationSecs()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/google/android/music/sync/api/SignupClient;->mHoldoffDuration:J

    return-wide v0
.end method
