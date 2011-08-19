.class Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$4;
.super Ljava/lang/Object;
.source "OffLinePlayListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->initList()V
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
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$4;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->getFsInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/FsInfo;

    sput-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    .line 206
    const-string v0, "1"

    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$4;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;->DEEP:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$6(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    sget-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v0, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v0, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    :cond_2
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$4;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-virtual {v0, p3}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->updateCurrentPlay(I)V

    goto :goto_0
.end method
