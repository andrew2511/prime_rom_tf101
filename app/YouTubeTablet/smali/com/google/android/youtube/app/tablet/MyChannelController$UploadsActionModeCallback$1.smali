.class Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback$1;
.super Ljava/lang/Object;
.source "MyChannelController.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->deleteSelectedVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback$1;->this$1:Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 1
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback$1;->this$1:Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/MyChannelController;->access$700(Lcom/google/android/youtube/app/tablet/MyChannelController;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 453
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 445
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback$1;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;)V
    .locals 3
    .parameter "request"
    .parameter "response"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback$1;->this$1:Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/MyChannelController;->access$500(Lcom/google/android/youtube/app/tablet/MyChannelController;)V

    .line 448
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback$1;->this$1:Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/MyChannelController;->access$600(Lcom/google/android/youtube/app/tablet/MyChannelController;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00d1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 450
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 445
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback$1;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;)V

    return-void
.end method
