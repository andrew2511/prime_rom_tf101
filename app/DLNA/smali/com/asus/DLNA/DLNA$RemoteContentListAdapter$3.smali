.class Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$3;
.super Ljava/lang/Object;
.source "DLNA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 2089
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2092
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->access$6100(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 2094
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->access$6100(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$QueueItem;

    .line 2095
    .local v1, decodeitem:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$QueueItem;
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->access$6100(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2096
    iget v4, v1, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$QueueItem;->itemPOS:I

    .line 2098
    .local v4, pos:I
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    iget-object v6, v6, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$2200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ItemList;

    move-result-object v6

    if-nez v6, :cond_2

    .line 2139
    .end local v1           #decodeitem:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$QueueItem;
    .end local v4           #pos:I
    :cond_1
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->access$6500(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x385

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2140
    return-void

    .line 2099
    .restart local v1       #decodeitem:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$QueueItem;
    .restart local v4       #pos:I
    :cond_2
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    iget-object v6, v6, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$2200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ItemList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/DLNA/ItemList;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 2103
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-static {v6, v4}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->access$6200(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2106
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    iget-object v6, v6, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    iget-object v6, v6, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    iget-object v6, v6, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/DLNA/DLNA$NodeInfo;

    iget-object v6, v6, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_0

    .line 2113
    :cond_3
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    iget-object v6, v6, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$2200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ItemList;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/DLNA/Item;

    .line 2114
    .local v2, item:Lcom/asus/DLNA/Item;
    iget-object v6, v2, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    const-string v7, "JPEG_MED,JPEG_SM,JPEG_TN,PNG_TN"

    invoke-virtual {v6, v7}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetThumbnailURI(Ljava/lang/String;)Lcom/awox/jUPnPCP/ThumbnailGetResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/awox/jUPnPCP/ThumbnailGetResult;->getMURI()Ljava/lang/String;

    move-result-object v5

    .line 2116
    .local v5, struri:Ljava/lang/String;
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-static {v6, v5}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->access$6300(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2119
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    iget-object v6, v6, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 2121
    if-eqz v0, :cond_4

    if-nez v5, :cond_5

    .line 2122
    :cond_4
    const-string v6, "DLNA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(remote)stored bitmap is null or uri= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2126
    :cond_5
    new-instance v3, Lcom/asus/DLNA/DLNA$NodeInfo;

    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    iget-object v6, v6, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {v3, v6}, Lcom/asus/DLNA/DLNA$NodeInfo;-><init>(Lcom/asus/DLNA/DLNA;)V

    .line 2127
    .local v3, ni:Lcom/asus/DLNA/DLNA$NodeInfo;
    iput-object v5, v3, Lcom/asus/DLNA/DLNA$NodeInfo;->mStrUri:Ljava/lang/String;

    .line 2128
    iput-object v0, v3, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 2129
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    iget-object v6, v6, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2134
    .end local v3           #ni:Lcom/asus/DLNA/DLNA$NodeInfo;
    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 2136
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$3;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->access$6400(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)V

    goto/16 :goto_0

    .line 2132
    :cond_7
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method
