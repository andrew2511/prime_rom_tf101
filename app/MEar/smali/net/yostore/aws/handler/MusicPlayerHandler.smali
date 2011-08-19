.class public Lnet/yostore/aws/handler/MusicPlayerHandler;
.super Ljava/lang/Object;
.source "MusicPlayerHandler.java"


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
    .line 57
    .local p1, dispArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, urlArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lnet/yostore/aws/handler/entity/PlayList;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnet/yostore/aws/handler/entity/PlayList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v1, rtn:Lnet/yostore/aws/handler/entity/PlayList;
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 61
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/handler/entity/PlayList;->setPosition(I)V

    .line 62
    return-object v1

    .line 59
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

    .line 58
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
    .line 20
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    new-instance v3, Lnet/yostore/aws/handler/entity/PlayList;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lnet/yostore/aws/handler/entity/PlayList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .local v3, rtn:Lnet/yostore/aws/handler/entity/PlayList;
    new-instance v2, Lnet/yostore/aws/handler/PresentHandler;

    invoke-direct {v2}, Lnet/yostore/aws/handler/PresentHandler;-><init>()V

    .line 24
    .local v2, handler:Lnet/yostore/aws/handler/PresentHandler;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 25
    .local v0, fitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 34
    return-object v3

    .line 26
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/api/entity/EntryInfo;

    .line 27
    .local v1, fsinfo:Lnet/yostore/aws/api/entity/EntryInfo;
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/EntryInfo;->getRawentryname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mp3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    new-instance v4, Lnet/yostore/aws/handler/entity/PlayItem;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/EntryInfo;->getRawentryname()Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/EntryInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, p3}, Lnet/yostore/aws/handler/PresentHandler;->getStreamingSrcUrl(Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lnet/yostore/aws/handler/entity/PlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/EntryInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 28
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
    .line 39
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    new-instance v3, Lnet/yostore/aws/handler/entity/PlayList;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lnet/yostore/aws/handler/entity/PlayList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .local v3, rtn:Lnet/yostore/aws/handler/entity/PlayList;
    new-instance v2, Lnet/yostore/aws/handler/PresentHandler;

    invoke-direct {v2}, Lnet/yostore/aws/handler/PresentHandler;-><init>()V

    .line 43
    .local v2, handler:Lnet/yostore/aws/handler/PresentHandler;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 44
    .local v0, fitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 53
    return-object v3

    .line 45
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 46
    .local v1, fsinfo:Lnet/yostore/aws/handler/entity/FsInfo;
    iget-object v4, v1, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mp3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    new-instance v4, Lnet/yostore/aws/handler/entity/PlayItem;

    iget-object v5, v1, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 48
    iget-object v6, v1, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v6, p3}, Lnet/yostore/aws/handler/PresentHandler;->getStreamingSrcUrl(Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lnet/yostore/aws/handler/entity/PlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v5, v1, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 47
    invoke-virtual {v3, v4, v5}, Lnet/yostore/aws/handler/entity/PlayList;->addItem(Lnet/yostore/aws/handler/entity/PlayItem;Z)V

    goto :goto_0
.end method

.method public static getPlayList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/entity/PlayList;
    .locals 11
    .parameter "disp"
    .parameter "parentId"
    .parameter "nowId"
    .parameter "apicfg"

    .prologue
    .line 67
    const/4 v6, 0x0

    .line 68
    .local v6, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    new-instance v1, Lnet/yostore/aws/api/helper/FolderBrowseHelper;

    invoke-direct {v1, p1}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :try_start_0
    invoke-virtual {v1, p3}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    new-instance v7, Lnet/yostore/aws/handler/entity/PlayList;

    invoke-direct {v7, p0, p1}, Lnet/yostore/aws/handler/entity/PlayList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .local v7, rtn:Lnet/yostore/aws/handler/entity/PlayList;
    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getStatus()I

    move-result v8

    if-nez v8, :cond_1

    .line 78
    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFileList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 79
    .local v4, fitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    new-instance v5, Lnet/yostore/aws/handler/PresentHandler;

    invoke-direct {v5}, Lnet/yostore/aws/handler/PresentHandler;-><init>()V

    .line 80
    .local v5, handler:Lnet/yostore/aws/handler/PresentHandler;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .end local v4           #fitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .end local v5           #handler:Lnet/yostore/aws/handler/PresentHandler;
    :cond_1
    move-object v8, v7

    .line 88
    .end local v7           #rtn:Lnet/yostore/aws/handler/entity/PlayList;
    :goto_1
    return-object v8

    .line 71
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 72
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    const/4 v8, 0x0

    goto :goto_1

    .line 81
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #fitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .restart local v5       #handler:Lnet/yostore/aws/handler/PresentHandler;
    .restart local v7       #rtn:Lnet/yostore/aws/handler/entity/PlayList;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/yostore/aws/api/entity/FileInfo;

    .line 82
    .local v3, f:Lnet/yostore/aws/api/entity/FileInfo;
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/FileInfo;->getDisplay()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".mp3"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 83
    new-instance v8, Lnet/yostore/aws/handler/entity/PlayItem;

    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/FileInfo;->getDisplay()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/FileInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, p3}, Lnet/yostore/aws/handler/PresentHandler;->getStreamingSrcUrl(Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lnet/yostore/aws/handler/entity/PlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/FileInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Lnet/yostore/aws/handler/entity/PlayList;->addItem(Lnet/yostore/aws/handler/entity/PlayItem;Z)V

    goto :goto_0
.end method
