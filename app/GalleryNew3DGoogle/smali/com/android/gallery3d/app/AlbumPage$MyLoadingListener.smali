.class Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/app/AlbumPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished()V
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$1000(Lcom/android/gallery3d/app/AlbumPage;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Utils;->setSpinnerVisibility(Landroid/app/Activity;Z)V

    .line 562
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$1100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataAdapter;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f080039

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 565
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto :goto_0
.end method

.method public onLoadingStarted()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object p0, v0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/gallery3d/util/Utils;->setSpinnerVisibility(Landroid/app/Activity;Z)V

    .line 557
    return-void
.end method
