.class public Lnet/yostore/aws/service/AWSService$mMyCloudReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AWSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/service/AWSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "mMyCloudReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/service/AWSService;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/service/AWSService;)V
    .locals 0
    .parameter

    .prologue
    .line 578
    iput-object p1, p0, Lnet/yostore/aws/service/AWSService$mMyCloudReceiver;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 586
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 587
    .local v0, bunde:Landroid/os/Bundle;
    const-string v3, "MyCloud"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 588
    .local v2, str:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 590
    iget-object v3, p0, Lnet/yostore/aws/service/AWSService$mMyCloudReceiver;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-virtual {v3}, Lnet/yostore/aws/service/AWSService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->logout(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    .end local v0           #bunde:Landroid/os/Bundle;
    .end local v2           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 593
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 595
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method
