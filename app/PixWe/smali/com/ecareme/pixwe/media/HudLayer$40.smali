.class Lcom/ecareme/pixwe/media/HudLayer$40;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/HudLayer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/HudLayer;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/HudLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/media/HudLayer$40;)Lcom/ecareme/pixwe/media/HudLayer;
    .locals 1
    .parameter

    .prologue
    .line 662
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/high16 v3, 0x3f80

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 664
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/HudLayer;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    .line 665
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v10

    .line 666
    .local v10, mediaBucket:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 667
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecareme/pixwe/media/MediaBucket;

    iget-object v2, v2, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    sput-object v2, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 668
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.ecareme.contentprovider.pixwe"

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 669
    .local v0, mProviderClient:Landroid/content/ContentProviderClient;
    sget-object v2, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->ALBUM_MEDIAS_URI:Landroid/net/Uri;

    sget-object v3, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v3, v3, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$12(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 671
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 672
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 673
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/ecareme/pixwe/media/HudLayer$40$1;

    invoke-direct {v3, p0}, Lcom/ecareme/pixwe/media/HudLayer$40$1;-><init>(Lcom/ecareme/pixwe/media/HudLayer$40;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 688
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 689
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 690
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->deselectOrCancelSelectMode()V

    .line 691
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/HudLayer;->cancelSelection()V

    .line 692
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ecareme/pixwe/media/GridLayer;->setState(I)V

    .line 693
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    .line 753
    .end local v0           #mProviderClient:Landroid/content/ContentProviderClient;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v10           #mediaBucket:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    :goto_0
    return-void

    .line 696
    .restart local v0       #mProviderClient:Landroid/content/ContentProviderClient;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v10       #mediaBucket:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    .end local v6           #c:Landroid/database/Cursor;
    :goto_1
    sget-object v2, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->ALBUM_MEDIAS_URI:Landroid/net/Uri;

    sget-object v3, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v3, v3, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 703
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 704
    .local v7, contentValues:Landroid/content/ContentValues;
    const-string v2, "file_id"

    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$12(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 705
    const-string v2, "album_folder"

    sget-object v3, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v3, v3, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 706
    const-string v2, "file_name"

    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$12(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v3

    iget-object v3, v3, Lcom/ecareme/pixwe/media/MediaItem;->mCaption:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v2, "file_type"

    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$12(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v3

    iget-object v3, v3, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v2, "rotate"

    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$12(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v3

    iget v3, v3, Lcom/ecareme/pixwe/media/MediaItem;->mRotation:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 709
    const-string v2, "file_modify_time"

    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$12(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/ecareme/pixwe/media/MediaItem;->mDateModifiedInSec:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 710
    const-string v2, "transcode_status"

    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$12(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v3

    iget v3, v3, Lcom/ecareme/pixwe/media/MediaItem;->mVideoTranscodeState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 711
    const-string v2, "upload_status"

    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$12(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v3

    iget v3, v3, Lcom/ecareme/pixwe/media/MediaItem;->mUploadState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 712
    const-string v2, "username"

    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$12(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v3

    iget-object v3, v3, Lcom/ecareme/pixwe/media/MediaItem;->mUsername:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v2, "note"

    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$12(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v3

    iget-object v3, v3, Lcom/ecareme/pixwe/media/MediaItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :try_start_1
    invoke-virtual {v0, v1, v7}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 716
    sget-object v2, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$12(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ecareme/pixwe/media/MediaSet;->addItem(Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 717
    sget-object v2, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/MediaSet;->updateNumExpectedItems()V

    .line 718
    sget-object v2, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V

    .line 719
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$12(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    invoke-static {v2, v3, v4}, Lcom/ecareme/pixwe/PixWe;->updateDBFlg(Landroid/content/Context;J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 725
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v2, v11}, Lcom/ecareme/pixwe/media/HudLayer;->access$9(Lcom/ecareme/pixwe/media/HudLayer;Z)V

    .line 726
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->deselectOrCancelSelectMode()V

    .line 727
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/HudLayer;->cancelSelection()V

    .line 728
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/ecareme/pixwe/media/GridLayer;->setState(I)V

    .line 749
    .end local v0           #mProviderClient:Landroid/content/ContentProviderClient;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v7           #contentValues:Landroid/content/ContentValues;
    :goto_3
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v2, v12}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    goto/16 :goto_0

    .line 697
    .restart local v0       #mProviderClient:Landroid/content/ContentProviderClient;
    .restart local v1       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    move-object v9, v2

    .line 699
    .local v9, e1:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 721
    .end local v9           #e1:Landroid/os/RemoteException;
    .restart local v7       #contentValues:Landroid/content/ContentValues;
    :catch_1
    move-exception v2

    move-object v8, v2

    .line 723
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 731
    .end local v0           #mProviderClient:Landroid/content/ContentProviderClient;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v7           #contentValues:Landroid/content/ContentValues;
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_2
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/ecareme/pixwe/media/HudLayer$40$2;

    invoke-direct {v3, p0}, Lcom/ecareme/pixwe/media/HudLayer$40$2;-><init>(Lcom/ecareme/pixwe/media/HudLayer$40;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 747
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_3

    .line 752
    .end local v10           #mediaBucket:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    :cond_3
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$40;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v2, v3}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    goto/16 :goto_0
.end method
