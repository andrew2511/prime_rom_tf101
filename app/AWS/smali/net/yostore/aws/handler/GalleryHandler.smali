.class public Lnet/yostore/aws/handler/GalleryHandler;
.super Ljava/lang/Object;
.source "GalleryHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
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
    .line 69
    .local p1, dispArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, urlArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lnet/yostore/aws/handler/entity/PlayList;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnet/yostore/aws/handler/entity/PlayList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v1, rtn:Lnet/yostore/aws/handler/entity/PlayList;
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 73
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/handler/entity/PlayList;->setPosition(I)V

    .line 74
    return-object v1

    .line 71
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

    .line 70
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
    .line 22
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    new-instance v4, Lnet/yostore/aws/handler/entity/PlayList;

    const/4 v6, 0x0

    invoke-direct {v4, p1, v6}, Lnet/yostore/aws/handler/entity/PlayList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .local v4, rtn:Lnet/yostore/aws/handler/entity/PlayList;
    new-instance v3, Lnet/yostore/aws/handler/PresentHandler;

    invoke-direct {v3}, Lnet/yostore/aws/handler/PresentHandler;-><init>()V

    .line 26
    .local v3, handler:Lnet/yostore/aws/handler/PresentHandler;
    const/4 v1, 0x0

    .line 27
    .local v1, fn:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 28
    .local v0, fitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 42
    return-object v4

    .line 29
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/api/entity/EntryInfo;

    .line 30
    .local v2, fsinfo:Lnet/yostore/aws/api/entity/EntryInfo;
    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/EntryInfo;->getRawentryname()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 34
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

    .line 36
    :cond_2
    new-instance v6, Lnet/yostore/aws/handler/entity/PlayItem;

    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/EntryInfo;->getRawentryname()Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/EntryInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8, p3}, Lnet/yostore/aws/handler/PresentHandler;->getPreviewImageUrl(Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lnet/yostore/aws/handler/entity/PlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/EntryInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 36
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
    .line 47
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    new-instance v4, Lnet/yostore/aws/handler/entity/PlayList;

    const/4 v6, 0x0

    invoke-direct {v4, p1, v6}, Lnet/yostore/aws/handler/entity/PlayList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .local v4, rtn:Lnet/yostore/aws/handler/entity/PlayList;
    new-instance v3, Lnet/yostore/aws/handler/PresentHandler;

    invoke-direct {v3}, Lnet/yostore/aws/handler/PresentHandler;-><init>()V

    .line 51
    .local v3, handler:Lnet/yostore/aws/handler/PresentHandler;
    const/4 v1, 0x0

    .line 52
    .local v1, fn:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 53
    .local v0, fitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 65
    return-object v4

    .line 54
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 55
    .local v2, fsinfo:Lnet/yostore/aws/handler/entity/FsInfo;
    iget-object v1, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 58
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

    .line 59
    :cond_2
    new-instance v6, Lnet/yostore/aws/handler/entity/PlayItem;

    .line 60
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v7, p3}, Lnet/yostore/aws/handler/PresentHandler;->getPreviewImageUrl(Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Lnet/yostore/aws/handler/entity/PlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 59
    invoke-virtual {v4, v6, v7}, Lnet/yostore/aws/handler/entity/PlayList;->addItem(Lnet/yostore/aws/handler/entity/PlayItem;Z)V

    goto :goto_0
.end method

.method public static getPlayList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;ZII)Lnet/yostore/aws/handler/entity/PlayList;
    .locals 8
    .parameter "disp"
    .parameter "parentId"
    .parameter "nowId"
    .parameter "apicfg"
    .parameter "pageEnable"
    .parameter "pagesize"
    .parameter "page"

    .prologue
    .line 79
    const/4 v7, 0x0

    .line 80
    .local v7, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    new-instance v0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;

    sget v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    sget v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    move-object v1, p1

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;-><init>(Ljava/lang/String;IIZII)V

    .line 82
    .local v0, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :try_start_0
    invoke-virtual {v0, p3}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p6

    .end local p6
    check-cast p6, Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v7           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .local p6, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    new-instance v0, Lnet/yostore/aws/handler/entity/PlayList;

    .end local v0           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    invoke-direct {v0, p0, p1}, Lnet/yostore/aws/handler/entity/PlayList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v0, rtn:Lnet/yostore/aws/handler/entity/PlayList;
    invoke-virtual {p6}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getStatus()I

    move-result p0

    .end local p0
    if-nez p0, :cond_0

    .line 90
    invoke-virtual {p6}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFileList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 91
    .local p1, fitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    new-instance p5, Lnet/yostore/aws/handler/PresentHandler;

    .end local p5
    invoke-direct {p5}, Lnet/yostore/aws/handler/PresentHandler;-><init>()V

    .line 92
    .local p5, handler:Lnet/yostore/aws/handler/PresentHandler;
    const/4 p0, 0x0

    .line 94
    .end local p4
    .local p0, fn:Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    .end local p0           #fn:Ljava/lang/String;
    if-nez p0, :cond_1

    .end local p1           #fitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .end local p5           #handler:Lnet/yostore/aws/handler/PresentHandler;
    :cond_0
    move-object p0, p6

    .end local p6           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .local p0, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    move-object p1, v0

    .line 104
    .end local v0           #rtn:Lnet/yostore/aws/handler/entity/PlayList;
    :goto_1
    return-object p1

    .line 83
    .local v0, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .restart local v7       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .local p0, disp:Ljava/lang/String;
    .local p1, parentId:Ljava/lang/String;
    .restart local p4
    .local p5, pagesize:I
    :catch_0
    move-exception p0

    .line 84
    .local p0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, v7

    .end local v7           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .local p0, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    goto :goto_1

    .line 95
    .end local p0           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .end local p4
    .local v0, rtn:Lnet/yostore/aws/handler/entity/PlayList;
    .local p1, fitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .local p5, handler:Lnet/yostore/aws/handler/PresentHandler;
    .restart local p6       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/api/entity/FileInfo;

    .line 96
    .local p0, f:Lnet/yostore/aws/api/entity/FileInfo;
    invoke-virtual {p0}, Lnet/yostore/aws/api/entity/FileInfo;->getDisplay()Ljava/lang/String;

    move-result-object p4

    .line 97
    .local p4, fn:Ljava/lang/String;
    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, sfn:Ljava/lang/String;
    const-string v2, "jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "bmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .end local v1           #sfn:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 99
    :cond_2
    new-instance v1, Lnet/yostore/aws/handler/entity/PlayItem;

    invoke-virtual {p0}, Lnet/yostore/aws/api/entity/FileInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2, p3}, Lnet/yostore/aws/handler/PresentHandler;->getPreviewImageUrl(Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p4, v2}, Lnet/yostore/aws/handler/entity/PlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/yostore/aws/api/entity/FileInfo;->getId()Ljava/lang/String;

    move-result-object p0

    .end local p0           #f:Lnet/yostore/aws/api/entity/FileInfo;
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lnet/yostore/aws/handler/entity/PlayList;->addItem(Lnet/yostore/aws/handler/entity/PlayItem;Z)V

    :cond_3
    move-object p0, p4

    .end local p4           #fn:Ljava/lang/String;
    .local p0, fn:Ljava/lang/String;
    goto :goto_0
.end method
