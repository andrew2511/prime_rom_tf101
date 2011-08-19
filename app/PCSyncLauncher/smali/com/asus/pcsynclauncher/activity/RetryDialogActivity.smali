.class public Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RetryDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/pcsynclauncher/activity/RetryDialogActivity$USBStateChangeReceiver;
    }
.end annotation


# instance fields
.field private ap:Lcom/android/internal/app/AlertController$AlertParams;

.field private mUSBStateChangeReceiver:Lcom/asus/pcsynclauncher/activity/RetryDialogActivity$USBStateChangeReceiver;

.field private mUSBStateIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 91
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    .line 93
    :goto_0
    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 95
    invoke-virtual {p0}, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->finish()V

    .line 97
    :cond_0
    return-void

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f030005

    const v6, 0x7f030004

    const v5, 0x7f030006

    .line 30
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 33
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->mUSBStateIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->mUSBStateIntentFilter:Landroid/content/IntentFilter;

    .line 35
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->mUSBStateIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->mUSBStateChangeReceiver:Lcom/asus/pcsynclauncher/activity/RetryDialogActivity$USBStateChangeReceiver;

    if-nez v0, :cond_1

    .line 38
    new-instance v0, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity$USBStateChangeReceiver;

    invoke-direct {v0, p0}, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity$USBStateChangeReceiver;-><init>(Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;)V

    iput-object v0, p0, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->mUSBStateChangeReceiver:Lcom/asus/pcsynclauncher/activity/RetryDialogActivity$USBStateChangeReceiver;

    .line 39
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->mUSBStateChangeReceiver:Lcom/asus/pcsynclauncher/activity/RetryDialogActivity$USBStateChangeReceiver;

    iget-object v1, p0, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->mUSBStateIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, p0, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    .line 43
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v6}, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 44
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v7}, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 45
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 46
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 47
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f030002

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, v5}, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v5}, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0, v7}, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0, v6}, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0, v5}, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 53
    invoke-virtual {p0}, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->setupAlert()V

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 59
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->mUSBStateChangeReceiver:Lcom/asus/pcsynclauncher/activity/RetryDialogActivity$USBStateChangeReceiver;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->mUSBStateChangeReceiver:Lcom/asus/pcsynclauncher/activity/RetryDialogActivity$USBStateChangeReceiver;

    invoke-virtual {p0, v0}, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    iput-object v1, p0, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->mUSBStateChangeReceiver:Lcom/asus/pcsynclauncher/activity/RetryDialogActivity$USBStateChangeReceiver;

    .line 62
    iput-object v1, p0, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->mUSBStateIntentFilter:Landroid/content/IntentFilter;

    .line 64
    :cond_0
    return-void
.end method
