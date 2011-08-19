.class public Lcom/amazon/kcp/application/AndroidApplicationController;
.super Lcom/amazon/kcp/application/AbstractApplicationController;
.source "AndroidApplicationController.java"

# interfaces
.implements Lcom/amazon/kcp/application/IAndroidApplicationController;


# static fields
.field private static final ENCRYPTED_DEVICE_ID_KEY:Ljava/lang/String; = "EncryptedDeviceId"

.field private static final FINGERPRINT_KEY:Ljava/lang/String; = "DeviceFingerprint"

.field private static final HONEYCOMB_SDK_VER:I = 0xb

.field private static final METRICS_TAG:Ljava/lang/String; = "AndroidApplicationController"


# instance fields
.field private activeActivities:I

.field private applicationCapabilities:Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

.field private backgroundSyncFinished:Lcom/amazon/foundation/ICallback;

.field private configurationIsChanging:Z

.field private context:Landroid/content/Context;

.field private cookieJar:Lcom/amazon/kcp/store/CookieJar;

.field private currentActivity:Landroid/app/Activity;

.field private downloadWatcher:Lcom/amazon/kcp/application/IDownloadStatusWatcher;

.field private libraryController:Lcom/amazon/kcp/library/LibraryController;

.field private localeManager:Lcom/amazon/kcp/application/ILocaleManager;

.field private logoutEvent:Lcom/amazon/foundation/ICallback;

.field private notificationController:Lcom/amazon/kcp/application/AndroidNotificationController;

.field private readerController:Lcom/amazon/kcp/reader/ReaderController;

.field private screenSleepReciever:Landroid/content/BroadcastReceiver;

.field private screenWakeReciever:Landroid/content/BroadcastReceiver;

.field private settingsController:Lcom/amazon/kcp/application/SettingsController;

.field private storeController:Lcom/amazon/kcp/store/WebStoreController;

.field private utilities:Lcom/amazon/android/system/AndroidUtilities;

.field private wasUpdated:Z


