.class public Lcom/nvidia/tegrazone/utils/NVBroadcast;
.super Ljava/lang/Object;
.source "NVBroadcast.java"


# instance fields
.field public callingActivity:Landroid/app/Activity;

.field public serviceEvent:Lcom/nvidia/tegrazone/services/events/NVServiceEvent;


# direct methods
.method public constructor <init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nvidia/tegrazone/utils/NVBroadcast;->serviceEvent:Lcom/nvidia/tegrazone/services/events/NVServiceEvent;

    .line 21
    iput-object p1, p0, Lcom/nvidia/tegrazone/utils/NVBroadcast;->serviceEvent:Lcom/nvidia/tegrazone/services/events/NVServiceEvent;

    .line 22
    return-void
.end method

.method public static showOK(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3
    .parameter "title"
    .parameter "output"
    .parameter "a"

    .prologue
    .line 28
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nvidia/tegrazone/utils/NVBroadcast$1;

    invoke-direct {v2}, Lcom/nvidia/tegrazone/utils/NVBroadcast$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 40
    :cond_0
    return-void
.end method

.method public static showToast(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "a"
    .parameter "message"

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 119
    return-void
.end method


# virtual methods
.method public showNoResults(Landroid/app/Activity;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    const v1, 0x7f060047

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 102
    const v1, 0x7f060024

    new-instance v2, Lcom/nvidia/tegrazone/utils/NVBroadcast$5;

    invoke-direct {v2, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast$5;-><init>(Lcom/nvidia/tegrazone/utils/NVBroadcast;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 107
    const v1, 0x7f060061

    new-instance v2, Lcom/nvidia/tegrazone/utils/NVBroadcast$6;

    invoke-direct {v2, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast$6;-><init>(Lcom/nvidia/tegrazone/utils/NVBroadcast;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 115
    :cond_0
    return-void
.end method

.method public showRetry(Landroid/app/Activity;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    const v1, 0x7f060047

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 49
    const v1, 0x7f060024

    new-instance v2, Lcom/nvidia/tegrazone/utils/NVBroadcast$2;

    invoke-direct {v2, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast$2;-><init>(Lcom/nvidia/tegrazone/utils/NVBroadcast;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    const v1, 0x7f060061

    new-instance v2, Lcom/nvidia/tegrazone/utils/NVBroadcast$3;

    invoke-direct {v2, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast$3;-><init>(Lcom/nvidia/tegrazone/utils/NVBroadcast;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 62
    :cond_0
    return-void
.end method

.method public showUpdateApp(Landroid/app/Activity;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iput-object p1, p0, Lcom/nvidia/tegrazone/utils/NVBroadcast;->callingActivity:Landroid/app/Activity;

    .line 69
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    const v1, 0x7f060011

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 71
    const v1, 0x7f060012

    new-instance v2, Lcom/nvidia/tegrazone/utils/NVBroadcast$4;

    invoke-direct {v2, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast$4;-><init>(Lcom/nvidia/tegrazone/utils/NVBroadcast;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 86
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 89
    :cond_0
    return-void
.end method

.method public updateApp()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nvidia/tegrazone/utils/NVBroadcast;->callingActivity:Landroid/app/Activity;

    const-string v1, "com.nvidia.tegrazone"

    invoke-static {v0, v1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchMarket(Landroid/app/Activity;Ljava/lang/String;)V

    .line 94
    return-void
.end method
