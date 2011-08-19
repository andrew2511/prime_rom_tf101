.class public Lcom/amazon/kcp/store/WebStoreController;
.super Lcom/amazon/kcp/store/AbstractWebStoreController;
.source "WebStoreController.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IAndroidApplicationController;)V
    .locals 0
    .parameter "appController"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/AbstractWebStoreController;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    .line 34
    return-void
.end method

.method private showPage(Ljava/lang/String;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "StoreStartupTimer"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 60
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/kcp/store/WebStoreController;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    check-cast v0, Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/amazon/kcp/store/StoreActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    const-string v0, "action"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 62
    const-string v0, "asin"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object p0, p0, Lcom/amazon/kcp/store/WebStoreController;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    check-cast p0, Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/application/AndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method


# virtual methods
.method public clearStoreCredentials()V
    .locals 2

    .prologue
    .line 106
    iget-object p0, p0, Lcom/amazon/kcp/store/WebStoreController;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    .end local p0
    check-cast p0, Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {p0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v0

    const-string v1, "store_cookies"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/CookieJar;->removeCookies(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public populateStoreCredentials(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;)V
    .locals 6
    .parameter

    .prologue
    .line 81
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 82
    invoke-virtual {p1}, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;->getCookieList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getCount()I

    move-result v3

    .line 84
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 86
    invoke-virtual {v2, v4}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/models/internal/StoreCookie;

    .line 87
    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/StoreCookie;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/StoreCookie;->getCookieValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/WebStoreController;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    check-cast v0, Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v0

    const-string v2, "store_cookies"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/store/CookieJar;->saveCookiesToSecureStorageAndJar(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/store/WebStoreController;->credentialsUpdateFailedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 93
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "WebStoreController"

    const-string v2, "UpdateCredentailsFailed"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 100
    :goto_1
    return-void

    .line 98
    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/kcp/store/AbstractWebStoreController;->populateStoreCredentials(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;)V

    goto :goto_1
.end method

.method public showBuyPage(Ljava/lang/String;)V
    .locals 1
    .parameter "asin"

    .prologue
    .line 53
    sget-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->BUY:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/store/WebStoreController;->showPage(Ljava/lang/String;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;)V

    .line 54
    return-void
.end method

.method public showDefaultPage()Lcom/amazon/kcp/application/IBasePage;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/amazon/kcp/store/WebStoreController;->showStorefront()V

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public showDetailPage(Ljava/lang/String;)V
    .locals 1
    .parameter "asin"

    .prologue
    .line 47
    sget-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->LEARN:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/store/WebStoreController;->showPage(Ljava/lang/String;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;)V

    .line 48
    return-void
.end method

.method public showStorefront()V
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "StoreStartupTimer"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 73
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/kcp/store/WebStoreController;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    check-cast v0, Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/amazon/kcp/store/StoreActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    iget-object p0, p0, Lcom/amazon/kcp/store/WebStoreController;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    check-cast p0, Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/application/AndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method
