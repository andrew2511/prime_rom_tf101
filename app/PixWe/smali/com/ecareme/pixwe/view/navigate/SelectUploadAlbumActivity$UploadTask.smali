.class Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;
.super Landroid/os/AsyncTask;
.source "SelectUploadAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field cursor:Landroid/database/Cursor;

.field mProviderClient:Landroid/content/ContentProviderClient;

.field mimeType:Ljava/lang/String;

.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

.field where:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 544
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 547
    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    .line 548
    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->where:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;-><init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 14
    .parameter "param"

    .prologue
    .line 559
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v10, fileUrlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .local v12, mediaInfoBeanList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bucket_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v1, v1, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->where:Ljava/lang/String;

    .line 562
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.ecareme.contentprovider.pixwe"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->mProviderClient:Landroid/content/ContentProviderClient;

    sget-object v1, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "album_folder="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v4}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$5(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    .line 566
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    .line 568
    const/4 v0, -0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 690
    :goto_0
    return-object v0

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    :goto_1
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->where:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    .line 578
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$6(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Landroid/database/Cursor;)Lnet/yostore/aws/handler/entity/MediaInfoBean;

    move-result-object v11

    .line 583
    .local v11, mediaInfoBean:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 584
    .local v9, fileUrl:Ljava/lang/String;
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    const-string v2, "mime_type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->mimeType:Ljava/lang/String;

    .line 585
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 586
    .local v8, file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x1400000

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 588
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 572
    .end local v8           #file:Ljava/io/File;
    .end local v9           #fileUrl:Ljava/lang/String;
    .end local v11           #mediaInfoBean:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 575
    .local v7, e1:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 590
    .end local v7           #e1:Landroid/os/RemoteException;
    .restart local v8       #file:Ljava/io/File;
    .restart local v9       #fileUrl:Ljava/lang/String;
    .restart local v11       #mediaInfoBean:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    :cond_2
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$7(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 592
    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 615
    :cond_3
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 580
    if-nez v0, :cond_1

    .line 620
    .end local v8           #file:Ljava/io/File;
    .end local v9           #fileUrl:Ljava/lang/String;
    .end local v11           #mediaInfoBean:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    :cond_4
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 623
    :try_start_1
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->mProviderClient:Landroid/content/ContentProviderClient;

    sget-object v1, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "album_folder="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v4}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$5(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    .line 624
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_5

    .line 626
    const/4 v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 628
    :cond_5
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 636
    :goto_2
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->where:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    .line 637
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 641
    :cond_6
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$6(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Landroid/database/Cursor;)Lnet/yostore/aws/handler/entity/MediaInfoBean;

    move-result-object v11

    .line 642
    .restart local v11       #mediaInfoBean:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 643
    .restart local v9       #fileUrl:Ljava/lang/String;
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    const-string v2, "mime_type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->mimeType:Ljava/lang/String;

    .line 644
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 645
    .restart local v8       #file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x1400000

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 647
    const/4 v0, -0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 630
    .end local v8           #file:Ljava/io/File;
    .end local v9           #fileUrl:Ljava/lang/String;
    .end local v11           #mediaInfoBean:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 633
    .restart local v7       #e1:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 649
    .end local v7           #e1:Landroid/os/RemoteException;
    .restart local v8       #file:Ljava/io/File;
    .restart local v9       #fileUrl:Ljava/lang/String;
    .restart local v11       #mediaInfoBean:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    :cond_7
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$7(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 651
    const/4 v0, -0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 669
    :cond_8
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 639
    if-nez v0, :cond_6

    .line 674
    .end local v8           #file:Ljava/io/File;
    .end local v9           #fileUrl:Ljava/lang/String;
    .end local v11           #mediaInfoBean:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    :cond_9
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_b

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 677
    :try_start_2
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$8(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;

    move-result-object v0

    invoke-virtual {v0, v10, v12}, Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;->uploadMediaList(Ljava/util/List;Ljava/util/List;)Z

    move-result v13

    .line 678
    .local v13, result:Z
    if-nez v13, :cond_a

    .line 679
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 680
    :cond_a
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$8(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;->stardUpload()V

    .line 681
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto/16 :goto_0

    .line 683
    .end local v13           #result:Z
    :catch_2
    move-exception v0

    move-object v6, v0

    .line 686
    .local v6, e:Landroid/os/RemoteException;
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 690
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_b
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->doInBackground([Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8
    .parameter "result"

    .prologue
    const v7, 0x7f060059

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f060062

    const v3, 0x7f060055

    .line 706
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 707
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 708
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 709
    sput-boolean v6, Lcom/ecareme/pixwe/PixWe;->isHomeNeedToUpdate:Z

    .line 710
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 711
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x14

    iput v2, v1, Landroid/os/Message;->what:I

    .line 712
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$0(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 713
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->finish()V

    .line 766
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 715
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 716
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 754
    :pswitch_0
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 755
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 756
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 757
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 718
    :pswitch_1
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 719
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 720
    const v2, 0x7f060058

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 721
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 724
    :pswitch_2
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 725
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 726
    const v2, 0x7f06005a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 727
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 730
    :pswitch_3
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 731
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 732
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 733
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 736
    :pswitch_4
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 737
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 738
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 739
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 742
    :pswitch_5
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 743
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 744
    const v2, 0x7f06005b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 745
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 748
    :pswitch_6
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 749
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 751
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 716
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 698
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
