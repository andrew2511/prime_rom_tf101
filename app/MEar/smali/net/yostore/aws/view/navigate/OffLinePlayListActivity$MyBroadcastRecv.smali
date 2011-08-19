.class public Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$MyBroadcastRecv;
.super Landroid/content/BroadcastReceiver;
.source "OffLinePlayListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyBroadcastRecv"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 793
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$MyBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

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

    .line 799
    :try_start_0
    const-string v2, "PlayStatus"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 800
    .local v1, mStatus:I
    if-le v1, v4, :cond_0

    .line 801
    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 807
    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 813
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 819
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$MyBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$4(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V

    .line 820
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$MyBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$5(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    .end local v1           #mStatus:I
    :cond_0
    :goto_0
    return-void

    .line 829
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 830
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "OffLinePlayListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
