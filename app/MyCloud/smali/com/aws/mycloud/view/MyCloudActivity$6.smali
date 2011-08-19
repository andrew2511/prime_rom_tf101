.class Lcom/aws/mycloud/view/MyCloudActivity$6;
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
    iput-object p1, p0, Lcom/aws/mycloud/view/MyCloudActivity$6;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity$6;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v0, v0, Lcom/aws/mycloud/view/MyCloudActivity;->vibeMain:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity$6;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-static {v0}, Lcom/aws/mycloud/view/MyCloudActivity;->access$7(Lcom/aws/mycloud/view/MyCloudActivity;)V

    .line 398
    :cond_0
    return-void
.end method
