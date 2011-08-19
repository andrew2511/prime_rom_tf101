.class Lnet/yostore/aws/view/search/ResultActivity$2$1;
.super Lnet/yostore/aws/ansytask/SearchTask;
.source "ResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/search/ResultActivity$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/search/ResultActivity$2;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/search/ResultActivity$2;Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter

    .prologue
    .line 1
    .local p4, $anonymous2:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/view/search/ResultActivity$2$1;->this$1:Lnet/yostore/aws/view/search/ResultActivity$2;

    .line 227
    invoke-direct {p0, p2, p3, p4}, Lnet/yostore/aws/ansytask/SearchTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected onFailRtn(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 1
    .parameter "_bv"

    .prologue
    .line 239
    invoke-super {p0, p1}, Lnet/yostore/aws/ansytask/SearchTask;->onFailRtn(Lnet/yostore/aws/vo/BrowseVo;)V

    .line 240
    iget-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity$2$1;->this$1:Lnet/yostore/aws/view/search/ResultActivity$2;

    invoke-static {v0}, Lnet/yostore/aws/view/search/ResultActivity$2;->access$0(Lnet/yostore/aws/view/search/ResultActivity$2;)Lnet/yostore/aws/view/search/ResultActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/yostore/aws/view/search/ResultActivity;->access$1(Lnet/yostore/aws/view/search/ResultActivity;Lnet/yostore/aws/vo/BrowseVo;)V

    .line 241
    return-void
.end method

.method protected onSuccessRtn(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 1
    .parameter "_bv"

    .prologue
    .line 232
    invoke-super {p0, p1}, Lnet/yostore/aws/ansytask/SearchTask;->onSuccessRtn(Lnet/yostore/aws/vo/BrowseVo;)V

    .line 233
    iget-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity$2$1;->this$1:Lnet/yostore/aws/view/search/ResultActivity$2;

    invoke-static {v0}, Lnet/yostore/aws/view/search/ResultActivity$2;->access$0(Lnet/yostore/aws/view/search/ResultActivity$2;)Lnet/yostore/aws/view/search/ResultActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/yostore/aws/view/search/ResultActivity;->access$0(Lnet/yostore/aws/view/search/ResultActivity;Lnet/yostore/aws/vo/BrowseVo;)V

    .line 234
    return-void
.end method
