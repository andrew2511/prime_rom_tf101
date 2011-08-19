.class final Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;
.super Ljava/lang/Object;
.source "OnlineStreamsRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoStreamsHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$StreamLengthCallback;,
        Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;,
        Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$MyPurchasesCallback;
    }
.end annotation


# instance fields
.field private volatile myPurchases:Lcom/google/android/youtube/core/model/Page;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private volatile myPurchasesException:Ljava/lang/Exception;

.field private final originalCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation
.end field

.field private final originalRequest:Lcom/google/android/youtube/core/async/GDataRequest;

.field private volatile streamable:Z

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/youtube/core/model/Stream$Quality;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;

.field private volatile video:Lcom/google/android/youtube/core/model/Video;

.field private volatile videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 1
    .parameter
    .parameter "originalRequest"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p3, originalCallback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/VideoStreams;>;"
    iput-object p1, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->this$0:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequest;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->originalRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 79
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Callback;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->streams:Ljava/util/Map;

    .line 82
    invoke-direct {p0, p2}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->parseVideoId(Lcom/google/android/youtube/core/async/GDataRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->videoId:Ljava/lang/String;

    .line 83
    return-void
.end method

.method static synthetic access$1076(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->streamable:Z

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->streamable:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream$Quality;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->getDownloadQuality(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;Ljava/lang/Long;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->returnVideoStreams(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/model/Page;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->myPurchases:Lcom/google/android/youtube/core/model/Page;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;Lcom/google/android/youtube/core/model/Page;)Lcom/google/android/youtube/core/model/Page;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->myPurchases:Lcom/google/android/youtube/core/model/Page;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/model/Video;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->video:Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Video;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->video:Lcom/google/android/youtube/core/model/Video;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->originalRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/async/Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Ljava/lang/Exception;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->myPurchasesException:Ljava/lang/Exception;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->myPurchasesException:Ljava/lang/Exception;

    return-object p1
.end method

.method private varargs firstAvailableQuality(Ljava/util/Map;[Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream$Quality;
    .locals 5
    .parameter
    .parameter "qualities"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/youtube/core/model/Stream$Quality;",
            "Landroid/net/Uri;",
            ">;[",
            "Lcom/google/android/youtube/core/model/Stream$Quality;",
            ")",
            "Lcom/google/android/youtube/core/model/Stream$Quality;"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, streamsMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/youtube/core/model/Stream$Quality;Landroid/net/Uri;>;"
    move-object v0, p2

    .local v0, arr$:[Lcom/google/android/youtube/core/model/Stream$Quality;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 276
    .local v3, q:Lcom/google/android/youtube/core/model/Stream$Quality;
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 280
    .end local v3           #q:Lcom/google/android/youtube/core/model/Stream$Quality;
    :goto_1
    return-object v4

    .line 275
    .restart local v3       #q:Lcom/google/android/youtube/core/model/Stream$Quality;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    .end local v3           #q:Lcom/google/android/youtube/core/model/Stream$Quality;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getDownloadQuality(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream$Quality;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/youtube/core/model/Stream$Quality;",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/google/android/youtube/core/model/Stream$Quality;"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, streamsMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/youtube/core/model/Stream$Quality;Landroid/net/Uri;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/youtube/core/model/Stream$Quality;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->DOWNLOAD_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_480P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_405P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->firstAvailableQuality(Ljava/util/Map;[Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v0

    return-object v0
.end method

.method private getHiQuality(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream$Quality;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/youtube/core/model/Stream$Quality;",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/google/android/youtube/core/model/Stream$Quality;"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, streamsMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/youtube/core/model/Stream$Quality;Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->this$0:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;

    invoke-static {v0}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->access$1600(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/youtube/core/model/Stream$Quality;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->firstAvailableQuality(Ljava/util/Map;[Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    goto :goto_0
.end method

.method private getLoQuality(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream$Quality;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/youtube/core/model/Stream$Quality;",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/google/android/youtube/core/model/Stream$Quality;"
        }
    .end annotation

    .prologue
    .local p1, streamsMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/youtube/core/model/Stream$Quality;Landroid/net/Uri;>;"
    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 249
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->this$0:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;

    invoke-static {v0}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->access$1700(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->isFastNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    new-array v0, v1, [Lcom/google/android/youtube/core/model/Stream$Quality;

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_480P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_405P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v4

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->firstAvailableQuality(Ljava/util/Map;[Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [Lcom/google/android/youtube/core/model/Stream$Quality;

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_405P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_480P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v4

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->firstAvailableQuality(Ljava/util/Map;[Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v0

    goto :goto_0
.end method

.method private parseVideoId(Lcom/google/android/youtube/core/async/GDataRequest;)Ljava/lang/String;
    .locals 1
    .parameter "request"

    .prologue
    .line 207
    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private returnVideoStreams(Ljava/lang/Long;)V
    .locals 12
    .parameter "downloadStreamLength"

    .prologue
    const/4 v10, 0x0

    const-string v11, "No valid streams"

    .line 211
    iget-object v6, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->streams:Ljava/util/Map;

    invoke-direct {p0, v6}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->getDownloadQuality(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v1

    .line 212
    .local v1, downloadQuality:Lcom/google/android/youtube/core/model/Stream$Quality;
    if-eqz p1, :cond_0

    new-instance v7, Lcom/google/android/youtube/core/model/Stream;

    iget-object v6, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->streams:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v6, v1, v8, v9}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;J)V

    move-object v0, v7

    .line 215
    .local v0, download:Lcom/google/android/youtube/core/model/Stream;
    :goto_0
    iget-boolean v6, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->streamable:Z

    if-nez v6, :cond_2

    .line 216
    if-eqz v0, :cond_1

    .line 220
    iget-object v6, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v7, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->originalRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    new-instance v8, Lcom/google/android/youtube/core/model/VideoStreams;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Lcom/google/android/youtube/core/model/VideoStreams;-><init>(Lcom/google/android/youtube/core/model/Stream;Z)V

    invoke-interface {v6, v7, v8}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 236
    :goto_1
    return-void

    .line 212
    .end local v0           #download:Lcom/google/android/youtube/core/model/Stream;
    :cond_0
    new-instance v7, Lcom/google/android/youtube/core/model/Stream;

    iget-object v6, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->streams:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-direct {v7, v6, v1}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    move-object v0, v7

    goto :goto_0

    .line 222
    .restart local v0       #download:Lcom/google/android/youtube/core/model/Stream;
    :cond_1
    iget-object v6, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v7, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->originalRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    new-instance v8, Lcom/google/android/youtube/core/player/MissingStreamException;

    const-string v9, "No valid streams"

    invoke-direct {v8, v11}, Lcom/google/android/youtube/core/player/MissingStreamException;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7, v8}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_1

    .line 225
    :cond_2
    iget-object v6, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->streams:Ljava/util/Map;

    invoke-direct {p0, v6}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->getHiQuality(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v3

    .line 226
    .local v3, hiQuality:Lcom/google/android/youtube/core/model/Stream$Quality;
    iget-object v6, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->streams:Ljava/util/Map;

    invoke-direct {p0, v6}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->getLoQuality(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v5

    .line 227
    .local v5, loQuality:Lcom/google/android/youtube/core/model/Stream$Quality;
    if-nez v3, :cond_4

    move-object v2, v10

    .line 228
    .local v2, hi:Lcom/google/android/youtube/core/model/Stream;
    :goto_2
    if-nez v5, :cond_5

    move-object v4, v10

    .line 230
    .local v4, lo:Lcom/google/android/youtube/core/model/Stream;
    :goto_3
    if-nez v2, :cond_3

    if-eqz v4, :cond_7

    .line 231
    :cond_3
    iget-object v6, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v7, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->originalRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    new-instance v8, Lcom/google/android/youtube/core/model/VideoStreams;

    const/4 v9, 0x1

    invoke-direct {v8, v2, v4, v0, v9}, Lcom/google/android/youtube/core/model/VideoStreams;-><init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Stream;Z)V

    invoke-interface {v6, v7, v8}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 227
    .end local v2           #hi:Lcom/google/android/youtube/core/model/Stream;
    .end local v4           #lo:Lcom/google/android/youtube/core/model/Stream;
    :cond_4
    new-instance v7, Lcom/google/android/youtube/core/model/Stream;

    iget-object v6, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->streams:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-direct {v7, v6, v3}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    move-object v2, v7

    goto :goto_2

    .line 228
    .restart local v2       #hi:Lcom/google/android/youtube/core/model/Stream;
    :cond_5
    if-ne v5, v3, :cond_6

    move-object v4, v2

    goto :goto_3

    :cond_6
    new-instance v7, Lcom/google/android/youtube/core/model/Stream;

    iget-object v6, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->streams:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-direct {v7, v6, v5}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    move-object v4, v7

    goto :goto_3

    .line 233
    .restart local v4       #lo:Lcom/google/android/youtube/core/model/Stream;
    :cond_7
    iget-object v6, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v7, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->originalRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    new-instance v8, Lcom/google/android/youtube/core/player/MissingStreamException;

    const-string v9, "No valid streams"

    invoke-direct {v8, v11}, Lcom/google/android/youtube/core/player/MissingStreamException;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7, v8}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public makeRequests()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->this$0:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;

    invoke-static {v0}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->access$100(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->originalRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v1, v1, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequests;->getMyPurchasesRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$MyPurchasesCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$MyPurchasesCallback;-><init>(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$1;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 88
    return-void
.end method
