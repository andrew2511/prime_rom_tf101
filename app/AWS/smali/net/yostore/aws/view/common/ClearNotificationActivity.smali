.class public Lnet/yostore/aws/view/common/ClearNotificationActivity;
.super Landroid/app/Activity;
.source "ClearNotificationActivity.java"


# static fields
.field static ctx:Landroid/content/Context;


# instance fields
.field private handler:Landroid/os/Handler;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/view/common/ClearNotificationActivity;->ctx:Landroid/content/Context;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/common/ClearNotificationActivity;->handler:Landroid/os/Handler;

    .line 41
    new-instance v0, Lnet/yostore/aws/view/common/ClearNotificationActivity$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/common/ClearNotificationActivity$1;-><init>(Lnet/yostore/aws/view/common/ClearNotificationActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/common/ClearNotificationActivity;->runnable:Ljava/lang/Runnable;

    .line 15
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sput-object p0, Lnet/yostore/aws/view/common/ClearNotificationActivity;->ctx:Landroid/content/Context;

    .line 28
    :try_start_0
    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    invoke-interface {v0}, Lnet/yostore/aws/service/AWSServiceInterface;->clearNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/view/common/ClearNotificationActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/yostore/aws/view/common/ClearNotificationActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    return-void

    .line 31
    :catch_0
    move-exception v0

    goto :goto_0
.end method
