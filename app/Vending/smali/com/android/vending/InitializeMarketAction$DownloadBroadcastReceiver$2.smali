.class Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver$2;
.super Ljava/lang/Object;
.source "InitializeMarketAction.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$contentUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver$2;->this$0:Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver;

    iput-object p2, p0, Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver$2;->val$contentUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 379
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/vending/cache/CacheManager;->clear()V

    .line 381
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v0

    .line 382
    .local v0, app:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.UPDATE_MARKET"

    iget-object v3, p0, Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver$2;->val$contentUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 383
    return-void
.end method
