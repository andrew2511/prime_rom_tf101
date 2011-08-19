.class public Lnet/yostore/aws/ansytask/SearchTask;
.super Landroid/os/AsyncTask;
.source "SearchTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field _mdialog:Landroid/app/ProgressDialog;

.field private bto:Lnet/yostore/aws/dto/BrowseToObject;

.field private bv:Lnet/yostore/aws/vo/BrowseVo;

.field ctx:Landroid/content/Context;

.field fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

.field fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

.field private fsInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;"
        }
    .end annotation
.end field

.field task:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V
    .locals 2
    .parameter "ctx"
    .parameter "bto"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lnet/yostore/aws/dto/BrowseToObject;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p3, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    new-instance v0, Lnet/yostore/aws/vo/BrowseVo;

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Search:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-direct {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;-><init>(Lnet/yostore/aws/dto/BrowseToObject$BrowseType;)V

    iput-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    .line 40
    iput-object p1, p0, Lnet/yostore/aws/ansytask/SearchTask;->ctx:Landroid/content/Context;

    .line 41
    iput-object p3, p0, Lnet/yostore/aws/ansytask/SearchTask;->fsInfos:Ljava/util/List;

    .line 42
    iput-object p2, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    .line 43
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 9
    .parameter "arg0"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 48
    iput-object p0, p0, Lnet/yostore/aws/ansytask/SearchTask;->task:Landroid/os/AsyncTask;

    .line 49
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    if-eqz v0, :cond_4

    .line 50
    new-array v0, v8, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/SearchTask;->publishProgress([Ljava/lang/Object;)V

    .line 52
    new-instance v0, Lnet/yostore/aws/handler/FolderBrowseHandler;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/SearchTask;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v2}, Lnet/yostore/aws/dto/BrowseToObject;->getApicfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/handler/FolderBrowseHandler;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    iput-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

    .line 53
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->SavedSearch:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_1

    .line 54
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

    invoke-virtual {v0}, Lnet/yostore/aws/handler/FolderBrowseHandler;->getSavedSearchList()Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    .line 63
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->getFsInfos()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 64
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 69
    :goto_1
    return-object v0

    .line 56
    :cond_1
    const-string v0, "0"

    iget-object v1, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v1

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/Search;->getChoiceall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v0

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/Search;->getChoice()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 57
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v2}, Lnet/yostore/aws/dto/BrowseToObject;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v2

    invoke-virtual {v2}, Lnet/yostore/aws/handler/entity/Search;->getSrhopt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v2}, Lnet/yostore/aws/dto/BrowseToObject;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v2

    invoke-virtual {v2}, Lnet/yostore/aws/handler/entity/Search;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v3}, Lnet/yostore/aws/dto/BrowseToObject;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v3

    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/Search;->getMark()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v4}, Lnet/yostore/aws/dto/BrowseToObject;->getPageSize()I

    move-result v4

    iget-object v5, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v5}, Lnet/yostore/aws/dto/BrowseToObject;->getSearchOffset()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lnet/yostore/aws/handler/FolderBrowseHandler;->quickSearchFileDir(ZLjava/lang/String;Ljava/lang/String;II)Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v2}, Lnet/yostore/aws/dto/BrowseToObject;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v2

    invoke-virtual {v2}, Lnet/yostore/aws/handler/entity/Search;->getSrhopt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v2}, Lnet/yostore/aws/dto/BrowseToObject;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v2

    invoke-virtual {v2}, Lnet/yostore/aws/handler/entity/Search;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v3}, Lnet/yostore/aws/dto/BrowseToObject;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v3

    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/Search;->getMark()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v4}, Lnet/yostore/aws/dto/BrowseToObject;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/Search;->getExt()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v5}, Lnet/yostore/aws/dto/BrowseToObject;->getPageSize()I

    move-result v5

    iget-object v6, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v6}, Lnet/yostore/aws/dto/BrowseToObject;->getSearchOffset()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lnet/yostore/aws/handler/FolderBrowseHandler;->searchFileDir(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    goto/16 :goto_0

    .line 66
    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    .line 69
    :cond_4
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/SearchTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onBack()V
    .locals 2

    .prologue
    .line 156
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowsePage()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Search:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getSearchOffset()I

    move-result v0

    if-nez v0, :cond_2

    .line 157
    :cond_1
    iget-object p0, p0, Lnet/yostore/aws/ansytask/SearchTask;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_2
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 77
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onFailRtn(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 3
    .parameter "_bv"

    .prologue
    .line 170
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->ctx:Landroid/content/Context;

    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 171
    return-void
.end method

.method protected onNullInput()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8
    .parameter "result"

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 106
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowsePage()I

    move-result v0

    if-gt v0, v5, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Search:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getSearchOffset()I

    move-result v0

    iget-object v1, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->getPageSize()I

    move-result v1

    if-lt v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->fsInfos:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->fsInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->fsInfos:Ljava/util/List;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/SearchTask;->fsInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v0, v0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->SearchMore:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->fsInfos:Ljava/util/List;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/SearchTask;->fsInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v0, v0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->BrowseMore:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne v0, v1, :cond_3

    .line 107
    :cond_2
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->fsInfos:Ljava/util/List;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/SearchTask;->fsInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 109
    :cond_3
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->fsInfos:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getSearchOffset()I

    move-result v0

    if-nez v0, :cond_5

    .line 110
    :cond_4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->fsInfos:Ljava/util/List;

    .line 112
    :cond_5
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/SearchTask;->fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->getFbTotal()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseTotal(I)V

    .line 113
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->getSearchOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setSearchOffset(I)V

    .line 114
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setSearch(Lnet/yostore/aws/handler/entity/Search;)V

    .line 115
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->SavedSearch:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_7

    .line 116
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->SavedSearch:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseType(Lnet/yostore/aws/dto/BrowseToObject$BrowseType;)V

    .line 119
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->fsInfos:Ljava/util/List;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/SearchTask;->fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->getFsInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->SavedSearch:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->isPageEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->fsInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lnet/yostore/aws/ansytask/SearchTask;->fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->getFbTotal()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 121
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/SearchTask;->fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->getFbTotal()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseTotal(I)V

    .line 122
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->fsInfos:Ljava/util/List;

    new-instance v1, Lnet/yostore/aws/handler/entity/FsInfo;

    sget-object v2, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->SearchMore:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iget-object v3, p0, Lnet/yostore/aws/ansytask/SearchTask;->ctx:Landroid/content/Context;

    const v4, 0x7f06006c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/handler/entity/FsInfo$EntryType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_6
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/SearchTask;->fsInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setFsInfos(Ljava/util/List;)V

    .line 125
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    sget-object v1, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->Success:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setStatus(Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;)V

    .line 126
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {v0, v6}, Lnet/yostore/aws/vo/BrowseVo;->setBackup(Z)V

    .line 127
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {v0, v5}, Lnet/yostore/aws/vo/BrowseVo;->setReadOnly(Z)V

    .line 128
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/SearchTask;->onSuccessRtn(Lnet/yostore/aws/vo/BrowseVo;)V

    .line 129
    new-array v0, v5, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/SearchTask;->publishProgress([Ljava/lang/Object;)V

    .line 152
    :goto_1
    return-void

    .line 118
    :cond_7
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Search:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseType(Lnet/yostore/aws/dto/BrowseToObject$BrowseType;)V

    goto :goto_0

    .line 130
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 131
    invoke-virtual {p0}, Lnet/yostore/aws/ansytask/SearchTask;->onNullInput()V

    goto :goto_1

    .line 133
    :cond_9
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/SearchTask;->fsInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setFsInfos(Ljava/util/List;)V

    .line 134
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setSearch(Lnet/yostore/aws/handler/entity/Search;)V

    .line 135
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->SavedSearch:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_a

    .line 136
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->SavedSearch:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseType(Lnet/yostore/aws/dto/BrowseToObject$BrowseType;)V

    .line 139
    :goto_2
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->getSearchOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setSearchOffset(I)V

    .line 140
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {v0, v6}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseTotal(I)V

    .line 141
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    sget-object v1, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->GeneralErr:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setStatus(Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;)V

    .line 142
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v0

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/Search;->getSrhopt()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v0

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/Search;->getSrhopt()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 143
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/SearchTask;->ctx:Landroid/content/Context;

    const v3, 0x7f060035

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/ansytask/SearchTask;->fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

    iget-object v2, v2, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setErrMsg(Ljava/lang/String;)V

    .line 147
    :goto_3
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {v0, v6}, Lnet/yostore/aws/vo/BrowseVo;->setBackup(Z)V

    .line 148
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {v0, v5}, Lnet/yostore/aws/vo/BrowseVo;->setReadOnly(Z)V

    .line 149
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/SearchTask;->onFailRtn(Lnet/yostore/aws/vo/BrowseVo;)V

    .line 150
    new-array v0, v5, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/SearchTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 138
    :cond_a
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Search:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseType(Lnet/yostore/aws/dto/BrowseToObject$BrowseType;)V

    goto :goto_2

    .line 145
    :cond_b
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/SearchTask;->ctx:Landroid/content/Context;

    const v3, 0x7f060034

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/ansytask/SearchTask;->fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

    iget-object v2, v2, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setErrMsg(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/SearchTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 87
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 89
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/SearchTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/SearchTask;->ctx:Landroid/content/Context;

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lnet/yostore/aws/ansytask/SearchTask$1;

    invoke-direct {v5, p0}, Lnet/yostore/aws/ansytask/SearchTask$1;-><init>(Lnet/yostore/aws/ansytask/SearchTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->_mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 96
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/SearchTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method protected onSuccessRtn(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 0
    .parameter "_bv"

    .prologue
    .line 167
    return-void
.end method
