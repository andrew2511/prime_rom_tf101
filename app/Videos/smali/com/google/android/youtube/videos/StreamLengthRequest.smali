.class public Lcom/google/android/youtube/videos/StreamLengthRequest;
.super Ljava/lang/Object;
.source "StreamLengthRequest.java"


# instance fields
.field private volatile hashCode:I

.field public final quality:Lcom/google/android/youtube/core/model/Stream$Quality;

.field public final streamUri:Landroid/net/Uri;

.field public final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/Stream$Quality;Landroid/net/Uri;)V
    .locals 1
    .parameter "videoId"
    .parameter "quality"
    .parameter "streamUri"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/videos/StreamLengthRequest;->videoId:Ljava/lang/String;

    .line 27
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    iput-object v0, p0, Lcom/google/android/youtube/videos/StreamLengthRequest;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 28
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/videos/StreamLengthRequest;->streamUri:Landroid/net/Uri;

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 33
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/google/android/youtube/videos/StreamLengthRequest;

    if-nez v2, :cond_1

    :cond_0
    move v2, v4

    .line 37
    :goto_0
    return v2

    .line 36
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/youtube/videos/StreamLengthRequest;

    move-object v1, v0

    .line 37
    .local v1, streamLengthRequest:Lcom/google/android/youtube/videos/StreamLengthRequest;
    iget-object v2, p0, Lcom/google/android/youtube/videos/StreamLengthRequest;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget-object v3, v1, Lcom/google/android/youtube/videos/StreamLengthRequest;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/youtube/videos/StreamLengthRequest;->videoId:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/youtube/videos/StreamLengthRequest;->videoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 42
    iget v0, p0, Lcom/google/android/youtube/videos/StreamLengthRequest;->hashCode:I

    .line 43
    .local v0, result:I
    if-nez v0, :cond_0

    .line 44
    const/16 v0, 0x11

    .line 45
    mul-int/lit8 v1, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/youtube/videos/StreamLengthRequest;->videoId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 46
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/youtube/videos/StreamLengthRequest;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Stream$Quality;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 47
    iput v0, p0, Lcom/google/android/youtube/videos/StreamLengthRequest;->hashCode:I

    .line 49
    :cond_0
    return v0
.end method