# direct methods
.method public constructor <init>(Lcom/amazon/android/system/AndroidUtilities;Lcom/amazon/kcp/application/ISecureStorage;Landroid/content/Context;J)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    new-instance v1, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory;

    invoke-direct {v1, p1}, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory;-><init>(Lcom/amazon/system/util/Utilities;)V

    new-instance v2, Lcom/amazon/foundation/internal/net/HttpWebConnector;

    new-instance v0, Lcom/mobipocket/android/net/AndroidHttpConnectionFactory;

    const/4 v3, -0x1

    invoke-static {}, Lcom/amazon/kcp/application/AndroidLocaleManager;->getInstance()Lcom/amazon/kcp/application/AndroidLocaleManager;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mobipocket/android/net/AndroidHttpConnectionFactory;-><init>(ILcom/amazon/kcp/application/ILocaleManager;)V

    invoke-direct {v2, v0, p1}, Lcom/amazon/foundation/internal/net/HttpWebConnector;-><init>(Lcom/amazon/system/net/HttpConnectionFactory;Lcom/amazon/system/util/Utilities;)V

    new-instance v3, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;

    invoke-direct {v3, p3}, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/amazon/kcp/application/AndroidLocalStorage;

    invoke-direct {v5, p3}, Lcom/amazon/kcp/application/AndroidLocalStorage;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/amazon/kcp/application/AndroidRequestSigner;

    invoke-direct {v6}, Lcom/amazon/kcp/application/AndroidRequestSigner;-><init>()V

    new-instance v7, Lcom/amazon/android/system/drawing/AndroidImageFactory;

    invoke-direct {v7}, Lcom/amazon/android/system/drawing/AndroidImageFactory;-><init>()V

    new-instance v8, Lcom/amazon/kcp/application/AndroidUpdateManager;

    invoke-direct {v8}, Lcom/amazon/kcp/application/AndroidUpdateManager;-><init>()V

    new-instance v11, Lcom/amazon/kcp/application/AndroidDownloadChunker;

    invoke-direct {v11}, Lcom/amazon/kcp/application/AndroidDownloadChunker;-><init>()V

    move-object v0, p0

    move-object v4, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Lcom/amazon/kcp/application/AbstractApplicationController;-><init>(Lcom/amazon/kcp/application/IDelayedCallbackFactory;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ISecureStorage;Lcom/amazon/kcp/application/ILocalStorage;Lcom/amazon/kcp/application/IRequestSigner;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/kcp/application/internal/IUpdateManager;JLcom/amazon/kcp/application/IDownloadChunker;)V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->activeActivities:I

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->configurationIsChanging:Z

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->utilities:Lcom/amazon/android/system/AndroidUtilities;

    .line 124
    new-instance v0, Lcom/amazon/kcp/application/AndroidApplicationController$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/AndroidApplicationController$1;-><init>(Lcom/amazon/kcp/application/AndroidApplicationController;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->backgroundSyncFinished:Lcom/amazon/foundation/ICallback;

    .line 152
    new-instance v0, Lcom/amazon/kcp/application/AndroidApplicationController$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/AndroidApplicationController$2;-><init>(Lcom/amazon/kcp/application/AndroidApplicationController;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->screenWakeReciever:Landroid/content/BroadcastReceiver;

    .line 168
    new-instance v0, Lcom/amazon/kcp/application/AndroidApplicationController$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/AndroidApplicationController$3;-><init>(Lcom/amazon/kcp/application/AndroidApplicationController;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->screenSleepReciever:Landroid/content/BroadcastReceiver;

    .line 185
    new-instance v0, Lcom/amazon/kcp/application/AndroidApplicationController$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/AndroidApplicationController$4;-><init>(Lcom/amazon/kcp/application/AndroidApplicationController;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->logoutEvent:Lcom/amazon/foundation/ICallback;

    .line 239
    iput-object p3, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    .line 241
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->utilities:Lcom/amazon/android/system/AndroidUtilities;

    .line 244
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->loadFontSizes()V

    .line 247
    new-instance v6, Lcom/mobipocket/android/library/reader/AndroidSecurity;

    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getAccountSecretProvider()Lcom/amazon/kcp/reader/models/IAccountSecretProvider;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/mobipocket/android/library/reader/AndroidSecurity;-><init>(Lcom/amazon/kcp/application/ISecureStorage;Lcom/amazon/kcp/reader/models/IAccountSecretProvider;)V

    .line 250
    new-instance v0, Lcom/amazon/kcp/application/SettingsController;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/SettingsController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->settingsController:Lcom/amazon/kcp/application/SettingsController;

    .line 253
    new-instance v0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;-><init>(Lcom/amazon/kcp/application/AuthenticationManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->applicationCapabilities:Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    .line 256
    new-instance v0, Lcom/amazon/kcp/reader/ReaderController;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amazon/kcp/reader/ReaderController;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/AndroidApplicationController;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    .line 257
    new-instance v0, Lcom/amazon/kcp/library/LibraryController;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;

    move-result-object v3

    new-instance v4, Lcom/mobipocket/android/drawing/AndroidFontFactory;

    invoke-direct {v4}, Lcom/mobipocket/android/drawing/AndroidFontFactory;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getImageFactory()Lcom/amazon/system/drawing/ImageFactory;

    move-result-object v5

    check-cast v5, Lcom/amazon/android/system/drawing/AndroidImageFactory;

    new-instance v7, Lcom/amazon/android/system/io/AndroidInflaterFactory;

    invoke-direct {v7}, Lcom/amazon/android/system/io/AndroidInflaterFactory;-><init>()V

    new-instance v8, Lcom/amazon/android/system/xml/AndroidSAXParserFactory;

    invoke-direct {v8}, Lcom/amazon/android/system/xml/AndroidSAXParserFactory;-><init>()V

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/library/LibraryController;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/IAndroidApplicationController;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/security/Security;Lcom/amazon/system/io/InflaterFactory;Lcom/amazon/system/xml/SAXParserFactory;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->libraryController:Lcom/amazon/kcp/library/LibraryController;

    .line 264
    new-instance v0, Lcom/amazon/kcp/store/WebStoreController;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/WebStoreController;-><init>(Lcom/amazon/kcp/application/IAndroidApplicationController;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->storeController:Lcom/amazon/kcp/store/WebStoreController;

    .line 266
    new-instance v0, Lcom/amazon/kcp/store/CookieJar;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-direct {v0, p2, v1}, Lcom/amazon/kcp/store/CookieJar;-><init>(Lcom/amazon/kcp/application/ISecureStorage;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->cookieJar:Lcom/amazon/kcp/store/CookieJar;

    .line 269
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->determineIfAppWasUpgraded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->wasUpdated:Z

    .line 272
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->wasUpdated:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->storeController:Lcom/amazon/kcp/store/WebStoreController;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/WebStoreController;->clearStoreCredentials()V

    .line 277
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/store/StorefrontPrefetcher;->clearPrefretchedStorefront(Landroid/content/Context;)V

    .line 280
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->storeController:Lcom/amazon/kcp/store/WebStoreController;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/WebStoreController;->updateStoreCookies()V

    .line 284
    :cond_0
    new-instance v0, Lcom/amazon/kcp/application/DownloadStatusWatcher;

    invoke-direct {v0}, Lcom/amazon/kcp/application/DownloadStatusWatcher;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->downloadWatcher:Lcom/amazon/kcp/application/IDownloadStatusWatcher;

    .line 286
    new-instance v0, Lcom/amazon/kcp/application/AndroidNotificationController;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    iget-object v3, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->libraryController:Lcom/amazon/kcp/library/LibraryController;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/LibraryController;->getDictionaryManager()Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/application/AndroidNotificationController;-><init>(Landroid/content/Context;Lcom/amazon/kcp/library/models/internal/IDownloadManager;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->notificationController:Lcom/amazon/kcp/application/AndroidNotificationController;

    .line 287
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 288
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 289
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->notificationController:Lcom/amazon/kcp/application/AndroidNotificationController;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/AndroidNotificationController;->displayDownloadNotifications(Ljava/util/Set;)V

    .line 293
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;->initialize(Landroid/content/Context;)V

    .line 296
    new-instance v0, Lcom/amazon/kcp/cover/AndroidImageDownloader;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/cover/AndroidImageDownloader;-><init>(Lcom/amazon/system/io/IFileConnectionFactory;)V

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->utilities:Lcom/amazon/android/system/AndroidUtilities;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getImageFactory()Lcom/amazon/system/drawing/ImageFactory;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/system/drawing/AndroidImageFactory;

    invoke-static {}, Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;->getInstance()Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;

    move-result-object v3

    invoke-static {v0, v1, v2, p1, v3}, Lcom/amazon/kcp/cover/CoverManager;->initialize(Lcom/amazon/kcp/cover/IImageDownloader;Lcom/amazon/system/Utilities;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/drawing/IDefaultCoverImageFactory;)V

    .line 299
    new-instance v0, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getDeviceType()Lcom/amazon/kcp/application/AndroidDeviceType;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;-><init>(Lcom/mobipocket/android/library/reader/AndroidSecurity;Lcom/amazon/kcp/application/AndroidDeviceType;)V

    invoke-static {v0}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->initialize(Lcom/amazon/kcp/application/IDeviceInformationProvider;)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/system/io/IPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MetricsManager.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getDeviceType()Lcom/amazon/kcp/application/AndroidDeviceType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/AndroidDeviceType;->getDeviceTypeHumanReadable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->initialize(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/system/io/IFileConnectionFactory;)V

    .line 306
    new-instance v0, Lcom/amazon/kcp/application/AndroidAssociateInformationProvider;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/amazon/kcp/application/AndroidAssociateInformationProvider;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/ISecureStorage;)V

    invoke-static {v0}, Lcom/amazon/kcp/application/AssociateInformationProviderFactory;->initialize(Lcom/amazon/kcp/application/IAssociateInformationProvider;)V

    .line 309
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->screenWakeReciever:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 312
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->screenSleepReciever:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 316
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->applicationCapabilities:Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canChangeRegistrationSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AuthenticationManager;->getLogOutEvent()Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->logoutEvent:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/EventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 322
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 336
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->applicationCapabilities:Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->needsValidFingerprint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazon/kcp/application/AndroidApplicationController$5;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/application/AndroidApplicationController$5;-><init>(Lcom/amazon/kcp/application/AndroidApplicationController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 371
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    .line 374
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/application/AndroidLocaleManager;->getInstance()Lcom/amazon/kcp/application/AndroidLocaleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->localeManager:Lcom/amazon/kcp/application/ILocaleManager;

    .line 375
    return-void

    .line 327
    :cond_4
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->debugDisableMetrics:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/AndroidApplicationController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/application/AndroidApplicationController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->activeActivities:I

    return v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/application/AndroidApplicationController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->performForegroundedAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/application/AndroidApplicationController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->performBackgroundedAction()V

    return-void
.end method

.method private addDebugNotificationIcon()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->notificationController:Lcom/amazon/kcp/application/AndroidNotificationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidNotificationController;->displayDebugNotification()V

    .line 410
    return-void
.end method

.method private determineIfAppWasUpgraded()Z
    .locals 8

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v1

    .line 387
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getAppVersionNumber()J

    move-result-wide v2

    .line 388
    invoke-virtual {v1}, Lcom/amazon/kcp/application/SettingsController;->getLastAppUpgradeVersion()J

    move-result-wide v4

    .line 390
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "persisted version is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 391
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current version is   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 395
    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 397
    const/4 v0, 0x1

    .line 402
    :cond_0
    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/SettingsController;->setLastAppUpgradeVersion(J)V

    .line 404
    return v0
.end method

.method private getDeviceType()Lcom/amazon/kcp/application/AndroidDeviceType;
    .locals 4

    .prologue
    .line 943
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "EncryptedDeviceId"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 944
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 946
    sget-object v0, Lcom/amazon/kcp/application/AndroidDeviceType;->VALUES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/AndroidDeviceType;

    .line 948
    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidDeviceType;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found Device Type \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" in secure storage."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    :goto_0
    return-object v0

    .line 956
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found encrypted device id \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" in secure storage, not in AndroidDeviceType.VALUES!  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Removing from secure storage and determining Device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Type manually."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "EncryptedDeviceId"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    .line 965
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 966
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    .line 974
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 976
    sget-object v0, Lcom/amazon/kcp/application/AndroidDeviceType;->REDDING:Lcom/amazon/kcp/application/AndroidDeviceType;

    .line 987
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v2, "EncryptedDeviceId"

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidDeviceType;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazon/kcp/application/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Device Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in secure storage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 978
    :cond_3
    const/16 v2, 0xb

    if-lt v0, v2, :cond_4

    const/4 v0, 0x4

    if-ne v1, v0, :cond_4

    .line 980
    sget-object v0, Lcom/amazon/kcp/application/AndroidDeviceType;->WHISKEYTOWN:Lcom/amazon/kcp/application/AndroidDeviceType;

    goto :goto_1

    .line 984
    :cond_4
    sget-object v0, Lcom/amazon/kcp/application/AndroidDeviceType;->REDDING:Lcom/amazon/kcp/application/AndroidDeviceType;

    goto :goto_1

    .line 993
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set Device Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in secure storage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private loadFontSizes()V
    .locals 4

    .prologue
    .line 418
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    .line 422
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 424
    sget-object v1, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    sget-object v3, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    aget v3, v3, v0

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/amazon/android/util/UIUtils;->convertSpsToPixels(Landroid/content/Context;F)I

    move-result v2

    aput v2, v1, v0

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    :cond_0
    return-void
.end method

.method private performBackgroundedAction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 585
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->applicationCapabilities:Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canPerformSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kcp/library/models/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/foundation/IStatusTracker;)V

    .line 590
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getSynchronizationManager()Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->hasRequestFor(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getSynchronizationManager()Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->getSyncFinishedEvent()Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->backgroundSyncFinished:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v1, v2}, Lcom/amazon/foundation/internal/EventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 596
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getSynchronizationManager()Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)V

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/AndroidLocalStorage;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidLocalStorage;->close()V

    .line 605
    return-void
.end method

.method private performForegroundedAction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 560
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->applicationCapabilities:Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canPerformSync()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->LAUNCH:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kcp/library/models/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/foundation/IStatusTracker;)V

    .line 564
    .local v0, launchSyncParams:Lcom/amazon/kcp/application/sync/internal/SyncParameters;
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getSynchronizationManager()Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->hasRequestFor(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getSynchronizationManager()Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)V

    .line 571
    .end local v0           #launchSyncParams:Lcom/amazon/kcp/application/sync/internal/SyncParameters;
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->applicationCapabilities:Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canGotoStore()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 573
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->cookieJar:Lcom/amazon/kcp/store/CookieJar;

    const-string v2, "store_cookies"

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/store/CookieJar;->areCookiesValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 575
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->storeController:Lcom/amazon/kcp/store/WebStoreController;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/WebStoreController;->updateStoreCookies()V

    .line 580
    :cond_1
    iget-object p0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->localeManager:Lcom/amazon/kcp/application/ILocaleManager;

    .end local p0
    check-cast p0, Lcom/amazon/kcp/application/AndroidLocaleManager;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidLocaleManager;->refreshLocaleSettings()V

    .line 581
    return-void
.end method

.method private reportBackgroundMetric()V
    .locals 5

    .prologue
    .line 609
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 615
    :try_start_0
    sget-object v1, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/SettingsController;->getFontSizeIndex()I

    move-result v2

    aget v1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :goto_0
    const-string v2, "FontSize"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/SettingsController;->getColorMode()I

    move-result v1

    .line 625
    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/reader/ui/color/AndroidColorModeFactory;->getColorMode(ILandroid/content/res/Resources;)Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-result-object v1

    .line 626
    const-string v2, "ColorMode"

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getMetricsName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "AndroidApplicationController"

    const-string v3, "AppBackground"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    .line 629
    return-void

    .line 619
    :catch_0
    move-exception v1

    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public activityStarted(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->configurationIsChanging:Z

    if-eqz v0, :cond_1

    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->configurationIsChanging:Z

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    iget v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->activeActivities:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->activeActivities:I

    .line 498
    iget v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->activeActivities:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 501
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "AndroidApplicationController"

    const-string v2, "AppForeground"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->performForegroundedAction()V

    goto :goto_0

    .line 507
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/welcome/WelcomeActivity;

    if-eq v0, v1, :cond_0

    .line 509
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    const-class v2, Lcom/amazon/kcp/welcome/WelcomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 510
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 511
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public activityStopped()V
    .locals 2

    .prologue
    .line 520
    iget v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->activeActivities:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->activeActivities:I

    .line 524
    iget v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->activeActivities:I

    if-nez v0, :cond_1

    .line 527
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->reportBackgroundMetric()V

    .line 528
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->performBackgroundedAction()V

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    iget v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->activeActivities:I

    if-gez v0, :cond_0

    .line 532
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->activeActivities:I

    goto :goto_0
.end method

.method public activityStoppedDueToConfigChange()V
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->configurationIsChanging:Z

    .line 555
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 437
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ApplicationController"

    const-string v2, "AppExit"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->screenWakeReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 442
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->screenSleepReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 445
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AuthenticationManager;->getLogOutEvent()Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->logoutEvent:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/EventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 447
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->saveApplicationSettings()V

    .line 448
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->serializeMetrics()V

    .line 449
    return-void
.end method

.method public getActiveContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->currentActivity:Landroid/app/Activity;

    .line 906
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    goto :goto_0
.end method

.method public getAppVersionNumber()J
    .locals 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInternalVersionNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->applicationCapabilities:Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    return-object v0
.end method

.method public getCookieJar()Lcom/amazon/kcp/store/CookieJar;
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->cookieJar:Lcom/amazon/kcp/store/CookieJar;

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCurrentSubApp()Lcom/amazon/kcp/application/ISubAppController;
    .locals 1

    .prologue
    .line 687
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadStatusWatcher()Lcom/amazon/kcp/application/IDownloadStatusWatcher;
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->downloadWatcher:Lcom/amazon/kcp/application/IDownloadStatusWatcher;

    return-object v0
.end method

.method public getInternalVersionNumber()J
    .locals 2

    .prologue
    .line 454
    iget-wide v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->currentAppVersionNumber:J

    return-wide v0
.end method

.method public getLocaleManager()Lcom/amazon/kcp/application/ILocaleManager;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->localeManager:Lcom/amazon/kcp/application/ILocaleManager;

    return-object v0
.end method

.method public getNotificationController()Lcom/amazon/kcp/application/AndroidNotificationController;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->notificationController:Lcom/amazon/kcp/application/AndroidNotificationController;

    return-object v0
.end method

.method public getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->settingsController:Lcom/amazon/kcp/application/SettingsController;

    return-object v0
.end method

.method public getUtilities()Lcom/amazon/android/system/AndroidUtilities;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->utilities:Lcom/amazon/android/system/AndroidUtilities;

    if-nez v0, :cond_0

    .line 845
    new-instance v0, Lcom/amazon/android/system/AndroidUtilities;

    invoke-direct {v0}, Lcom/amazon/android/system/AndroidUtilities;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->utilities:Lcom/amazon/android/system/AndroidUtilities;

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->utilities:Lcom/amazon/android/system/AndroidUtilities;

    return-object v0
.end method

.method public getVersionString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 460
    const/4 v0, 0x0

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :goto_0
    if-nez v0, :cond_0

    .line 472
    const-string v0, ""

    .line 474
    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->storeController:Lcom/amazon/kcp/store/WebStoreController;

    return-object v0
.end method

.method public info()Lcom/amazon/kcp/info/IInfoController;
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    return-object v0
.end method

.method public kindleStore()Lcom/amazon/kcp/store/IStoreController;
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x0

    return-object v0
.end method

.method public library()Lcom/amazon/kcp/library/ILibraryController;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->libraryController:Lcom/amazon/kcp/library/LibraryController;

    return-object v0
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 660
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 661
    .local v0, browseIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    .line 662
    return-void
.end method

.method public reader()Lcom/amazon/kcp/reader/IReaderController;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    return-object v0
.end method

.method public setCurrentActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "currentActivity"

    .prologue
    .line 540
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->currentActivity:Landroid/app/Activity;

    .line 541
    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 713
    .line 716
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 718
    const-string v1, "ConnectionError"

    invoke-static {p1, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 725
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v1, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 726
    const/16 v2, 0x7db

    if-ge v1, v2, :cond_0

    .line 728
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 729
    const-string v3, "year"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const-string v4, "AndroidApplicationController"

    const-string v5, "ConnectionErrorBadDate"

    sget-object v6, Lcom/amazon/kcp/application/metrics/MetricType;->WARN:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    .line 732
    const v2, 0x7f0b0105

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 733
    const v3, 0x7f0b0106

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 734
    const-string v1, "android.settings.DATE_SETTINGS"

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 746
    :goto_0
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    const-class v5, Lcom/amazon/kcp/redding/AlertActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 747
    const-string v4, "alert_type"

    sget-object v5, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->ANDROID_SETTINGS:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 748
    const-string v4, "alert_title"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    const-string v2, "alert_message"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    const-string v1, "alert_settings_action"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/application/AndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    .line 825
    :goto_1
    return-void

    .line 740
    :cond_0
    const v1, 0x7f0b0107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 741
    const v2, 0x7f0b0108

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 742
    const-string v2, "android.settings.WIRELESS_SETTINGS"

    move-object v8, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_0

    .line 754
    :cond_1
    const-string v1, "BuyError"

    invoke-static {p1, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 756
    const v1, 0x7f0b0109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 757
    const v2, 0x7f0b010a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 819
    :goto_2
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    const-class v4, Lcom/amazon/kcp/redding/AlertActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 820
    const-string v3, "alert_type"

    sget-object v4, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->MESSAGE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 821
    const-string v3, "alert_title"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    const-string v1, "alert_message"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/application/AndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 759
    :cond_2
    const-string v1, "CustomerNotFound"

    invoke-static {p1, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 761
    const v1, 0x7f0b010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 762
    const v2, 0x7f0b010c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 764
    :cond_3
    const-string v1, "DownloadContentError"

    invoke-static {p1, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 767
    const v1, 0x7f0b010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 768
    const v2, 0x7f0b010e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 770
    :cond_4
    const-string v1, "InsufficientFunds"

    invoke-static {p1, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 772
    const v1, 0x7f0b010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 773
    const v2, 0x7f0b0110

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 775
    :cond_5
    const-string v1, "DeviceAlreadyRegistered"

    invoke-static {p1, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 777
    const v1, 0x7f0b0111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 778
    const v2, 0x7f0b0112

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 780
    :cond_6
    const-string v1, "CredentialsRequired"

    invoke-static {p1, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 782
    const v1, 0x7f0b0113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 783
    const v2, 0x7f0b0114

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 785
    :cond_7
    const-string v1, "DuplicateDeviceName"

    invoke-static {p1, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 787
    const v1, 0x7f0b0115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 788
    const v2, 0x7f0b0116

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 790
    :cond_8
    const-string v1, "Server Error"

    invoke-static {p1, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 792
    const v1, 0x7f0b0117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 793
    const v2, 0x7f0b0118

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 795
    :cond_9
    const-string v1, "OpenBookError"

    invoke-static {p1, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 798
    const v1, 0x7f0b0119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 799
    const v2, 0x7f0b011a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 801
    :cond_a
    const-string v1, "UnBuyError"

    invoke-static {p1, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 803
    const v1, 0x7f0b011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 804
    const v2, 0x7f0b011c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 806
    :cond_b
    const-string v1, "InvalidAsin"

    invoke-static {p1, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 808
    const v1, 0x7f0b011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 809
    const v2, 0x7f0b011e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 811
    :cond_c
    if-eqz p1, :cond_d

    if-nez p2, :cond_e

    .line 813
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User-displayable alert had null title or msg. Showing default message. Title was \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", msg was \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    const v1, 0x7f0b011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 815
    const v2, 0x7f0b0120

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_e
    move-object v0, p2

    move-object v1, p1

    goto/16 :goto_2
.end method

.method public showAlertWithDPLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 830
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    const-class v2, Lcom/amazon/kcp/redding/AlertActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 831
    const-string v1, "alert_type"

    sget-object v2, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->LINK:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 832
    const-string v1, "alert_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    const-string v1, "alert_message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    const-string v1, "alert_link_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    const-string v1, "alert_link_url"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    .line 838
    return-void
.end method

.method public showDeregisterPage()V
    .locals 0

    .prologue
    .line 694
    return-void
.end method

.method public showRegisterPage()V
    .locals 0

    .prologue
    .line 701
    return-void
.end method

.method public showRegisterPage(Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/ICallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 707
    return-void
.end method

.method public showWelcomePage()V
    .locals 0

    .prologue
    .line 673
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 853
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 865
    :goto_0
    return-void

    .line 862
    :cond_0
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 863
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 680
    return-void
.end method

.method public startSettingsActivity(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x8

    .line 870
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 879
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    :goto_0
    return-void

    .line 885
    :catch_0
    move-exception v0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 886
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 887
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public wasAppUpgradedThisOpening()Z
    .locals 1

    .prologue
    .line 937
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->wasUpdated:Z

    return v0
.end method
