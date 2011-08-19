.class public Lcom/google/android/finsky/receivers/ClearCacheReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClearCacheReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 23
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/receivers/ClearCacheReceiver$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/receivers/ClearCacheReceiver$1;-><init>(Lcom/google/android/finsky/receivers/ClearCacheReceiver;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->clearCacheAsync(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method
