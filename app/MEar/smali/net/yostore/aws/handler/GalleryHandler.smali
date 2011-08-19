.class public Lnet/yostore/aws/handler/GalleryHandler;
.super Ljava/lang/Object;
.source "GalleryHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compose(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)Lnet/yostore/aws/handler/entity/PlayList;
    .locals 4
    .parameter "disp"
    .parameter
    .parameter
    .parameter "pos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Lnet/yostore/aws/handler/entity/PlayList;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, dispArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, urlArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lnet/yostore/aws/handler/entity/PlayList;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnet/yostore/aws/handler/entity/PlayList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v1, rtn:Lnet/yostore/aws/handler/entity/PlayList;
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 71
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/handler/entity/PlayList;->setPosition(I)V

    .line 72
    return-object v1

    .line 69
    :cond_0
    new-instance v3, Lnet/yostore/aws/handler/entity/PlayItem;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, p0, v2}, Lnet/yostore/aws/handler/entity/PlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lnet/yostore/aws/handler/entity/PlayList;->addItem(Lnet/yostore/aws/handler/entity/PlayItem;)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static convertEntryInfoList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/entity/PlayList;
    .locals 9
    .parameter
    .parameter "disp"
    .parameter "nowId"
    .parameter "apicfg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/EntryInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/yostore/aws/api/ApiConfig;",
            ")",
            "Lnet/yostore/aws/handler/entity/PlayList;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    new-instance v4, Lnet/yostore/aws/handler/entity/PlayList;

    const/4 v6, 0x0

    invoke-direct {v4, p1, v6}, Lnet/yostore/aws/handler/entity/PlayList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .local v4, rtn:Lnet/yostore/aws/handler/entity/PlayList;
    new-instance v3, Lnet/yostore/aws/handler/PresentHandler;

    invoke-direct {v3}, Lnet/yostore/aws/handler/PresentHandler;-><init>()V

    .line 24
    .local v3, handler:Lnet/yostore/aws/handler/PresentHandler;
    const/4 v1, 0x0

    .line 25
    .local v1, fn:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 26
    .local v0, fitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 40
    return-object v4

    .line 27
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/api/entity/EntryInfo;

    .line 28
    .local v2, fsinfo:Lnet/yostore/aws/api/entity/EntryInfo;
    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/EntryInfo;->getRawentryname()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 32
    .local v5, sfn:Ljava/lang/String;
    const-string v6, "jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "gif"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "bmp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 34
    :cond_2
    new-instance v6, Lnet/yostore/aws/handler/entity/PlayItem;

    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/EntryInfo;->getRawentryname()Ljava/lang/String;

    move-result-object v7

    .line 35
    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/EntryInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8, p3}, Lnet/yostore/aws/handler/PresentHandler;->getPreviewImageUrl(Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lnet/yostore/aws/handler/entity/PlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/EntryInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 34
    invoke-virtual {v4, v6, v7}, Lnet/yostore/aws/handler/entity/PlayList;->addItem(Lnet/yostore/aws/handler/entity/PlayItem;Z)V

    goto :goto_0
.end method

.method public static convertFsInfoList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/entity/PlayList;
    .locals 8
    .parameter
    .parameter "disp"
    .parameter "nowId"
    .parameter "apicfg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/yostore/aws/api/ApiConfig;",
            ")",
            "Lnet/yostore/aws/handler/entity/PlayList;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    new-instance v4, Lnet/yostore/aws/handler/entity/PlayList;

    const/4 v6, 0x0

    invoke-direct {v4, p1, v6}, Lnet/yostore/aws/handler/entity/PlayList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .local v4, rtn:Lnet/yostore/aws/handler/entity/PlayList;
    new-instance v3, Lnet/yostore/aws/handler/PresentHandler;

    invoke-direct {v3}, Lnet/yostore/aws/handler/PresentHandler;-><init>()V

    .line 49
    .local v3, handler:Lnet/yostore/aws/handler/PresentHandler;
    const/4 v1, 0x0

    .line 50
    .local v1, fn:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 51
    .local v0, fitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 63
    return-object v4

    .line 52
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 53
    .local v2, fsinfo:Lnet/yostore/aws/handler/entity/FsInfo;
    iget-object v1, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 54
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, sfn:Ljava/lang/String;
    const-string v6, "jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "gif"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "bmp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 57
    :cond_2
    new-instance v6, Lnet/yostore/aws/handler/entity/PlayItem;

    .line 58
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v7, p3}, Lnet/yostore/aws/handler/PresentHandler;->getPreviewImageUrl(Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Lnet/yostore/aws/handler/entity/PlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 57
    invoke-virtual {v4, v6, v7}, Lnet/yostore/aws/handler/entity/PlayList;->addItem(Lnet/yostore/aws/handler/entity/PlayItem;Z)V

    goto :goto_0
.end method

.method public static getPlayList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/entity/PlayList;
    .locals 12
    .parameter "disp"
    .parameter "parentId"
    .parameter "nowId"
    .parameter "apicfg"

    .prologue
    .line 77
    const/4 v7, 0x0

    .line 78
    .local v7, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    new-instance v1, Lnet/yostore/aws/api/helper/FolderBrowseHelper;

    invoke-direct {v1, p1}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :try_start_0
    invoke-virtual {v1, p3}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    new-instance v8, Lnet/yostore/aws/handler/entity/PlayList;

    invoke-direct {v8, p0, p1}, Lnet/yostore/aws/handler/entity/PlayList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .local v8, rtn:Lnet/yostore/aws/handler/entity/PlayList;
    invoke-virtual {v7}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getStatus()I

    move-result v10

    if-nez v10, :cond_1

    .line 88
    invoke-virtual {v7}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFileList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 89
    .local v4, fitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    new-instance v6, Lnet/yostore/aws/handler/PresentHandler;

    invoke-direct {v6}, Lnet/yostore/aws/handler/PresentHandler;-><init>()V

    .line 90
    .local v6, handler:Lnet/yostore/aws/handler/PresentHandler;
    const/4 v5, 0x0

    .line 92
    .local v5, fn:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .end local v4           #fitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .end local v5           #fn:Ljava/lang/String;
    .end local v6           #handler:Lnet/yostore/aws/handler/PresentHandler;
    :cond_1
    move-object v10, v8

    .line 102
    .end local v8           #rtn:Lnet/yostore/aws/handler/entity/PlayList;
    :goto_1
    return-object v10

    .line 81
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 82
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    const/4 v10, 0x0

    goto :goto_1

    .line 93
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #fitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .restart local v5       #fn:Ljava/lang/String;
    .restart local v6       #handler:Lnet/yostore/aws/handler/PresentHandler;
    .restart local v8       #rtn:Lnet/yostore/aws/handler/entity/PlayList;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/yostore/aws/api/entity/FileInfo;

    .line 94
    .local v3, f:Lnet/yostore/aws/api/entity/FileInfo;
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/FileInfo;->getDisplay()Ljava/lang/String;

    move-result-object v5

    .line 95
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, sfn:Ljava/lang/String;
    const-string v10, "jpg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "gif"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "png"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "jpeg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "bmp"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 97
    :cond_3
    new-instance v10, Lnet/yostore/aws/handler/entity/PlayItem;

    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/FileInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, p3}, Lnet/yostore/aws/handler/PresentHandler;->getPreviewImageUrl(Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v5, v11}, Lnet/yostore/aws/handler/entity/PlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/FileInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v8, v10, v11}, Lnet/yostore/aws/handler/entity/PlayList;->addItem(Lnet/yostore/aws/handler/entity/PlayItem;Z)V

    goto :goto_0
.end method
