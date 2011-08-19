.class public abstract Lcom/amazon/kcp/application/AbstractApplicationController;
.super Ljava/lang/Object;
.source "AbstractApplicationController.java"

# interfaces
.implements Lcom/amazon/kcp/application/IKindleApplicationController;


# static fields
.field private static final ANNOTATION_CACHE:Ljava/lang/String; = "CAnnotationCache.xml"

.field protected static final DEFAULT_TOTAL_BOOKS_COUNT:I = 0x5f370

.field public static final KEY_BOOK_COUNT:Ljava/lang/String; = "BOOK_COUNT"

.field protected static final KEY_LAST_APPLICATION_MODE:Ljava/lang/String; = "LAST_APPLICATION_MODE"

.field protected static final METRICS_MANAGER_CACHE:Ljava/lang/String; = "MetricsManager.txt"

.field protected static final MODE_ARCHIVED_ITEMS:Ljava/lang/String; = "AI"

.field protected static final MODE_HOME:Ljava/lang/String; = "HOME"

.field protected static final MODE_READER:Ljava/lang/String; = "READER"

.field protected static final MODE_STORE:Ljava/lang/String; = "STORE"

.field private static final SECURE_STORAGE_ACCOUNT_SECRET_KEY:Ljava/lang/String; = "kindle.account.tokens"

.field private static final SYNC_METADATA_CACHE:Ljava/lang/String; = "KindleSyncMetadataCache.xml"


# instance fields
.field private accountSecretProvider:Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;

.field protected annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

.field private authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

.field protected final currentAppVersionNumber:J

.field private delayedCallbackFactory:Lcom/amazon/kcp/application/IDelayedCallbackFactory;

.field protected downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

.field private fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

.field private historyManager:Lcom/amazon/kcp/application/HistoryManager;

.field protected imageFactory:Lcom/amazon/system/drawing/ImageFactory;

.field private localStorage:Lcom/amazon/kcp/application/ILocalStorage;

.field private metadataCachePath:Ljava/lang/String;

.field protected persistentSettingsHelper:Lcom/amazon/system/io/IPersistentSettingsHelper;

.field protected secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

.field protected synchronizationManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

.field protected todoManager:Lcom/amazon/kcp/application/internal/LocalTodoManager;

.field protected updateManager:Lcom/amazon/kcp/application/internal/IUpdateManager;

