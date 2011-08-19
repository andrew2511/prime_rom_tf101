.class Lcom/ecareme/pixwe/view/common/TestActivity$SaveAllDataToDB;
.super Landroid/os/AsyncTask;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/common/TestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveAllDataToDB"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/common/TestActivity;


# direct methods
.method private constructor <init>(Lcom/ecareme/pixwe/view/common/TestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/TestActivity$SaveAllDataToDB;->this$0:Lcom/ecareme/pixwe/view/common/TestActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ecareme/pixwe/view/common/TestActivity;Lcom/ecareme/pixwe/view/common/TestActivity$SaveAllDataToDB;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/view/common/TestActivity$SaveAllDataToDB;-><init>(Lcom/ecareme/pixwe/view/common/TestActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 8
    .parameter "params"

    .prologue
    .line 267
    iget-object v5, p0, Lcom/ecareme/pixwe/view/common/TestActivity$SaveAllDataToDB;->this$0:Lcom/ecareme/pixwe/view/common/TestActivity;

    invoke-static {v5}, Lcom/ecareme/pixwe/view/common/TestActivity;->access$0(Lcom/ecareme/pixwe/view/common/TestActivity;)Lnet/yostore/aws/handler/PixWeDataHandler;

    move-result-object v5

    invoke-virtual {v5}, Lnet/yostore/aws/handler/PixWeDataHandler;->getAlbums()Ljava/util/List;

    move-result-object v3

    .line 268
    .local v3, fiList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    if-eqz v3, :cond_1

    .line 269
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 270
    .local v2, aitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 282
    .end local v2           #aitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :cond_1
    new-instance v5, Ljava/lang/Long;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    return-object v5

    .line 271
    .restart local v2       #aitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/api/entity/FolderInfo;

    .line 272
    .local v1, _fo:Lnet/yostore/aws/api/entity/FolderInfo;
    new-instance v0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;-><init>()V

    .line 273
    .local v0, _alib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    iget-object v5, p0, Lcom/ecareme/pixwe/view/common/TestActivity$SaveAllDataToDB;->this$0:Lcom/ecareme/pixwe/view/common/TestActivity;

    invoke-static {v5}, Lcom/ecareme/pixwe/view/common/TestActivity;->access$1(Lcom/ecareme/pixwe/view/common/TestActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v5

    iget-object v5, v5, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setUserName(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setFolderInfo(Lnet/yostore/aws/api/entity/FolderInfo;)V

    .line 275
    sget-object v5, Lcom/ecareme/pixwe/view/common/TestActivity;->ctx:Landroid/content/Context;

    invoke-static {v5, v0}, Lnet/yostore/aws/sqlite/helper/AlbumListHelper;->insertAlbum(Landroid/content/Context;Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J

    .line 276
    iget-object v5, p0, Lcom/ecareme/pixwe/view/common/TestActivity$SaveAllDataToDB;->this$0:Lcom/ecareme/pixwe/view/common/TestActivity;

    invoke-static {v5}, Lcom/ecareme/pixwe/view/common/TestActivity;->access$0(Lcom/ecareme/pixwe/view/common/TestActivity;)Lnet/yostore/aws/handler/PixWeDataHandler;

    move-result-object v5

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/yostore/aws/handler/PixWeDataHandler;->getMediasInfoBeanList(J)Ljava/util/List;

    move-result-object v4

    .line 277
    .local v4, mibList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    if-eqz v4, :cond_0

    .line 278
    sget-object v5, Lcom/ecareme/pixwe/view/common/TestActivity;->ctx:Landroid/content/Context;

    invoke-static {v5, v4}, Lnet/yostore/aws/sqlite/helper/MediaHelper;->insertMediaLists(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/common/TestActivity$SaveAllDataToDB;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/TestActivity$SaveAllDataToDB;->this$0:Lcom/ecareme/pixwe/view/common/TestActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/TestActivity;->access$2(Lcom/ecareme/pixwe/view/common/TestActivity;)V

    .line 294
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/common/TestActivity$SaveAllDataToDB;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 288
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/common/TestActivity$SaveAllDataToDB;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
