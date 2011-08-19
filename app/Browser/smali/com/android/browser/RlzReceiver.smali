.class public Lcom/android/browser/RlzReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RlzReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.RLZ_VALUES_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    .line 35
    .local v1, settings:Lcom/android/browser/BrowserSettings;
    invoke-virtual {v1, p1}, Lcom/android/browser/BrowserSettings;->updateRlzValues(Landroid/content/Context;)V

    .line 37
    .end local v1           #settings:Lcom/android/browser/BrowserSettings;
    :cond_0
    return-void
.end method
