.class Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$ImportTask;
.super Landroid/os/AsyncTask;
.source "AWSSelectUploadAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;


# direct methods
.method private constructor <init>(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$ImportTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$ImportTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$ImportTask;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;)V

    return-void
.end method

.method private parseMIMEType(Ljava/lang/String;)I
    .locals 2
    .parameter "end"

    .prologue
    .line 353
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 355
    const-string v0, "3gp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3gpp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "flv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    :cond_0
    const/4 v0, 0x1

    .line 365
    :goto_0
    return v0

    .line 359
    :cond_1
    const-string v0, "jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 361
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 365
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 15
    .parameter "param"

    .prologue
    .line 278
    if-eqz p1, :cond_3

    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->haveInternet()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 279
    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, awsFolderId:Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, albumId:Ljava/lang/String;
    const/4 v9, 0x0

    .line 284
    .local v9, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    new-instance v1, Lnet/yostore/aws/api/helper/FolderBrowseHelper;

    invoke-direct {v1, v2}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :try_start_0
    iget-object v11, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$ImportTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v11, v11, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v1, v11}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v9

    .end local v9           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    check-cast v9, Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .restart local v9       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFileList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 293
    const/4 v7, 0x0

    .line 294
    .local v7, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFileList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 295
    .local v5, fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 321
    iget-object v11, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$ImportTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v12, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$ImportTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v12, v12, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Lcom/ecareme/pixwe/PixWe;->uploadAlbumToXML(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;J)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 322
    new-instance v11, Ljava/lang/Long;

    const-string v12, "1"

    invoke-direct {v11, v12}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 327
    .end local v0           #albumId:Ljava/lang/String;
    .end local v1           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v2           #awsFolderId:Ljava/lang/String;
    .end local v5           #fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .end local v7           #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    .end local v9           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :goto_1
    return-object v11

    .line 287
    .restart local v0       #albumId:Ljava/lang/String;
    .restart local v1       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .restart local v2       #awsFolderId:Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 290
    .local v3, e:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_1

    .line 296
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v5       #fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .restart local v7       #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    .restart local v9       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/yostore/aws/api/entity/FileInfo;

    .line 297
    .local v4, fi:Lnet/yostore/aws/api/entity/FileInfo;
    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FileInfo;->getDisplay()Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, fileName:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$ImportTask;->parseMIMEType(Ljava/lang/String;)I

    move-result v10

    .line 299
    .local v10, type:I
    const/4 v11, -0x1

    if-le v10, v11, :cond_0

    .line 300
    if-nez v7, :cond_2

    .line 301
    new-instance v7, Ljava/util/ArrayList;

    .end local v7           #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .restart local v7       #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    :cond_2
    new-instance v8, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    iget-object v11, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$ImportTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v11, v11, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v8, v11}, Lnet/yostore/aws/handler/entity/MediaInfoBean;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    .line 303
    .local v8, mib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FileInfo;->getDisplay()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setD(Ljava/lang/String;)V

    .line 305
    :try_start_1
    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FileInfo;->getCreatedtime()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setDa(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 310
    :goto_2
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setMediaInfoFolder(J)V

    .line 311
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setEn(I)V

    .line 312
    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FileInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setI(J)V

    .line 313
    const-string v11, ""

    invoke-virtual {v8, v11}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setNo(Ljava/lang/String;)V

    .line 314
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setR(I)V

    .line 315
    invoke-virtual {v8, v10}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setTy(I)V

    .line 316
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUs(I)V

    .line 317
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v11, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$ImportTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    invoke-static {v11, v8}, Lnet/yostore/aws/sqlite/helper/MediaHelper;->insertMedia(Landroid/content/Context;Lnet/yostore/aws/handler/entity/MediaInfoBean;)J

    goto/16 :goto_0

    .line 327
    .end local v0           #albumId:Ljava/lang/String;
    .end local v1           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v2           #awsFolderId:Ljava/lang/String;
    .end local v4           #fi:Lnet/yostore/aws/api/entity/FileInfo;
    .end local v5           #fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .end local v6           #fileName:Ljava/lang/String;
    .end local v7           #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    .end local v8           #mib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    .end local v9           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .end local v10           #type:I
    :cond_3
    new-instance v11, Ljava/lang/Long;

    const-string v12, "0"

    invoke-direct {v11, v12}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 306
    .restart local v0       #albumId:Ljava/lang/String;
    .restart local v1       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .restart local v2       #awsFolderId:Ljava/lang/String;
    .restart local v4       #fi:Lnet/yostore/aws/api/entity/FileInfo;
    .restart local v5       #fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .restart local v6       #fileName:Ljava/lang/String;
    .restart local v7       #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    .restart local v8       #mib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    .restart local v9       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .restart local v10       #type:I
    :catch_1
    move-exception v11

    goto :goto_2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$ImportTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 344
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 345
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 346
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$ImportTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v1, v1, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 347
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$ImportTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->finish()V

    .line 349
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$ImportTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 333
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$ImportTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
