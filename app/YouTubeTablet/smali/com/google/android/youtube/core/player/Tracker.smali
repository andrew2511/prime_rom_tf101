.class public Lcom/google/android/youtube/core/player/Tracker;
.super Landroid/os/Handler;
.source "Tracker.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/Handler;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final CVSS_BASE_URI:Landroid/net/Uri;

.field private static final ITAG_CANDIDATES:[Ljava/lang/String;

.field private static final SECURE_RANDOM:Ljava/security/SecureRandom;

.field private static final STATS_BASE_URI:Landroid/net/Uri;


# instance fields
.field private ad:Lcom/google/android/youtube/core/model/VastAd;

.field private final analytics:Lcom/google/android/youtube/core/Analytics;

.field cvssPlaybackId:Ljava/lang/String;

.field private elapsed:I

.field private nextQuartile:I

.field private nextTrackingPoint:I

.field private final pingRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private playingAd:Z

.field private quality:Lcom/google/android/youtube/core/model/Stream$Quality;

.field private trackingPlayback:Z

.field private final version:Ljava/lang/String;

.field private video:Lcom/google/android/youtube/core/model/Video;

.field private videoRequestTimestamp:J

.field private videoStreamUri:Landroid/net/Uri;

.field private vssPlaybackId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const-string v0, "http://video.google.com/s"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/player/Tracker;->STATS_BASE_URI:Landroid/net/Uri;

    .line 41
    const-string v0, "http://s2.youtube.com/s?ns=yt"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/player/Tracker;->CVSS_BASE_URI:Landroid/net/Uri;

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "17"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "18"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "22"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "36"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "61"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "63"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/player/Tracker;->ITAG_CANDIDATES:[Ljava/lang/String;

    .line 258
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/player/Tracker;->SECURE_RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/async/Requester;)V
    .locals 2
    .parameter "context"
    .parameter "analytics"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/youtube/core/Analytics;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p3, pingRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Ljava/lang/Void;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 66
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->analytics:Lcom/google/android/youtube/core/Analytics;

    .line 67
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->pingRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->getAppVersionCode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->version:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private doResetForReplay()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/google/android/youtube/core/player/Tracker;->newPlaybackId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->cvssPlaybackId:Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/player/Tracker;->nextTrackingPoint:I

    .line 91
    return-void
.end method

.method private static formatToSeconds(J)Ljava/lang/String;
    .locals 5
    .parameter "time"

    .prologue
    .line 340
    const-string v0, "%.1f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    long-to-float v3, p0

    const/high16 v4, 0x447a

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getCvssPingUri(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;
    .locals 4
    .parameter "videoId"
    .parameter "playbackId"
    .parameter "trackPoint"
    .parameter "currentMediaTime"

    .prologue
    .line 245
    int-to-long v1, p3

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/player/Tracker;->formatToSeconds(J)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, mediaTimeAsString:Ljava/lang/String;
    sget-object v1, Lcom/google/android/youtube/core/player/Tracker;->CVSS_BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "docid"

    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "plid"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "ps"

    const-string v3, "android"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "yttk"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "st"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "et"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "el"

    const-string v3, "detailpage"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "ctp"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private getQuartilePingUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "quartile"

    .prologue
    .line 217
    packed-switch p1, :pswitch_data_0

    .line 221
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 218
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/VastAd;->firstQuartilePingUri:Landroid/net/Uri;

    goto :goto_0

    .line 219
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/VastAd;->midpointPingUri:Landroid/net/Uri;

    goto :goto_0

    .line 220
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/VastAd;->thirdQuartilePingUri:Landroid/net/Uri;

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getVssPingUri(Ljava/lang/String;JLandroid/net/Uri;JLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .parameter "videoId"
    .parameter "videoDuration"
    .parameter "videoStreamUri"
    .parameter "latency"
    .parameter "plid"
    .parameter "version"

    .prologue
    .line 298
    sget-object v2, Lcom/google/android/youtube/core/player/Tracker;->STATS_BASE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "docid"

    invoke-virtual {v2, v3, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "ns"

    const-string v4, "yt"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "len"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "el"

    const-string v4, "detailpage"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "ps"

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "rt"

    invoke-static {p4, p5}, Lcom/google/android/youtube/core/player/Tracker;->formatToSeconds(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "playback"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "plid"

    invoke-virtual {v2, v3, p6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "av"

    invoke-virtual {v2, v3, p7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 310
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {p3}, Lcom/google/android/youtube/core/player/Tracker;->inferITag(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, iTag:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to infer iTag [videoId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", streamUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 316
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 314
    :cond_0
    const-string v2, "fmt"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method private static inferITag(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "streamUri"

    .prologue
    .line 320
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, path:Ljava/lang/String;
    const-string v6, "itag"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, param:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 323
    sget-object v0, Lcom/google/android/youtube/core/player/Tracker;->ITAG_CANDIDATES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 324
    .local v2, iTag:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "itag/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v2

    .line 336
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #iTag:Ljava/lang/String;
    .end local v3           #len$:I
    :goto_1
    return-object v6

    .line 323
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #iTag:Ljava/lang/String;
    .restart local v3       #len$:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #iTag:Ljava/lang/String;
    .end local v3           #len$:I
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 330
    sget-object v0, Lcom/google/android/youtube/core/player/Tracker;->ITAG_CANDIDATES:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v2, v0, v1

    .line 331
    .restart local v2       #iTag:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v2

    .line 332
    goto :goto_1

    .line 330
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 336
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #iTag:Ljava/lang/String;
    .end local v3           #len$:I
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static newInstance(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/player/Tracker;
    .locals 7
    .parameter "context"
    .parameter "analytics"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/youtube/core/Analytics;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/google/android/youtube/core/player/Tracker;"
        }
    .end annotation

    .prologue
    .local p2, pingRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Ljava/lang/Void;>;"
    const/4 v6, 0x0

    .line 348
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/google/android/youtube/core/player/Tracker;

    .line 349
    .local v1, tracker:[Lcom/google/android/youtube/core/player/Tracker;
    new-instance v5, Landroid/os/ConditionVariable;

    invoke-direct {v5, v6}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 350
    .local v5, conditionVariable:Landroid/os/ConditionVariable;
    new-instance v0, Lcom/google/android/youtube/core/player/Tracker$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/player/Tracker$1;-><init>([Lcom/google/android/youtube/core/player/Tracker;Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/async/Requester;Landroid/os/ConditionVariable;)V

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker$1;->start()V

    .line 360
    invoke-virtual {v5}, Landroid/os/ConditionVariable;->block()V

    .line 361
    aget-object v0, v1, v6

    return-object v0
.end method

.method private static newPlaybackId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    const/16 v1, 0xc

    new-array v0, v1, [B

    .line 261
    .local v0, randomBytes:[B
    sget-object v1, Lcom/google/android/youtube/core/player/Tracker;->SECURE_RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 262
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private ping(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 229
    if-eqz p1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pinging "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->pingRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-interface {v0, p1, p0}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 232
    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static safeGetQuartile(II)I
    .locals 1
    .parameter "currentTimeInMillis"
    .parameter "totalTimeInMillis"

    .prologue
    .line 209
    if-lez p1, :cond_0

    .line 210
    mul-int/lit8 v0, p0, 0x4

    div-int/2addr v0, p1

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method doReset(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/VastAd;Lcom/google/android/youtube/core/model/Stream$Quality;)V
    .locals 2
    .parameter "video"
    .parameter "ad"
    .parameter "quality"

    .prologue
    const/4 v1, 0x1

    .line 76
    iput-object p1, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    .line 77
    iput-object p3, p0, Lcom/google/android/youtube/core/player/Tracker;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 78
    iget-boolean v0, p1, Lcom/google/android/youtube/core/model/Video;->claimed:Z

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Tracker;->trackingPlayback:Z

    .line 79
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Tracker;->trackingPlayback:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Tracker;->doResetForReplay()V

    .line 83
    :cond_0
    iput-object p2, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    .line 84
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/google/android/youtube/core/model/VastAd;->streamUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    .line 85
    iput v1, p0, Lcom/google/android/youtube/core/player/Tracker;->nextQuartile:I

    .line 86
    return-void

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 103
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 202
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 105
    .restart local p1
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v8, v0, v9

    check-cast v8, Lcom/google/android/youtube/core/model/Video;

    .line 106
    .local v8, v:Lcom/google/android/youtube/core/model/Video;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v9, 0x1

    aget-object v0, v0, v9

    check-cast v0, Lcom/google/android/youtube/core/model/VastAd;

    .line 107
    .local v0, a:Lcom/google/android/youtube/core/model/VastAd;
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v9, 0x2

    aget-object v5, p1, v9

    check-cast v5, Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 108
    .local v5, q:Lcom/google/android/youtube/core/model/Stream$Quality;
    invoke-virtual {p0, v8, v0, v5}, Lcom/google/android/youtube/core/player/Tracker;->doReset(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/VastAd;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    goto :goto_0

    .line 112
    .end local v0           #a:Lcom/google/android/youtube/core/model/VastAd;
    .end local v5           #q:Lcom/google/android/youtube/core/model/Stream$Quality;
    .end local v8           #v:Lcom/google/android/youtube/core/model/Video;
    .restart local p1
    :sswitch_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Looper;->quit()V

    .line 113
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/google/android/youtube/core/player/Tracker;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 117
    :sswitch_2
    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    if-eqz v9, :cond_0

    .line 118
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v9, v9, Lcom/google/android/youtube/core/model/VastAd;->clickthroughPingUri:Landroid/net/Uri;

    invoke-direct {p0, v9}, Lcom/google/android/youtube/core/player/Tracker;->ping(Landroid/net/Uri;)Z

    goto :goto_0

    .line 123
    :sswitch_3
    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v9, v9, Lcom/google/android/youtube/core/model/VastAd;->streamUri:Landroid/net/Uri;

    if-nez v9, :cond_2

    .line 124
    :cond_1
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v9, v9, Lcom/google/android/youtube/core/model/VastAd;->impressionUri:Landroid/net/Uri;

    invoke-direct {p0, v9}, Lcom/google/android/youtube/core/player/Tracker;->ping(Landroid/net/Uri;)Z

    .line 126
    :cond_2
    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    if-nez v9, :cond_3

    .line 127
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/Tracker;->trackPrepared()V

    .line 129
    :cond_3
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v10, "PlayStarted"

    iget-object v11, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v12, p0, Lcom/google/android/youtube/core/player/Tracker;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-interface {v9, v10, v11, v12}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    goto :goto_0

    .line 133
    :sswitch_4
    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    if-eqz v9, :cond_4

    .line 134
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v9, v9, Lcom/google/android/youtube/core/model/VastAd;->closePingUri:Landroid/net/Uri;

    invoke-direct {p0, v9}, Lcom/google/android/youtube/core/player/Tracker;->ping(Landroid/net/Uri;)Z

    goto :goto_0

    .line 136
    :cond_4
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v10, "PlayStopped"

    iget-object v11, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v12, p0, Lcom/google/android/youtube/core/player/Tracker;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget v13, p0, Lcom/google/android/youtube/core/player/Tracker;->elapsed:I

    invoke-interface {v9, v10, v11, v12, v13}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;I)V

    goto :goto_0

    .line 141
    :sswitch_5
    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    if-eqz v9, :cond_5

    .line 142
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v9, v9, Lcom/google/android/youtube/core/model/VastAd;->completePingUri:Landroid/net/Uri;

    invoke-direct {p0, v9}, Lcom/google/android/youtube/core/player/Tracker;->ping(Landroid/net/Uri;)Z

    .line 143
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    goto/16 :goto_0

    .line 144
    :cond_5
    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->trackingPlayback:Z

    if-eqz v9, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Tracker;->doResetForReplay()V

    .line 146
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v10, "PlayEnded"

    iget-object v11, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v12, p0, Lcom/google/android/youtube/core/player/Tracker;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-interface {v9, v10, v11, v12}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    goto/16 :goto_0

    .line 151
    :sswitch_6
    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    if-eqz v9, :cond_7

    .line 152
    iget v9, p0, Lcom/google/android/youtube/core/player/Tracker;->nextQuartile:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_6

    .line 155
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v9, v9, Lcom/google/android/youtube/core/model/VastAd;->closePingUri:Landroid/net/Uri;

    invoke-direct {p0, v9}, Lcom/google/android/youtube/core/player/Tracker;->ping(Landroid/net/Uri;)Z

    .line 156
    const/4 v9, 0x5

    iput v9, p0, Lcom/google/android/youtube/core/player/Tracker;->nextQuartile:I

    .line 158
    :cond_6
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    .line 159
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v10, "AdPlayError"

    const/4 v11, 0x0

    iget v12, p0, Lcom/google/android/youtube/core/player/Tracker;->elapsed:I

    invoke-interface {v9, v10, v11, v12}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 161
    :cond_7
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_8

    .line 162
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v10, "PlayErrorException"

    iget-object v11, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v12, p0, Lcom/google/android/youtube/core/player/Tracker;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget v13, p0, Lcom/google/android/youtube/core/player/Tracker;->elapsed:I

    invoke-interface {v9, v10, v11, v12, v13}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;I)V

    goto/16 :goto_0

    .line 164
    :cond_8
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    iget v9, p1, Landroid/os/Message;->arg2:I

    if-eqz v9, :cond_9

    .line 165
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->analytics:Lcom/google/android/youtube/core/Analytics;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PlayErrorMediaUnknown"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v12, p0, Lcom/google/android/youtube/core/player/Tracker;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget v13, p0, Lcom/google/android/youtube/core/player/Tracker;->elapsed:I

    invoke-interface {v9, v10, v11, v12, v13}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;I)V

    goto/16 :goto_0

    .line 168
    :cond_9
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->analytics:Lcom/google/android/youtube/core/Analytics;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PlayError"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v12, p0, Lcom/google/android/youtube/core/player/Tracker;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget v13, p0, Lcom/google/android/youtube/core/player/Tracker;->elapsed:I

    invoke-interface {v9, v10, v11, v12, v13}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;I)V

    goto/16 :goto_0

    .line 175
    :sswitch_7
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 176
    .local v2, currentTimeInMillis:I
    div-int/lit16 v9, v2, 0x3e8

    iput v9, p0, Lcom/google/android/youtube/core/player/Tracker;->elapsed:I

    .line 177
    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->playingAd:Z

    if-eqz v9, :cond_c

    .line 178
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 179
    .local v6, totalTimeInMillis:I
    invoke-static {v2, v6}, Lcom/google/android/youtube/core/player/Tracker;->safeGetQuartile(II)I

    move-result v1

    .line 180
    .local v1, currentQuartile:I
    iget v9, p0, Lcom/google/android/youtube/core/player/Tracker;->nextQuartile:I

    if-lt v1, v9, :cond_0

    .line 182
    move v3, v1

    .local v3, i:I
    :goto_1
    iget v9, p0, Lcom/google/android/youtube/core/player/Tracker;->nextQuartile:I

    if-lt v3, v9, :cond_a

    .line 183
    invoke-direct {p0, v3}, Lcom/google/android/youtube/core/player/Tracker;->getQuartilePingUri(I)Landroid/net/Uri;

    move-result-object v7

    .line 184
    .local v7, uri:Landroid/net/Uri;
    invoke-direct {p0, v7}, Lcom/google/android/youtube/core/player/Tracker;->ping(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 188
    .end local v7           #uri:Landroid/net/Uri;
    :cond_a
    add-int/lit8 v9, v1, 0x1

    iput v9, p0, Lcom/google/android/youtube/core/player/Tracker;->nextQuartile:I

    goto/16 :goto_0

    .line 182
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 190
    .end local v1           #currentQuartile:I
    .end local v3           #i:I
    .end local v6           #totalTimeInMillis:I
    .end local v7           #uri:Landroid/net/Uri;
    .restart local p1
    :cond_c
    iget-boolean v9, p0, Lcom/google/android/youtube/core/player/Tracker;->trackingPlayback:Z

    if-eqz v9, :cond_0

    .line 191
    iget v9, p0, Lcom/google/android/youtube/core/player/Tracker;->nextTrackingPoint:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    if-gez v2, :cond_f

    :cond_d
    iget v9, p0, Lcom/google/android/youtube/core/player/Tracker;->nextTrackingPoint:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_e

    const/16 v9, 0x4e20

    if-ge v2, v9, :cond_f

    :cond_e
    iget v9, p0, Lcom/google/android/youtube/core/player/Tracker;->nextTrackingPoint:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    const/16 v9, 0x7530

    if-lt v2, v9, :cond_0

    .line 194
    :cond_f
    iget-object v9, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v9, v9, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/youtube/core/player/Tracker;->cvssPlaybackId:Ljava/lang/String;

    iget v11, p0, Lcom/google/android/youtube/core/player/Tracker;->nextTrackingPoint:I

    invoke-static {v9, v10, v11, v2}, Lcom/google/android/youtube/core/player/Tracker;->getCvssPingUri(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v4

    .line 196
    .local v4, pingUri:Landroid/net/Uri;
    invoke-direct {p0, v4}, Lcom/google/android/youtube/core/player/Tracker;->ping(Landroid/net/Uri;)Z

    .line 197
    iget v9, p0, Lcom/google/android/youtube/core/player/Tracker;->nextTrackingPoint:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/android/youtube/core/player/Tracker;->nextTrackingPoint:I

    goto/16 :goto_0

    .line 103
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_7
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_2
    .end sparse-switch
.end method

.method public onError(Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 2
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ping failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/Tracker;->onError(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Landroid/net/Uri;Ljava/lang/Void;)V
    .locals 0
    .parameter "request"
    .parameter "response"

    .prologue
    .line 271
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    check-cast p1, Landroid/net/Uri;

    .end local p1
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/Tracker;->onResponse(Landroid/net/Uri;Ljava/lang/Void;)V

    return-void
.end method

.method public pingClickthrough()V
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/Tracker;->sendEmptyMessage(I)Z

    .line 99
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/Tracker;->sendEmptyMessage(I)Z

    .line 95
    return-void
.end method

.method public reset(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/VastAd;Lcom/google/android/youtube/core/model/Stream$Quality;)V
    .locals 3
    .parameter "video"
    .parameter "ad"
    .parameter "quality"

    .prologue
    .line 72
    const/16 v0, 0x65

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/Tracker;->sendMessage(Landroid/os/Message;)Z

    .line 73
    return-void
.end method

.method public trackPrepared()V
    .locals 9

    .prologue
    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/youtube/core/player/Tracker;->videoRequestTimestamp:J

    sub-long v4, v0, v2

    .line 285
    .local v4, latency:J
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Tracker;->video:Lcom/google/android/youtube/core/model/Video;

    iget v1, v1, Lcom/google/android/youtube/core/model/Video;->duration:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/google/android/youtube/core/player/Tracker;->videoStreamUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/google/android/youtube/core/player/Tracker;->vssPlaybackId:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/youtube/core/player/Tracker;->version:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/google/android/youtube/core/player/Tracker;->getVssPingUri(Ljava/lang/String;JLandroid/net/Uri;JLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 287
    .local v8, uri:Landroid/net/Uri;
    invoke-direct {p0, v8}, Lcom/google/android/youtube/core/player/Tracker;->ping(Landroid/net/Uri;)Z

    .line 288
    return-void
.end method

.method public trackVideoInit()V
    .locals 2

    .prologue
    .line 275
    invoke-static {}, Lcom/google/android/youtube/core/player/Tracker;->newPlaybackId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Tracker;->vssPlaybackId:Ljava/lang/String;

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/player/Tracker;->videoRequestTimestamp:J

    .line 277
    return-void
.end method

.method public trackVideoPrepare(Landroid/net/Uri;)V
    .locals 0
    .parameter "streamUri"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/android/youtube/core/player/Tracker;->videoStreamUri:Landroid/net/Uri;

    .line 281
    return-void
.end method
