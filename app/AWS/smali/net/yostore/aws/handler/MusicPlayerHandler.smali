.class public Lnet/yostore/aws/handler/MusicPlayerHandler;
.super Ljava/lang/Object;
.source "MusicPlayerHandler.java"


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
    .line 59
    .local p1, dispArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, urlArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lnet/yostore/aws/handler/entity/PlayList;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnet/yostore/aws/handler/entity/PlayList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v1, rtn:Lnet/yostore/aws/handler/entity/PlayList;
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 63
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/handler/entity/PlayList;->setPosition(I)V

    .line 64
    return-object v1

    .line 61
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

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static convertEntryInfoList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/entity/PlayList;
    .locals 7
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
    new-instance v3, Lnet/yostore/aws/handler/entity/PlayList;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lnet/yostore/aws/handler/entity/PlayList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .local v3, rtn:Lnet/yostore/aws/handler/entity/PlayList;
    new-instance v2, Lnet/yostore/aws/handler/PresentHandler;

    invoke-direct {v2}, Lnet/yostore/aws/handler/PresentHandler;-><init>()V

    .line 26
    .local v2, handler:Lnet/yostore/aws/handler/PresentHandler;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 27
    .local v0, fitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 36
    return-object v3

    .line 28
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/api/entity/EntryInfo;

    .line 29
    .local v1, fsinfo:Lnet/yostore/aws/api/entity/EntryInfo;
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/EntryInfo;->getRawentryname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mp3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    new-instance v4, Lnet/yostore/aws/handler/entity/PlayItem;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/EntryInfo;->getRawentryname()Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/EntryInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, p3}, Lnet/yostore/aws/handler/PresentHandler;->getStreamingSrcUrl(Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lnet/yostore/aws/handler/entity/PlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/EntryInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 30
    invoke-virtual {v3, v4, v5}, Lnet/yostore/aws/handler/entity/PlayList;->addItem(Lnet/yostore/aws/handler/entity/PlayItem;Z)V

    goto :goto_0
.end method

.method public static convertFsInfoList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/entity/PlayList;
    .locals 7
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
    .line 41
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    new-instance v3, Lnet/yostore/aws/handler/entity/PlayList;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lnet/yostore/aws/handler/entity/PlayList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .local v3, rtn:Lnet/yostore/aws/handler/entity/PlayList;
    new-instance v2, Lnet/yostore/aws/handler/PresentHandler;

    invoke-direct {v2}, Lnet/yostore/aws/handler/PresentHandler;-><init>()V

    .line 45
    .local v2, handler:Lnet/yostore/aws/handler/PresentHandler;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 46
    .local v0, fitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 55
    return-object v3

    .line 47
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 48
    .local v1, fsinfo:Lnet/yostore/aws/handler/entity/FsInfo;
    iget-object v4, v1, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mp3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    new-instance v4, Lnet/yostore/aws/handler/entity/PlayItem;

    iget-object v5, v1, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 50
    iget-object v6, v1, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v6, p3}, Lnet/yostore/aws/handler/PresentHandler;->getStreamingSrcUrl(Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lnet/yostore/aws/handler/entity/PlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v5, v1, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 49
    invoke-virtual {v3, v4, v5}, Lnet/yostore/aws/handler/entity/PlayList;->addItem(Lnet/yostore/aws/handler/entity/PlayItem;Z)V

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
    .line 69
    const/4 v7, 0x0

    .line 70
    .local v7, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    new-instance v0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;

    sget v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    sget v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    move-object v1, p1

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;-><init>(Ljava/lang/String;IIZII)V

    .line 72
    .local v0, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :try_start_0
    invoke-virtual {v0, p3}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p5

    .end local p5
    check-cast p5, Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v7           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .local p5, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    new-instance p6, Lnet/yostore/aws/handler/entity/PlayList;

    .end local p6
    invoke-direct {p6, p0, p1}, Lnet/yostore/aws/handler/entity/PlayList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .local p6, rtn:Lnet/yostore/aws/handler/entity/PlayList;
    invoke-virtual {p5}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getStatus()I

    move-result p0

    .end local p0
    if-nez p0, :cond_1

    .line 80
    invoke-virtual {p5}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFileList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 81
    .local p1, fitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    new-instance p4, Lnet/yostore/aws/handler/PresentHandler;

    .end local p4
    invoke-direct {p4}, Lnet/yostore/aws/handler/PresentHandler;-><init>()V

    .line 82
    .end local v0           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .local p4, handler:Lnet/yostore/aws/handler/PresentHandler;
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_2

    .end local p1           #fitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .end local p4           #handler:Lnet/yostore/aws/handler/PresentHandler;
    :cond_1
    move-object p0, p5

    .end local p5           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .local p0, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    move-object p1, p6

    .line 90
    .end local p6           #rtn:Lnet/yostore/aws/handler/entity/PlayList;
    :goto_1
    return-object p1

    .line 73
    .restart local v0       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .restart local v7       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .local p0, disp:Ljava/lang/String;
    .local p1, parentId:Ljava/lang/String;
    .local p4, pageEnable:Z
    .local p6, page:I
    :catch_0
    move-exception p0

    .line 74
    .local p0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, v7

    .end local v7           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .local p0, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    goto :goto_1

    .line 83
    .end local v0           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local p0           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .local p1, fitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .local p4, handler:Lnet/yostore/aws/handler/PresentHandler;
    .restart local p5       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .local p6, rtn:Lnet/yostore/aws/handler/entity/PlayList;
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/api/entity/FileInfo;

    .line 84
    .local p0, f:Lnet/yostore/aws/api/entity/FileInfo;
    invoke-virtual {p0}, Lnet/yostore/aws/api/entity/FileInfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lnet/yostore/aws/handler/entity/PlayItem;

    invoke-virtual {p0}, Lnet/yostore/aws/api/entity/FileInfo;->getDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/yostore/aws/api/entity/FileInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2, p3}, Lnet/yostore/aws/handler/PresentHandler;->getStreamingSrcUrl(Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/handler/entity/PlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/yostore/aws/api/entity/FileInfo;->getId()Ljava/lang/String;

    move-result-object p0

    .end local p0           #f:Lnet/yostore/aws/api/entity/FileInfo;
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p6, v0, p0}, Lnet/yostore/aws/handler/entity/PlayList;->addItem(Lnet/yostore/aws/handler/entity/PlayItem;Z)V

    goto :goto_0
.end method
