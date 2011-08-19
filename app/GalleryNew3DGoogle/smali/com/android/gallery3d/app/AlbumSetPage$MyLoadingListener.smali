.class Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 485
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1200(Lcom/android/gallery3d/app/AlbumSetPage;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Utils;->setSpinnerVisibility(Landroid/app/Activity;Z)V

    .line 487
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1300(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f080039

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 490
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto :goto_0
.end method

.method public onLoadingStarted()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object p0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/gallery3d/util/Utils;->setSpinnerVisibility(Landroid/app/Activity;Z)V

    .line 482
    return-void
.end method
