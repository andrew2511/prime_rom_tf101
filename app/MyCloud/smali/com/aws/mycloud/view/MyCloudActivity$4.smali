.class Lcom/aws/mycloud/view/MyCloudActivity$4;
.super Ljava/lang/Object;
.source "MyCloudActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aws/mycloud/view/MyCloudActivity;->initTabsAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aws/mycloud/view/MyCloudActivity;


# direct methods
.method constructor <init>(Lcom/aws/mycloud/view/MyCloudActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aws/mycloud/view/MyCloudActivity$4;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 372
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity$4;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-static {v1}, Lcom/aws/mycloud/view/MyCloudActivity;->access$5(Lcom/aws/mycloud/view/MyCloudActivity;)V

    .line 373
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity$4;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v1, v1, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v1, :cond_5

    .line 374
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity$4;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v1, v1, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity$4;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v1, v1, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity$4;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v1, v1, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeFileList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity$4;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v1, v1, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity$4;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v1, v1, Lcom/aws/mycloud/view/MyCloudActivity;->mEarFileList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity$4;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v1, v1, Lcom/aws/mycloud/view/MyCloudActivity;->mEarFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 377
    :cond_2
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity$4;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v1, v1, Lcom/aws/mycloud/view/MyCloudActivity;->mySyncList:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity$4;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v1, v1, Lcom/aws/mycloud/view/MyCloudActivity;->mySyncList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 378
    :cond_3
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity$4;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v1, v1, Lcom/aws/mycloud/view/MyCloudActivity;->mEarList:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity$4;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v1, v1, Lcom/aws/mycloud/view/MyCloudActivity;->mEarList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 380
    :cond_4
    new-instance v0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;

    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity$4;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v2, p0, Lcom/aws/mycloud/view/MyCloudActivity$4;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-direct {v0, v1, v2}, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;-><init>(Lcom/aws/mycloud/view/MyCloudActivity;Landroid/content/Context;)V

    .line 381
    .local v0, t:Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 384
    .end local v0           #t:Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;
    :cond_5
    return-void
.end method
