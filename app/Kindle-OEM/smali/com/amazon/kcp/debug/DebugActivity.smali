.class public Lcom/amazon/kcp/debug/DebugActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "DebugActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClearDynamicConfig(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 222
    invoke-static {}, Lcom/amazon/kcp/application/DynamicConfigManager;->getInstance()Lcom/amazon/kcp/application/DynamicConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/DynamicConfigManager;->clearConfigUrls()V

    .line 223
    return-void
.end method

.method public onClearStoreCredentials(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/DebugActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/store/IWebStoreController;->clearStoreCredentials()V

    .line 174
    return-void
.end method

.method public onClearStoreFrontCache(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 164
    invoke-static {p0}, Lcom/amazon/kcp/store/StorefrontPrefetcher;->clearPrefretchedStorefront(Landroid/content/Context;)V

    .line 165
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/debug/DebugActivity;->setContentView(I)V

    .line 47
    return-void
.end method

.method public onDeleteDiskCachedCoversClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 90
    invoke-static {}, Lcom/amazon/kcp/cover/CoverManager;->getInstance()Lcom/amazon/kcp/cover/CoverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/CoverManager;->deleteAllDiskCachedCovers()V

    .line 91
    return-void
.end method

.method public onExitAppClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 99
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 100
    return-void
.end method

.method public onGiveFreeBooks(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/DebugActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/io/IPathDescriptor;->getApplicationPaths()[Ljava/lang/String;

    move-result-object v1

    .line 184
    array-length v0, v1

    if-lez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/DebugActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/debug/DebugActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/IAndroidLibraryController;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {p0}, Lcom/amazon/kcp/debug/DebugActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/system/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lcom/amazon/kcp/library/FreeBookManager;->copyFreeBooksToLocation(Landroid/content/res/AssetManager;Lcom/amazon/kcp/library/IAndroidLibraryController;Ljava/lang/String;C)Z

    .line 195
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    const-string v1, "Cannot add free books because there is no path to save them to!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onInvalidateFingerprint(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 117
    new-instance v0, Lcom/amazon/kcp/application/AndroidSecureStorage;

    invoke-virtual {p0}, Lcom/amazon/kcp/debug/DebugActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/AndroidSecureStorage;-><init>(Landroid/content/Context;)V

    .line 121
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "DeviceFingerprint"

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/application/AndroidSecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 122
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 125
    const-string v3, "android_id"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v2, "DeviceFingerprint"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/application/AndroidSecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/DebugActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Fingerprint changed"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 135
    return-void

    .line 131
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/amazon/kcp/debug/DebugActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Error parsing fingerprint"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 52
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onResume()V

    .line 54
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/DebugActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/reader/IReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 55
    .local v0, enabled:Z
    :goto_0
    const v3, 0x7f0c0049

    invoke-virtual {p0, v3}, Lcom/amazon/kcp/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/DebugActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v3

    const-string v4, "store_cookies"

    invoke-virtual {v3, v4}, Lcom/amazon/kcp/store/CookieJar;->shouldForceUSDomain(Ljava/lang/String;)Z

    move-result v1

    .line 57
    .local v1, forcing:Z
    const v3, 0x7f0c004c

    invoke-virtual {p0, v3}, Lcom/amazon/kcp/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 58
    invoke-static {}, Lcom/amazon/kcp/RedirectUrlAuthority;->getUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/RedirectUrlAuthority$Domain;->KINDLE_STORE_PRE_PROD:Lcom/amazon/kcp/RedirectUrlAuthority$Domain;

    iget-object v4, v4, Lcom/amazon/kcp/RedirectUrlAuthority$Domain;->urlDomain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 59
    .local v2, preprod:Z
    const v3, 0x7f0c004d

    invoke-virtual {p0, v3}, Lcom/amazon/kcp/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 60
    return-void

    .line 54
    .end local v0           #enabled:Z
    .end local v1           #forcing:Z
    .end local v2           #preprod:Z
    .restart local p0
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public onSendInstallReferrerIntent(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 209
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/DebugActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/kcp/redding/MarketReferralTracker;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 210
    const-string v1, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v1, "referrer"

    const-string v2, "utm_source%3Dandroidmarket%26utm_medium%3Ddevice%26utm_term%3Dpname%253Acom.my.app%26utm_campaign%3Dsearch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/DebugActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method public onSerializeMetricsClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/DebugActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->serializeMetrics()V

    .line 109
    return-void
.end method

.method public onShowCurrentlyReadingBookDetails(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0xa

    .line 69
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/DebugActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    const-string v2, "ASIN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 74
    const-string v2, "AMZN GUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    const-string v2, "isSample: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->isSample()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 76
    const-string v2, "bookType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getBookType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    const-string v2, "bookRead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/LocalBookState;->isBookRead()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 79
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 82
    return-void
.end method

.method public onShowDeviceInformation(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 143
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    const-string v2, "DSN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const-string v2, "\nModel ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceModelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    const-string v2, "\nPID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getPid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    const-string v0, "\nDevice Name: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/debug/DebugActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/AuthenticationManager;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    const-string v0, "\nInternal storage path: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/debug/DebugActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 152
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 155
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 156
    return-void
.end method

.method public toggleDomainForcing(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 231
    instance-of v3, p1, Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    .line 233
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v0

    .line 235
    .local v1, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/DebugActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amazon/kcp/store/CookieJar;->setUSDomainForcing(Z)Z

    move-result v2

    .line 237
    .local v2, result:Z
    if-eqz v2, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/DebugActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully changed domain forcing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 247
    .end local v1           #checkBox:Landroid/widget/CheckBox;
    .end local v2           #result:Z
    :cond_0
    :goto_0
    return-void

    .line 243
    .restart local v1       #checkBox:Landroid/widget/CheckBox;
    .restart local v2       #result:Z
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/DebugActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to change domain forcing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 244
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_1
.end method

.method public togglePreprodRedirects(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 251
    instance-of v2, p1, Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    .line 253
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v0

    .line 255
    .local v1, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/amazon/kcp/RedirectUrlAuthority$Domain;->KINDLE_STORE_PRE_PROD:Lcom/amazon/kcp/RedirectUrlAuthority$Domain;

    :goto_0
    invoke-static {v2}, Lcom/amazon/kcp/RedirectUrlAuthority;->setDomain(Lcom/amazon/kcp/RedirectUrlAuthority$Domain;)V

    .line 257
    .end local v1           #checkBox:Landroid/widget/CheckBox;
    :cond_0
    return-void

    .line 255
    .restart local v1       #checkBox:Landroid/widget/CheckBox;
    :cond_1
    sget-object v2, Lcom/amazon/kcp/RedirectUrlAuthority$Domain;->PROD:Lcom/amazon/kcp/RedirectUrlAuthority$Domain;

    goto :goto_0
.end method
