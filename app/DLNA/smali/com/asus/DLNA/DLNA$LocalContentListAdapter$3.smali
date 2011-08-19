.class Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;
.super Ljava/lang/Object;
.source "DLNA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/DLNA$LocalContentListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1678
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1682
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->access$5000(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1684
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->access$5000(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$QueueItem;

    .line 1685
    .local v8, decodeitem:Lcom/asus/DLNA/DLNA$LocalContentListAdapter$QueueItem;
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->access$5000(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1686
    if-eqz v8, :cond_0

    .line 1687
    iget v12, v8, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$QueueItem;->itemPOS:I

    .line 1689
    .local v12, pos:I
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1770
    .end local v8           #decodeitem:Lcom/asus/DLNA/DLNA$LocalContentListAdapter$QueueItem;
    .end local v12           #pos:I
    :cond_1
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->access$5600(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1772
    return-void

    .line 1690
    .restart local v8       #decodeitem:Lcom/asus/DLNA/DLNA$LocalContentListAdapter$QueueItem;
    .restart local v12       #pos:I
    :cond_2
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_0

    .line 1694
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-static {v0, v12}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->access$5100(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/DLNA/DLNA$NodeInfo;

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1704
    :cond_3
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/asus/DLNA/DataItem;

    .line 1705
    .local v7, dataitem:Lcom/asus/DLNA/DataItem;
    invoke-virtual {v7}, Lcom/asus/DLNA/DataItem;->geturi()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1707
    .local v14, struri:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1708
    .local v6, b:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Lcom/asus/DLNA/DataItem;->getcategory()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1756
    :cond_4
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1758
    new-instance v11, Lcom/asus/DLNA/DLNA$NodeInfo;

    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {v11, v0}, Lcom/asus/DLNA/DLNA$NodeInfo;-><init>(Lcom/asus/DLNA/DLNA;)V

    .line 1759
    .local v11, ni:Lcom/asus/DLNA/DLNA$NodeInfo;
    iput-object v14, v11, Lcom/asus/DLNA/DLNA$NodeInfo;->mStrUri:Ljava/lang/String;

    .line 1760
    iput-object v6, v11, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 1761
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    .end local v11           #ni:Lcom/asus/DLNA/DLNA$NodeInfo;
    :cond_5
    :goto_2
    const/4 v6, 0x0

    .line 1768
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->access$5500(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;)V

    goto/16 :goto_0

    .line 1710
    :pswitch_1
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    iget-object v1, v1, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-virtual {v1}, Lcom/asus/DLNA/DLNA;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7}, Lcom/asus/DLNA/DataItem;->getorgid()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    invoke-static/range {v0 .. v5}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->access$5200(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1711
    if-nez v6, :cond_4

    .line 1712
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->access$5300(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    iget-object v1, v1, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$4100(Lcom/asus/DLNA/DLNA;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    .line 1716
    :pswitch_2
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7}, Lcom/asus/DLNA/DataItem;->getorgid()J

    move-result-wide v1

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1721
    if-nez v6, :cond_4

    .line 1722
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->access$5300(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    iget-object v1, v1, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$4200(Lcom/asus/DLNA/DLNA;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto/16 :goto_1

    .line 1727
    :pswitch_3
    invoke-virtual {v7}, Lcom/asus/DLNA/DataItem;->getpath()Ljava/lang/String;

    move-result-object v10

    .line 1729
    .local v10, filepath:Ljava/lang/String;
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    iget-object v1, v1, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1, v10}, Lcom/asus/DLNA/DLNA;->access$5400(Lcom/asus/DLNA/DLNA;Ljava/lang/String;)Z

    move-result v1

    if-ne v0, v1, :cond_6

    .line 1730
    new-instance v13, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v13}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1732
    .local v13, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v13, v10}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1733
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    .line 1741
    :try_start_1
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1748
    .end local v13           #retriever:Landroid/media/MediaMetadataRetriever;
    :cond_6
    :goto_3
    if-nez v6, :cond_4

    .line 1749
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->access$5300(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    iget-object v1, v1, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$4300(Lcom/asus/DLNA/DLNA;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto/16 :goto_1

    .line 1742
    .restart local v13       #retriever:Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v9

    .line 1743
    .local v9, e:Ljava/lang/RuntimeException;
    invoke-virtual {v9}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_3

    .line 1734
    .end local v9           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 1735
    .local v9, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1741
    :try_start_3
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 1742
    :catch_2
    move-exception v9

    .line 1743
    .local v9, e:Ljava/lang/RuntimeException;
    invoke-virtual {v9}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_3

    .line 1736
    .end local v9           #e:Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    move-object v9, v0

    .line 1737
    .restart local v9       #e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(failed to get thumbnail) file path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    invoke-virtual {v9}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1741
    :try_start_5
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    .line 1742
    :catch_4
    move-exception v9

    .line 1743
    invoke-virtual {v9}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_3

    .line 1740
    .end local v9           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    .line 1741
    :try_start_6
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1744
    :goto_4
    throw v0

    .line 1742
    :catch_5
    move-exception v9

    .line 1743
    .restart local v9       #e:Ljava/lang/RuntimeException;
    invoke-virtual {v9}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_4

    .line 1764
    .end local v9           #e:Ljava/lang/RuntimeException;
    .end local v10           #filepath:Ljava/lang/String;
    .end local v13           #retriever:Landroid/media/MediaMetadataRetriever;
    :cond_7
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    .line 1708
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
