.class Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToFavoritesVideoAction;
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
    name = "AddToFavoritesVideoAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/Video;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)V
    .locals 1
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToFavoritesVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    .line 259
    iget-object v0, p1, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;-><init>(Landroid/content/Context;)V

    .line 260
    return-void
.end method


# virtual methods
.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 4
    .parameter "userAuth"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToFavoritesVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$800(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToFavoritesVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$400(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getAddToFavoritesRequest(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToFavoritesVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v3, v3, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3, p0}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 265
    return-void
.end method

.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 3
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 273
    instance-of v1, p2, Lorg/apache/http/client/HttpResponseException;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_0

    .line 277
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToFavoritesVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    const v2, 0x7f0d00c5

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$600(Lcom/google/android/youtube/app/ui/VideoActionsHelper;I)V

    .line 282
    :goto_0
    return-void

    .line 279
    :cond_0
    const-string v1, "Error adding to favorites"

    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToFavoritesVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    invoke-static {v1, p2}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 255
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToFavoritesVideoAction;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;)V
    .locals 2
    .parameter "request"
    .parameter "video"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToFavoritesVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$900(Lcom/google/android/youtube/app/ui/VideoActionsHelper;Landroid/net/Uri;)V

    .line 269
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToFavoritesVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    const v1, 0x7f0d00c4

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$600(Lcom/google/android/youtube/app/ui/VideoActionsHelper;I)V

    .line 270
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 255
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToFavoritesVideoAction;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;)V

    return-void
.end method
