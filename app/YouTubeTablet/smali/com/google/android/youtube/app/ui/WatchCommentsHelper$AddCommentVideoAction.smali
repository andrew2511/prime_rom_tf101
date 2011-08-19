.class Lcom/google/android/youtube/app/ui/WatchCommentsHelper$AddCommentVideoAction;
.super Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;
.source "WatchCommentsHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/ui/WatchCommentsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddCommentVideoAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/Comment;",
        ">;"
    }
.end annotation


# instance fields
.field private final comment:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/youtube/app/ui/WatchCommentsHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/WatchCommentsHelper;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "comment"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper$AddCommentVideoAction;->this$0:Lcom/google/android/youtube/app/ui/WatchCommentsHelper;

    .line 177
    invoke-static {p1}, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->access$100(Lcom/google/android/youtube/app/ui/WatchCommentsHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;-><init>(Landroid/content/Context;)V

    .line 178
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper$AddCommentVideoAction;->comment:Ljava/lang/String;

    .line 179
    invoke-static {p1}, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->access$200(Lcom/google/android/youtube/app/ui/WatchCommentsHelper;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "Comment"

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 180
    return-void
.end method


# virtual methods
.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 4
    .parameter "userAuth"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper$AddCommentVideoAction;->this$0:Lcom/google/android/youtube/app/ui/WatchCommentsHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->access$400(Lcom/google/android/youtube/app/ui/WatchCommentsHelper;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper$AddCommentVideoAction;->this$0:Lcom/google/android/youtube/app/ui/WatchCommentsHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->access$300(Lcom/google/android/youtube/app/ui/WatchCommentsHelper;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->commentsUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper$AddCommentVideoAction;->comment:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lcom/google/android/youtube/core/async/GDataRequests;->getAddCommentRequest(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper$AddCommentVideoAction;->this$0:Lcom/google/android/youtube/app/ui/WatchCommentsHelper;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->access$100(Lcom/google/android/youtube/app/ui/WatchCommentsHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 186
    return-void
.end method

.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 2
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 189
    if-eqz p2, :cond_0

    const/16 v0, 0x193

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/ErrorHelper;->isHttpException(Ljava/lang/Throwable;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper$AddCommentVideoAction;->this$0:Lcom/google/android/youtube/app/ui/WatchCommentsHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->access$100(Lcom/google/android/youtube/app/ui/WatchCommentsHelper;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d001e

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;I)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper$AddCommentVideoAction;->this$0:Lcom/google/android/youtube/app/ui/WatchCommentsHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->access$100(Lcom/google/android/youtube/app/ui/WatchCommentsHelper;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d001d

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/WatchCommentsHelper$AddCommentVideoAction;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Comment;)V
    .locals 3
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper$AddCommentVideoAction;->this$0:Lcom/google/android/youtube/app/ui/WatchCommentsHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->access$100(Lcom/google/android/youtube/app/ui/WatchCommentsHelper;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00ca

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 200
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper$AddCommentVideoAction;->this$0:Lcom/google/android/youtube/app/ui/WatchCommentsHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->access$500(Lcom/google/android/youtube/app/ui/WatchCommentsHelper;)Lcom/google/android/youtube/app/adapter/CommentListAdapter;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Lcom/google/android/youtube/app/adapter/CommentListAdapter;->insert(ILjava/lang/Object;)V

    .line 201
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Comment;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/WatchCommentsHelper$AddCommentVideoAction;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Comment;)V

    return-void
.end method
