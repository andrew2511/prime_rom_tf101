.class Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback$2;
.super Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;
.source "MyChannelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->deleteSelectedVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;

.field final synthetic val$deleteUploadCallback:Lcom/google/android/youtube/core/async/Callback;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;Landroid/content/Context;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback$2;->this$1:Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;

    iput-object p3, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback$2;->val$deleteUploadCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 3
    .parameter "userAuth"

    .prologue
    .line 459
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback$2;->this$1:Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;

    invoke-static {v1}, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->access$1000(Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    invoke-static {v1, p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getDeleteUploadRequest(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    .line 461
    .local v0, request:Lcom/google/android/youtube/core/async/GDataRequest;
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback$2;->this$1:Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;

    iget-object v1, v1, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    invoke-static {v1}, Lcom/google/android/youtube/app/tablet/MyChannelController;->access$1100(Lcom/google/android/youtube/app/tablet/MyChannelController;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback$2;->val$deleteUploadCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 462
    return-void
.end method
