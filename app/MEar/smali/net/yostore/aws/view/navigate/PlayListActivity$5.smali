.class Lnet/yostore/aws/view/navigate/PlayListActivity$5;
.super Ljava/lang/Object;
.source "PlayListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
        "Landroid/widget/AdapterView$OnItemClickListener;"
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
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 640
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-object v0, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/PlayListHandler;->getFsInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/PlayListHandler;->getFsInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p3, :cond_0

    .line 641
    sget-object v0, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/PlayListHandler;->getFsInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/FsInfo;

    sput-object v0, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    .line 642
    const-string v0, "1"

    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    new-instance v0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    sget-object v2, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->DEEP:Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 646
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

    .line 647
    :cond_2
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$5;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-virtual {v0, p3}, Lnet/yostore/aws/view/navigate/PlayListActivity;->updateCurrentPlay(I)V

    goto :goto_0
.end method
