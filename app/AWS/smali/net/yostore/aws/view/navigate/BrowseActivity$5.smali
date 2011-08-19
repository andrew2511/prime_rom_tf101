.class Lnet/yostore/aws/view/navigate/BrowseActivity$5;
.super Lnet/yostore/aws/ansytask/BrowseToTask;
.source "BrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/BrowseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/BrowseActivity;Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter

    .prologue
    .line 1
    .local p4, $anonymous2:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$5;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    .line 257
    invoke-direct {p0, p2, p3, p4}, Lnet/yostore/aws/ansytask/BrowseToTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected onFailRtn(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 1
    .parameter "_bv"

    .prologue
    .line 272
    invoke-super {p0, p1}, Lnet/yostore/aws/ansytask/BrowseToTask;->onFailRtn(Lnet/yostore/aws/vo/BrowseVo;)V

    .line 273
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$5;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v0, p1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$4(Lnet/yostore/aws/view/navigate/BrowseActivity;Lnet/yostore/aws/vo/BrowseVo;)V

    .line 274
    return-void
.end method

.method protected onSuccessRtn(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 1
    .parameter "_bv"

    .prologue
    .line 264
    invoke-super {p0, p1}, Lnet/yostore/aws/ansytask/BrowseToTask;->onSuccessRtn(Lnet/yostore/aws/vo/BrowseVo;)V

    .line 265
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$5;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v0, p1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$3(Lnet/yostore/aws/view/navigate/BrowseActivity;Lnet/yostore/aws/vo/BrowseVo;)V

    .line 266
    return-void
.end method
