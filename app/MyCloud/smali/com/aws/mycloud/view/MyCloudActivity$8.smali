.class Lcom/aws/mycloud/view/MyCloudActivity$8;
.super Ljava/lang/Object;
.source "MyCloudActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aws/mycloud/view/MyCloudActivity;->showUserId()V
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
    iput-object p1, p0, Lcom/aws/mycloud/view/MyCloudActivity$8;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 503
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity$8;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    const-string v1, "MyCloud"

    const-string v2, "Close"

    invoke-static {v0, v1, v2}, Lcom/aws/mycloud/view/MyCloudActivity;->access$8(Lcom/aws/mycloud/view/MyCloudActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity$8;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v0, v0, Lcom/aws/mycloud/view/MyCloudActivity;->awsacc:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 506
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity$8;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iput-object v3, v0, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeList:Ljava/util/List;

    .line 507
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity$8;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iput-object v3, v0, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeFileList:Ljava/util/List;

    .line 508
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity$8;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iput-object v3, v0, Lcom/aws/mycloud/view/MyCloudActivity;->mEarFileList:Ljava/util/List;

    .line 509
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity$8;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iput-object v3, v0, Lcom/aws/mycloud/view/MyCloudActivity;->mySyncList:Ljava/util/List;

    .line 510
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity$8;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iput-object v3, v0, Lcom/aws/mycloud/view/MyCloudActivity;->mEarList:Ljava/util/List;

    .line 511
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity$8;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v0, v0, Lcom/aws/mycloud/view/MyCloudActivity;->naws:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity$8;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v0, v0, Lcom/aws/mycloud/view/MyCloudActivity;->logout:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity$8;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v0, v0, Lcom/aws/mycloud/view/MyCloudActivity;->hiUser:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity$8;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-static {v0}, Lcom/aws/mycloud/view/MyCloudActivity;->access$9(Lcom/aws/mycloud/view/MyCloudActivity;)V

    .line 515
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity$8;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-static {v0}, Lcom/aws/mycloud/view/MyCloudActivity;->access$4(Lcom/aws/mycloud/view/MyCloudActivity;)V

    .line 516
    return-void
.end method
