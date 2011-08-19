.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$PopupMenuListener;
.super Ljava/lang/Object;
.source "VolumeCarouselFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupMenuListener"
.end annotation


# instance fields
.field private final mActiveVolumeId:Ljava/lang/String;

.field private final mActiveVolumeIndex:I

.field final synthetic this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "volumeIndex"
    .parameter "volumeId"

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$PopupMenuListener;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1280
    iput p2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$PopupMenuListener;->mActiveVolumeIndex:I

    .line 1281
    iput-object p3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$PopupMenuListener;->mActiveVolumeId:Ljava/lang/String;

    .line 1282
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 1286
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid menu item selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move v0, v2

    .line 1305
    :goto_0
    return v0

    .line 1288
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$PopupMenuListener;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2100(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$PopupMenuListener;->mActiveVolumeId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startBuyVolume(Ljava/lang/String;)V

    move v0, v5

    .line 1289
    goto :goto_0

    .line 1291
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$PopupMenuListener;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2100(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$PopupMenuListener;->mActiveVolumeId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startAboutVolume(Ljava/lang/String;)V

    move v0, v5

    .line 1292
    goto :goto_0

    .line 1294
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$PopupMenuListener;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-virtual {v0, v5}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setShowOfflineUi(Z)V

    .line 1295
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$PopupMenuListener;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    iget v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$PopupMenuListener;->mActiveVolumeIndex:I

    invoke-static {v0, v1, v5}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2700(Lcom/google/android/apps/books/app/VolumeCarouselFragment;IZ)V

    move v0, v5

    .line 1296
    goto :goto_0

    .line 1298
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$PopupMenuListener;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2800(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/model/CollectionVolumesEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$PopupMenuListener;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1700(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/accounts/Account;

    move-result-object v1

    const-wide/16 v2, 0x7

    iget-object v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$PopupMenuListener;->mActiveVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/model/CollectionVolumesEditor;->backgroundRemove(Landroid/accounts/Account;JLjava/lang/String;)Landroid/os/AsyncTask;

    move v0, v5

    .line 1300
    goto :goto_0

    .line 1286
    :pswitch_data_0
    .packed-switch 0x7f0e004e
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
