.class Lnet/yostore/aws/view/search/ResultActivity$7;
.super Lnet/yostore/aws/ansytask/SearchTask;
.source "ResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/search/ResultActivity;->tagBtFunction(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/search/ResultActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/search/ResultActivity;Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter

    .prologue
    .line 1
    .local p4, $anonymous2:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/view/search/ResultActivity$7;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    .line 534
    invoke-direct {p0, p2, p3, p4}, Lnet/yostore/aws/ansytask/SearchTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected onFailRtn(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 1
    .parameter "_bv"

    .prologue
    .line 547
    invoke-super {p0, p1}, Lnet/yostore/aws/ansytask/SearchTask;->onFailRtn(Lnet/yostore/aws/vo/BrowseVo;)V

    .line 548
    iget-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity$7;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v0, p1}, Lnet/yostore/aws/view/search/ResultActivity;->access$1(Lnet/yostore/aws/view/search/ResultActivity;Lnet/yostore/aws/vo/BrowseVo;)V

    .line 549
    return-void
.end method

.method protected onSuccessRtn(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 1
    .parameter "_bv"

    .prologue
    .line 539
    invoke-super {p0, p1}, Lnet/yostore/aws/ansytask/SearchTask;->onSuccessRtn(Lnet/yostore/aws/vo/BrowseVo;)V

    .line 540
    iget-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity$7;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v0, p1}, Lnet/yostore/aws/view/search/ResultActivity;->access$0(Lnet/yostore/aws/view/search/ResultActivity;Lnet/yostore/aws/vo/BrowseVo;)V

    .line 541
    return-void
.end method
