.class Lcom/aws/mycloud/view/MyCloudActivity$7;
.super Ljava/lang/Object;
.source "MyCloudActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aws/mycloud/view/MyCloudActivity;->initMyDeviceAction()V
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
    iput-object p1, p0, Lcom/aws/mycloud/view/MyCloudActivity$7;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 423
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 424
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 427
    const-string v2, "com.splashtop.remote.pad.asus"

    const-string v3, "com.splashtop.remote.MainActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    :try_start_0
    iget-object v2, p0, Lcom/aws/mycloud/view/MyCloudActivity$7;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-virtual {v2, v1}, Lcom/aws/mycloud/view/MyCloudActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 431
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "Log"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SkeletonActivity::onClick "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
