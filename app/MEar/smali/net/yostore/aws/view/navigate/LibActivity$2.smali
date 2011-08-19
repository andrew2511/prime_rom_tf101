.class Lnet/yostore/aws/view/navigate/LibActivity$2;
.super Ljava/lang/Object;
.source "LibActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/LibActivity;->initList()V
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
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/LibActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/LibActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/LibActivity$2;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    .line 484
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
    .line 487
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    if-eqz v1, :cond_0

    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/LibHandler;->getFsInfos()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/LibHandler;->getFsInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 488
    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/LibHandler;->getFsInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/FsInfo;

    sput-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    .line 489
    const-string v1, "1"

    sget-object v2, Lnet/yostore/aws/view/navigate/LibActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    new-instance v1, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$2;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    sget-object v3, Lnet/yostore/aws/view/navigate/LibActivity$NAVI;->DEEP:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    invoke-direct {v1, v2, v3}, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;Lnet/yostore/aws/view/navigate/LibActivity$NAVI;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/navigate/LibActivity$naviTo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    const-string v1, "more"

    sget-object v2, Lnet/yostore/aws/view/navigate/LibActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 492
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 493
    .local v0, _msg:Landroid/os/Message;
    const/16 v1, 0xb4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 494
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$2;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$14(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 496
    .end local v0           #_msg:Landroid/os/Message;
    :cond_2
    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 497
    :cond_3
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$2;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-virtual {v1, p3}, Lnet/yostore/aws/view/navigate/LibActivity;->updateCurrentPlay(I)V

    goto :goto_0
.end method
