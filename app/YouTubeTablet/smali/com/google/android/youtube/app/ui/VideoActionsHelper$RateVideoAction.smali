.class Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;
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
    name = "RateVideoAction"
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
.field private final like:Z

.field final synthetic this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/VideoActionsHelper;Z)V
    .locals 1
    .parameter
    .parameter "like"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    .line 230
    iget-object v0, p1, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;-><init>(Landroid/content/Context;)V

    .line 231
    iput-boolean p2, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->like:Z

    .line 232
    return-void
.end method


# virtual methods
.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 4
    .parameter "userAuth"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$100(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->like:Z

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$200(Lcom/google/android/youtube/app/ui/VideoActionsHelper;Landroid/view/View;Z)V

    .line 236
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$300(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->like:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$200(Lcom/google/android/youtube/app/ui/VideoActionsHelper;Landroid/view/View;Z)V

    .line 237
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$500(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$400(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->like:Z

    invoke-static {v1, p1, v2}, Lcom/google/android/youtube/core/async/GDataRequests;->getRateRequest(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Z)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v3, v3, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3, p0}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 239
    return-void

    .line 236
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 3
    .parameter "request"
    .parameter "exception"

    .prologue
    const/4 v2, 0x0

    .line 247
    const-string v0, "Error rating"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 249
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$100(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$200(Lcom/google/android/youtube/app/ui/VideoActionsHelper;Landroid/view/View;Z)V

    .line 250
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$300(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$200(Lcom/google/android/youtube/app/ui/VideoActionsHelper;Landroid/view/View;Z)V

    .line 251
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 224
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;)V
    .locals 2
    .parameter "request"
    .parameter "response"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-boolean v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->like:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0d00b9

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$600(Lcom/google/android/youtube/app/ui/VideoActionsHelper;I)V

    .line 243
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$700(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->like:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->updateLikeDislikeCounts(Z)V

    .line 244
    return-void

    .line 242
    :cond_0
    const v1, 0x7f0d00ba

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 224
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;)V

    return-void
.end method
