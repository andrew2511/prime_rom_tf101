.class Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;
.super Landroid/os/AsyncTask;
.source "SelectUploadAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;


# direct methods
.method private constructor <init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;-><init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)V

    return-void
.end method

.method private parseMIMEType(Ljava/lang/String;)I
    .locals 2
    .parameter "end"

    .prologue
    .line 527
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

    .line 529
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

    .line 531
    :cond_0
    const/4 v0, 0x1

    .line 539
    :goto_0
    return v0

    .line 533
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

    .line 535
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 539
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/lang/Long;
    .locals 21
    .parameter "param"

    .prologue
    .line 435
    if-eqz p1, :cond_3

    const/16 v17, 0x0

    aget-object v17, p1, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-lez v17, :cond_3

    const/16 v17, 0x1

    aget-object v17, p1, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-lez v17, :cond_3

    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->haveInternet()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 437
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 438
    .local v14, msg:Landroid/os/Message;
    const/16 v17, 0xa

    move/from16 v0, v17

    move-object v1, v14

    iput v0, v1, Landroid/os/Message;->what:I

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$0(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 441
    const/16 v17, 0x0

    aget-object v17, p1, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 442
    .local v3, albumId:J
    const/16 v17, 0x1

    aget-object v17, p1, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 445
    .local v6, awsFolderId:J
    const/4 v15, 0x0

    .line 446
    .local v15, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    new-instance v5, Lnet/yostore/aws/api/helper/FolderBrowseHelper;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;-><init>(Ljava/lang/String;)V

    .line 449
    .local v5, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$3(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v17

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v15

    .end local v15           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    check-cast v15, Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .restart local v15       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    invoke-virtual {v15}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFileList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_3

    .line 459
    const/4 v12, 0x0

    .line 460
    .local v12, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    invoke-virtual {v15}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFileList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 461
    .local v10, fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_1

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$3(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v18

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-static/range {v17 .. v20}, Lcom/ecareme/pixwe/PixWe;->uploadAlbumToXML(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;J)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 495
    const/16 v17, 0x1

    sput-boolean v17, Lcom/ecareme/pixwe/PixWe;->isHomeNeedToUpdate:Z

    .line 496
    new-instance v17, Ljava/lang/Long;

    const-string v18, "1"

    invoke-direct/range {v17 .. v18}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 501
    .end local v3           #albumId:J
    .end local v5           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v6           #awsFolderId:J
    .end local v10           #fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .end local v12           #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    .end local v14           #msg:Landroid/os/Message;
    .end local v15           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :goto_1
    return-object v17

    .line 451
    .restart local v3       #albumId:J
    .restart local v5       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .restart local v6       #awsFolderId:J
    .restart local v14       #msg:Landroid/os/Message;
    :catch_0
    move-exception v17

    move-object/from16 v8, v17

    .line 455
    .local v8, e:Ljava/lang/Exception;
    const/16 v17, 0x0

    goto :goto_1

    .line 463
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v10       #fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .restart local v12       #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    .restart local v15       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/yostore/aws/api/entity/FileInfo;

    .line 464
    .local v9, fi:Lnet/yostore/aws/api/entity/FileInfo;
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FileInfo;->getDisplay()Ljava/lang/String;

    move-result-object v11

    .line 465
    .local v11, fileName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;->parseMIMEType(Ljava/lang/String;)I

    move-result v16

    .line 466
    .local v16, type:I
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    .line 468
    if-nez v12, :cond_2

    .line 469
    new-instance v12, Ljava/util/ArrayList;

    .end local v12           #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .restart local v12       #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    :cond_2
    new-instance v13, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$3(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    .line 471
    .local v13, mib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FileInfo;->getDisplay()Ljava/lang/String;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setD(Ljava/lang/String;)V

    .line 474
    :try_start_1
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FileInfo;->getCreatedtime()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object v0, v13

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setDa(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 481
    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object v0, v13

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setMediaInfoFolder(J)V

    .line 482
    const/16 v17, 0x1

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setEn(I)V

    .line 483
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FileInfo;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    move-object v0, v13

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setI(J)V

    .line 484
    const-string v17, ""

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setNo(Ljava/lang/String;)V

    .line 485
    const/16 v17, 0x0

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setR(I)V

    .line 486
    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setTy(I)V

    .line 487
    const/16 v17, 0x0

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUs(I)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$4(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)I

    move-result v17

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setFr(I)V

    .line 489
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-static {v0, v1}, Lnet/yostore/aws/sqlite/helper/MediaHelper;->insertMedia(Landroid/content/Context;Lnet/yostore/aws/handler/entity/MediaInfoBean;)J

    goto/16 :goto_0

    .line 501
    .end local v3           #albumId:J
    .end local v5           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v6           #awsFolderId:J
    .end local v9           #fi:Lnet/yostore/aws/api/entity/FileInfo;
    .end local v10           #fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .end local v11           #fileName:Ljava/lang/String;
    .end local v12           #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    .end local v13           #mib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    .end local v14           #msg:Landroid/os/Message;
    .end local v15           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .end local v16           #type:I
    :cond_3
    new-instance v17, Ljava/lang/Long;

    const-string v18, "0"

    invoke-direct/range {v17 .. v18}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 476
    .restart local v3       #albumId:J
    .restart local v5       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .restart local v6       #awsFolderId:J
    .restart local v9       #fi:Lnet/yostore/aws/api/entity/FileInfo;
    .restart local v10       #fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .restart local v11       #fileName:Ljava/lang/String;
    .restart local v12       #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    .restart local v13       #mib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    .restart local v14       #msg:Landroid/os/Message;
    .restart local v15       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .restart local v16       #type:I
    :catch_1
    move-exception v17

    goto :goto_2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;->doInBackground([Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 518
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 519
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 520
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$0(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 521
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->finish()V

    .line 523
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 507
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
