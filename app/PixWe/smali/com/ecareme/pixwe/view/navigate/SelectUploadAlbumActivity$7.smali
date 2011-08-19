.class Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$7;
.super Ljava/lang/Object;
.source "SelectUploadAlbumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->updateAlbumList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$7;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 377
    iget-object v4, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$7;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    iget-object v5, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$7;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v5}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$1(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Lnet/yostore/aws/handler/PixWeDataHandler;

    move-result-object v5

    invoke-virtual {v5}, Lnet/yostore/aws/handler/PixWeDataHandler;->getAlbums()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$18(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Ljava/util/List;)V

    .line 378
    const/4 v2, 0x0

    .line 379
    .local v2, len:I
    iget-object v4, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$7;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v4}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$9(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 380
    iget-object v4, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$7;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v4}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$9(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 381
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    .line 382
    .local v0, albumNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 385
    iget-object v4, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$7;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$7;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    const v7, 0x1090008

    invoke-direct {v5, v6, v7, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-static {v4, v5}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$19(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Landroid/widget/ArrayAdapter;)V

    .line 386
    iget-object v4, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$7;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v4}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$14(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 388
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 389
    .local v3, msg:Landroid/os/Message;
    const/16 v4, 0x1e

    iput v4, v3, Landroid/os/Message;->what:I

    .line 390
    iget-object v4, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$7;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v4}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$0(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 391
    return-void

    .line 383
    .end local v3           #msg:Landroid/os/Message;
    :cond_1
    iget-object v4, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$7;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v4}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$9(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/yostore/aws/api/entity/FolderInfo;

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderInfo;->getDisplay()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
