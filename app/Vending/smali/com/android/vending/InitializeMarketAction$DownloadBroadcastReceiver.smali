.class public Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InitializeMarketAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/InitializeMarketAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadBroadcastReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 350
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 353
    .local v0, contentUri:Landroid/net/Uri;
    invoke-static {p1, v0}, Lcom/android/vending/util/DownloadManagerUtil;->getStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    .line 355
    .local v1, status:I
    invoke-static {v1}, Lcom/android/vending/util/DownloadManagerUtil;->isStatusAuthFailure(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    new-instance v2, Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver$1;-><init>(Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver;)V

    invoke-virtual {v2}, Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver$1;->start()V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    invoke-static {v1}, Lcom/android/vending/util/DownloadManagerUtil;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    new-instance v2, Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver$2;

    invoke-direct {v2, p0, v0}, Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver$2;-><init>(Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver;Landroid/net/Uri;)V

    invoke-static {v2}, Lcom/android/vending/BaseActivity;->setBackgroundRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
