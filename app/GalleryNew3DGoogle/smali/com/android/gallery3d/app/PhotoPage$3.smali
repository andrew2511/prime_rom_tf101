.class Lcom/android/gallery3d/app/PhotoPage$3;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable()V
    .locals 2

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 215
    .local v0, photo:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v1, v0}, Lcom/android/gallery3d/app/PhotoPage;->access$900(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V

    .line 216
    :cond_0
    return-void
.end method

.method public onDataEmpty()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$1200(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 236
    :cond_0
    return-void
.end method

.method public onPhotoChanged(ILcom/android/gallery3d/data/Path;)V
    .locals 4
    .parameter "index"
    .parameter "item"

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/FilmStripView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/FilmStripView;->setFocusIndex(I)V

    .line 220
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v1, p1}, Lcom/android/gallery3d/app/PhotoPage;->access$1002(Lcom/android/gallery3d/app/PhotoPage;I)I

    .line 221
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$1100(Lcom/android/gallery3d/app/PhotoPage;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "index-hint"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    if-eqz p2, :cond_1

    .line 223
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$1100(Lcom/android/gallery3d/app/PhotoPage;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "media-item-path"

    invoke-virtual {p2}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 225
    .local v0, photo:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v1, v0}, Lcom/android/gallery3d/app/PhotoPage;->access$900(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V

    .line 229
    .end local v0           #photo:Lcom/android/gallery3d/data/MediaItem;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v3}, Lcom/android/gallery3d/app/PhotoPage;->access$1100(Lcom/android/gallery3d/app/PhotoPage;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/app/PhotoPage;->setStateResult(ILandroid/content/Intent;)V

    .line 230
    return-void

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$1100(Lcom/android/gallery3d/app/PhotoPage;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "media-item-path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0
.end method
