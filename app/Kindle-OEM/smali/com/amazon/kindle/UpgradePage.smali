.class public Lcom/amazon/kindle/UpgradePage;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "UpgradePage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method private addFreeBooksIfNeeded()V
    .locals 5

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/amazon/kindle/UpgradePage;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->areFreeBooksCopied()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/UpgradePage;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CLibrary;->getBookCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/UpgradePage;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canDisplayFreeBooks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/amazon/kindle/UpgradePage;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/io/IPathDescriptor;->getApplicationPaths()[Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {p0}, Lcom/amazon/kindle/UpgradePage;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v2

    .line 127
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/amazon/kindle/UpgradePage;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/kindle/UpgradePage;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/IAndroidLibraryController;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-static {v3, v0, v1, v2}, Lcom/amazon/kcp/library/FreeBookManager;->copyFreeBooksToLocation(Landroid/content/res/AssetManager;Lcom/amazon/kcp/library/IAndroidLibraryController;Ljava/lang/String;C)Z

    .line 130
    invoke-virtual {p0}, Lcom/amazon/kindle/UpgradePage;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/SettingsController;->setFreeBooksCopied(Z)V

    .line 133
    :cond_0
    return-void
.end method

.method private launchToLastActivity()V
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/amazon/kindle/UpgradePage;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->showLibraryPage()Lcom/amazon/kcp/library/pages/ILibraryPage;

    .line 114
    return-void
.end method

.method private launchToUri(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 95
    invoke-static {p0, p1}, Lcom/amazon/kcp/application/KindleProtocol;->parseUri(Lcom/amazon/kcp/redding/ReddingActivity;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 102
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 103
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 104
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    .line 105
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 107
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/UpgradePage;->startActivity(Landroid/content/Intent;)V

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/amazon/kindle/UpgradePage;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->setCurrentActivity(Landroid/app/Activity;)V

    .line 40
    invoke-virtual {p0}, Lcom/amazon/kindle/UpgradePage;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->hasAppStartupFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 45
    invoke-virtual {p0}, Lcom/amazon/kindle/UpgradePage;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/kcp/application/FatalErrorActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/UpgradePage;->startActivity(Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Lcom/amazon/kindle/UpgradePage;->finish()V

    .line 90
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/UpgradePage;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/amazon/kindle/UpgradePage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_1

    .line 61
    invoke-direct {p0, v0}, Lcom/amazon/kindle/UpgradePage;->launchToUri(Landroid/net/Uri;)V

    .line 72
    :goto_1
    invoke-static {p0}, Lcom/amazon/kcp/redding/MarketReferralTracker;->logReferralViaMetrics(Landroid/content/Context;)V

    .line 87
    :goto_2
    invoke-direct {p0}, Lcom/amazon/kindle/UpgradePage;->addFreeBooksIfNeeded()V

    .line 89
    invoke-virtual {p0}, Lcom/amazon/kindle/UpgradePage;->finish()V

    goto :goto_0

    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/UpgradePage;->launchToLastActivity()V

    goto :goto_1

    .line 76
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/amazon/kindle/UpgradePage;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/kcp/welcome/WelcomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 80
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 81
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 82
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    .line 83
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/amazon/kindle/UpgradePage;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 145
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onStop()V

    .line 148
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "Splash"

    const-string v2, "ApplicationStartedTimer1"

    const-string v3, "ApplicationStartTimer"

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method
