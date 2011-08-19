.class public Lnet/yostore/aws/view/navigate/LibActivity$MyBroadcastRecv;
.super Landroid/content/BroadcastReceiver;
.source "LibActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/LibActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyBroadcastRecv"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/LibActivity;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/navigate/LibActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1581
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/LibActivity$MyBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    .line 1588
    :try_start_0
    const-string v1, "PlayStatus"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1589
    .local v0, mStatus:I
    if-le v0, v3, :cond_0

    .line 1590
    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 1596
    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 1602
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1608
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$MyBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$18(Lnet/yostore/aws/view/navigate/LibActivity;)V

    .line 1609
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$MyBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$19(Lnet/yostore/aws/view/navigate/LibActivity;)V

    .line 1626
    .end local v0           #mStatus:I
    :cond_0
    :goto_0
    return-void

    .line 1611
    .restart local v0       #mStatus:I
    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1613
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$MyBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$20(Lnet/yostore/aws/view/navigate/LibActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1623
    .end local v0           #mStatus:I
    :catch_0
    move-exception v1

    goto :goto_0
.end method
