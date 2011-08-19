.class Lcom/google/android/youtube/videos/tablet/RentalsController$PopupMenuListener;
.super Ljava/lang/Object;
.source "RentalsController.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/tablet/RentalsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupMenuListener"
.end annotation


# instance fields
.field private final purchase:Lcom/google/android/youtube/core/model/Purchase;

.field final synthetic this$0:Lcom/google/android/youtube/videos/tablet/RentalsController;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/tablet/RentalsController;Lcom/google/android/youtube/core/model/Purchase;)V
    .locals 0
    .parameter
    .parameter "purchase"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/youtube/videos/tablet/RentalsController$PopupMenuListener;->this$0:Lcom/google/android/youtube/videos/tablet/RentalsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/google/android/youtube/videos/tablet/RentalsController$PopupMenuListener;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    .line 149
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 168
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController$PopupMenuListener;->this$0:Lcom/google/android/youtube/videos/tablet/RentalsController;

    invoke-static {v0}, Lcom/google/android/youtube/videos/tablet/RentalsController;->access$000(Lcom/google/android/youtube/videos/tablet/RentalsController;)Lcom/google/android/youtube/videos/Navigation;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/RentalsController$PopupMenuListener;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/videos/Navigation;->toWatch(Ljava/lang/String;)V

    move v0, v3

    .line 155
    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController$PopupMenuListener;->this$0:Lcom/google/android/youtube/videos/tablet/RentalsController;

    invoke-static {v0}, Lcom/google/android/youtube/videos/tablet/RentalsController;->access$100(Lcom/google/android/youtube/videos/tablet/RentalsController;)Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->setOfflineManagement(Z)V

    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController$PopupMenuListener;->this$0:Lcom/google/android/youtube/videos/tablet/RentalsController;

    invoke-static {v0}, Lcom/google/android/youtube/videos/tablet/RentalsController;->access$100(Lcom/google/android/youtube/videos/tablet/RentalsController;)Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/RentalsController$PopupMenuListener;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinVideo(Ljava/lang/String;)V

    move v0, v3

    .line 159
    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController$PopupMenuListener;->this$0:Lcom/google/android/youtube/videos/tablet/RentalsController;

    invoke-static {v0}, Lcom/google/android/youtube/videos/tablet/RentalsController;->access$000(Lcom/google/android/youtube/videos/tablet/RentalsController;)Lcom/google/android/youtube/videos/Navigation;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/RentalsController$PopupMenuListener;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/videos/Navigation;->toFullscreenWatch(Ljava/lang/String;)V

    move v0, v3

    .line 162
    goto :goto_0

    .line 164
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController$PopupMenuListener;->this$0:Lcom/google/android/youtube/videos/tablet/RentalsController;

    invoke-static {v0}, Lcom/google/android/youtube/videos/tablet/RentalsController;->access$200(Lcom/google/android/youtube/videos/tablet/RentalsController;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/RentalsController$PopupMenuListener;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/videos/tablet/RentalsController$PopupMenuListener;->this$0:Lcom/google/android/youtube/videos/tablet/RentalsController;

    invoke-static {v2}, Lcom/google/android/youtube/videos/tablet/RentalsController;->access$300(Lcom/google/android/youtube/videos/tablet/RentalsController;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/ExternalIntents;->startShopForVideoDetails(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)V

    move v0, v3

    .line 166
    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x7f080056
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
