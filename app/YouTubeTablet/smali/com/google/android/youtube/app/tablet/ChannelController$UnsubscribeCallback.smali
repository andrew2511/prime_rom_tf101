.class Lcom/google/android/youtube/app/tablet/ChannelController$UnsubscribeCallback;
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
    name = "UnsubscribeCallback"
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
.field final synthetic this$0:Lcom/google/android/youtube/app/tablet/ChannelController;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/tablet/ChannelController;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/ChannelController$UnsubscribeCallback;->this$0:Lcom/google/android/youtube/app/tablet/ChannelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/tablet/ChannelController;Lcom/google/android/youtube/app/tablet/ChannelController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/tablet/ChannelController$UnsubscribeCallback;-><init>(Lcom/google/android/youtube/app/tablet/ChannelController;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 1
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController$UnsubscribeCallback;->this$0:Lcom/google/android/youtube/app/tablet/ChannelController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/ChannelController;->access$1200(Lcom/google/android/youtube/app/tablet/ChannelController;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 431
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 421
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/tablet/ChannelController$UnsubscribeCallback;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;)V
    .locals 3
    .parameter "request"
    .parameter "response"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController$UnsubscribeCallback;->this$0:Lcom/google/android/youtube/app/tablet/ChannelController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/ChannelController;->access$1100(Lcom/google/android/youtube/app/tablet/ChannelController;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0075

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 425
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController$UnsubscribeCallback;->this$0:Lcom/google/android/youtube/app/tablet/ChannelController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/tablet/ChannelController;->access$202(Lcom/google/android/youtube/app/tablet/ChannelController;Landroid/net/Uri;)Landroid/net/Uri;

    .line 426
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController$UnsubscribeCallback;->this$0:Lcom/google/android/youtube/app/tablet/ChannelController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/ChannelController;->access$600(Lcom/google/android/youtube/app/tablet/ChannelController;)V

    .line 427
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 421
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/tablet/ChannelController$UnsubscribeCallback;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;)V

    return-void
.end method
