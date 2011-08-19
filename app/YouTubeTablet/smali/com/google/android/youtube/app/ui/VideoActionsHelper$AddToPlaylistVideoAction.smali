.class Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToPlaylistVideoAction;
.super Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;
.source "VideoActionsHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/ui/VideoActionsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddToPlaylistVideoAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final playlist:Lcom/google/android/youtube/core/model/Playlist;

.field final synthetic this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/VideoActionsHelper;Lcom/google/android/youtube/core/model/Playlist;)V
    .locals 1
    .parameter
    .parameter "playlist"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToPlaylistVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    .line 369
    iget-object v0, p1, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;-><init>(Landroid/content/Context;)V

    .line 370
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToPlaylistVideoAction;->playlist:Lcom/google/android/youtube/core/model/Playlist;

    .line 371
    return-void
.end method


# virtual methods
.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 4
    .parameter "userAuth"

    .prologue
    .line 374
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToPlaylistVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$400(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToPlaylistVideoAction;->playlist:Lcom/google/android/youtube/core/model/Playlist;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    invoke-static {v1, v2, p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getAddToPlaylistRequest(Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    .line 376
    .local v0, request:Lcom/google/android/youtube/core/async/GDataRequest;
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToPlaylistVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$1300(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToPlaylistVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v3, v3, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3, p0}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 378
    return-void
.end method

.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 1
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 385
    const-string v0, "Error adding video to playlist"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToPlaylistVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 387
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 363
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToPlaylistVideoAction;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;)V
    .locals 6
    .parameter "request"
    .parameter "response"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToPlaylistVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToPlaylistVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    const v2, 0x7f0d00cb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToPlaylistVideoAction;->playlist:Lcom/google/android/youtube/core/model/Playlist;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$1400(Lcom/google/android/youtube/app/ui/VideoActionsHelper;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 363
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToPlaylistVideoAction;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;)V

    return-void
.end method
