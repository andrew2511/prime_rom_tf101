.class Lcom/google/android/youtube/app/tablet/ChannelController$SubscriptionsAuthenticatee;
.super Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;
.source "ChannelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/tablet/ChannelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscriptionsAuthenticatee"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/tablet/ChannelController;

.field private final unsubscriberCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/tablet/ChannelController;Landroid/app/Activity;)V
    .locals 3
    .parameter
    .parameter "activity"

    .prologue
    .line 374
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/ChannelController$SubscriptionsAuthenticatee;->this$0:Lcom/google/android/youtube/app/tablet/ChannelController;

    .line 375
    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;-><init>(Landroid/content/Context;)V

    .line 376
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    new-instance v1, Lcom/google/android/youtube/app/tablet/ChannelController$UnsubscribeCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/youtube/app/tablet/ChannelController$UnsubscribeCallback;-><init>(Lcom/google/android/youtube/app/tablet/ChannelController;Lcom/google/android/youtube/app/tablet/ChannelController$1;)V

    invoke-direct {v0, p2, v1}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController$SubscriptionsAuthenticatee;->unsubscriberCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 378
    return-void
.end method


# virtual methods
.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 3
    .parameter "userAuth"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController$SubscriptionsAuthenticatee;->this$0:Lcom/google/android/youtube/app/tablet/ChannelController;

    invoke-static {v0, p1}, Lcom/google/android/youtube/app/tablet/ChannelController;->access$102(Lcom/google/android/youtube/app/tablet/ChannelController;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/model/UserAuth;

    .line 382
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController$SubscriptionsAuthenticatee;->this$0:Lcom/google/android/youtube/app/tablet/ChannelController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/ChannelController;->access$200(Lcom/google/android/youtube/app/tablet/ChannelController;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController$SubscriptionsAuthenticatee;->this$0:Lcom/google/android/youtube/app/tablet/ChannelController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/ChannelController;->access$300(Lcom/google/android/youtube/app/tablet/ChannelController;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/ChannelController$SubscriptionsAuthenticatee;->this$0:Lcom/google/android/youtube/app/tablet/ChannelController;

    invoke-static {v1}, Lcom/google/android/youtube/app/tablet/ChannelController;->access$200(Lcom/google/android/youtube/app/tablet/ChannelController;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getUnsubscribeRequest(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/ChannelController$SubscriptionsAuthenticatee;->unsubscriberCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController$SubscriptionsAuthenticatee;->this$0:Lcom/google/android/youtube/app/tablet/ChannelController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/ChannelController;->access$400(Lcom/google/android/youtube/app/tablet/ChannelController;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method
