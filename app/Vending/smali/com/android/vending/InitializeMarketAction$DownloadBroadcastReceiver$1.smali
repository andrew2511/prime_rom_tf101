.class Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver$1;
.super Ljava/lang/Thread;
.source "InitializeMarketAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver$1;->this$0:Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 360
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v0

    .line 361
    .local v0, app:Lcom/android/vending/VendingApplication;
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v0}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/VendingApplication;->invalidateAuthTokenBlocking(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 363
    return-void
.end method
