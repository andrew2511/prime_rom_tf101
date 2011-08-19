.class Lnet/yostore/aws/view/navigate/BrowseActivity$9;
.super Ljava/lang/Object;
.source "BrowseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
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
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$9;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 539
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$9;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$2(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$9;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$2(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    if-nez v1, :cond_1

    :cond_0
    move v1, v5

    .line 578
    :goto_0
    return v1

    .line 543
    :cond_1
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$9;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$2(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 544
    .local v0, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    iget-boolean v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    if-eqz v1, :cond_3

    .line 546
    iget-boolean v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    if-eqz v1, :cond_2

    .line 548
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$9;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const-class v4, Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/navigate/BrowseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    move v1, v5

    .line 550
    goto :goto_0

    .line 552
    :cond_3
    iget-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v2, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Folder:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne v1, v2, :cond_4

    .line 554
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$9;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-virtual {v1, p3}, Lnet/yostore/aws/view/navigate/BrowseActivity;->showFolderContextMenu(I)V

    move v1, v6

    .line 555
    goto :goto_0

    .line 557
    :cond_4
    iget-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v2, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-eq v1, v2, :cond_5

    move v1, v5

    .line 559
    goto :goto_0

    .line 561
    :cond_5
    iget-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v2, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->NUll:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-eq v1, v2, :cond_6

    iget-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v2, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Spreate:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne v1, v2, :cond_7

    :cond_6
    move v1, v5

    .line 563
    goto :goto_0

    .line 567
    :cond_7
    iget-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 569
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$9;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-virtual {v1, p3}, Lnet/yostore/aws/view/navigate/BrowseActivity;->showInfectedFileContextMenu(I)V

    :goto_1
    move v1, v6

    .line 578
    goto :goto_0

    .line 573
    :cond_8
    sget-object v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    iget-object v2, v0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->getDownloadQueueItemByFileId(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/DownloadItem;

    move-result-object v1

    if-nez v1, :cond_9

    .line 574
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$9;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-virtual {v1, p3}, Lnet/yostore/aws/view/navigate/BrowseActivity;->showFileContextMenu(I)V

    goto :goto_1

    .line 576
    :cond_9
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$9;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const-class v4, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/navigate/BrowseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