.field private webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IDelayedCallbackFactory;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ISecureStorage;Lcom/amazon/kcp/application/ILocalStorage;Lcom/amazon/kcp/application/IRequestSigner;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/kcp/application/internal/IUpdateManager;JLcom/amazon/kcp/application/IDownloadChunker;)V
    .locals 16
    .parameter "delayedCallbackFactory"
    .parameter "webConnector"
    .parameter "fileConnectionFactory"
    .parameter "secureStorage"
    .parameter "localStorage"
    .parameter "requestSigner"
    .parameter "imageFactory"
    .parameter "updateManager"
    .parameter "currentAppVersion"
    .parameter "chunker"

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    .line 49
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->todoManager:Lcom/amazon/kcp/application/internal/LocalTodoManager;

    .line 50
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    .line 51
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->synchronizationManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    .line 52
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->updateManager:Lcom/amazon/kcp/application/internal/IUpdateManager;

    .line 54
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    .line 55
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    .line 57
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->accountSecretProvider:Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;

    .line 59
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;

    .line 60
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 92
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 93
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;

    .line 94
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    .line 95
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    .line 96
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->updateManager:Lcom/amazon/kcp/application/internal/IUpdateManager;

    .line 97
    move-wide/from16 v0, p9

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/amazon/kcp/application/AbstractApplicationController;->currentAppVersionNumber:J

    .line 98
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    .line 99
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->delayedCallbackFactory:Lcom/amazon/kcp/application/IDelayedCallbackFactory;

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AbstractApplicationController;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    move-object v5, v0

    invoke-interface {v5}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/system/io/IPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "KindleSyncMetadataCache.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->metadataCachePath:Ljava/lang/String;

    .line 104
    new-instance v4, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->synchronizationManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    .line 107
    new-instance v4, Lcom/amazon/kcp/application/AuthenticationManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AbstractApplicationController;->synchronizationManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AbstractApplicationController;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    move-object v6, v0

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/application/AuthenticationManager;-><init>(Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;Lcom/amazon/kcp/application/ISecureStorage;Lcom/amazon/kcp/application/IRequestSigner;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AbstractApplicationController;->updateManager:Lcom/amazon/kcp/application/internal/IUpdateManager;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p4

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/application/internal/IUpdateManager;->initialize(Lcom/amazon/kcp/application/ISecureStorage;Lcom/amazon/kcp/application/IKindleApplicationController;)V

    .line 112
    new-instance v4, Lcom/amazon/kcp/library/models/internal/CDownloadManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AbstractApplicationController;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AbstractApplicationController;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AbstractApplicationController;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AbstractApplicationController;->metadataCachePath:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/kcp/application/ISecureStorage;Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    .line 114
    new-instance v4, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AbstractApplicationController;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    move-object v5, v0

    const-string v6, "kindle.account.tokens"

    invoke-direct {v4, v5, v6}, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;-><init>(Lcom/amazon/kcp/application/ISecureStorage;Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->accountSecretProvider:Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;

    .line 117
    if-nez p11, :cond_0

    .line 119
    new-instance p11, Lcom/amazon/kcp/application/models/internal/DownloadChunker;

    .end local p11
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/application/AbstractApplicationController;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v4

    move-object/from16 v0, p11

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/DownloadChunker;-><init>(Lcom/amazon/system/io/IPersistentSettingsHelper;)V

    .line 122
    .restart local p11
    :cond_0
    new-instance v4, Lcom/amazon/kcp/application/internal/LocalTodoManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AbstractApplicationController;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AbstractApplicationController;->webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AbstractApplicationController;->delayedCallbackFactory:Lcom/amazon/kcp/application/IDelayedCallbackFactory;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AbstractApplicationController;->accountSecretProvider:Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/amazon/kcp/application/AbstractApplicationController;->currentAppVersionNumber:J

    move-wide v12, v0

    move-object/from16 v5, p0

    move-object/from16 v7, p4

    move-object/from16 v11, p8

    move-object/from16 v14, p11

    invoke-direct/range {v4 .. v14}, Lcom/amazon/kcp/application/internal/LocalTodoManager;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/application/ISecureStorage;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/application/IDelayedCallbackFactory;Lcom/amazon/kcp/reader/models/IAccountSecretProvider;Lcom/amazon/kcp/application/internal/IUpdateManager;JLcom/amazon/kcp/application/IDownloadChunker;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->todoManager:Lcom/amazon/kcp/application/internal/LocalTodoManager;

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AbstractApplicationController;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    move-object v5, v0

    invoke-interface {v5}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/system/io/IPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CAnnotationCache.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 128
    .local v15, annotationCache:Ljava/lang/String;
    new-instance v4, Lcom/amazon/kcp/application/AnnotationCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AbstractApplicationController;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/application/AbstractApplicationController;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v6

    invoke-direct {v4, v15, v5, v6}, Lcom/amazon/kcp/application/AnnotationCache;-><init>(Ljava/lang/String;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/io/IPersistentSettingsHelper;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    .line 131
    new-instance v4, Lcom/amazon/kcp/application/HistoryManager;

    invoke-direct {v4}, Lcom/amazon/kcp/application/HistoryManager;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/AbstractApplicationController;->historyManager:Lcom/amazon/kcp/application/HistoryManager;

    .line 134
    invoke-static {}, Lcom/amazon/kcp/application/DynamicConfigManager;->getInstance()Lcom/amazon/kcp/application/DynamicConfigManager;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/DynamicConfigManager;->injectSecureStorage(Lcom/amazon/kcp/application/ISecureStorage;)V

    .line 135
    return-void
.end method


# virtual methods
.method public deserializeCachedModels()V
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractApplicationController;->kindleStore()Lcom/amazon/kcp/store/IStoreController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/store/IStoreController;->getModelFactory()Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->getBrowseModel(J)Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    move-result-object v0

    const v1, 0x5f370

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->setTotalBooksCount(I)V

    .line 213
    return-void
.end method

.method public deserializeSyncMetadataCache()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->metadataCachePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->deserializeSyncMetadataCache(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public getAccountSecretProvider()Lcom/amazon/kcp/reader/models/IAccountSecretProvider;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->accountSecretProvider:Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;

    return-object v0
.end method

.method public getAnnotationCache()Lcom/amazon/kcp/application/IAnnotationCache;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    return-object v0
.end method

.method public getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->persistentSettingsHelper:Lcom/amazon/system/io/IPersistentSettingsHelper;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/amazon/system/io/PersistentSettingsHelper;

    invoke-direct {v0}, Lcom/amazon/system/io/PersistentSettingsHelper;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->persistentSettingsHelper:Lcom/amazon/system/io/IPersistentSettingsHelper;

    .line 242
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->persistentSettingsHelper:Lcom/amazon/system/io/IPersistentSettingsHelper;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractApplicationController;->getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/system/io/IPersistentSettingsHelper;->load(Lcom/amazon/system/io/IFileConnectionFactory;)Z

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->persistentSettingsHelper:Lcom/amazon/system/io/IPersistentSettingsHelper;

    return-object v0
.end method

.method public getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    return-object v0
.end method

.method public getDelayedCallbackFactory()Lcom/amazon/kcp/application/IDelayedCallbackFactory;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->delayedCallbackFactory:Lcom/amazon/kcp/application/IDelayedCallbackFactory;

    return-object v0
.end method

.method public getDownloadManager()Lcom/amazon/kcp/library/models/internal/IDownloadManager;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    return-object v0
.end method

.method public getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    return-object v0
.end method

.method public getHistoryManager()Lcom/amazon/kcp/application/HistoryManager;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->historyManager:Lcom/amazon/kcp/application/HistoryManager;

    return-object v0
.end method

.method public getImageFactory()Lcom/amazon/system/drawing/ImageFactory;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    return-object v0
.end method

.method public getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    return-object v0
.end method

.method public getSecureStorage()Lcom/amazon/kcp/application/ISecureStorage;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    return-object v0
.end method

.method public getSynchronizationManager()Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->synchronizationManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    return-object v0
.end method

.method public getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->todoManager:Lcom/amazon/kcp/application/internal/LocalTodoManager;

    return-object v0
.end method

.method public getUpdateManager()Lcom/amazon/kcp/application/internal/IUpdateManager;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->updateManager:Lcom/amazon/kcp/application/internal/IUpdateManager;

    return-object v0
.end method

.method public getWebConnector()Lcom/amazon/foundation/internal/net/LightWebConnector;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;

    return-object v0
.end method

.method public saveApplicationSettings()V
    .locals 1

    .prologue
    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->persistentSettingsHelper:Lcom/amazon/system/io/IPersistentSettingsHelper;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractApplicationController;->persistentSettingsHelper:Lcom/amazon/system/io/IPersistentSettingsHelper;

    invoke-interface {v0}, Lcom/amazon/system/io/IPersistentSettingsHelper;->save()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public serializeMetrics()V
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->serialize()V

    .line 230
    return-void
.end method
