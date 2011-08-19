.class public Lcom/android/exchange/service/ExchangeBroadcastProcessorService;
.super Landroid/app/IntentService;
.source "ExchangeBroadcastProcessorService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/android/exchange/service/ExchangeBroadcastProcessorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exchange/service/ExchangeBroadcastProcessorService;->setIntentRedelivery(Z)V

    .line 48
    return-void
.end method

.method private onBootCompleted()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exchange/ExchangeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/exchange/service/ExchangeBroadcastProcessorService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 84
    return-void
.end method

.method public static processBroadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exchange/service/ExchangeBroadcastProcessorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const-string v1, "broadcast_receiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 58
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, action:Ljava/lang/String;
    const-string v3, "broadcast_receiver"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 66
    .local v2, broadcastIntent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, broadcastAction:Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    invoke-direct {p0}, Lcom/android/exchange/service/ExchangeBroadcastProcessorService;->onBootCompleted()V

    .line 77
    .end local v1           #broadcastAction:Ljava/lang/String;
    .end local v2           #broadcastIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 70
    .restart local v1       #broadcastAction:Ljava/lang/String;
    .restart local v2       #broadcastIntent:Landroid/content/Intent;
    :cond_1
    const-string v3, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    sget-boolean v3, Lcom/android/exchange/Eas;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 72
    const-string v3, "Email"

    const-string v4, "Login accounts changed; reconciling..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_2
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->reconcileAccounts(Landroid/content/Context;)V

    goto :goto_0
.end method
