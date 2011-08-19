.class Lcom/aws/mycloud/view/MyCloudActivity$5;
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
    iput-object p1, p0, Lcom/aws/mycloud/view/MyCloudActivity$5;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity$5;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-static {v0}, Lcom/aws/mycloud/view/MyCloudActivity;->access$6(Lcom/aws/mycloud/view/MyCloudActivity;)V

    .line 390
    return-void
.end method
