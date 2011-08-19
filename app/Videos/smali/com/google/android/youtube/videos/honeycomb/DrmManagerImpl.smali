.class public Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;
.super Lcom/google/android/youtube/videos/DrmManager;
.source "DrmManagerImpl.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnInfoListener;
.implements Landroid/drm/DrmManagerClient$OnEventListener;
.implements Landroid/drm/DrmManagerClient$OnErrorListener;


# static fields
.field private static final CALLBACK_KEY:Ljava/lang/String; = "VideosCallback"

.field private static final REQUEST_KEY:Ljava/lang/String; = "VideosRequest"

.field private static final WIDEVINE_MIME_TYPE:Ljava/lang/String; = "video/wvm"


# instance fields
.field private final deviceId:Ljava/lang/String;

.field private final drmManager:Landroid/drm/DrmManagerClient;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final requestSigner:Lcom/google/android/youtube/videos/DrmRequestSigner;

.field private final uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;)V
    .locals 2
    .parameter "context"
    .parameter "executor"
    .parameter "deviceAuthorizer"
    .parameter "userAuthorizer"

    .prologue
    .line 59
    invoke-direct {p0, p4}, Lcom/google/android/youtube/videos/DrmManager;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    .line 60
    iput-object p2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->executor:Ljava/util/concurrent/Executor;

    .line 61
    new-instance v0, Lcom/google/android/youtube/core/utils/UriRewriter;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/utils/UriRewriter;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->deviceId:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/google/android/youtube/videos/DrmRequestSigner;

    invoke-direct {v0, p3}, Lcom/google/android/youtube/videos/DrmRequestSigner;-><init>(Lcom/google/android/youtube/core/async/DeviceAuthorizer;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->requestSigner:Lcom/google/android/youtube/videos/DrmRequestSigner;

    .line 65
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->drmManager:Landroid/drm/DrmManagerClient;

    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->drmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p0}, Landroid/drm/DrmManagerClient;->setOnInfoListener(Landroid/drm/DrmManagerClient$OnInfoListener;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->drmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p0}, Landroid/drm/DrmManagerClient;->setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->drmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p0}, Landroid/drm/DrmManagerClient;->setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->stripQueryParameters(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;)Landroid/drm/DrmManagerClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->drmManager:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/net/Uri;)Lcom/google/android/youtube/videos/DrmException;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->getError(Landroid/net/Uri;)Lcom/google/android/youtube/videos/DrmException;

    move-result-object v0

    return-object v0
.end method

.method private eventType(Landroid/drm/DrmEvent;)Ljava/lang/String;
    .locals 1
    .parameter "event"

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/drm/DrmEvent;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 288
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 272
    :sswitch_0
    const-string v0, "ALL_RIGHTS_REMOVED"

    goto :goto_0

    .line 273
    :sswitch_1
    const-string v0, "DRM_INFO_PROCESSED"

    goto :goto_0

    .line 274
    :sswitch_2
    const-string v0, "ACCOUNT_ALREADY_REGISTERED"

    goto :goto_0

    .line 276
    :sswitch_3
    const-string v0, "ALREADY_REGISTERED_BY_ANOTHER_ACCOUNT"

    goto :goto_0

    .line 277
    :sswitch_4
    const-string v0, "REMOVE_RIGHTS"

    goto :goto_0

    .line 278
    :sswitch_5
    const-string v0, "RIGHTS_INSTALLED"

    goto :goto_0

    .line 279
    :sswitch_6
    const-string v0, "WAIT_FOR_RIGHTS"

    goto :goto_0

    .line 280
    :sswitch_7
    const-string v0, "NO_INTERNET_CONNECTION"

    goto :goto_0

    .line 281
    :sswitch_8
    const-string v0, "NOT_SUPPORTED"

    goto :goto_0

    .line 282
    :sswitch_9
    const-string v0, "OUT_OF_MEMORY"

    goto :goto_0

    .line 283
    :sswitch_a
    const-string v0, "PROCESS_DRM_INFO_FAILED"

    goto :goto_0

    .line 284
    :sswitch_b
    const-string v0, "REMOVE_ALL_RIGHTS_FAILED"

    goto :goto_0

    .line 285
    :sswitch_c
    const-string v0, "RIGHTS_NOT_INSTALLED"

    goto :goto_0

    .line 286
    :sswitch_d
    const-string v0, "RIGHTS_RENEWAL_NOT_ALLOWED"

    goto :goto_0

    .line 271
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_2
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_1
        0x7d1 -> :sswitch_c
        0x7d2 -> :sswitch_d
        0x7d3 -> :sswitch_8
        0x7d4 -> :sswitch_9
        0x7d5 -> :sswitch_7
        0x7d6 -> :sswitch_a
        0x7d7 -> :sswitch_b
    .end sparse-switch
