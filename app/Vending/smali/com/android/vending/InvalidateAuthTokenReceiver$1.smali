.class Lcom/android/vending/InvalidateAuthTokenReceiver$1;
.super Ljava/lang/Object;
.source "InvalidateAuthTokenReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/InvalidateAuthTokenReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/InvalidateAuthTokenReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/vending/InvalidateAuthTokenReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/vending/InvalidateAuthTokenReceiver$1;->this$0:Lcom/android/vending/InvalidateAuthTokenReceiver;

    iput-object p2, p0, Lcom/android/vending/InvalidateAuthTokenReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 22
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v1

    .line 23
    .local v1, app:Lcom/android/vending/VendingApplication;
    invoke-virtual {v1}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, account:Ljava/lang/String;
    sget-object v2, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v1, v2, v0}, Lcom/android/vending/VendingApplication;->invalidateAuthTokenBlocking(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 25
    sget-object v2, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v1, v2, v0}, Lcom/android/vending/VendingApplication;->invalidateAuthTokenBlocking(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 30
    iget-object v2, p0, Lcom/android/vending/InvalidateAuthTokenReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/vending/CheckinUpdater;->get(Landroid/content/Context;)Lcom/android/vending/CheckinUpdater;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/vending/CheckinUpdater;->update(Z)V

    .line 31
    return-void
.end method
