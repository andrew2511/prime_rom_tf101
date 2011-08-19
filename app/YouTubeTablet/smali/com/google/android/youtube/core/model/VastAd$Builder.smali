.class public Lcom/google/android/youtube/core/model/VastAd$Builder;
.super Ljava/lang/Object;
.source "VastAd.java"

# interfaces
.implements Lcom/google/android/youtube/core/model/ModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/VastAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/model/ModelBuilder",
        "<",
        "Lcom/google/android/youtube/core/model/VastAd;",
        ">;"
    }
.end annotation


# instance fields
.field private clickthroughPingUri:Landroid/net/Uri;

.field private clickthroughUri:Landroid/net/Uri;

.field private closePingUri:Landroid/net/Uri;

.field private completePingUri:Landroid/net/Uri;

.field private firstQuartilePingUri:Landroid/net/Uri;

.field private impressionUri:Landroid/net/Uri;

.field private midpointPingUri:Landroid/net/Uri;

.field private streamUri:Landroid/net/Uri;

.field private thirdQuartilePingUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/youtube/core/model/VastAd;
    .locals 10

    .prologue
    .line 161
    new-instance v0, Lcom/google/android/youtube/core/model/VastAd;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/VastAd$Builder;->impressionUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/VastAd$Builder;->streamUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/VastAd$Builder;->firstQuartilePingUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/VastAd$Builder;->midpointPingUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/VastAd$Builder;->thirdQuartilePingUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/VastAd$Builder;->completePingUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/google/android/youtube/core/model/VastAd$Builder;->closePingUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/google/android/youtube/core/model/VastAd$Builder;->clickthroughUri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/google/android/youtube/core/model/VastAd$Builder;->clickthroughPingUri:Landroid/net/Uri;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/youtube/core/model/VastAd;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/VastAd$Builder;->build()Lcom/google/android/youtube/core/model/VastAd;

    move-result-object v0

    return-object v0
.end method

.method public clickthroughPingUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;
    .locals 0
    .parameter "clickthroughPingUri"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/youtube/core/model/VastAd$Builder;->clickthroughPingUri:Landroid/net/Uri;

    .line 157
    return-object p0
.end method

.method public clickthroughUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;
    .locals 0
    .parameter "clickthroughUri"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/android/youtube/core/model/VastAd$Builder;->clickthroughUri:Landroid/net/Uri;

    .line 152
    return-object p0
.end method

.method public closePingUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;
    .locals 0
    .parameter "closePingUri"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/android/youtube/core/model/VastAd$Builder;->closePingUri:Landroid/net/Uri;

    .line 147
    return-object p0
.end method

.method public completePingUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;
    .locals 0
    .parameter "completePingUri"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/youtube/core/model/VastAd$Builder;->completePingUri:Landroid/net/Uri;

    .line 142
    return-object p0
.end method

.method public firstQuartilePingUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;
    .locals 0
    .parameter "firstQuartilePingUri"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/youtube/core/model/VastAd$Builder;->firstQuartilePingUri:Landroid/net/Uri;

    .line 127
    return-object p0
.end method

.method public impressionUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;
    .locals 0
    .parameter "impressionUri"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/android/youtube/core/model/VastAd$Builder;->impressionUri:Landroid/net/Uri;

    .line 117
    return-object p0
.end method

.method public midpointPingUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;
    .locals 0
    .parameter "midpointPingUri"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/youtube/core/model/VastAd$Builder;->midpointPingUri:Landroid/net/Uri;

    .line 132
    return-object p0
.end method

.method public streamUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;
    .locals 0
    .parameter "streamUri"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/youtube/core/model/VastAd$Builder;->streamUri:Landroid/net/Uri;

    .line 122
    return-object p0
.end method

.method public thirdQuartilePingUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;
    .locals 0
    .parameter "thirdQuartilePingUri"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/android/youtube/core/model/VastAd$Builder;->thirdQuartilePingUri:Landroid/net/Uri;

    .line 137
    return-object p0
.end method
