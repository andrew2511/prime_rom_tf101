.class Lcom/google/android/finsky/services/InAppBillingProxyService$1;
.super Ljava/lang/Object;
.source "InAppBillingProxyService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/InAppBillingProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/services/InAppBillingProxyService;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/InAppBillingProxyService;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/finsky/services/InAppBillingProxyService$1;->this$0:Lcom/google/android/finsky/services/InAppBillingProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/services/InAppBillingProxyService$1;->this$0:Lcom/google/android/finsky/services/InAppBillingProxyService;

    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/services/InAppBillingProxyService;->access$002(Lcom/google/android/finsky/services/InAppBillingProxyService;Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;

    .line 48
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/finsky/services/InAppBillingProxyService$1;->this$0:Lcom/google/android/finsky/services/InAppBillingProxyService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/finsky/services/InAppBillingProxyService;->access$002(Lcom/google/android/finsky/services/InAppBillingProxyService;Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;

    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/services/InAppBillingProxyService$1;->this$0:Lcom/google/android/finsky/services/InAppBillingProxyService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/finsky/services/InAppBillingProxyService;->access$102(Lcom/google/android/finsky/services/InAppBillingProxyService;Z)Z

    .line 53
    iget-object v0, p0, Lcom/google/android/finsky/services/InAppBillingProxyService$1;->this$0:Lcom/google/android/finsky/services/InAppBillingProxyService;

    invoke-virtual {v0}, Lcom/google/android/finsky/services/InAppBillingProxyService;->stopSelf()V

    .line 54
    return-void
.end method
