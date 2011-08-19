.class Lnet/yostore/aws/view/navigate/BrowseActivity$8;
.super Ljava/lang/Object;
.source "BrowseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/BrowseActivity;->initList()V
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
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/BrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/navigate/BrowseActivity$8;)Lnet/yostore/aws/view/navigate/BrowseActivity;
    .locals 1
    .parameter

    .prologue
    .line 451
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 456
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$2(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$2(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    if-nez v1, :cond_1

    .line 531
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 460
    .restart local p0
    :cond_1
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$2(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 461
    .local v0, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    iget-boolean v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    if-eqz v1, :cond_2

    .line 463
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$2(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/FsInfo;

    iget-boolean v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const-class v4, Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/navigate/BrowseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 468
    :cond_2
    iget-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v2, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Folder:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne v1, v2, :cond_3

    .line 470
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    new-instance v2, Lnet/yostore/aws/dto/BrowseToObject;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lnet/yostore/aws/dto/BrowseToObject;-><init>(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/handler/entity/FsInfo;)V

    invoke-static {v1, v2}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$5(Lnet/yostore/aws/view/navigate/BrowseActivity;Lnet/yostore/aws/dto/BrowseToObject;)V

    .line 471
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$6(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/dto/BrowseToObject;

    move-result-object v1

    sget-boolean v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageEnable:Z

    sget v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageSize:I

    invoke-virtual {v1, v2, v6, v3}, Lnet/yostore/aws/dto/BrowseToObject;->setBrowsePaging(ZII)V

    .line 472
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$6(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/dto/BrowseToObject;

    move-result-object v1

    sget v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    invoke-static {v2}, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    move-result-object v2

    sget v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    invoke-static {v3}, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/dto/BrowseToObject;->setSort(Lnet/yostore/aws/dto/BrowseToObject$SortBy;Lnet/yostore/aws/dto/BrowseToObject$SortDirection;)V

    .line 473
    new-instance v1, Lnet/yostore/aws/view/navigate/BrowseActivity$8$1;

    sget-object v2, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$6(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/dto/BrowseToObject;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v5}, Lnet/yostore/aws/view/navigate/BrowseActivity$8$1;-><init>(Lnet/yostore/aws/view/navigate/BrowseActivity$8;Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V

    new-array v2, v6, [Ljava/lang/Void;

    .line 492
    aput-object v5, v2, v7

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/navigate/BrowseActivity$8$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 494
    :cond_3
    iget-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v2, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->BrowseMore:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne v1, v2, :cond_4

    .line 496
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    new-instance v2, Lnet/yostore/aws/dto/BrowseToObject;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$0(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/vo/BrowseVo;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnet/yostore/aws/dto/BrowseToObject;-><init>(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/vo/BrowseVo;)V

    invoke-static {v1, v2}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$5(Lnet/yostore/aws/view/navigate/BrowseActivity;Lnet/yostore/aws/dto/BrowseToObject;)V

    .line 497
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$6(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/dto/BrowseToObject;

    move-result-object v1

    sget-boolean v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageEnable:Z

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$0(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/vo/BrowseVo;

    move-result-object v3

    invoke-virtual {v3}, Lnet/yostore/aws/vo/BrowseVo;->getBrowsePage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    sget v4, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageSize:I

    invoke-virtual {v1, v2, v3, v4}, Lnet/yostore/aws/dto/BrowseToObject;->setBrowsePaging(ZII)V

    .line 498
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$6(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/dto/BrowseToObject;

    move-result-object v1

    sget v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    invoke-static {v2}, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    move-result-object v2

    sget v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    invoke-static {v3}, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/dto/BrowseToObject;->setSort(Lnet/yostore/aws/dto/BrowseToObject$SortBy;Lnet/yostore/aws/dto/BrowseToObject$SortDirection;)V

    .line 499
    new-instance v1, Lnet/yostore/aws/view/navigate/BrowseActivity$8$2;

    sget-object v2, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$6(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/dto/BrowseToObject;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v5}, Lnet/yostore/aws/view/navigate/BrowseActivity$8$2;-><init>(Lnet/yostore/aws/view/navigate/BrowseActivity$8;Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V

    new-array v2, v6, [Ljava/lang/Void;

    .line 518
    aput-object v5, v2, v7

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/navigate/BrowseActivity$8$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 520
    :cond_4
    iget-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v2, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->NUll:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v2, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Spreate:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-eq v1, v2, :cond_0

    .line 526
    sget-object v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    iget-object v2, v0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->getDownloadQueueItemByFileId(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/DownloadItem;

    move-result-object v1

    if-nez v1, :cond_5

    .line 527
    new-instance v1, Lnet/yostore/aws/ansytask/GoFilePreviewTask;

    sget-object v2, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$1(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$2(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v4

    iget-object v4, v4, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v1, v2, v3, p0, v5}, Lnet/yostore/aws/ansytask/GoFilePreviewTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/handler/entity/FsInfo;Landroid/os/Bundle;)V

    new-array v2, v6, [Ljava/lang/Void;

    aput-object v5, v2, v7

    invoke-virtual {v1, v2}, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 529
    .restart local p0
    :cond_5
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const-class v4, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/navigate/BrowseActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
