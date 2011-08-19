.class Lnet/yostore/aws/view/search/SavedActivity$1;
.super Lnet/yostore/aws/ansytask/SearchTask;
.source "SavedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/search/SavedActivity;->refreshData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/search/SavedActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/search/SavedActivity;Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter

    .prologue
    .line 1
    .local p4, $anonymous2:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/view/search/SavedActivity$1;->this$0:Lnet/yostore/aws/view/search/SavedActivity;

    .line 148
    invoke-direct {p0, p2, p3, p4}, Lnet/yostore/aws/ansytask/SearchTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected onFailRtn(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 1
    .parameter "_bv"

    .prologue
    .line 161
    invoke-super {p0, p1}, Lnet/yostore/aws/ansytask/SearchTask;->onFailRtn(Lnet/yostore/aws/vo/BrowseVo;)V

    .line 162
    iget-object v0, p0, Lnet/yostore/aws/view/search/SavedActivity$1;->this$0:Lnet/yostore/aws/view/search/SavedActivity;

    invoke-static {v0, p1}, Lnet/yostore/aws/view/search/SavedActivity;->access$1(Lnet/yostore/aws/view/search/SavedActivity;Lnet/yostore/aws/vo/BrowseVo;)V

    .line 163
    return-void
.end method

.method protected onSuccessRtn(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 1
    .parameter "_bv"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lnet/yostore/aws/ansytask/SearchTask;->onSuccessRtn(Lnet/yostore/aws/vo/BrowseVo;)V

    .line 154
    iget-object v0, p0, Lnet/yostore/aws/view/search/SavedActivity$1;->this$0:Lnet/yostore/aws/view/search/SavedActivity;

    invoke-static {v0, p1}, Lnet/yostore/aws/view/search/SavedActivity;->access$0(Lnet/yostore/aws/view/search/SavedActivity;Lnet/yostore/aws/vo/BrowseVo;)V

    .line 155
    return-void
.end method
