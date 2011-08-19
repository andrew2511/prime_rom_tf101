.class Lcom/google/android/youtube/app/tablet/MyChannelController$5;
.super Ljava/lang/Object;
.source "MyChannelController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/tablet/MyChannelController;->setSubscriptionClickListener(Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

.field final synthetic val$adapter:Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/tablet/MyChannelController;Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$5;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    iput-object p2, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$5;->val$adapter:Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$5;->val$adapter:Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;

    invoke-virtual {v1, p3}, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription;

    .line 369
    .local v0, subscription:Lcom/google/android/youtube/core/model/Subscription;
    sget-object v1, Lcom/google/android/youtube/app/tablet/MyChannelController$6;->$SwitchMap$com$google$android$youtube$core$model$Subscription$Type:[I

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 386
    :goto_0
    return-void

    .line 371
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$5;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    iget-object v1, v1, Lcom/google/android/youtube/app/tablet/MyChannelController;->navigation:Lcom/google/android/youtube/app/Navigation;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const v3, 0x7f08001a

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Subscription;->editUri:Landroid/net/Uri;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/youtube/app/Navigation;->toChannel(Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_0

    .line 374
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$5;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    iget-object v1, v1, Lcom/google/android/youtube/app/tablet/MyChannelController;->navigation:Lcom/google/android/youtube/app/Navigation;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const v3, 0x7f08001b

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Subscription;->editUri:Landroid/net/Uri;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/youtube/app/Navigation;->toChannel(Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_0

    .line 377
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$5;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    iget-object v1, v1, Lcom/google/android/youtube/app/tablet/MyChannelController;->navigation:Lcom/google/android/youtube/app/Navigation;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/youtube/app/Navigation;->toPlaylist(Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_0

    .line 380
    :pswitch_3
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$5;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    iget-object v1, v1, Lcom/google/android/youtube/app/tablet/MyChannelController;->navigation:Lcom/google/android/youtube/app/Navigation;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/youtube/app/Navigation;->toSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$5;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    iget-object v1, v1, Lcom/google/android/youtube/app/tablet/MyChannelController;->navigation:Lcom/google/android/youtube/app/Navigation;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const v3, 0x7f08001c

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Subscription;->editUri:Landroid/net/Uri;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/youtube/app/Navigation;->toChannel(Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
