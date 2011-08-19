.class public interface abstract Lcom/amazon/kcp/application/IKindleApplicationController;
.super Ljava/lang/Object;
.source "IKindleApplicationController.java"

# interfaces
.implements Lcom/amazon/kcp/application/IApplicationController;
.implements Lcom/amazon/kcp/application/ILoginUIFactory;
.implements Lcom/amazon/kcp/application/IUIMessaging;


# virtual methods
.method public abstract deserializeSyncMetadataCache()V
.end method

.method public abstract exit()V
.end method

.method public abstract getAccountSecretProvider()Lcom/amazon/kcp/reader/models/IAccountSecretProvider;
.end method

.method public abstract getAnnotationCache()Lcom/amazon/kcp/application/IAnnotationCache;
.end method

.method public abstract getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;
.end method

.method public abstract getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;
.end method

.method public abstract getDelayedCallbackFactory()Lcom/amazon/kcp/application/IDelayedCallbackFactory;
.end method

.method public abstract getDownloadManager()Lcom/amazon/kcp/library/models/internal/IDownloadManager;
.end method

.method public abstract getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;
.end method

.method public abstract getHistoryManager()Lcom/amazon/kcp/application/HistoryManager;
.end method

.method public abstract getImageFactory()Lcom/amazon/system/drawing/ImageFactory;
.end method

.method public abstract getInternalVersionNumber()J
.end method

.method public abstract getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;
.end method

.method public abstract getLocaleManager()Lcom/amazon/kcp/application/ILocaleManager;
.end method

.method public abstract getSecureStorage()Lcom/amazon/kcp/application/ISecureStorage;
.end method

.method public abstract getSynchronizationManager()Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;
.end method

.method public abstract getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;
.end method

.method public abstract getUpdateManager()Lcom/amazon/kcp/application/internal/IUpdateManager;
.end method

.method public abstract getWebConnector()Lcom/amazon/foundation/internal/net/LightWebConnector;
.end method

.method public abstract getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;
.end method

.method public abstract info()Lcom/amazon/kcp/info/IInfoController;
.end method

.method public abstract kindleStore()Lcom/amazon/kcp/store/IStoreController;
.end method

.method public abstract library()Lcom/amazon/kcp/library/ILibraryController;
.end method

.method public abstract openUrl(Ljava/lang/String;)V
.end method

.method public abstract reader()Lcom/amazon/kcp/reader/IReaderController;
.end method

.method public abstract showWelcomePage()V
.end method

.method public abstract startEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
