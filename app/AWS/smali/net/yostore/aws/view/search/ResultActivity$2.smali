.class Lnet/yostore/aws/view/search/ResultActivity$2;
.super Ljava/lang/Object;
.source "ResultActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/search/ResultActivity;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/search/ResultActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/search/ResultActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/search/ResultActivity$2;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/search/ResultActivity$2;)Lnet/yostore/aws/view/search/ResultActivity;
    .locals 1
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity$2;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 209
    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity$2;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/search/ResultActivity;->access$2(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity$2;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/search/ResultActivity;->access$2(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v2

    iget-object v2, v2, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    if-nez v2, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity$2;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/search/ResultActivity;->access$2(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v2

    iget-object v2, v2, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 213
    .local v0, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    iget-object v2, v0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v3, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Folder:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne v2, v3, :cond_2

    .line 214
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 215
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "FromWhere"

    const-string v3, "Search"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v2, "fi.display"

    iget-object v3, v0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v2, "fi.id"

    iget-object v3, v0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v2, "fi.isbackup"

    iget-object v3, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    sget-object v2, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    const-class v3, Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 220
    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity$2;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-virtual {v2, v1}, Lnet/yostore/aws/view/search/ResultActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 222
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v2, v0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v3, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->SearchMore:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne v2, v3, :cond_3

    .line 223
    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity$2;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    new-instance v3, Lnet/yostore/aws/dto/BrowseToObject;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v4

    iget-object v5, p0, Lnet/yostore/aws/view/search/ResultActivity$2;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/search/ResultActivity;->access$3(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/vo/BrowseVo;

    move-result-object v5

    invoke-virtual {v5}, Lnet/yostore/aws/vo/BrowseVo;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnet/yostore/aws/dto/BrowseToObject;-><init>(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/handler/entity/Search;)V

    invoke-static {v2, v3}, Lnet/yostore/aws/view/search/ResultActivity;->access$4(Lnet/yostore/aws/view/search/ResultActivity;Lnet/yostore/aws/dto/BrowseToObject;)V

    .line 224
    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity$2;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/search/ResultActivity;->access$5(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/dto/BrowseToObject;

    move-result-object v2

    sget-boolean v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageEnable:Z

    iget-object v4, p0, Lnet/yostore/aws/view/search/ResultActivity$2;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/search/ResultActivity;->access$3(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/vo/BrowseVo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/vo/BrowseVo;->getSearchOffset()I

    move-result v4

    sget v5, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageSize:I

    add-int/2addr v4, v5

    sget v5, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageSize:I

    invoke-virtual {v2, v3, v4, v5}, Lnet/yostore/aws/dto/BrowseToObject;->setSearchPaging(ZII)V

    .line 225
    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity$2;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/search/ResultActivity;->access$5(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/dto/BrowseToObject;

    move-result-object v2

    sget v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    invoke-static {v3}, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    move-result-object v3

    sget v4, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    invoke-static {v4}, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/yostore/aws/dto/BrowseToObject;->setSort(Lnet/yostore/aws/dto/BrowseToObject$SortBy;Lnet/yostore/aws/dto/BrowseToObject$SortDirection;)V

    .line 227
    new-instance v2, Lnet/yostore/aws/view/search/ResultActivity$2$1;

    sget-object v3, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    iget-object v4, p0, Lnet/yostore/aws/view/search/ResultActivity$2;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/search/ResultActivity;->access$5(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/dto/BrowseToObject;

    move-result-object v4

    iget-object v5, p0, Lnet/yostore/aws/view/search/ResultActivity$2;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/search/ResultActivity;->access$2(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v5

    iget-object v5, v5, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4, v5}, Lnet/yostore/aws/view/search/ResultActivity$2$1;-><init>(Lnet/yostore/aws/view/search/ResultActivity$2;Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Void;

    const/4 v4, 0x0

    .line 243
    aput-object v6, v3, v4

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/search/ResultActivity$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 244
    :cond_3
    iget-object v2, v0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v3, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->NUll:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-eq v2, v3, :cond_0

    .line 246
    sget-object v2, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    iget-object v3, v0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->getDownloadQueueItemByFileId(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/DownloadItem;

    move-result-object v2

    if-nez v2, :cond_4

    .line 247
    new-instance v2, Lnet/yostore/aws/ansytask/GoFilePreviewTask;

    sget-object v3, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    iget-object v4, p0, Lnet/yostore/aws/view/search/ResultActivity$2;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/search/ResultActivity;->access$6(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, v6}, Lnet/yostore/aws/ansytask/GoFilePreviewTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/handler/entity/FsInfo;Landroid/os/Bundle;)V

    invoke-virtual {v2, v6}, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 249
    :cond_4
    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity$2;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    .line 250
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 251
    sget-object v4, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    const-class v5, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 249
    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/search/ResultActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
