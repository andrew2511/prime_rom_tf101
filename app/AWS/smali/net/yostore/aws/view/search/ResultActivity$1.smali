.class Lnet/yostore/aws/view/search/ResultActivity$1;
.super Lnet/yostore/aws/ansytask/SearchTask;
.source "ResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/search/ResultActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lnet/yostore/aws/view/search/ResultActivity$1;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    .line 126
    invoke-direct {p0, p2, p3, p4}, Lnet/yostore/aws/ansytask/SearchTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected onFailRtn(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 1
    .parameter "_bv"

    .prologue
    .line 139
    invoke-super {p0, p1}, Lnet/yostore/aws/ansytask/SearchTask;->onFailRtn(Lnet/yostore/aws/vo/BrowseVo;)V

    .line 140
    iget-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity$1;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v0, p1}, Lnet/yostore/aws/view/search/ResultActivity;->access$1(Lnet/yostore/aws/view/search/ResultActivity;Lnet/yostore/aws/vo/BrowseVo;)V

    .line 141
    return-void
.end method

.method protected onSuccessRtn(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 1
    .parameter "_bv"

    .prologue
    .line 131
    invoke-super {p0, p1}, Lnet/yostore/aws/ansytask/SearchTask;->onSuccessRtn(Lnet/yostore/aws/vo/BrowseVo;)V

    .line 132
    iget-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity$1;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v0, p1}, Lnet/yostore/aws/view/search/ResultActivity;->access$0(Lnet/yostore/aws/view/search/ResultActivity;Lnet/yostore/aws/vo/BrowseVo;)V

    .line 133
    return-void
.end method
