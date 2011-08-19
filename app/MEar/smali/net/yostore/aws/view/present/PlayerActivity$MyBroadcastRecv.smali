.class public Lnet/yostore/aws/view/present/PlayerActivity$MyBroadcastRecv;
.super Landroid/content/BroadcastReceiver;
.source "PlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/present/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyBroadcastRecv"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/present/PlayerActivity;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/present/PlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1435
    iput-object p1, p0, Lnet/yostore/aws/view/present/PlayerActivity$MyBroadcastRecv;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 1441
    :try_start_0
    const-string v2, "PlayStatus"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1442
    .local v1, mStatus:I
    if-le v1, v4, :cond_0

    .line 1443
    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 1449
    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 1455
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1461
    iget-object v2, p0, Lnet/yostore/aws/view/present/PlayerActivity$MyBroadcastRecv;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/present/PlayerActivity;->access$11(Lnet/yostore/aws/view/present/PlayerActivity;)V

    .line 1462
    iget-object v2, p0, Lnet/yostore/aws/view/present/PlayerActivity$MyBroadcastRecv;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/present/PlayerActivity;->access$12(Lnet/yostore/aws/view/present/PlayerActivity;)V

    .line 1479
    .end local v1           #mStatus:I
    :cond_0
    :goto_0
    return-void

    .line 1464
    .restart local v1       #mStatus:I
    :cond_1
    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 1466
    iget-object v2, p0, Lnet/yostore/aws/view/present/PlayerActivity$MyBroadcastRecv;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/present/PlayerActivity;->access$13(Lnet/yostore/aws/view/present/PlayerActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1474
    .end local v1           #mStatus:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1477
    .local v0, ex:Ljava/lang/Exception;
    iget-object v2, p0, Lnet/yostore/aws/view/present/PlayerActivity$MyBroadcastRecv;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
