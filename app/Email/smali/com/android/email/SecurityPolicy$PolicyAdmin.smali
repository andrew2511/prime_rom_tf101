.class public Lcom/android/email/SecurityPolicy$PolicyAdmin;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyAdmin"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 721
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 747
    const v0, 0x7f080119

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 737
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/email/service/EmailBroadcastProcessorService;->processDevicePolicyMessage(Landroid/content/Context;I)V

    .line 739
    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 728
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/email/service/EmailBroadcastProcessorService;->processDevicePolicyMessage(Landroid/content/Context;I)V

    .line 730
    return-void
.end method

.method public onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 755
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/email/service/EmailBroadcastProcessorService;->processDevicePolicyMessage(Landroid/content/Context;I)V

    .line 757
    return-void
.end method

.method public onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 764
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/email/service/EmailBroadcastProcessorService;->processDevicePolicyMessage(Landroid/content/Context;I)V

    .line 766
    return-void
.end method
