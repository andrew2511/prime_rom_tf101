.class public Lcom/android/vending/billing/BillingTickleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BillingTickleReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 25
    const-string v2, "asset_package"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, packageName:Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/BillingTickleReceiver;->setResultCode(I)V

    .line 28
    const-string v2, "com.android.vending.billing.IN_APP_NOTIFY"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    const-string v2, "notification_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, notifyId:Ljava/lang/String;
    invoke-static {p1, v1, v0}, Lcom/android/vending/billing/MarketBillingService;->sendNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 31
    invoke-virtual {p0, v4}, Lcom/android/vending/billing/BillingTickleReceiver;->setResultCode(I)V

    .line 37
    .end local v0           #notifyId:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent does not contain a supported category; package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, v4}, Lcom/android/vending/billing/BillingTickleReceiver;->setResultCode(I)V

    goto :goto_0
.end method
