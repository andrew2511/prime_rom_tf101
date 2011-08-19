.class public Lcom/google/android/youtube/core/model/VastAd;
.super Ljava/lang/Object;
.source "VastAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/VastAd$Builder;
    }
.end annotation


# instance fields
.field public final clickthroughPingUri:Landroid/net/Uri;

.field public final clickthroughUri:Landroid/net/Uri;

.field public final closePingUri:Landroid/net/Uri;

.field public final completePingUri:Landroid/net/Uri;

.field public final firstQuartilePingUri:Landroid/net/Uri;

.field public final impressionUri:Landroid/net/Uri;

.field public final midpointPingUri:Landroid/net/Uri;

.field public final streamUri:Landroid/net/Uri;

.field public final thirdQuartilePingUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .parameter "impressionUri"
    .parameter "streamUri"
    .parameter "firstQuartilePingUri"
    .parameter "midpointPingUri"
    .parameter "thirdQuartilePingUri"
    .parameter "completePingUri"
    .parameter "closePingUri"
    .parameter "clickthroughUri"
    .parameter "clickthroughPingUri"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/youtube/core/model/VastAd;->impressionUri:Landroid/net/Uri;

    .line 75
    iput-object p2, p0, Lcom/google/android/youtube/core/model/VastAd;->streamUri:Landroid/net/Uri;

    .line 76
    iput-object p3, p0, Lcom/google/android/youtube/core/model/VastAd;->firstQuartilePingUri:Landroid/net/Uri;

    .line 77
    iput-object p4, p0, Lcom/google/android/youtube/core/model/VastAd;->midpointPingUri:Landroid/net/Uri;

    .line 78
    iput-object p5, p0, Lcom/google/android/youtube/core/model/VastAd;->thirdQuartilePingUri:Landroid/net/Uri;

    .line 79
    iput-object p6, p0, Lcom/google/android/youtube/core/model/VastAd;->completePingUri:Landroid/net/Uri;

    .line 80
    iput-object p7, p0, Lcom/google/android/youtube/core/model/VastAd;->closePingUri:Landroid/net/Uri;

    .line 81
    iput-object p8, p0, Lcom/google/android/youtube/core/model/VastAd;->clickthroughUri:Landroid/net/Uri;

    .line 82
    iput-object p9, p0, Lcom/google/android/youtube/core/model/VastAd;->clickthroughPingUri:Landroid/net/Uri;

    .line 83
    return-void
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/youtube/core/model/VastAd$Builder;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/google/android/youtube/core/model/VastAd$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/VastAd$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->impressionUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/VastAd$Builder;->impressionUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->streamUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/VastAd$Builder;->streamUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->firstQuartilePingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/VastAd$Builder;->firstQuartilePingUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->midpointPingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/VastAd$Builder;->midpointPingUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->thirdQuartilePingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/VastAd$Builder;->thirdQuartilePingUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->completePingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/VastAd$Builder;->completePingUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->closePingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/VastAd$Builder;->closePingUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->clickthroughUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/VastAd$Builder;->clickthroughUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->clickthroughPingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/VastAd$Builder;->clickthroughPingUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VastAd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd;->streamUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
