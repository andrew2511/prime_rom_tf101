.class public Lcom/google/android/youtube/app/player/StreamsRequester;
.super Ljava/lang/Object;
.source "StreamsRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/player/StreamsRequester$1;,
        Lcom/google/android/youtube/app/player/StreamsRequester$VideoCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/VideoStreams;",
        ">;"
    }
.end annotation


# instance fields
.field private final canDisplayHd:Z

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
.method public constructor <init>(Lcom/google/android/youtube/core/async/Requester;Z)V
    .locals 1
    .parameter
    .parameter "canDisplayHd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, videoRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/app/player/StreamsRequester;->videoRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 28
    iput-boolean p2, p0, Lcom/google/android/youtube/app/player/StreamsRequester;->canDisplayHd:Z

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/app/player/StreamsRequester;Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Stream$Quality;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/player/StreamsRequester;->getHiQuality(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/app/player/StreamsRequester;Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Stream$Quality;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/player/StreamsRequester;->getLoQuality(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/app/player/StreamsRequester;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/player/StreamsRequester;->getStreamUri(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getHiQuality(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Stream$Quality;
    .locals 1
    .parameter "video"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/youtube/app/player/StreamsRequester;->canDisplayHd:Z

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->streamUri720p:Landroid/net/Uri;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 70
    :goto_0
    return-object v0

    .line 68
    :cond_0
    sget-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    goto :goto_0

    .line 70
    :cond_1
    iget-boolean v0, p1, Lcom/google/android/youtube/core/model/Video;->is3d:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    goto :goto_0
.end method

.method private getLoQuality(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Stream$Quality;
    .locals 1
    .parameter "video"

    .prologue
    .line 75
    iget-boolean v0, p1, Lcom/google/android/youtube/core/model/Video;->is3d:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->streamUri240p:Landroid/net/Uri;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_240P:Lcom/google/android/youtube/core/model/Stream$Quality;

    goto :goto_0
.end method

.method private getStreamUri(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)Landroid/net/Uri;
    .locals 2
    .parameter "video"
    .parameter "quality"

    .prologue
    .line 79
    sget-object v0, Lcom/google/android/youtube/app/player/StreamsRequester$1;->$SwitchMap$com$google$android$youtube$core$model$Stream$Quality:[I

    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 81
    :pswitch_0
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->streamUri240p:Landroid/net/Uri;

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->streamUri360p:Landroid/net/Uri;

    goto :goto_0

    .line 85
    :pswitch_2
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->streamUri720p:Landroid/net/Uri;

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public request(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 2
    .parameter "request"
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
    .line 32
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/VideoStreams;>;"
    iget-object v0, p0, Lcom/google/android/youtube/app/player/StreamsRequester;->videoRequester:Lcom/google/android/youtube/core/async/Requester;

    new-instance v1, Lcom/google/android/youtube/app/player/StreamsRequester$VideoCallback;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/app/player/StreamsRequester$VideoCallback;-><init>(Lcom/google/android/youtube/app/player/StreamsRequester;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 33
    return-void
.end method

.method public bridge synthetic request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/player/StreamsRequester;->request(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    return-void
.end method
