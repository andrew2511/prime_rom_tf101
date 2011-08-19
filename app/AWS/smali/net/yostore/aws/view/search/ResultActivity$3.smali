.class Lnet/yostore/aws/view/search/ResultActivity$3;
.super Ljava/lang/Object;
.source "ResultActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
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
    iput-object p1, p0, Lnet/yostore/aws/view/search/ResultActivity$3;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
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
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 261
    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity$3;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/search/ResultActivity;->access$2(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity$3;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/search/ResultActivity;->access$2(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    if-nez v1, :cond_1

    :cond_0
    move v1, v3

    .line 284
    :goto_0
    return v1

    .line 264
    :cond_1
    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity$3;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/search/ResultActivity;->access$2(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 265
    .local v0, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    iget-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v2, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Folder:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne v1, v2, :cond_2

    .line 266
    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity$3;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-virtual {v1, p3}, Lnet/yostore/aws/view/search/ResultActivity;->showFolderContextMenu(I)V

    move v1, v5

    .line 267
    goto :goto_0

    .line 268
    :cond_2
    iget-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v2, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-eq v1, v2, :cond_3

    move v1, v3

    .line 269
    goto :goto_0

    .line 270
    :cond_3
    iget-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v2, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->NUll:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne v1, v2, :cond_4

    move v1, v3

    .line 271
    goto :goto_0

    .line 273
    :cond_4
    iget-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 274
    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity$3;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-virtual {v1, p3}, Lnet/yostore/aws/view/search/ResultActivity;->showInfectedFileContextMenu(I)V

    :goto_1
    move v1, v5

    .line 284
    goto :goto_0

    .line 276
    :cond_5
    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    iget-object v2, v0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->getDownloadQueueItemByFileId(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/DownloadItem;

    move-result-object v1

    if-nez v1, :cond_6

    .line 277
    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity$3;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-virtual {v1, p3}, Lnet/yostore/aws/view/search/ResultActivity;->showFileContextMenu(I)V

    goto :goto_1

    .line 279
    :cond_6
    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity$3;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    .line 280
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 281
    sget-object v3, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    const-class v4, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 279
    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/search/ResultActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