.end method

.method private getError(Landroid/net/Uri;)Lcom/google/android/youtube/videos/DrmException;
    .locals 6
    .parameter "stream"

    .prologue
    .line 118
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->drmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->stripQueryParameters(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v1

    .line 121
    .local v1, constraints:Landroid/content/ContentValues;
    sget-object v2, Lcom/google/android/youtube/videos/DrmException$DrmError;->UNKNOWN:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 122
    .local v2, drmError:Lcom/google/android/youtube/videos/DrmException$DrmError;
    const/4 v0, 0x0

    .line 124
    .local v0, cgiError:I
    if-nez v1, :cond_0

    .line 125
    sget-object v2, Lcom/google/android/youtube/videos/DrmException$DrmError;->NO_LICENSE:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 133
    :goto_0
    new-instance v3, Lcom/google/android/youtube/videos/DrmException;

    invoke-direct {v3, v2, v0}, Lcom/google/android/youtube/videos/DrmException;-><init>(Lcom/google/android/youtube/videos/DrmException$DrmError;I)V

    return-object v3

    .line 126
    :cond_0
    const-string v3, "WVLicenseTypeKey"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v1}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->getRemainingTime(Landroid/content/ContentValues;)I

    move-result v3

    if-nez v3, :cond_1

    .line 128
    sget-object v2, Lcom/google/android/youtube/videos/DrmException$DrmError;->LICENSE_EXPIRED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    goto :goto_0

    .line 130
    :cond_1
    const-string v3, "WVLastErrorKey"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->parseCgiError(Ljava/lang/String;)I

    move-result v0

    .line 131
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->getDrmError(I)Lcom/google/android/youtube/videos/DrmException$DrmError;

    move-result-object v2

    goto :goto_0
.end method

