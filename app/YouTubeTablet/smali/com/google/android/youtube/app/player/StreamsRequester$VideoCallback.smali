.class Lcom/google/android/youtube/app/player/StreamsRequester$VideoCallback;
.super Ljava/lang/Object;
.source "StreamsRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/player/StreamsRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/Video;",
        ">;"
    }
.end annotation


# instance fields
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

.field final synthetic this$0:Lcom/google/android/youtube/app/player/StreamsRequester;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/player/StreamsRequester;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, originalCallback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/VideoStreams;>;"
    iput-object p1, p0, Lcom/google/android/youtube/app/player/StreamsRequester$VideoCallback;->this$0:Lcom/google/android/youtube/app/player/StreamsRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Callback;

    iput-object v0, p0, Lcom/google/android/youtube/app/player/StreamsRequester$VideoCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 41
    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 1
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/player/StreamsRequester$VideoCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 63
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/player/StreamsRequester$VideoCallback;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;)V
    .locals 9
    .parameter "request"
    .parameter "video"

    .prologue
    const/4 v8, 0x0

    .line 44
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    .line 45
    .restart local p2
    iget-object v7, p0, Lcom/google/android/youtube/app/player/StreamsRequester$VideoCallback;->this$0:Lcom/google/android/youtube/app/player/StreamsRequester;

    invoke-static {v7, p2}, Lcom/google/android/youtube/app/player/StreamsRequester;->access$000(Lcom/google/android/youtube/app/player/StreamsRequester;Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v0

    .line 46
    .local v0, hiQuality:Lcom/google/android/youtube/core/model/Stream$Quality;
    iget-object v7, p0, Lcom/google/android/youtube/app/player/StreamsRequester$VideoCallback;->this$0:Lcom/google/android/youtube/app/player/StreamsRequester;

    invoke-static {v7, p2}, Lcom/google/android/youtube/app/player/StreamsRequester;->access$100(Lcom/google/android/youtube/app/player/StreamsRequester;Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v3

    .line 47
    .local v3, loQuality:Lcom/google/android/youtube/core/model/Stream$Quality;
    iget-object v7, p0, Lcom/google/android/youtube/app/player/StreamsRequester$VideoCallback;->this$0:Lcom/google/android/youtube/app/player/StreamsRequester;

    invoke-static {v7, p2, v0}, Lcom/google/android/youtube/app/player/StreamsRequester;->access$200(Lcom/google/android/youtube/app/player/StreamsRequester;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)Landroid/net/Uri;

    move-result-object v2

    .line 48
    .local v2, hiUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/google/android/youtube/app/player/StreamsRequester$VideoCallback;->this$0:Lcom/google/android/youtube/app/player/StreamsRequester;

    invoke-static {v7, p2, v3}, Lcom/google/android/youtube/app/player/StreamsRequester;->access$200(Lcom/google/android/youtube/app/player/StreamsRequester;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)Landroid/net/Uri;

    move-result-object v5

    .line 49
    .local v5, loUri:Landroid/net/Uri;
    if-nez v2, :cond_0

    if-nez v5, :cond_0

    .line 51
    iget-object v7, p0, Lcom/google/android/youtube/app/player/StreamsRequester$VideoCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    new-instance v8, Lcom/google/android/youtube/core/player/MissingStreamException;

    invoke-direct {v8}, Lcom/google/android/youtube/core/player/MissingStreamException;-><init>()V

    invoke-interface {v7, p1, v8}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 59
    :goto_0
    return-void

    .line 53
    :cond_0
    if-eqz v2, :cond_1

    new-instance v7, Lcom/google/android/youtube/core/model/Stream;

    invoke-direct {v7, v2, v0}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    move-object v1, v7

    .line 54
    .local v1, hiStream:Lcom/google/android/youtube/core/model/Stream;
    :goto_1
    if-eqz v5, :cond_2

    new-instance v7, Lcom/google/android/youtube/core/model/Stream;

    invoke-direct {v7, v5, v3}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    move-object v4, v7

    .line 55
    .local v4, loStream:Lcom/google/android/youtube/core/model/Stream;
    :goto_2
    new-instance v6, Lcom/google/android/youtube/core/model/VideoStreams;

    invoke-direct {v6, v1, v4}, Lcom/google/android/youtube/core/model/VideoStreams;-><init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Stream;)V

    .line 56
    .local v6, response:Lcom/google/android/youtube/core/model/VideoStreams;
    iget-object v7, p0, Lcom/google/android/youtube/app/player/StreamsRequester$VideoCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v7, p1, v6}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .end local v1           #hiStream:Lcom/google/android/youtube/core/model/Stream;
    .end local v4           #loStream:Lcom/google/android/youtube/core/model/Stream;
    .end local v6           #response:Lcom/google/android/youtube/core/model/VideoStreams;
    :cond_1
    move-object v1, v8

    .line 53
    goto :goto_1

    .restart local v1       #hiStream:Lcom/google/android/youtube/core/model/Stream;
    :cond_2
    move-object v4, v8

    .line 54
    goto :goto_2
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/player/StreamsRequester$VideoCallback;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;)V

    return-void
.end method
