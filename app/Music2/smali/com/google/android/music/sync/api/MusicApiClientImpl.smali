.class public Lcom/google/android/music/sync/api/MusicApiClientImpl;
.super Ljava/lang/Object;
.source "MusicApiClientImpl.java"

# interfaces
.implements Lcom/google/android/music/sync/api/MusicApiClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;,
        Lcom/google/android/music/sync/api/MusicApiClientImpl$DeleteRequestCreator;,
        Lcom/google/android/music/sync/api/MusicApiClientImpl$PutRequestCreator;,
        Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;,
        Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;,
        Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final MAX_AUTH_RETRIES:I = 0x1

.field private static final MAX_REDIRECTS:I = 0xa

.field private static final QUERY_PARAMS_START_TOKEN:Ljava/lang/String; = "start-token"

.field private static final QUERY_PARAMS_UPDATED_MIN:Ljava/lang/String; = "updated-min"

.field private static final QUERY_PARAM_MAX_RESULTS:Ljava/lang/String; = "max-results"

.field private static final TAG:Ljava/lang/String; = null

.field private static final X_HTTP_METHOD_OVERRIDE:Ljava/lang/String; = "X-HTTP-Method-Override"

.field private static final sPlaylistEntryInstance:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

.field private static final sPlaylistInstance:Lcom/google/android/music/sync/google/model/SyncablePlaylist;

.field private static final sTrackInstance:Lcom/google/android/music/sync/google/model/Track;


# instance fields
.field private final mAuthInfo:Lcom/google/android/music/sync/common/AuthInfo;

.field private final mContext:Landroid/content/Context;

