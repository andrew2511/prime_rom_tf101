.class Lnet/yostore/aws/view/navigate/PlayListActivity$6;
.super Ljava/lang/Object;
.source "PlayListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/PlayListActivity;->initList()V
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
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$6;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
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
    .line 656
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$6;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$4(Lnet/yostore/aws/view/navigate/PlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$6;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$4(Lnet/yostore/aws/view/navigate/PlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    sget-object v0, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/PlayListHandler;->getFsInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/FsInfo;

    sput-object v0, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    .line 658
    const-string v0, "1"

    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$6;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-virtual {v0, p3}, Lnet/yostore/aws/view/navigate/PlayListActivity;->showFolderContextMenu(I)V

    .line 665
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 661
    :cond_1
    sget-object v0, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v0, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v0, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    :cond_2
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$6;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-virtual {v0, p3}, Lnet/yostore/aws/view/navigate/PlayListActivity;->showFileContextMenu(I)V

    goto :goto_0
.end method