.method private getRemainingTime(Landroid/content/ContentValues;)I
    .locals 2
    .parameter "constraints"

    .prologue
    .line 137
    const-string v1, "license_start_time"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 138
    .local v0, time:I
    if-nez v0, :cond_0

    .line 140
    const/4 v0, -0x1

    .line 144
    :goto_0
    return v0

    .line 142
    :cond_0
    const-string v1, "license_expiry_time"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private invokePendingCallback(Landroid/drm/DrmEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    .line 222
    const-string v1, "drm_info_object"

    invoke-virtual {p1, v1}, Landroid/drm/DrmEvent;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/drm/DrmInfo;

    .line 223
    .local v7, drmInfo:Landroid/drm/DrmInfo;
    if-nez v7, :cond_0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DrmInfo missing from DrmEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v0, Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    const-string v1, "WVKeyIDKey"

    invoke-virtual {v7, v1}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v4, "WVAssetIDKey"

    invoke-virtual {v7, v4}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v8, "WVSystemIDKey"

    invoke-virtual {v7, v8}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/videos/DrmManager$Identifiers;-><init>(JJJ)V

    .line 233
    .local v0, ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;
    const-string v1, "VideosRequest"

    invoke-virtual {v7, v1}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/videos/DrmRequest;

    .line 235
    .local v5, request:Lcom/google/android/youtube/videos/DrmRequest;
    const-string v1, "VideosCallback"

    invoke-virtual {v7, v1}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/youtube/core/async/Callback;

    .line 238
    .local v6, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    if-eqz v5, :cond_1

    if-nez v6, :cond_2

    .line 239
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request or callback missing from DrmEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_2
    iget-object v1, v5, Lcom/google/android/youtube/videos/DrmRequest;->stream:Lcom/google/android/youtube/core/model/Stream;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->stripQueryParameters(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 244
    .local v3, assetUri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;-><init>(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/net/Uri;Lcom/google/android/youtube/videos/DrmManager$Identifiers;Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v8, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private logDrmInfoRequest(Landroid/drm/DrmInfoRequest;)V
    .locals 4
    .parameter "drmRequest"

    .prologue
    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "infoType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/drm/DrmInfoRequest;->getInfoType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mimeType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/drm/DrmInfoRequest;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1}, Landroid/drm/DrmInfoRequest;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 266
    .local v1, key:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/drm/DrmInfoRequest;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getLicense(Landroid/net/Uri;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmResponse;
    .locals 10
    .parameter "stream"
    .parameter "ids"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const-string v9, "WVLicenseTypeKey"

    .line 99
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->drmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->stripQueryParameters(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v6

    .line 101
    .local v6, constraints:Landroid/content/ContentValues;
    if-eqz v6, :cond_0

    const-string v0, "WVLicenseTypeKey"

    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No license for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    .line 106
    :cond_1
    const-string v0, "WVLicenseTypeKey"

    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 107
    .local v7, mode:I
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_2

    move v1, v8

    .line 108
    .local v1, allowsStreaming:Z
    :goto_1
    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_3

    move v2, v8

    .line 110
    .local v2, allowsOffline:Z
    :goto_2
    const-string v0, "license_start_time"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 113
    .local v4, secondsSinceActivation:I
    new-instance v0, Lcom/google/android/youtube/videos/DrmResponse;

    invoke-direct {p0, v6}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->getRemainingTime(Landroid/content/ContentValues;)I

    move-result v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/videos/DrmResponse;-><init>(ZZIILcom/google/android/youtube/videos/DrmManager$Identifiers;)V

    goto :goto_0

    .end local v1           #allowsStreaming:Z
    .end local v2           #allowsOffline:Z
    .end local v4           #secondsSinceActivation:I
    :cond_2
    move v1, v5

    .line 107
    goto :goto_1

    .restart local v1       #allowsStreaming:Z
    :cond_3
    move v2, v5

    .line 108
    goto :goto_2
.end method

.method public getPlayableUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "uri"

    .prologue
    .line 73
    return-object p1
.end method

.method public onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V
    .locals 3
    .parameter "client"
    .parameter "event"

    .prologue
    const-string v2, " "

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRM error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->eventType(Landroid/drm/DrmEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getUniqueId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, p2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->invokePendingCallback(Landroid/drm/DrmEvent;)V

    .line 219
    return-void
.end method

.method public onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V
    .locals 3
    .parameter "client"
    .parameter "event"

    .prologue
    const-string v2, " "

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRM event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->eventType(Landroid/drm/DrmEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getUniqueId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 209
    invoke-direct {p0, p2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->invokePendingCallback(Landroid/drm/DrmEvent;)V

    .line 210
    return-void
.end method

.method public onInfo(Landroid/drm/DrmManagerClient;Landroid/drm/DrmInfoEvent;)V
    .locals 3
    .parameter "client"
    .parameter "event"

    .prologue
    const-string v2, " "

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRM info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->eventType(Landroid/drm/DrmEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/drm/DrmInfoEvent;->getUniqueId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/drm/DrmInfoEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method protected requestOfflineRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 2
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;-><init>(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method protected requestRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 6
    .parameter "request"
    .parameter "existingLicense"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p3, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    new-instance v0, Landroid/drm/DrmInfoRequest;

    const/4 v3, 0x3

    const-string v4, "video/wvm"

    invoke-direct {v0, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 154
    .local v0, drmInfoRequest:Landroid/drm/DrmInfoRequest;
    const-string v3, "WVPortalKey"

    const-string v4, "YouTube"

    invoke-virtual {v0, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    const-string v3, "WVDRMServerKey"

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

    const-string v5, "https://www.youtube.com/api/license/wv/fetch"

    invoke-virtual {v4, v5}, Lcom/google/android/youtube/core/utils/UriRewriter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    const-string v3, "WVAssetURIKey"

    iget-object v4, p1, Lcom/google/android/youtube/videos/DrmRequest;->stream:Lcom/google/android/youtube/core/model/Stream;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v4}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->stripQueryParameters(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    const-string v3, "WVDeviceIDKey"

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    const-string v3, "WVLicenseTypeKey"

    iget-boolean v4, p1, Lcom/google/android/youtube/videos/DrmRequest;->offline:Z

    if-eqz v4, :cond_4

    const-string v4, "3"

    :goto_0
    invoke-virtual {v0, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    iget-object v3, p1, Lcom/google/android/youtube/videos/DrmRequest;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    if-eqz v3, :cond_0

    .line 161
    const-string v3, "WVKeyIDKey"

    iget-object v4, p1, Lcom/google/android/youtube/videos/DrmRequest;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    iget-wide v4, v4, Lcom/google/android/youtube/videos/DrmManager$Identifiers;->keyId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    const-string v3, "WVAssetIDKey"

    iget-object v4, p1, Lcom/google/android/youtube/videos/DrmRequest;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    iget-wide v4, v4, Lcom/google/android/youtube/videos/DrmManager$Identifiers;->assetId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    const-string v3, "WVSystemIDKey"

    iget-object v4, p1, Lcom/google/android/youtube/videos/DrmRequest;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    iget-wide v4, v4, Lcom/google/android/youtube/videos/DrmManager$Identifiers;->systemId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    :cond_0
    iget-object v3, p1, Lcom/google/android/youtube/videos/DrmRequest;->playbackId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 167
    const-string v3, "WVStreamIDKey"

    iget-object v4, p1, Lcom/google/android/youtube/videos/DrmRequest;->playbackId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "videoid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/youtube/videos/DrmRequest;->videoId:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&clientauth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/youtube/videos/DrmRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/UserAuth;->authToken:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, userData:Ljava/lang/String;
    if-eqz p2, :cond_2

    iget v3, p2, Lcom/google/android/youtube/videos/DrmResponse;->secondsSinceActivation:I

    if-lez v3, :cond_2

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&time_since_started="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/google/android/youtube/videos/DrmResponse;->secondsSinceActivation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    :cond_2
    iget-boolean v3, p1, Lcom/google/android/youtube/videos/DrmRequest;->unpin:Z

    if-eqz v3, :cond_3

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&unpin=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&sign="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->requestSigner:Lcom/google/android/youtube/videos/DrmRequestSigner;

    iget-object v5, p1, Lcom/google/android/youtube/videos/DrmRequest;->videoId:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lcom/google/android/youtube/videos/DrmRequestSigner;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 184
    :cond_3
    const-string v3, "WVCAUserDataKey"

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->logDrmInfoRequest(Landroid/drm/DrmInfoRequest;)V

    .line 188
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;

    invoke-direct {v4, p0, v0, p1, p3}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;-><init>(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/drm/DrmInfoRequest;Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 205
    :goto_1
    return-void

    .line 158
    .end local v2           #userData:Ljava/lang/String;
    :cond_4
    const-string v4, "1"

    goto/16 :goto_0

    .line 178
    .restart local v2       #userData:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 179
    .local v1, e:Ljava/io/IOException;
    invoke-interface {p3, p1, v1}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_1
.end method
