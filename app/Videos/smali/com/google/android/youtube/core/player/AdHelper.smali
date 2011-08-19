.class public Lcom/google/android/youtube/core/player/AdHelper;
.super Ljava/lang/Object;
.source "AdHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/player/AdHelper$StreamsCallback;,
        Lcom/google/android/youtube/core/player/AdHelper$VideoCallback;,
        Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/android/youtube/core/model/VastAd;",
        ">;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/android/youtube/core/model/AdTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final SAFE_DELAY_MILLIS:I = 0x927c0


# instance fields
.field private final adTagRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/AdTag;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/VastAd;",
            ">;"
        }
    .end annotation
.end field

.field private final clock:Lcom/google/android/youtube/core/utils/Clock;

.field private lastAdDelay:I

.field private lastAdTime:J

.field private newLastAdDelay:I

.field private preferHQ:Z

.field private final preferences:Landroid/content/SharedPreferences;

.field private final streamsRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation
.end field

.field private final vastAdRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/youtube/core/model/VastAd;",
            ">;"
        }
    .end annotation
.end field

.field private final videoRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/utils/Clock;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V
    .locals 5
    .parameter "clock"
    .parameter "preferences"
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/utils/Clock;",
            "Landroid/content/SharedPreferences;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/AdTag;",
            ">;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/youtube/core/model/VastAd;",
            ">;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p3, adTagRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/lang/String;Lcom/google/android/youtube/core/model/AdTag;>;"
    .local p4, vastAdRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Lcom/google/android/youtube/core/model/VastAd;>;"
    .local p5, videoRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;>;"
    .local p6, streamsRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/VideoStreams;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/utils/Clock;

    iput-object v2, p0, Lcom/google/android/youtube/core/player/AdHelper;->clock:Lcom/google/android/youtube/core/utils/Clock;

    .line 61
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    iput-object v2, p0, Lcom/google/android/youtube/core/player/AdHelper;->preferences:Landroid/content/SharedPreferences;

    .line 62
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/async/Requester;

    iput-object v2, p0, Lcom/google/android/youtube/core/player/AdHelper;->adTagRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 63
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/async/Requester;

    iput-object v2, p0, Lcom/google/android/youtube/core/player/AdHelper;->vastAdRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 64
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/async/Requester;

    iput-object v2, p0, Lcom/google/android/youtube/core/player/AdHelper;->videoRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 65
    invoke-static {p6}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/async/Requester;

    iput-object v2, p0, Lcom/google/android/youtube/core/player/AdHelper;->streamsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 66
    invoke-interface {p1}, Lcom/google/android/youtube/core/utils/Clock;->currentMillis()J

    move-result-wide v0

    .line 67
    .local v0, now:J
    const-string v2, "last_ad_time"

    invoke-interface {p2, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/youtube/core/player/AdHelper;->lastAdTime:J

    .line 68
    const v2, 0x927c0

    const-string v3, "last_ad_delay"

    const/4 v4, 0x0

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/youtube/core/player/AdHelper;->lastAdDelay:I

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/player/AdHelper;)Lcom/google/android/youtube/core/async/Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->callback:Lcom/google/android/youtube/core/async/Callback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-static {p0}, Lcom/google/android/youtube/core/player/AdHelper;->isYouTubeHostedStreamUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-static {p0}, Lcom/google/android/youtube/core/player/AdHelper;->getVideoIdForYouTubeStreamUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/core/player/AdHelper;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->videoRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/core/player/AdHelper;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->streamsRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/core/player/AdHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->preferHQ:Z

    return v0
.end method

.method private static getVideoIdForYouTubeStreamUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "streamUri"

    .prologue
    .line 114
    const-string v0, "v"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isYouTubeHostedStreamUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "streamUri"

    .prologue
    .line 110
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.youtube"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAdEnded()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->clock:Lcom/google/android/youtube/core/utils/Clock;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/Clock;->currentMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->lastAdTime:J

    .line 87
    iget v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->newLastAdDelay:I

    iput v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->lastAdDelay:I

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_ad_time"

    iget-wide v2, p0, Lcom/google/android/youtube/core/player/AdHelper;->lastAdTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_ad_delay"

    iget v2, p0, Lcom/google/android/youtube/core/player/AdHelper;->lastAdDelay:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/AdHelper;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 105
    const-string v0, "Error retrieving ad tag"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 107
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/AdTag;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/AdHelper;->onResponse(Ljava/lang/String;Lcom/google/android/youtube/core/model/AdTag;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/google/android/youtube/core/model/AdTag;)V
    .locals 3
    .parameter "videoId"
    .parameter "adTag"

    .prologue
    .line 95
    if-eqz p2, :cond_0

    .line 96
    iget v1, p2, Lcom/google/android/youtube/core/model/AdTag;->delay:I

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/google/android/youtube/core/player/AdHelper;->newLastAdDelay:I

    .line 97
    new-instance v0, Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;-><init>(Lcom/google/android/youtube/core/player/AdHelper;Ljava/lang/String;)V

    .line 98
    .local v0, callback:Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdHelper;->vastAdRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v2, p2, Lcom/google/android/youtube/core/model/AdTag;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 102
    .end local v0           #callback:Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdHelper;->callback:Lcom/google/android/youtube/core/async/Callback;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/AdHelper;->request(Ljava/lang/String;Lcom/google/android/youtube/core/async/Callback;)V

    return-void
.end method

.method public request(Ljava/lang/String;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 6
    .parameter "videoId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/VastAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Ljava/lang/String;Lcom/google/android/youtube/core/model/VastAd;>;"
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Callback;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->callback:Lcom/google/android/youtube/core/async/Callback;

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->clock:Lcom/google/android/youtube/core/utils/Clock;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/Clock;->currentMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/youtube/core/player/AdHelper;->lastAdTime:J

    iget v4, p0, Lcom/google/android/youtube/core/player/AdHelper;->lastAdDelay:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->adTagRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-interface {v0, p1, p0}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setPreferHQ(Z)V
    .locals 0
    .parameter "preferHQ"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/AdHelper;->preferHQ:Z

    .line 73
    return-void
.end method
