.class Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;
.super Ljava/lang/Object;
.source "MyLibrary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->onDownloadProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

.field private final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    iput p2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->val$progress:I

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 662
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->access$0(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0028

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 663
    .local v0, pbar:Landroid/widget/ProgressBar;
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->access$0(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->access$1(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->hasSmartLayout()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 664
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->access$1(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->hasThumbnail()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->access$2(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 665
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->access$1(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->hasThumbnail()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->access$3(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;Z)V

    .line 666
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->access$0(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->access$1(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->setThumbnail(Landroid/view/View;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    .line 667
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->access$0(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 669
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->access$1(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->access$1(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->hasEverythingButLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 670
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 671
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->access$1(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->removeOnDownloadProgressListener()V

    .line 672
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->access$0(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 682
    :goto_0
    return-void

    .line 675
    :cond_2
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->access$1(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isSemiReady()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->access$4(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 676
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->access$1(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isSemiReady()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->access$5(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;Z)V

    .line 677
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->access$0(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0027

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->access$0(Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 680
    :cond_3
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState$1;->val$progress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 681
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    goto :goto_0
.end method
