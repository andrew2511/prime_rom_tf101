.class Lcom/google/android/youtube/app/tablet/ChannelController$SubscribeCallback;
.super Ljava/lang/Object;
.source "ChannelController.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/tablet/ChannelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscribeCallback"
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
.field private final text:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/youtube/app/tablet/ChannelController;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/tablet/ChannelController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "text"

    .prologue
    .line 400
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/ChannelController$SubscribeCallback;->this$0:Lcom/google/android/youtube/app/tablet/ChannelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p2, p0, Lcom/google/android/youtube/app/tablet/ChannelController$SubscribeCallback;->text:Ljava/lang/String;

    .line 402
    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 4
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 410
    instance-of v2, p2, Lorg/apache/http/client/HttpResponseException;

    if-eqz v2, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x190

    if-ne v2, v3, :cond_0

    .line 412
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/ChannelController$SubscribeCallback;->this$0:Lcom/google/android/youtube/app/tablet/ChannelController;

    const v3, 0x7f0d0074

    invoke-static {v2, v3}, Lcom/google/android/youtube/app/tablet/ChannelController;->access$700(Lcom/google/android/youtube/app/tablet/ChannelController;I)Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/ChannelController$SubscribeCallback;->this$0:Lcom/google/android/youtube/app/tablet/ChannelController;

    invoke-static {v2}, Lcom/google/android/youtube/app/tablet/ChannelController;->access$800(Lcom/google/android/youtube/app/tablet/ChannelController;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 418
    .end local v1           #text:Ljava/lang/String;
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/ChannelController$SubscribeCallback;->this$0:Lcom/google/android/youtube/app/tablet/ChannelController;

    invoke-static {v2}, Lcom/google/android/youtube/app/tablet/ChannelController;->access$900(Lcom/google/android/youtube/app/tablet/ChannelController;)Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/app/Activity;->dismissDialog(I)V

    .line 416
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/ChannelController$SubscribeCallback;->this$0:Lcom/google/android/youtube/app/tablet/ChannelController;

    invoke-static {v2}, Lcom/google/android/youtube/app/tablet/ChannelController;->access$1000(Lcom/google/android/youtube/app/tablet/ChannelController;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 393
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/tablet/ChannelController$SubscribeCallback;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;)V
    .locals 3
    .parameter "request"
    .parameter "response"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController$SubscribeCallback;->this$0:Lcom/google/android/youtube/app/tablet/ChannelController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/ChannelController;->access$500(Lcom/google/android/youtube/app/tablet/ChannelController;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/ChannelController$SubscribeCallback;->text:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 406
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController$SubscribeCallback;->this$0:Lcom/google/android/youtube/app/tablet/ChannelController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/ChannelController;->access$600(Lcom/google/android/youtube/app/tablet/ChannelController;)V

    .line 407
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 393
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/tablet/ChannelController$SubscribeCallback;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;)V

    return-void
.end method
