.class public abstract Lcom/android/vending/util/ServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ServiceBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public needWakeLock()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/vending/util/ServiceBroadcastReceiver;->setResultCode(I)V

    .line 43
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/vending/util/WorkService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 46
    new-instance v1, Lcom/android/vending/util/ServiceBroadcastReceiver$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/vending/util/ServiceBroadcastReceiver$1;-><init>(Lcom/android/vending/util/ServiceBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/vending/util/ServiceBroadcastReceiver;->needWakeLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Lcom/android/vending/util/WakelockedThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1, v1}, Lcom/android/vending/util/WakelockedThread;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 59
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 60
    return-void

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