.field private final mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private final mLoggingId:Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->LOGV:Z

    .line 94
    new-instance v0, Lcom/google/android/music/sync/google/model/Track;

    invoke-direct {v0}, Lcom/google/android/music/sync/google/model/Track;-><init>()V

    sput-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->sTrackInstance:Lcom/google/android/music/sync/google/model/Track;

    .line 95
    new-instance v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-direct {v0}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;-><init>()V

    sput-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->sPlaylistInstance:Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    .line 96
    new-instance v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-direct {v0}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;-><init>()V

    sput-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->sPlaylistEntryInstance:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/sync/common/AuthInfo;)V
    .locals 4
    .parameter "context"
    .parameter "authInfo"

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    .line 177
    iput-object p2, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mAuthInfo:Lcom/google/android/music/sync/common/AuthInfo;

    .line 178
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    iget-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/music/dl/DownloadUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 180
    iget-object v0, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    sget-object v1, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    sget-boolean v2, Lcom/google/android/music/DebugUtils;->AUTO_LOG_ALL:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mResolver:Landroid/content/ContentResolver;

    .line 182
    iget-object v0, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->getLoggingId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mLoggingId:Ljava/lang/String;

    .line 183
    return-void

    .line 180
    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private createAndExecuteMethod(Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    .locals 38
    .parameter "creator"
    .parameter "account"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/ConflictException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;,
            Lcom/google/android/music/sync/api/NotModifiedException;
        }
    .end annotation

    .prologue
    .line 208
    const/16 v26, 0x0

    .line 209
    .local v26, response:Lorg/apache/http/HttpResponse;
    const/16 v31, 0x1f4

    .line 210
    .local v31, status:I
    const/16 v24, 0xa

    .line 211
    .local v24, redirectsLeft:I
    const/4 v5, 0x1

    .line 213
    .local v5, authRetriesLeft:I
    const-wide/16 v27, 0x0

    .line 215
    .local v27, retryAfter:J
    const/16 v32, 0x0

    .line 216
    .local v32, statusLine:Lorg/apache/http/StatusLine;
    :goto_0
    if-lez v24, :cond_8

    if-lez v5, :cond_8

    .line 217
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;->createRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v25

    .line 218
    .local v25, request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static/range {v25 .. v25}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mAuthInfo:Lcom/google/android/music/sync/common/AuthInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/google/android/music/sync/common/AuthInfo;->getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v6

    .line 220
    .local v6, authToken:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 221
    new-instance v34, Landroid/accounts/AuthenticatorException;

    const-string v35, "Null auth token.  Bailing."

    invoke-direct/range {v34 .. v35}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 223
    :cond_0
    const-string v34, "Authorization"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "GoogleLogin auth="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v34, "X-Device-Logging-ID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mLoggingId:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v26

    .line 227
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v32

    .line 228
    if-nez v32, :cond_1

    .line 229
    new-instance v34, Ljava/io/IOException;

    const-string v35, "StatusLine is null -- should not happen."

    invoke-direct/range {v34 .. v35}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 231
    :cond_1
    sget-boolean v34, Lcom/google/android/music/sync/api/MusicApiClientImpl;->LOGV:Z

    if-eqz v34, :cond_2

    .line 232
    sget-object v34, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    .local v4, arr$:[Lorg/apache/http/Header;
    move-object v0, v4

    array-length v0, v0

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    aget-object v17, v4, v19

    .line 234
    .local v17, h:Lorg/apache/http/Header;
    sget-object v34, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ": "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 237
    .end local v4           #arr$:[Lorg/apache/http/Header;
    .end local v17           #h:Lorg/apache/http/Header;
    .end local v19           #i$:I
    .end local v21           #len$:I
    :cond_2
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v31

    .line 238
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    .line 240
    .local v13, entity:Lorg/apache/http/HttpEntity;
    const/16 v34, 0xc8

    move/from16 v0, v31

    move/from16 v1, v34

    if-lt v0, v1, :cond_6

    const/16 v34, 0x12c

    move/from16 v0, v31

    move/from16 v1, v34

    if-ge v0, v1, :cond_6

    .line 241
    const-string v34, "ETag"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v18

    .line 242
    .local v18, header:Lorg/apache/http/Header;
    if-nez v18, :cond_3

    const/16 v34, 0x0

    move-object/from16 v23, v34

    .line 243
    .local v23, newEtag:Ljava/lang/String;
    :goto_2
    const/16 v34, 0xcc

    move/from16 v0, v31

    move/from16 v1, v34

    if-ne v0, v1, :cond_4

    .line 244
    new-instance v34, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 250
    :goto_3
    return-object v34

    .line 242
    .end local v23           #newEtag:Ljava/lang/String;
    :cond_3
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v23, v34

    goto :goto_2

    .line 246
    .restart local v23       #newEtag:Ljava/lang/String;
    :cond_4
    invoke-static {v13}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v20

    .line 247
    .local v20, in:Ljava/io/InputStream;
    sget-object v34, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    const/16 v35, 0x3

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v34

    if-eqz v34, :cond_5

    .line 248
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->logInputStreamContents(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v20

    .line 250
    :cond_5
    new-instance v34, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_3

    .line 254
    .end local v18           #header:Lorg/apache/http/Header;
    .end local v20           #in:Ljava/io/InputStream;
    .end local v23           #newEtag:Ljava/lang/String;
    :cond_6
    const/16 v34, 0x12e

    move/from16 v0, v31

    move/from16 v1, v34

    if-ne v0, v1, :cond_d

    .line 256
    if-eqz v13, :cond_7

    .line 257
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 259
    :cond_7
    const-string v34, "Location"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v22

    .line 260
    .local v22, location:Lorg/apache/http/Header;
    if-nez v22, :cond_b

    .line 261
    sget-object v34, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    const/16 v35, 0x3

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v34

    if-eqz v34, :cond_8

    .line 262
    sget-object v34, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    const-string v35, "Redirect requested but no Location specified."

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v6           #authToken:Ljava/lang/String;
    .end local v13           #entity:Lorg/apache/http/HttpEntity;
    .end local v22           #location:Lorg/apache/http/Header;
    .end local v25           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_8
    sget-boolean v34, Lcom/google/android/music/sync/api/MusicApiClientImpl;->LOGV:Z

    if-eqz v34, :cond_9

    .line 321
    sget-object v34, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Received "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " status code."

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_9
    const/4 v14, 0x0

    .line 324
    .local v14, errorMessage:Ljava/lang/String;
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    .line 326
    .restart local v13       #entity:Lorg/apache/http/HttpEntity;
    if-eqz v26, :cond_18

    if-eqz v13, :cond_18

    .line 327
    :try_start_0
    invoke-static {v13}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v20

    .line 328
    .restart local v20       #in:Ljava/io/InputStream;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 329
    .local v7, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v34, 0x2000

    move/from16 v0, v34

    new-array v0, v0, [B

    move-object v8, v0

    .line 330
    .local v8, buf:[B
    const/4 v9, -0x1

    .line 331
    .local v9, bytesRead:I
    :goto_4
    move-object/from16 v0, v20

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/16 v34, -0x1

    move v0, v9

    move/from16 v1, v34

    if-eq v0, v1, :cond_16

    .line 332
    const/16 v34, 0x0

    move-object v0, v7

    move-object v1, v8

    move/from16 v2, v34

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 341
    .end local v7           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v8           #buf:[B
    .end local v9           #bytesRead:I
    .end local v20           #in:Ljava/io/InputStream;
    :catchall_0
    move-exception v34

    :goto_5
    if-eqz v13, :cond_a

    .line 342
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_a
    throw v34

    .line 267
    .end local v14           #errorMessage:Ljava/lang/String;
    .restart local v6       #authToken:Ljava/lang/String;
    .restart local v22       #location:Lorg/apache/http/Header;
    .restart local v25       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_b
    sget-object v34, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    const/16 v35, 0x3

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v34

    if-eqz v34, :cond_c

    .line 268
    sget-object v34, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Following redirect to "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_c
    add-int/lit8 v24, v24, -0x1

    .line 271
    goto/16 :goto_0

    .end local v22           #location:Lorg/apache/http/Header;
    :cond_d
    const/16 v34, 0x130

    move/from16 v0, v31

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    .line 272
    new-instance v34, Lcom/google/android/music/sync/api/NotModifiedException;

    const-string v35, "No content."

    invoke-direct/range {v34 .. v35}, Lcom/google/android/music/sync/api/NotModifiedException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 273
    :cond_e
    const/16 v34, 0x190

    move/from16 v0, v31

    move/from16 v1, v34

    if-ne v0, v1, :cond_f

    .line 274
    new-instance v34, Lcom/google/android/music/sync/api/BadRequestException;

    const-string v35, "Bad request"

    invoke-direct/range {v34 .. v35}, Lcom/google/android/music/sync/api/BadRequestException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 275
    :cond_f
    const/16 v34, 0x191

    move/from16 v0, v31

    move/from16 v1, v34

    if-ne v0, v1, :cond_11

    .line 276
    if-eqz v13, :cond_10

    .line 277
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 279
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mAuthInfo:Lcom/google/android/music/sync/common/AuthInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lcom/google/android/music/sync/common/AuthInfo;->invalidateAuthToken(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 280
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .line 281
    :cond_11
    const/16 v34, 0x193

    move/from16 v0, v31

    move/from16 v1, v34

    if-ne v0, v1, :cond_12

    .line 282
    new-instance v34, Lcom/google/android/music/sync/api/ForbiddenException;

    const-string v35, "Forbidden"

    invoke-direct/range {v34 .. v35}, Lcom/google/android/music/sync/api/ForbiddenException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 283
    :cond_12
    const/16 v34, 0x194

    move/from16 v0, v31

    move/from16 v1, v34

    if-ne v0, v1, :cond_13

    .line 284
    new-instance v34, Lcom/google/android/music/sync/api/ResourceNotFoundException;

    const-string v35, "Not found"

    invoke-direct/range {v34 .. v35}, Lcom/google/android/music/sync/api/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 285
    :cond_13
    const/16 v34, 0x199

    move/from16 v0, v31

    move/from16 v1, v34

    if-ne v0, v1, :cond_14

    .line 286
    new-instance v10, Lcom/google/android/music/sync/api/ConflictException;

    const-string v34, "Conflict detected."

    move-object v0, v10

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/api/ConflictException;-><init>(Ljava/lang/String;)V

    .line 287
    .local v10, ce:Lcom/google/android/music/sync/api/ConflictException;
    const/16 v34, 0x1

    move-object v0, v10

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/google/android/music/sync/api/ConflictException;->setConflictCount(I)V

    .line 288
    throw v10

    .line 289
    .end local v10           #ce:Lcom/google/android/music/sync/api/ConflictException;
    :cond_14
    const/16 v34, 0x1f7

    move/from16 v0, v31

    move/from16 v1, v34

    if-ne v0, v1, :cond_8

    .line 290
    const-string v34, "Retry-After"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v29

    .line 291
    .local v29, retryAfterHeader:Lorg/apache/http/Header;
    if-eqz v29, :cond_15

    .line 295
    invoke-interface/range {v29 .. v29}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v30

    .line 299
    .local v30, retryAfterString:Ljava/lang/String;
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    const-wide/16 v36, 0x3e8

    div-long v34, v34, v36

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v36

    add-long v27, v34, v36

    .line 312
    .end local v30           #retryAfterString:Ljava/lang/String;
    :cond_15
    :goto_6
    new-instance v11, Lcom/google/android/music/sync/api/ServiceUnavailableException;

    const-string v34, "Service unavailable."

    move-object v0, v11

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/api/ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    .line 314
    .local v11, e:Lcom/google/android/music/sync/api/ServiceUnavailableException;
    move-object v0, v11

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/sync/api/ServiceUnavailableException;->setRetryAfter(J)V

    .line 315
    throw v11

    .line 301
    .end local v11           #e:Lcom/google/android/music/sync/api/ServiceUnavailableException;
    .restart local v30       #retryAfterString:Ljava/lang/String;
    :catch_0
    move-exception v34

    move-object/from16 v11, v34

    .line 304
    .local v11, e:Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v33, Landroid/text/format/Time;

    invoke-direct/range {v33 .. v33}, Landroid/text/format/Time;-><init>()V

    .line 305
    .local v33, time:Landroid/text/format/Time;
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 306
    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v34

    const-wide/16 v36, 0x3e8

    div-long v27, v34, v36
    :try_end_2
    .catch Landroid/util/TimeFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    .line 307
    .end local v33           #time:Landroid/text/format/Time;
    :catch_1
    move-exception v34

    move-object/from16 v12, v34

    .line 308
    .local v12, e2:Landroid/util/TimeFormatException;
    sget-object v34, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Unable to parse "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object v2, v12

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 335
    .end local v6           #authToken:Ljava/lang/String;
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .end local v12           #e2:Landroid/util/TimeFormatException;
    .end local v25           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v29           #retryAfterHeader:Lorg/apache/http/Header;
    .end local v30           #retryAfterString:Ljava/lang/String;
    .restart local v7       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #buf:[B
    .restart local v9       #bytesRead:I
    .restart local v14       #errorMessage:Ljava/lang/String;
    .restart local v20       #in:Ljava/io/InputStream;
    :cond_16
    :try_start_3
    new-instance v15, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v34

    move-object v0, v15

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 336
    .end local v14           #errorMessage:Ljava/lang/String;
    .local v15, errorMessage:Ljava/lang/String;
    :try_start_4
    sget-boolean v34, Lcom/google/android/music/sync/api/MusicApiClientImpl;->LOGV:Z

    if-eqz v34, :cond_17

    .line 337
    sget-object v34, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    move-object/from16 v0, v34

    move-object v1, v15

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_17
    move-object v14, v15

    .line 341
    .end local v7           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v8           #buf:[B
    .end local v9           #bytesRead:I
    .end local v15           #errorMessage:Ljava/lang/String;
    .end local v20           #in:Ljava/io/InputStream;
    .restart local v14       #errorMessage:Ljava/lang/String;
    :cond_18
    if-eqz v13, :cond_19

    .line 342
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 345
    :cond_19
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Received "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " status code"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 346
    .local v16, exceptionMessage:Ljava/lang/String;
    if-eqz v14, :cond_1a

    .line 347
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 349
    :cond_1a
    const/16 v34, 0x191

    move/from16 v0, v31

    move/from16 v1, v34

    if-ne v0, v1, :cond_1b

    .line 350
    new-instance v34, Landroid/accounts/AuthenticatorException;

    const-string v35, "Auth token not excepted.  Bailing."

    invoke-direct/range {v34 .. v35}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 352
    :cond_1b
    new-instance v11, Lcom/google/android/music/sync/common/SyncHttpException;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Http request returned an error code: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object v0, v11

    move-object/from16 v1, v34

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;I)V

    .line 354
    .local v11, e:Lcom/google/android/music/sync/common/SyncHttpException;
    move-object v0, v11

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/sync/common/SyncHttpException;->setRetryAfter(J)V

    .line 355
    throw v11

    .line 341
    .end local v11           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    .end local v14           #errorMessage:Ljava/lang/String;
    .end local v16           #exceptionMessage:Ljava/lang/String;
    .restart local v7       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #buf:[B
    .restart local v9       #bytesRead:I
    .restart local v15       #errorMessage:Ljava/lang/String;
    .restart local v20       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v34

    move-object v14, v15

    .end local v15           #errorMessage:Ljava/lang/String;
    .restart local v14       #errorMessage:Ljava/lang/String;
    goto/16 :goto_5
.end method

.method private getItem(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    .locals 9
    .parameter "account"
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;",
            ">(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;
        }
    .end annotation

    .prologue
    .line 676
    .local p3, itemInstance:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;,"TT;"
    iget-object v6, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-interface {p3, v6, p2}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v5

    .line 677
    .local v5, url:Lcom/google/android/music/sync/api/MusicUrl;
    new-instance v3, Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;

    invoke-direct {v3}, Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;-><init>()V

    .line 678
    .local v3, requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    const/4 v2, 0x0

    .line 680
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v5}, Lcom/google/android/music/sync/api/MusicUrl;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, p1, v6}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->createAndExecuteMethod(Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;

    move-result-object v4

    .line 682
    .local v4, response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    iget-object v2, v4, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;->mInputStream:Ljava/io/InputStream;

    .line 683
    if-nez v2, :cond_1

    .line 684
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Received an empty entity body in a getEntity request."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 696
    .end local v4           #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 697
    .local v0, e:Lcom/google/android/music/store/InvalidDataException;
    :try_start_1
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid data on fetch from server: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/music/store/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 705
    .end local v0           #e:Lcom/google/android/music/store/InvalidDataException;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_0

    .line 707
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 709
    :cond_0
    :goto_0
    throw v6

    .line 686
    .restart local v4       #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :cond_1
    const/4 v1, 0x0

    .line 688
    .local v1, entity:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    :try_start_3
    instance-of v6, p3, Lcom/google/android/music/sync/google/model/Track;

    if-eqz v6, :cond_4

    .line 689
    invoke-static {v2}, Lcom/google/android/music/sync/google/model/Track;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/Track;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 705
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 707
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 709
    :cond_3
    :goto_2
    return-object v1

    .line 690
    :cond_4
    :try_start_5
    instance-of v6, p3, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v6, :cond_5

    .line 691
    invoke-static {v2}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    move-result-object v1

    goto :goto_1

    .line 692
    :cond_5
    instance-of v6, p3, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v6, :cond_2

    .line 693
    invoke-static {v2}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v1

    goto :goto_1

    .line 698
    .end local v1           #entity:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    .end local v4           #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 699
    .local v0, e:Lcom/google/android/music/sync/api/ConflictException;
    :try_start_6
    new-instance v6, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v7, "Conflict detected, but this should not happen for a get."

    const/16 v8, 0x199

    invoke-direct {v6, v7, v0, v8}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v6

    .line 701
    .end local v0           #e:Lcom/google/android/music/sync/api/ConflictException;
    :catch_2
    move-exception v6

    move-object v0, v6

    .line 702
    .local v0, e:Lcom/google/android/music/sync/api/NotModifiedException;
    new-instance v6, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v7, "Not-modified status, but this should not happen for a get."

    const/16 v8, 0x130

    invoke-direct {v6, v7, v0, v8}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 708
    .end local v0           #e:Lcom/google/android/music/sync/api/NotModifiedException;
    .restart local v1       #entity:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    .restart local v4       #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :catch_3
    move-exception v6

    goto :goto_2

    .end local v1           #entity:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    .end local v4           #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :catch_4
    move-exception v7

    goto :goto_0
.end method

.method private logInputStreamContents(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 10
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x4000

    .line 368
    if-nez p1, :cond_0

    move-object v6, p1

    .line 393
    :goto_0
    return-object v6

    .line 379
    :cond_0
    const/16 v2, 0x4000

    .line 380
    .local v2, bufferSize:I
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 381
    .local v0, bin:Ljava/io/BufferedInputStream;
    invoke-virtual {v0, v6}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 382
    const/16 v5, 0x4000

    .line 383
    .local v5, wanted:I
    const/4 v4, 0x0

    .line 384
    .local v4, totalReceived:I
    new-array v1, v5, [B

    .line 385
    .local v1, buf:[B
    :goto_1
    if-lez v5, :cond_1

    .line 386
    invoke-virtual {v0, v1, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    .line 387
    .local v3, got:I
    if-gtz v3, :cond_2

    .line 391
    .end local v3           #got:I
    :cond_1
    sget-object v6, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "UTF-8"

    invoke-direct {v7, v1, v8, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    move-object v6, v0

    .line 393
    goto :goto_0

    .line 388
    .restart local v3       #got:I
    :cond_2
    sub-int/2addr v5, v3

    .line 389
    add-int/2addr v4, v3

    .line 390
    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v0}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 187
    return-void
.end method

.method public createMagicPlaylist(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;)Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;
    .locals 11
    .parameter "account"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/store/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 740
    invoke-virtual {p2}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->isValid()Z

    move-result v8

    if-nez v8, :cond_0

    .line 741
    new-instance v8, Lcom/google/android/music/store/InvalidDataException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "This magic-playlist request is invalid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 744
    :cond_0
    invoke-static {}, Lcom/google/android/music/sync/api/MusicUrl;->forMagicPlaylist()Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v7

    .line 745
    .local v7, url:Lcom/google/android/music/sync/api/MusicUrl;
    invoke-virtual {p2}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->serializeAsJson()[B

    move-result-object v2

    .line 746
    .local v2, entryBytes:[B
    iget-object v8, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v8}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v1

    .line 748
    .local v1, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    new-instance v5, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;

    invoke-direct {v5, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 750
    .local v5, requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    const/4 v3, 0x0

    .line 751
    .local v3, in:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 753
    .local v4, magicPlaylistResponse:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;
    :try_start_0
    invoke-virtual {v7}, Lcom/google/android/music/sync/api/MusicUrl;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v5, p1, v8}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->createAndExecuteMethod(Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;

    move-result-object v6

    .line 755
    .local v6, response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    iget-object v3, v6, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;->mInputStream:Ljava/io/InputStream;

    .line 756
    invoke-static {v3}, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 769
    if-eqz v3, :cond_1

    .line 771
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 776
    :cond_1
    :goto_0
    return-object v4

    .line 757
    .end local v6           #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 758
    .local v0, e:Lcom/google/android/music/sync/api/ConflictException;
    :try_start_2
    new-instance v8, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v9, "Conflict detected, but this is unexpected for magic playlist creation."

    const/16 v10, 0x199

    invoke-direct {v8, v9, v0, v10}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 769
    .end local v0           #e:Lcom/google/android/music/sync/api/ConflictException;
    :catchall_0
    move-exception v8

    if-eqz v3, :cond_2

    .line 771
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 773
    :cond_2
    :goto_1
    throw v8

    .line 761
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 762
    .local v0, e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    :try_start_4
    new-instance v8, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v9, "Resource-not-found detected, but this is unexpected for magic playlist creation."

    const/16 v10, 0x194

    invoke-direct {v8, v9, v0, v10}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v8

    .line 765
    .end local v0           #e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    :catch_2
    move-exception v8

    move-object v0, v8

    .line 766
    .local v0, e:Lcom/google/android/music/sync/api/NotModifiedException;
    new-instance v8, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v9, "Not-modified-found detected, but this is unexpected for magic playlist creation."

    const/16 v10, 0x130

    invoke-direct {v8, v9, v0, v10}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 772
    .end local v0           #e:Lcom/google/android/music/sync/api/NotModifiedException;
    .restart local v6       #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :catch_3
    move-exception v8

    goto :goto_0

    .end local v6           #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :catch_4
    move-exception v9

    goto :goto_1
.end method

.method public getItems(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;
    .locals 20
    .parameter "account"
    .parameter "pageSize"
    .parameter "etag"
    .parameter "updatedMin"
    .parameter "continuationToken"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;",
            ">(",
            "Landroid/accounts/Account;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/google/android/music/sync/api/MusicApiClient$GetResult",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/store/InvalidDataException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;,
            Lcom/google/android/music/sync/api/NotModifiedException;
        }
    .end annotation

    .prologue
    .line 560
    .local p7, itemInstance:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;,"TT;"
    const/4 v15, 0x0

    .line 561
    .local v15, url:Lcom/google/android/music/sync/api/MusicUrl;
    const/4 v13, 0x0

    .line 562
    .local v13, requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "music_use_downstream_posts"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v16

    .line 564
    .local v16, useDownstreamPosts:Z
    if-eqz v16, :cond_3

    .line 565
    new-instance v7, Lcom/google/android/music/sync/google/model/FeedAsPostRequest;

    invoke-direct {v7}, Lcom/google/android/music/sync/google/model/FeedAsPostRequest;-><init>()V

    .line 566
    .local v7, feedAsPostRequest:Lcom/google/android/music/sync/google/model/FeedAsPostRequest;
    if-eqz p6, :cond_2

    .line 567
    move-object/from16 v0, p6

    move-object v1, v7

    iput-object v0, v1, Lcom/google/android/music/sync/google/model/FeedAsPostRequest;->mStartToken:Ljava/lang/String;

    .line 573
    :goto_0
    move/from16 v0, p2

    move-object v1, v7

    iput v0, v1, Lcom/google/android/music/sync/google/model/FeedAsPostRequest;->mMaxResults:I

    .line 575
    invoke-virtual {v7}, Lcom/google/android/music/sync/google/model/FeedAsPostRequest;->serializeAsJson()[B

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v5

    .line 577
    .local v5, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    new-instance v13, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;

    .end local v13           #requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    invoke-direct {v13, v5}, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 579
    .restart local v13       #requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getFeedUrlAsPost(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v15

    .line 596
    .end local v5           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .end local v7           #feedAsPostRequest:Lcom/google/android/music/sync/google/model/FeedAsPostRequest;
    :goto_1
    const-wide/16 v17, 0x0

    cmp-long v17, p4, v17

    if-eqz v17, :cond_0

    .line 597
    const-string v17, "updated-min"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/sync/api/MusicUrl;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 600
    :cond_0
    const/4 v9, 0x0

    .line 602
    .local v9, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v15}, Lcom/google/android/music/sync/api/MusicUrl;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->createAndExecuteMethod(Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;

    move-result-object v14

    .line 604
    .local v14, response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    iget-object v9, v14, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;->mInputStream:Ljava/io/InputStream;

    .line 605
    iget-object v11, v14, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;->mEtag:Ljava/lang/String;

    .line 606
    .local v11, newEtag:Ljava/lang/String;
    if-nez v9, :cond_5

    .line 607
    new-instance v17, Ljava/io/IOException;

    const-string v18, "Received an empty entity body in a getEntity request."

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_0 .. :try_end_0} :catch_1

    .line 632
    .end local v11           #newEtag:Ljava/lang/String;
    .end local v14           #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :catch_0
    move-exception v17

    move-object/from16 v4, v17

    .line 633
    .local v4, e:Lcom/google/android/music/store/InvalidDataException;
    :try_start_1
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid data on fetch from server: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Lcom/google/android/music/store/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 638
    .end local v4           #e:Lcom/google/android/music/store/InvalidDataException;
    :catchall_0
    move-exception v17

    if-eqz v9, :cond_1

    .line 640
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 642
    :cond_1
    :goto_2
    throw v17

    .line 571
    .end local v9           #in:Ljava/io/InputStream;
    .restart local v7       #feedAsPostRequest:Lcom/google/android/music/sync/google/model/FeedAsPostRequest;
    :cond_2
    const-string v17, "0"

    move-object/from16 v0, v17

    move-object v1, v7

    iput-object v0, v1, Lcom/google/android/music/sync/google/model/FeedAsPostRequest;->mStartToken:Ljava/lang/String;

    goto/16 :goto_0

    .line 581
    .end local v7           #feedAsPostRequest:Lcom/google/android/music/sync/google/model/FeedAsPostRequest;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getFeedUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v15

    .line 582
    new-instance v8, Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;

    invoke-direct {v8}, Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;-><init>()V

    .line 583
    .local v8, getRequestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;
    move-object v13, v8

    .line 584
    move-object v0, v8

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;->access$002(Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;Ljava/lang/String;)Ljava/lang/String;

    .line 585
    if-eqz p6, :cond_4

    .line 586
    const-string v17, "start-token"

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/sync/api/MusicUrl;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 592
    :goto_3
    const-string v17, "max-results"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/sync/api/MusicUrl;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 590
    :cond_4
    const-string v17, "start-token"

    const-string v18, "0"

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/sync/api/MusicUrl;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 609
    .end local v8           #getRequestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;
    .restart local v9       #in:Ljava/io/InputStream;
    .restart local v11       #newEtag:Ljava/lang/String;
    .restart local v14       #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :cond_5
    const/4 v6, 0x0

    .line 611
    .local v6, feed:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed;,"Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed<TT;>;"
    :try_start_3
    move-object/from16 v0, p7

    instance-of v0, v0, Lcom/google/android/music/sync/google/model/Track;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 612
    invoke-static {v9}, Lcom/google/android/music/sync/google/model/TrackFeed;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/TrackFeed;

    move-result-object v6

    .line 618
    :cond_6
    :goto_4
    const/4 v10, 0x0

    .line 619
    .local v10, items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v12, 0x0

    .line 620
    .local v12, nextPageToken:Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 621
    invoke-interface {v6}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed;->getItemList()Ljava/util/List;

    move-result-object v17

    if-nez v17, :cond_b

    .line 622
    sget-object v17, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "No content in \'data\' field in GET sync response for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :goto_5
    invoke-interface {v6}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed;->getNextPageToken()Ljava/lang/String;

    move-result-object v12

    .line 629
    :cond_7
    new-instance v17, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;

    if-nez v10, :cond_c

    sget-object v18, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_6
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v12

    move-object v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;-><init>(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_3 .. :try_end_3} :catch_1

    .line 638
    if-eqz v9, :cond_8

    .line 640
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 642
    :cond_8
    :goto_7
    return-object v17

    .line 613
    .end local v10           #items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .end local v12           #nextPageToken:Ljava/lang/String;
    :cond_9
    :try_start_5
    move-object/from16 v0, p7

    instance-of v0, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 614
    invoke-static {v9}, Lcom/google/android/music/sync/google/model/SyncablePlaylistFeed;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/SyncablePlaylistFeed;

    move-result-object v6

    goto :goto_4

    .line 615
    :cond_a
    move-object/from16 v0, p7

    instance-of v0, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 616
    invoke-static {v9}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntryFeed;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntryFeed;

    move-result-object v6

    goto :goto_4

    .line 625
    .restart local v10       #items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .restart local v12       #nextPageToken:Ljava/lang/String;
    :cond_b
    invoke-interface {v6}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed;->getItemList()Ljava/util/List;

    move-result-object v10

    goto :goto_5

    .line 629
    :cond_c
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v18

    goto :goto_6

    .line 634
    .end local v6           #feed:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed;,"Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed<TT;>;"
    .end local v10           #items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .end local v11           #newEtag:Ljava/lang/String;
    .end local v12           #nextPageToken:Ljava/lang/String;
    .end local v14           #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :catch_1
    move-exception v17

    move-object/from16 v4, v17

    .line 635
    .local v4, e:Lcom/google/android/music/sync/api/ConflictException;
    :try_start_6
    new-instance v17, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v18, "Conflict detected, but this should not happen for a get."

    const/16 v19, 0x199

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v4

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 641
    .end local v4           #e:Lcom/google/android/music/sync/api/ConflictException;
    .restart local v6       #feed:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed;,"Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed<TT;>;"
    .restart local v10       #items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .restart local v11       #newEtag:Ljava/lang/String;
    .restart local v12       #nextPageToken:Ljava/lang/String;
    .restart local v14       #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :catch_2
    move-exception v18

    goto :goto_7

    .end local v6           #feed:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed;,"Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed<TT;>;"
    .end local v10           #items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .end local v11           #newEtag:Ljava/lang/String;
    .end local v12           #nextPageToken:Ljava/lang/String;
    .end local v14           #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :catch_3
    move-exception v18

    goto/16 :goto_2
.end method

.method public getPlaylist(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    .locals 2
    .parameter "account"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;
        }
    .end annotation

    .prologue
    .line 725
    const-class v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    sget-object v1, Lcom/google/android/music/sync/api/MusicApiClientImpl;->sPlaylistInstance:Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->getItem(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    return-object p0
.end method

.method public getPlaylistEntries(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;
    .locals 8
    .parameter "account"
    .parameter "pageSize"
    .parameter "etag"
    .parameter "updatedMin"
    .parameter "continuationToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/music/sync/api/MusicApiClient$GetResult",
            "<",
            "Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;,
            Lcom/google/android/music/sync/api/NotModifiedException;
        }
    .end annotation

    .prologue
    .line 667
    sget-object v7, Lcom/google/android/music/sync/api/MusicApiClientImpl;->sPlaylistEntryInstance:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->getItems(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistEntry(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    .locals 2
    .parameter "account"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;
        }
    .end annotation

    .prologue
    .line 732
    const-class v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    sget-object v1, Lcom/google/android/music/sync/api/MusicApiClientImpl;->sPlaylistEntryInstance:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->getItem(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    return-object p0
.end method

.method public getPlaylists(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;
    .locals 8
    .parameter "account"
    .parameter "pageSize"
    .parameter "etag"
    .parameter "updatedMin"
    .parameter "continuationToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/music/sync/api/MusicApiClient$GetResult",
            "<",
            "Lcom/google/android/music/sync/google/model/SyncablePlaylist;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;,
            Lcom/google/android/music/sync/api/NotModifiedException;
        }
    .end annotation

    .prologue
    .line 659
    sget-object v7, Lcom/google/android/music/sync/api/MusicApiClientImpl;->sPlaylistInstance:Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->getItems(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;

    move-result-object v0

    return-object v0
.end method

.method public getTrack(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/google/model/Track;
    .locals 2
    .parameter "account"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;
        }
    .end annotation

    .prologue
    .line 718
    const-class v0, Lcom/google/android/music/sync/google/model/Track;

    sget-object v1, Lcom/google/android/music/sync/api/MusicApiClientImpl;->sTrackInstance:Lcom/google/android/music/sync/google/model/Track;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->getItem(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/sync/google/model/Track;

    return-object p0
.end method

.method public getTracks(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;
    .locals 8
    .parameter "account"
    .parameter "pageSize"
    .parameter "etag"
    .parameter "updatedMin"
    .parameter "continuationToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/music/sync/api/MusicApiClient$GetResult",
            "<",
            "Lcom/google/android/music/sync/google/model/Track;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;,
            Lcom/google/android/music/sync/api/NotModifiedException;
        }
    .end annotation

    .prologue
    .line 651
    sget-object v7, Lcom/google/android/music/sync/api/MusicApiClientImpl;->sTrackInstance:Lcom/google/android/music/sync/google/model/Track;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->getItems(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;

    move-result-object v0

    return-object v0
.end method

.method public mutateItem(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Lcom/google/android/music/sync/api/MusicApiClient$OpType;)V
    .locals 12
    .parameter "account"
    .parameter
    .parameter "opType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;",
            ">(",
            "Landroid/accounts/Account;",
            "TT;",
            "Lcom/google/android/music/sync/api/MusicApiClient$OpType;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/store/InvalidDataException;,
            Lcom/google/android/music/sync/api/ConflictException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;
        }
    .end annotation

    .prologue
    .line 400
    .local p2, item:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;,"TT;"
    if-nez p2, :cond_0

    .line 401
    new-instance v9, Lcom/google/android/music/store/InvalidDataException;

    const-string v10, "Trying to upsync a null entity in a mutation."

    invoke-direct {v9, v10}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 403
    :cond_0
    const/4 v8, 0x0

    .line 405
    .local v8, url:Lcom/google/android/music/sync/api/MusicUrl;
    const/4 v6, 0x0

    .line 406
    .local v6, requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    sget-object v9, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->INSERT:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    if-ne p3, v9, :cond_3

    .line 407
    invoke-interface {p2}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->validateForUpstreamInsert()V

    .line 408
    iget-object v9, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-interface {p2, v9}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getFeedUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v8

    .line 409
    invoke-interface {p2}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->serializeAsJson()[B

    move-result-object v2

    .line 410
    .local v2, entryBytes:[B
    iget-object v9, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v9}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v1

    .line 412
    .local v1, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    new-instance v6, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;

    .end local v6           #requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    invoke-direct {v6, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 428
    .end local v1           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .end local v2           #entryBytes:[B
    .restart local v6       #requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v8}, Lcom/google/android/music/sync/api/MusicUrl;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v6, p1, v9}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->createAndExecuteMethod(Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :try_end_0
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 433
    .local v7, response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    iget-object v3, v7, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;->mInputStream:Ljava/io/InputStream;

    .line 436
    .local v3, in:Ljava/io/InputStream;
    :try_start_1
    sget-object v9, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->DELETE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p3, v9, :cond_5

    .line 454
    if-eqz v3, :cond_2

    .line 456
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 461
    :cond_2
    :goto_1
    return-void

    .line 413
    .end local v3           #in:Ljava/io/InputStream;
    .end local v7           #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :cond_3
    sget-object v9, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->UPDATE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    if-ne p3, v9, :cond_4

    .line 414
    invoke-interface {p2}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->validateForUpstreamUpdate()V

    .line 415
    iget-object v9, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v8

    .line 416
    invoke-interface {p2}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->serializeAsJson()[B

    move-result-object v2

    .line 417
    .restart local v2       #entryBytes:[B
    iget-object v9, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v9}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v1

    .line 419
    .restart local v1       #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    new-instance v6, Lcom/google/android/music/sync/api/MusicApiClientImpl$PutRequestCreator;

    .end local v6           #requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    invoke-direct {v6, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl$PutRequestCreator;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 420
    .restart local v6       #requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    goto :goto_0

    .end local v1           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .end local v2           #entryBytes:[B
    :cond_4
    sget-object v9, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->DELETE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    if-ne p3, v9, :cond_1

    .line 421
    invoke-interface {p2}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->validateForUpstreamDelete()V

    .line 422
    iget-object v9, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v8

    .line 423
    new-instance v6, Lcom/google/android/music/sync/api/MusicApiClientImpl$DeleteRequestCreator;

    .end local v6           #requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    invoke-direct {v6}, Lcom/google/android/music/sync/api/MusicApiClientImpl$DeleteRequestCreator;-><init>()V

    .restart local v6       #requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    goto :goto_0

    .line 429
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 430
    .local v0, e:Lcom/google/android/music/sync/api/NotModifiedException;
    new-instance v9, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v10, "Unexpected not-modified status returned on a mutation"

    const/16 v11, 0x130

    invoke-direct {v9, v10, v0, v11}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v9

    .line 441
    .end local v0           #e:Lcom/google/android/music/sync/api/NotModifiedException;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v7       #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :cond_5
    const/4 v4, 0x0

    .line 442
    .local v4, mutatedEntity:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    const/4 v5, 0x0

    .line 443
    .local v5, precedingEntry:Ljava/lang/String;
    :try_start_3
    instance-of v9, p2, Lcom/google/android/music/sync/google/model/Track;

    if-eqz v9, :cond_8

    .line 444
    invoke-static {v3}, Lcom/google/android/music/sync/google/model/Track;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/Track;

    move-result-object v4

    .line 450
    :cond_6
    :goto_2
    sget-object v9, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->INSERT:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    if-ne p3, v9, :cond_7

    .line 451
    invoke-interface {v4}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v9}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->setRemoteId(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 454
    :cond_7
    if-eqz v3, :cond_2

    .line 456
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 457
    :catch_1
    move-exception v9

    goto :goto_1

    .line 445
    :cond_8
    :try_start_5
    instance-of v9, p2, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v9, :cond_9

    .line 446
    invoke-static {v3}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    move-result-object v4

    goto :goto_2

    .line 447
    :cond_9
    instance-of v9, p2, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v9, :cond_6

    .line 448
    invoke-static {v3}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    goto :goto_2

    .line 454
    .end local v4           #mutatedEntity:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    .end local v5           #precedingEntry:Ljava/lang/String;
    :catchall_0
    move-exception v9

    if-eqz v3, :cond_a

    .line 456
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 458
    :cond_a
    :goto_3
    throw v9

    .line 457
    :catch_2
    move-exception v9

    goto :goto_1

    :catch_3
    move-exception v10

    goto :goto_3
.end method

.method public mutateItems(Landroid/accounts/Account;Ljava/util/List;)Ljava/util/List;
    .locals 24
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;",
            ">(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/store/InvalidDataException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;
        }
    .end annotation

    .prologue
    .line 468
    .local p2, items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 469
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 549
    :cond_0
    :goto_0
    return-object v21

    .line 472
    :cond_1
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    .line 473
    .local v9, firstItem:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;,"TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getBatchMutationUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v20

    .line 476
    .local v20, url:Lcom/google/android/music/sync/api/MusicUrl;
    const/16 v17, 0x0

    .line 477
    .local v17, requestBytes:[B
    move-object v0, v9

    instance-of v0, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 478
    new-instance v16, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest;-><init>()V

    .line 479
    .local v16, playlistsRequest:Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    .line 480
    .local v12, item:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;,"TT;"
    const-class v21, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    .line 481
    .local v15, playlist:Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    new-instance v14, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest$MutatePlaylistRequest;

    invoke-direct {v14}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest$MutatePlaylistRequest;-><init>()V

    .line 482
    .local v14, mutatePlaylistRequest:Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest$MutatePlaylistRequest;
    move-object v0, v15

    iget-boolean v0, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mIsDeleted:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 483
    invoke-virtual {v15}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->validateForUpstreamDelete()V

    .line 484
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v14

    iput-object v0, v1, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest$MutatePlaylistRequest;->mDeletePlaylistRemoteId:Ljava/lang/String;

    .line 492
    :goto_2
    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest;->addRequest(Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest$MutatePlaylistRequest;)V

    goto :goto_1

    .line 485
    :cond_2
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 486
    invoke-virtual {v15}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->validateForUpstreamUpdate()V

    .line 487
    iput-object v15, v14, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest$MutatePlaylistRequest;->mUpdatePlaylist:Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    goto :goto_2

    .line 489
    :cond_3
    invoke-virtual {v15}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->validateForUpstreamInsert()V

    .line 490
    iput-object v15, v14, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest$MutatePlaylistRequest;->mCreatePlaylist:Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    goto :goto_2

    .line 494
    .end local v12           #item:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;,"TT;"
    .end local v14           #mutatePlaylistRequest:Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest$MutatePlaylistRequest;
    .end local v15           #playlist:Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest;->serializeAsJson()[B

    move-result-object v17

    .line 518
    .end local v16           #playlistsRequest:Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v6

    .line 519
    .local v6, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    new-instance v18, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 522
    .local v18, requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/sync/api/MusicUrl;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->createAndExecuteMethod(Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :try_end_0
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    .line 532
    .local v19, response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;->mInputStream:Ljava/io/InputStream;

    move-object v11, v0

    .line 534
    .local v11, in:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v11}, Lcom/google/android/music/sync/google/model/BatchMutateResponse;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/BatchMutateResponse;

    move-result-object v4

    .line 536
    .local v4, batchMutateResponse:Lcom/google/android/music/sync/google/model/BatchMutateResponse;
    move-object v0, v4

    iget-object v0, v0, Lcom/google/android/music/sync/google/model/BatchMutateResponse;->mMutatePlaylistResponses:Ljava/util/List;

    move-object/from16 v21, v0

    if-nez v21, :cond_b

    .line 537
    new-instance v21, Ljava/io/IOException;

    const-string v22, "Received empty data in batch mutate response."

    invoke-direct/range {v21 .. v22}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 545
    .end local v4           #batchMutateResponse:Lcom/google/android/music/sync/google/model/BatchMutateResponse;
    :catchall_0
    move-exception v21

    if-eqz v11, :cond_5

    .line 547
    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 549
    :cond_5
    :goto_4
    throw v21

    .line 495
    .end local v6           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #in:Ljava/io/InputStream;
    .end local v18           #requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    .end local v19           #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :cond_6
    move-object v0, v9

    instance-of v0, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 496
    new-instance v7, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest;

    invoke-direct {v7}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest;-><init>()V

    .line 497
    .local v7, entriesRequest:Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    .line 498
    .restart local v12       #item:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;,"TT;"
    const-class v21, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    .line 499
    .local v8, entry:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    new-instance v13, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest$MutatePlaylistEntryRequest;

    invoke-direct {v13}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest$MutatePlaylistEntryRequest;-><init>()V

    .line 500
    .local v13, mutateEntryRequest:Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest$MutatePlaylistEntryRequest;
    move-object v0, v8

    iget-boolean v0, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mIsDeleted:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 501
    invoke-virtual {v8}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->validateForUpstreamDelete()V

    .line 502
    move-object v0, v8

    iget-object v0, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v13

    iput-object v0, v1, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest$MutatePlaylistEntryRequest;->mDeletePlaylistEntryRemoteId:Ljava/lang/String;

    .line 510
    :goto_6
    invoke-virtual {v7, v13}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest;->addRequest(Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest$MutatePlaylistEntryRequest;)V

    goto :goto_5

    .line 503
    :cond_7
    move-object v0, v8

    iget-object v0, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    .line 504
    invoke-virtual {v8}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->validateForUpstreamUpdate()V

    .line 505
    iput-object v8, v13, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest$MutatePlaylistEntryRequest;->mUpdatePlaylistEntry:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    goto :goto_6

    .line 507
    :cond_8
    invoke-virtual {v8}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->validateForUpstreamInsert()V

    .line 508
    iput-object v8, v13, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest$MutatePlaylistEntryRequest;->mCreatePlaylistEntry:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    goto :goto_6

    .line 512
    .end local v8           #entry:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    .end local v12           #item:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;,"TT;"
    .end local v13           #mutateEntryRequest:Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest$MutatePlaylistEntryRequest;
    :cond_9
    sget-object v21, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest;->serializeAsJson()[B

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {v7}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest;->serializeAsJson()[B

    move-result-object v17

    .line 514
    goto/16 :goto_3

    .line 515
    .end local v7           #entriesRequest:Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_a
    sget-object v21, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    const-string v22, "Unrecognized item type in a batch mutate."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v21, Lcom/google/android/music/store/InvalidDataException;

    const-string v22, "Unrecognized item type in a batch mutate."

    invoke-direct/range {v21 .. v22}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 523
    .restart local v6       #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v18       #requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    :catch_0
    move-exception v21

    move-object/from16 v5, v21

    .line 524
    .local v5, e:Lcom/google/android/music/sync/api/NotModifiedException;
    new-instance v21, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v22, "Unexpected not-modified status returned on a batched mutation"

    const/16 v23, 0x130

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v5

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v21

    .line 527
    .end local v5           #e:Lcom/google/android/music/sync/api/NotModifiedException;
    :catch_1
    move-exception v21

    move-object/from16 v5, v21

    .line 528
    .local v5, e:Lcom/google/android/music/sync/api/ConflictException;
    new-instance v21, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v22, "Unexpected conflict status returned on a batched mutation"

    const/16 v23, 0x199

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v5

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v21

    .line 539
    .end local v5           #e:Lcom/google/android/music/sync/api/ConflictException;
    .restart local v4       #batchMutateResponse:Lcom/google/android/music/sync/google/model/BatchMutateResponse;
    .restart local v11       #in:Ljava/io/InputStream;
    .restart local v19       #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :cond_b
    :try_start_3
    move-object v0, v4

    iget-object v0, v0, Lcom/google/android/music/sync/google/model/BatchMutateResponse;->mMutatePlaylistResponses:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 540
    new-instance v21, Ljava/io/IOException;

    const-string v22, "Mismatch between number of entries in request and response"

    invoke-direct/range {v21 .. v22}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 543
    :cond_c
    move-object v0, v4

    iget-object v0, v0, Lcom/google/android/music/sync/google/model/BatchMutateResponse;->mMutatePlaylistResponses:Ljava/util/List;

    move-object/from16 v21, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 545
    if-eqz v11, :cond_0

    .line 547
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 548
    :catch_2
    move-exception v22

    goto/16 :goto_0

    .end local v4           #batchMutateResponse:Lcom/google/android/music/sync/google/model/BatchMutateResponse;
    :catch_3
    move-exception v22

    goto/16 :goto_4
.end method

.method public reportTrackStats(Landroid/accounts/Account;Ljava/util/List;)V
    .locals 10
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/music/sync/common/QueueableSyncEntity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ConflictException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;,
            Lcom/google/android/music/sync/api/NotModifiedException;
        }
    .end annotation

    .prologue
    .line 783
    .local p2, items:Ljava/util/List;,"Ljava/util/List<+Lcom/google/android/music/sync/common/QueueableSyncEntity;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 784
    :cond_0
    sget-object v8, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    const-string v9, "Track stats list is null or empty. Skip reporting."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :goto_0
    return-void

    .line 788
    :cond_1
    const-class v8, Lcom/google/android/music/sync/google/model/TrackStat;

    const/4 v9, 0x0

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/sync/google/model/TrackStat;

    .line 789
    .local v1, firstItem:Lcom/google/android/music/sync/google/model/TrackStat;
    iget-object v8, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Lcom/google/android/music/sync/google/model/TrackStat;->getBatchMutationUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v7

    .line 792
    .local v7, url:Lcom/google/android/music/sync/api/MusicUrl;
    new-instance v6, Lcom/google/android/music/sync/google/model/BatchReportTrackStats;

    invoke-direct {v6}, Lcom/google/android/music/sync/google/model/BatchReportTrackStats;-><init>()V

    .line 793
    .local v6, trackStatsRequest:Lcom/google/android/music/sync/google/model/BatchReportTrackStats;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/sync/common/QueueableSyncEntity;

    .line 794
    .local v3, item:Lcom/google/android/music/sync/common/QueueableSyncEntity;
    const-class v8, Lcom/google/android/music/sync/google/model/TrackStat;

    invoke-virtual {v8, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/sync/google/model/TrackStat;

    invoke-virtual {v6, v8}, Lcom/google/android/music/sync/google/model/BatchReportTrackStats;->addTrackStat(Lcom/google/android/music/sync/google/model/TrackStat;)V

    goto :goto_1

    .line 796
    .end local v3           #item:Lcom/google/android/music/sync/common/QueueableSyncEntity;
    :cond_2
    invoke-virtual {v6}, Lcom/google/android/music/sync/google/model/BatchReportTrackStats;->serializeAsJson()[B

    move-result-object v4

    .line 798
    .local v4, requestBytes:[B
    iget-object v8, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v8}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    .line 799
    .local v0, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    new-instance v5, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;

    invoke-direct {v5, v0}, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 800
    .local v5, requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    invoke-virtual {v7}, Lcom/google/android/music/sync/api/MusicUrl;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v5, p1, v8}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->createAndExecuteMethod(Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;

    goto :goto_0
.end method
