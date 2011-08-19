.class Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$6;
.super Ljava/lang/Object;
.source "AWSSelectUploadAlbumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->updateAlbumList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$6;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 204
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 205
    .local v4, msg:Landroid/os/Message;
    const/16 v6, 0xa

    iput v6, v4, Landroid/os/Message;->what:I

    .line 206
    iget-object v6, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$6;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v6, v6, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    new-instance v5, Lnet/yostore/aws/handler/PixWeDataHandler;

    iget-object v6, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$6;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v7, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$6;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v7, v7, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v5, v6, v7}, Lnet/yostore/aws/handler/PixWeDataHandler;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    .line 208
    .local v5, pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;
    invoke-virtual {v5}, Lnet/yostore/aws/handler/PixWeDataHandler;->getAlbums()Ljava/util/List;

    move-result-object v1

    .line 209
    .local v1, folderInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 210
    .local v3, len:I
    new-array v0, v3, [Ljava/lang/String;

    .line 211
    .local v0, albumNames:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 214
    iget-object v6, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$6;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    new-instance v7, Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$6;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    const v9, 0x1090008

    invoke-direct {v7, v8, v9, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v7, v6, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 215
    iget-object v6, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$6;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v6, v6, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->adapter:Landroid/widget/ArrayAdapter;

    const v7, 0x1090009

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 216
    new-instance v4, Landroid/os/Message;

    .end local v4           #msg:Landroid/os/Message;
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 217
    .restart local v4       #msg:Landroid/os/Message;
    const/16 v6, 0x14

    iput v6, v4, Landroid/os/Message;->what:I

    .line 218
    iget-object v6, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$6;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v6, v6, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 219
    return-void

    .line 212
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/yostore/aws/api/entity/FolderInfo;

    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/FolderInfo;->getDisplay()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
