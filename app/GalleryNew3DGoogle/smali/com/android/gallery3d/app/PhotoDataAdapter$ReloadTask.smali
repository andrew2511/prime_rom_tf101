.class Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private mDataOffset:I

.field private mLoadBits:I

.field private mLocalIndex:I

.field private mLocalPath:Lcom/android/gallery3d/data/Path;

.field private mLocalSize:I

.field private mUpdateItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;I)V
    .locals 1
    .parameter
    .parameter "loadBits"

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    invoke-static {p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$600(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDataOffset:I

    .line 638
    invoke-static {p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$700(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLocalSize:I

    .line 639
    invoke-static {p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLocalIndex:I

    .line 640
    invoke-static {p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLocalPath:Lcom/android/gallery3d/data/Path;

    .line 641
    iput p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLoadBits:I

    .line 642
    return-void
.end method

.method private findCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;
    .locals 4

    .prologue
    .line 645
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mUpdateItems:Ljava/util/ArrayList;

    .line 646
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLocalIndex:I

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDataOffset:I

    sub-int v0, v2, v3

    .line 647
    .local v0, idx:I
    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .end local p0
    :goto_0
    return-object v2

    .restart local p0
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mUpdateItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery3d/data/MediaItem;

    move-object v2, p0

    goto :goto_0
.end method

.method private findIndexOf(Lcom/android/gallery3d/data/Path;I)I
    .locals 5
    .parameter "path"
    .parameter "hint"

    .prologue
    .line 653
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mUpdateItems:Ljava/util/ArrayList;

    .line 656
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    if-eqz v1, :cond_1

    .line 657
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 658
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    if-ne v3, p1, :cond_0

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDataOffset:I

    add-int/2addr v3, v0

    .line 663
    .end local v0           #i:I
    .end local v2           #n:I
    :goto_1
    return v3

    .line 657
    .restart local v0       #i:I
    .restart local v2       #n:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    .end local v0           #i:I
    .end local v2           #n:I
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1000(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLocalIndex:I

    invoke-virtual {v3, p1, v4}, Lcom/android/gallery3d/data/MediaSet;->getIndexOfItem(Lcom/android/gallery3d/data/Path;I)I

    move-result v3

    goto :goto_1
.end method

.method private updateCurrentItem([Lcom/android/gallery3d/data/MediaItem;)V
    .locals 3
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 744
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$700(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v0

    if-nez v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1500(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1500(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;->onDataEmpty()V

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$700(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 747
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$700(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$802(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I

    .line 748
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1900(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    .line 749
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2000(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->notifyOnNewImage()V

    .line 750
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2000(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->startSlideInAnimation(I)V

    goto :goto_0

    .line 752
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2000(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->notifyOnNewImage()V

    .line 753
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2000(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/PhotoView;->startSlideInAnimation(I)V

    goto :goto_0
.end method


# virtual methods
.method public loadFromDatabase()V
    .locals 8

    .prologue
    .line 667
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLoadBits:I

    .line 669
    .local v2, loadBits:I
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLocalIndex:I

    .line 670
    .local v0, currentIndex:I
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_0

    .line 671
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1000(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v3

    .line 672
    .local v3, v:J
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1100(Lcom/android/gallery3d/app/PhotoDataAdapter;)J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-eqz v5, :cond_5

    .line 673
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v5, v3, v4}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1102(Lcom/android/gallery3d/app/PhotoDataAdapter;J)J

    .line 674
    or-int/lit8 v2, v2, 0x6

    .line 675
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1000(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLocalSize:I

    .line 681
    .end local v3           #v:J
    :cond_0
    :goto_0
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_1

    .line 682
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1000(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v5

    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDataOffset:I

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mUpdateItems:Ljava/util/ArrayList;

    .line 683
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mUpdateItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    and-int/lit8 v2, v2, -0x3

    .line 686
    :cond_1
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_3

    .line 687
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->findCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 688
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLocalPath:Lcom/android/gallery3d/data/Path;

    if-eq v5, v6, :cond_3

    .line 689
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLocalPath:Lcom/android/gallery3d/data/Path;

    invoke-direct {p0, v5, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->findIndexOf(Lcom/android/gallery3d/data/Path;I)I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLocalIndex:I

    .line 690
    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLocalIndex:I

    if-ne v5, v0, :cond_3

    and-int/lit8 v2, v2, -0x5

    .line 694
    .end local v1           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_3
    if-eqz v2, :cond_4

    .line 695
    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLoadBits:I

    .line 696
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$400(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$400(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 699
    :cond_4
    return-void

    .line 677
    .restart local v3       #v:J
    :cond_5
    and-int/lit8 v2, v2, -0x2

    goto :goto_0
.end method

.method public updateContent()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 702
    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLoadBits:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 703
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$700(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v6

    iget v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLocalSize:I

    if-eq v6, v7, :cond_0

    .line 704
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLocalSize:I

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$702(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I

    .line 705
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1200(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    .line 709
    :cond_0
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1300(Lcom/android/gallery3d/app/PhotoDataAdapter;)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 710
    .local v1, data:[Lcom/android/gallery3d/data/MediaItem;
    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLoadBits:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    .line 711
    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDataOffset:I

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$600(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 712
    .local v5, start:I
    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDataOffset:I

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mUpdateItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1400(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 713
    .local v3, end:I
    rem-int/lit8 v2, v5, 0x20

    .line 714
    .local v2, dataIndex:I
    move v4, v5

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 715
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mUpdateItems:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDataOffset:I

    sub-int v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/MediaItem;

    aput-object v6, v1, v2

    .line 716
    add-int/lit8 v2, v2, 0x1

    const/16 v6, 0x20

    if-ne v2, v6, :cond_1

    const/4 v2, 0x0

    .line 714
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 720
    .end local v2           #dataIndex:I
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #start:I
    :cond_2
    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLoadBits:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLocalPath:Lcom/android/gallery3d/data/Path;

    if-ne v6, v7, :cond_3

    .line 721
    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLocalIndex:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    .line 724
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6, v8}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$902(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    .line 725
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->updateCurrentItem([Lcom/android/gallery3d/data/MediaItem;)V

    .line 729
    :goto_1
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1200(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    .line 732
    :cond_3
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    if-nez v6, :cond_4

    .line 733
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v6

    rem-int/lit8 v6, v6, 0x20

    aget-object v0, v1, v6

    .line 734
    .local v0, current:Lcom/android/gallery3d/data/MediaItem;
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    if-nez v0, :cond_7

    move-object v7, v8

    :goto_2
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$902(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    .line 737
    .end local v0           #current:Lcom/android/gallery3d/data/MediaItem;
    :cond_4
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1500(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1500(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;->onDataAvailable()V

    .line 738
    :cond_5
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1600(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    .line 739
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1700(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    .line 740
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1800(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    .line 741
    return-void

    .line 727
    :cond_6
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mLocalIndex:I

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$802(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I

    goto :goto_1

    .line 734
    .restart local v0       #current:Lcom/android/gallery3d/data/MediaItem;
    :cond_7
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v7

    goto :goto_2
.end method
