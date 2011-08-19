.class Lnet/yostore/aws/view/navigate/BrowseActivity$8$2;
.super Lnet/yostore/aws/ansytask/BrowseToTask;
.source "BrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/BrowseActivity$8;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/navigate/BrowseActivity$8;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/BrowseActivity$8;Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter

    .prologue
    .line 1
    .local p4, $anonymous2:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8$2;->this$1:Lnet/yostore/aws/view/navigate/BrowseActivity$8;

    .line 499
    invoke-direct {p0, p2, p3, p4}, Lnet/yostore/aws/ansytask/BrowseToTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected onFailRtn(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 1
    .parameter "_bv"

    .prologue
    .line 514
    invoke-super {p0, p1}, Lnet/yostore/aws/ansytask/BrowseToTask;->onFailRtn(Lnet/yostore/aws/vo/BrowseVo;)V

    .line 515
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8$2;->this$1:Lnet/yostore/aws/view/navigate/BrowseActivity$8;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->access$0(Lnet/yostore/aws/view/navigate/BrowseActivity$8;)Lnet/yostore/aws/view/navigate/BrowseActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$4(Lnet/yostore/aws/view/navigate/BrowseActivity;Lnet/yostore/aws/vo/BrowseVo;)V

    .line 516
    return-void
.end method

.method protected onSuccessRtn(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 1
    .parameter "_bv"

    .prologue
    .line 506
    invoke-super {p0, p1}, Lnet/yostore/aws/ansytask/BrowseToTask;->onSuccessRtn(Lnet/yostore/aws/vo/BrowseVo;)V

    .line 507
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$8$2;->this$1:Lnet/yostore/aws/view/navigate/BrowseActivity$8;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/BrowseActivity$8;->access$0(Lnet/yostore/aws/view/navigate/BrowseActivity$8;)Lnet/yostore/aws/view/navigate/BrowseActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$3(Lnet/yostore/aws/view/navigate/BrowseActivity;Lnet/yostore/aws/vo/BrowseVo;)V

    .line 508
    return-void
.end method
