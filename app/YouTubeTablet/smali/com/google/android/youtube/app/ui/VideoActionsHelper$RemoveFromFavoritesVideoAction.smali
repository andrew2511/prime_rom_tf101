.class Lcom/google/android/youtube/app/ui/VideoActionsHelper$RemoveFromFavoritesVideoAction;
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
    name = "RemoveFromFavoritesVideoAction"
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
.field final synthetic this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)V
    .locals 1
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RemoveFromFavoritesVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    .line 290
    iget-object v0, p1, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;-><init>(Landroid/content/Context;)V

    .line 291
    return-void
.end method


# virtual methods
.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 4
    .parameter "userAuth"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RemoveFromFavoritesVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$1100(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RemoveFromFavoritesVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$1000(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getRemoveFromFavoritesRequest(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RemoveFromFavoritesVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v3, v3, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3, p0}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 297
    return-void
.end method

.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 2
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 305
    const-string v0, "Error adding or removing favorite"

    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RemoveFromFavoritesVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 307
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 286
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RemoveFromFavoritesVideoAction;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;)V
    .locals 2
    .parameter "request"
    .parameter "response"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RemoveFromFavoritesVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$900(Lcom/google/android/youtube/app/ui/VideoActionsHelper;Landroid/net/Uri;)V

    .line 301
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RemoveFromFavoritesVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    const v1, 0x7f0d00c6

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$600(Lcom/google/android/youtube/app/ui/VideoActionsHelper;I)V

    .line 302
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 286
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RemoveFromFavoritesVideoAction;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;)V

    return-void
.end method
