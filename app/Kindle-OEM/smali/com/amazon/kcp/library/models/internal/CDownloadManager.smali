.class public Lcom/amazon/kcp/library/models/internal/CDownloadManager;
.super Ljava/lang/Object;
.source "CDownloadManager.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/internal/IDownloadManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/models/internal/CDownloadManager$PendingSynchronization;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_MANAGER_DEFAULT_SYNC_INTERVAL:I = 0x1e

.field private static final FORCE_SYNC_METADATA_STATE:Ljava/lang/String; = "force_sync_metadata"

.field private static final LAST_SYNC_METADATA_DATE_STATE:Ljava/lang/String; = "last_syncmetadata_date"

.field private static final MILLISECONDS_PER_MINUTE:I = 0xea60

.field private static final MIN_SYNC_METADATA_INTERVAL_STATE:Ljava/lang/String;


# instance fields
.field private applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

.field private downloadAddedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field private downloadAfterRemovedEvent:Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;

.field private downloadBeforeRemovedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field private downloadBookCache:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

.field private downloadBooks:Ljava/util/Vector;

.field private downloadUpdatedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field private fileConnection:Lcom/amazon/system/io/IFileConnectionFactory;

.field private forceSyncMetadata:Z

.field private imageFactory:Lcom/amazon/system/drawing/ImageFactory;

.field private lastSyncMetadataDate:Ljava/util/Date;

.field private logOutCallback:Lcom/amazon/foundation/ICallback;

.field private metadataCachePath:Ljava/lang/String;

.field private metadataSynchronizedCallback:Lcom/amazon/foundation/ICallback;

.field private minSyncMetadataRequestInterval:I

.field private onLicenseCountErrorEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field private partialFiles:Ljava/util/Vector;

.field private pendingCallbacks:Ljava/util/Vector;

.field private secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

.field private settings:Lcom/amazon/system/io/IPersistentSettingsHelper;

.field private startedSyncMetadataConnection:Z

.field private syncMetadata:Lcom/amazon/kcp/library/models/internal/SyncMetadata;

.field private syncMetadataExecutor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

.field private syncMetadataReceivedStatusCallback:Lcom/amazon/foundation/IIntCallback;

.field private todoItemAddedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private todoItemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private todoItemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private todoItemProcessingCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private webservicesClient:Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/String;

    const-string v1, "min_sync_metadata_interval"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->MIN_SYNC_METADATA_INTERVAL_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/kcp/application/ISecureStorage;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->partialFiles:Ljava/util/Vector;

    .line 53
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->pendingCallbacks:Ljava/util/Vector;

    .line 71
    new-instance v0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadataExecutor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    .line 73
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadAddedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 74
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBeforeRemovedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 75
    new-instance v0, Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadAfterRemovedEvent:Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;

    .line 76
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadUpdatedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 79
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->onLicenseCountErrorEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 80
    new-instance v0, Lcom/amazon/kcp/library/models/internal/CDownloadManager$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager$1;-><init>(Lcom/amazon/kcp/library/models/internal/CDownloadManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->todoItemAddedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .line 88
    new-instance v0, Lcom/amazon/kcp/library/models/internal/CDownloadManager$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager$2;-><init>(Lcom/amazon/kcp/library/models/internal/CDownloadManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->todoItemProcessingCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .line 96
    new-instance v0, Lcom/amazon/kcp/library/models/internal/CDownloadManager$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager$3;-><init>(Lcom/amazon/kcp/library/models/internal/CDownloadManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->todoItemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .line 104
    new-instance v0, Lcom/amazon/kcp/library/models/internal/CDownloadManager$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager$4;-><init>(Lcom/amazon/kcp/library/models/internal/CDownloadManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->todoItemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .line 112
    new-instance v0, Lcom/amazon/kcp/library/models/internal/CDownloadManager$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager$5;-><init>(Lcom/amazon/kcp/library/models/internal/CDownloadManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->metadataSynchronizedCallback:Lcom/amazon/foundation/ICallback;

    .line 120
    new-instance v0, Lcom/amazon/kcp/library/models/internal/CDownloadManager$6;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager$6;-><init>(Lcom/amazon/kcp/library/models/internal/CDownloadManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->logOutCallback:Lcom/amazon/foundation/ICallback;

    .line 128
    new-instance v0, Lcom/amazon/kcp/library/models/internal/CDownloadManager$7;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager$7;-><init>(Lcom/amazon/kcp/library/models/internal/CDownloadManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadataReceivedStatusCallback:Lcom/amazon/foundation/IIntCallback;

    .line 519
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    .line 520
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->fileConnection:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 521
    iput-object p3, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    .line 522
    iput-object p4, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    .line 523
    iput-object p5, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->metadataCachePath:Ljava/lang/String;

    .line 524
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->settings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    .line 526
    new-instance v0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getWebConnector()Lcom/amazon/foundation/internal/net/LightWebConnector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->webservicesClient:Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;

    .line 528
    const-string v0, "last_syncmetadata_date"

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->getStoredDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->lastSyncMetadataDate:Ljava/util/Date;

    .line 529
    const-string v0, "force_sync_metadata"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->getStoredBool(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->forceSyncMetadata:Z

    .line 530
    sget-object v0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->MIN_SYNC_METADATA_INTERVAL_STATE:Ljava/lang/String;

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->getStoredInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->minSyncMetadataRequestInterval:I

    .line 532
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AuthenticationManager;->getLogOutEvent()Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->logOutCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/EventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 533
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/models/internal/CDownloadManager;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->onTodoItemAdded(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/models/internal/CDownloadManager;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->onTodoItemProcessing(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/models/internal/CDownloadManager;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->onTodoItemProcessed(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/models/internal/CDownloadManager;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->onTodoItemError(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/models/internal/CDownloadManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->onSynchronizeMetadataFinished()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kcp/library/models/internal/CDownloadManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->onLogOut()V

    return-void
.end method

.method static synthetic access$602(Lcom/amazon/kcp/library/models/internal/CDownloadManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->startedSyncMetadataConnection:Z

    return p1
.end method

.method private getBookInfo(Ljava/lang/String;)Lcom/amazon/kcp/library/models/IDownloadBookItem;
    .locals 3
    .parameter "asin"

    .prologue
    .line 258
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadata:Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    if-eqz v2, :cond_1

    .line 260
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadata:Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 262
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadata:Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/internal/IMetadata;

    .line 263
    .local v1, metadata:Lcom/amazon/kcp/library/models/internal/IMetadata;
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 275
    .end local v0           #i:I
    .end local v1           #metadata:Lcom/amazon/kcp/library/models/internal/IMetadata;
    :goto_1
    return-object v2

    .line 260
    .restart local v0       #i:I
    .restart local v1       #metadata:Lcom/amazon/kcp/library/models/internal/IMetadata;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    .end local v0           #i:I
    .end local v1           #metadata:Lcom/amazon/kcp/library/models/internal/IMetadata;
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBookCache:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBookCache:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 272
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBookCache:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    goto :goto_1

    .line 275
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getStoredBool(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 561
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    invoke-interface {v1, p1}, Lcom/amazon/kcp/application/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, val:Ljava/lang/String;
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 564
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    const/4 v1, 0x1

    .line 574
    :goto_0
    return v1

    .line 568
    :cond_0
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 570
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, p2

    .line 574
    goto :goto_0
.end method

.method private getStoredDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 538
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 544
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 551
    :goto_0
    return-object v0

    .line 548
    :catch_0
    move-exception v0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 551
    goto :goto_0
.end method

.method private getStoredInt(Ljava/lang/String;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 584
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 589
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 596
    :goto_0
    return v0

    .line 593
    :catch_0
    move-exception v0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p2

    .line 596
    goto :goto_0
.end method

.method private isSample(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 253
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyPendingCallbacks()V
    .locals 4

    .prologue
    .line 183
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->pendingCallbacks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->pendingCallbacks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/internal/CDownloadManager$PendingSynchronization;

    check-cast v1, Lcom/amazon/kcp/library/models/internal/CDownloadManager$PendingSynchronization;

    iget-object v0, v1, Lcom/amazon/kcp/library/models/internal/CDownloadManager$PendingSynchronization;->callback:Lcom/amazon/foundation/internal/IBooleanCallback;

    .line 186
    .local v0, callback:Lcom/amazon/foundation/internal/IBooleanCallback;
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->pendingCallbacks:Ljava/util/Vector;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->pendingCallbacks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 187
    if-eqz v0, :cond_0

    .line 189
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadataExecutor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IBooleanCallback;->execute(Z)V

    goto :goto_0

    .line 192
    .end local v0           #callback:Lcom/amazon/foundation/internal/IBooleanCallback;
    :cond_1
    return-void
.end method

.method private onLogOut()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadata:Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadata:Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->metadataCachePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->empty(Ljava/lang/String;)V

    .line 508
    :cond_0
    return-void
.end method

.method private onSynchronizeMetadataFinished()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->pendingCallbacks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    .line 152
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadataExecutor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->setLastSyncMetadataDate(Ljava/util/Date;)V

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->setForceSyncMetadata(Z)V

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadata:Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->getMinTodoItemRequestIntervalMinutes()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->setMinTodoItemRequestInterval(I)V

    .line 161
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getDownloadManager()Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadata:Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->getMinSyncMetadataRequestIntervalMinutes()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->setMinSyncMetadataRequestInterval(I)V

    .line 164
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAnnotationCache()Lcom/amazon/kcp/application/IAnnotationCache;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadata:Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->getAnnotationSyncStatus()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAnnotationCache;->setAnnotationSyncStatus(Z)V

    .line 166
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->metadataCachePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->serializeMetaData(Ljava/lang/String;)V

    .line 177
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->notifyPendingCallbacks()V

    .line 178
    return-void

    .line 168
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->startedSyncMetadataConnection:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadata:Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadata:Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->empty(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onTodoItemAdded(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 292
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v3

    .line 293
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->shouldSyncAfterTodoItem(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    invoke-direct {p0, v7}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->setForceSyncMetadata(Z)V

    .line 301
    :cond_0
    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DELETE:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne v1, v2, :cond_3

    .line 307
    const/4 v1, 0x0

    .line 308
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 310
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    .line 311
    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 318
    :goto_1
    if-ltz v2, :cond_1

    if-eqz v1, :cond_1

    .line 320
    invoke-virtual {v1, v7}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setDownloadState(I)V

    .line 321
    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBeforeRemovedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v3, v2}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 322
    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 323
    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadAfterRemovedEvent:Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;

    invoke-virtual {v3, v2, v1}, Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;->notifyListeners(ILcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 385
    :cond_1
    :goto_2
    return-void

    .line 308
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    :cond_3
    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v1

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v2

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->shouldHandleTodoItem(Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->isSample(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->getDownloadBookIndex(Ljava/lang/String;Z)I

    move-result v4

    .line 332
    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->getBookInfo(Ljava/lang/String;)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v2

    .line 333
    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBookCache:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    if-eq v2, v1, :cond_4

    .line 335
    move-object v0, v2

    check-cast v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    move-object v1, v0

    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->registerForDownloadProgress(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;Lcom/amazon/foundation/IStatusTracker;)V

    .line 339
    :cond_4
    if-ne v4, v6, :cond_7

    .line 341
    new-instance v1, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    invoke-direct {v1}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;-><init>()V

    .line 344
    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setAsin(Ljava/lang/String;)V

    .line 345
    invoke-direct {p0, v3}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->isSample(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setSample(Z)V

    .line 346
    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setTitle(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kcp/library/models/BookType;->getBookTypeFor(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)I

    move-result v4

    .line 350
    if-ne v4, v6, :cond_5

    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t map todo item type to bookType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    :cond_5
    invoke-virtual {v1, v4}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setBookType(I)V

    .line 357
    if-eqz v2, :cond_6

    .line 360
    invoke-interface {v2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setTitle(Ljava/lang/String;)V

    .line 363
    invoke-interface {v2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setAuthor(Ljava/lang/String;)V

    .line 364
    invoke-interface {v2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setCoverUrl(Ljava/lang/String;)V

    .line 365
    invoke-interface {v2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getCover()Lcom/amazon/system/drawing/Image;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setCover(Lcom/amazon/system/drawing/Image;)V

    .line 366
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setDate(J)V

    .line 367
    invoke-interface {v2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getCoverState()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setCoverState(I)V

    .line 368
    invoke-interface {v2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getPublicationDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setPublicationDate(Ljava/lang/String;)V

    .line 370
    :cond_6
    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->registerForDownloadProgress(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;Lcom/amazon/foundation/IStatusTracker;)V

    .line 373
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 374
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadAddedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    goto/16 :goto_2

    .line 379
    :cond_7
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    .line 380
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setDownloadState(I)V

    .line 381
    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->registerForDownloadProgress(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;Lcom/amazon/foundation/IStatusTracker;)V

    .line 382
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadUpdatedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v1, v4}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    goto/16 :goto_2

    :cond_8
    move v2, v6

    goto/16 :goto_1
.end method

.method private onTodoItemError(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 10
    .parameter

    .prologue
    .line 447
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->shouldHandleTodoItem(Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->isSample(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->getDownloadBookIndex(Ljava/lang/String;Z)I

    move-result v8

    .line 450
    const/4 v1, -0x1

    if-eq v8, v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v1, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    move-object v7, v0

    .line 455
    invoke-virtual {v7}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->getDownloadState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 457
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getError()Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    move-result-object v9

    .line 460
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getServerFailureCode()Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 464
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 465
    const-string v2, "ErrorCode"

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "DownloadManager"

    const-string v3, "BookDownloadFailure"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    .line 474
    :goto_0
    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->CDE_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    if-ne v9, v1, :cond_2

    .line 483
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->onLicenseCountErrorEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v1, v8}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 485
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v1, v8}, Ljava/util/Vector;->removeElementAt(I)V

    .line 487
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadAfterRemovedEvent:Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;

    invoke-virtual {v1, v8, v7}, Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;->notifyListeners(ILcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 500
    :cond_0
    :goto_1
    return-void

    .line 470
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "DownloadManager"

    const-string v3, "BookDownloadFailure"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    goto :goto_0

    .line 493
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getError()Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getSubstate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setErrorState(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setDownloadState(I)V

    .line 495
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadUpdatedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v1, v8}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    goto :goto_1
.end method

.method private onTodoItemProcessed(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 410
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->shouldHandleTodoItem(Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 412
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->isSample(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->getDownloadBookIndex(Ljava/lang/String;Z)I

    move-result v1

    .line 413
    .local v1, i:I
    const/4 v0, 0x0

    .line 414
    .local v0, book:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 416
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #book:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;
    check-cast v0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    .line 420
    .restart local v0       #book:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;
    :cond_0
    if-nez v0, :cond_2

    .line 443
    .end local v0           #book:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;
    .end local v1           #i:I
    :cond_1
    :goto_0
    return-void

    .line 430
    .restart local v0       #book:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;
    .restart local v1       #i:I
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getState()Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->REMOVING_FROM_LOCAL_TODO_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    if-ne v2, v3, :cond_3

    .line 433
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadUpdatedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v2, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    goto :goto_0

    .line 437
    :cond_3
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setDownloadState(I)V

    .line 438
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBeforeRemovedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v2, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 439
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 440
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadAfterRemovedEvent:Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;

    invoke-virtual {v2, v1, v0}, Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;->notifyListeners(ILcom/amazon/kcp/library/models/IDownloadBookItem;)V

    goto :goto_0
.end method

.method private onTodoItemProcessing(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 394
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->shouldHandleTodoItem(Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->isSample(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->getDownloadBookIndex(Ljava/lang/String;Z)I

    move-result v1

    .line 398
    .local v1, i:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    .line 402
    .local v0, book:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setDownloadState(I)V

    .line 403
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadUpdatedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v2, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 406
    .end local v0           #book:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private registerForDownloadProgress(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;Lcom/amazon/foundation/IStatusTracker;)V
    .locals 0
    .parameter "itemWrapper"
    .parameter "book"

    .prologue
    .line 287
    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->registerStatusTracker(Lcom/amazon/foundation/IStatusTracker;)V

    .line 288
    return-void
.end method

.method private setForceSyncMetadata(Z)V
    .locals 2
    .parameter "force"

    .prologue
    .line 809
    iput-boolean p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->forceSyncMetadata:Z

    .line 810
    const-string v0, "force_sync_metadata"

    iget-boolean v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->forceSyncMetadata:Z

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->storeBool(Ljava/lang/String;Z)V

    .line 811
    return-void
.end method

.method private setLastSyncMetadataDate(Ljava/util/Date;)V
    .locals 1
    .parameter "newDate"

    .prologue
    .line 196
    const-string v0, "last_syncmetadata_date"

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->storeDate(Ljava/lang/String;Ljava/util/Date;)V

    .line 197
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->lastSyncMetadataDate:Ljava/util/Date;

    .line 198
    return-void
.end method

.method protected static shouldHandleTodoItem(Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;Ljava/lang/String;)Z
    .locals 2
    .parameter "itemAction"
    .parameter "itemType"
    .parameter "itemKey"

    .prologue
    const/4 v1, 0x0

    .line 219
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-eq p0, v0, :cond_0

    move v0, v1

    .line 235
    :goto_0
    return v0

    .line 226
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NEWSPAPER:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->MAGAZINE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-eq p1, v0, :cond_1

    move v0, v1

    .line 231
    goto :goto_0

    .line 235
    :cond_1
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private shouldSyncAfterTodoItem(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)Z
    .locals 2
    .parameter "itemWrapper"

    .prologue
    .line 203
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->MAGAZINE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NEWSPAPER:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->needsRemoteRemoval()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DELETE:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne v0, v1, :cond_2

    .line 210
    :cond_1
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldSyncMetadata(Z)Z
    .locals 7
    .parameter "throttled"

    .prologue
    const/4 v6, 0x1

    .line 816
    iget-boolean v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->forceSyncMetadata:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getSyncTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v6

    .line 825
    :goto_0
    return v2

    .line 823
    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->lastSyncMetadataDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 825
    .local v0, timeSinceLastSyncMs:J
    const-wide/32 v2, 0xea60

    div-long v2, v0, v2

    iget v4, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->minSyncMetadataRequestInterval:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private storeBool(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 579
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    if-eqz p2, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-interface {v0, p1, v1}, Lcom/amazon/kcp/application/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 580
    return-void

    .line 579
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method private storeDate(Ljava/lang/String;Ljava/util/Date;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 556
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kcp/application/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 557
    return-void
.end method

.method private storeInt(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 601
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kcp/application/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 602
    return-void
.end method


# virtual methods
.method public cancelMetadataSynchronization(Lcom/amazon/foundation/internal/IBooleanCallback;)V
    .locals 3
    .parameter

    .prologue
    .line 611
    if-eqz p1, :cond_0

    .line 613
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->pendingCallbacks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->pendingCallbacks:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/CDownloadManager$PendingSynchronization;

    check-cast v0, Lcom/amazon/kcp/library/models/internal/CDownloadManager$PendingSynchronization;

    iget-object v0, v0, Lcom/amazon/kcp/library/models/internal/CDownloadManager$PendingSynchronization;->callback:Lcom/amazon/foundation/internal/IBooleanCallback;

    if-ne v0, p1, :cond_2

    .line 617
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->pendingCallbacks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne v1, v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadataExecutor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->stop()V

    .line 631
    :cond_0
    :goto_1
    return-void

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->pendingCallbacks:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1

    .line 613
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public cleanupDownload(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1002
    if-nez p2, :cond_0

    move v0, v4

    .line 1044
    :goto_0
    return v0

    .line 1008
    :cond_0
    if-nez p1, :cond_1

    move v0, v4

    .line 1010
    goto :goto_0

    .line 1014
    :cond_1
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    .line 1016
    goto :goto_0

    .line 1020
    :cond_2
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 1023
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to clean up a book ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") from library that is currently downloading or queued for download.  Not cleaning up!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v4

    .line 1024
    goto :goto_0

    :cond_4
    move v1, v4

    .line 1028
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1030
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .line 1031
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->isSample()Z

    move-result v2

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->isSample()Z

    move-result v3

    if-ne v2, v3, :cond_5

    .line 1034
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1037
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->settings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    invoke-static {p1, v2, p2}, Lcom/amazon/kcp/library/models/internal/ResumableDownloadHelper;->removeBookPartialFile(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/io/IPersistentSettingsHelper;Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z

    move-result v2

    .line 1038
    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadAfterRemovedEvent:Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;

    invoke-virtual {v3, v1, v0}, Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;->notifyListeners(ILcom/amazon/kcp/library/models/IDownloadBookItem;)V

    move v0, v2

    .line 1041
    goto :goto_0

    .line 1028
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    move v0, v4

    goto :goto_0
.end method

.method protected clearInProgressDownloads()V
    .locals 4

    .prologue
    .line 870
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 872
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 874
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .line 877
    .local v0, book:Lcom/amazon/kcp/library/models/IDownloadBookItem;
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 880
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadAfterRemovedEvent:Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;

    invoke-virtual {v2, v1, v0}, Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;->notifyListeners(ILcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 872
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 883
    .end local v0           #book:Lcom/amazon/kcp/library/models/IDownloadBookItem;
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public deserializeSyncMetadataCache(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 638
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v0

    .line 642
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    invoke-interface {v0, p1, v1}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->deSerializeMetaData(Ljava/lang/String;Lcom/amazon/system/drawing/ImageFactory;)V

    .line 648
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->fileConnection:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v0, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public getDownloadAddedEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadAddedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getDownloadAfterRemovedEvent()Lcom/amazon/foundation/internal/IIndexedDownloadBookItemEventProvider;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadAfterRemovedEvent:Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;

    return-object v0
.end method

.method public getDownloadBeforeRemovedEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBeforeRemovedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getDownloadBookCount()I
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method protected getDownloadBookIndex(Ljava/lang/String;Z)I
    .locals 3
    .parameter "itemKey"
    .parameter "isSample"

    .prologue
    .line 240
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 242
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .line 243
    .local v0, book:Lcom/amazon/kcp/library/models/IDownloadBookItem;
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->isSample()Z

    move-result v2

    if-ne v2, p2, :cond_0

    move v2, v1

    .line 248
    .end local v0           #book:Lcom/amazon/kcp/library/models/IDownloadBookItem;
    :goto_1
    return v2

    .line 240
    .restart local v0       #book:Lcom/amazon/kcp/library/models/IDownloadBookItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v0           #book:Lcom/amazon/kcp/library/models/IDownloadBookItem;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getDownloadBookItemFromAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/IDownloadBookItem;
    .locals 3
    .parameter "asin"
    .parameter "isSample"

    .prologue
    .line 713
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 715
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .line 716
    .local v1, item:Lcom/amazon/kcp/library/models/IDownloadBookItem;
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->isSample()Z

    move-result v2

    if-ne p2, v2, :cond_0

    move-object v2, v1

    .line 722
    .end local v1           #item:Lcom/amazon/kcp/library/models/IDownloadBookItem;
    :goto_1
    return-object v2

    .line 713
    .restart local v1       #item:Lcom/amazon/kcp/library/models/IDownloadBookItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 722
    .end local v1           #item:Lcom/amazon/kcp/library/models/IDownloadBookItem;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getDownloadBookItemFromIndex(I)Lcom/amazon/kcp/library/models/IDownloadBookItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 705
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    return-object p0
.end method

.method public getDownloadUpdatedEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadUpdatedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getMinSyncMetadataRequestIntervalMinutes()I
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->minSyncMetadataRequestInterval:I

    return v0
.end method

.method public getOnLicenseCountErrorEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->onLicenseCountErrorEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadata:Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    if-nez v0, :cond_0

    .line 750
    new-instance v0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->fileConnection:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/models/internal/SyncMetadata;-><init>(Lcom/amazon/system/io/IFileConnectionFactory;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadata:Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    .line 753
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemAddedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->todoItemAddedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 754
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemProcessingEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->todoItemProcessingCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 755
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemProcessedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->todoItemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 756
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemErrorEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->todoItemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadata:Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    return-object v0
.end method

.method public populatePartialDownloads(Lcom/amazon/system/io/IFileConnectionFactory;)V
    .locals 3
    .parameter

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->clearInProgressDownloads()V

    .line 892
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->partialFiles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 895
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->partialFiles:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->selectFileNameWithExtension(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 898
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->settings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    invoke-static {v2, v0}, Lcom/amazon/kcp/library/models/internal/ResumableDownloadHelper;->getToken(Lcom/amazon/system/io/IPersistentSettingsHelper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 899
    if-eqz v2, :cond_1

    .line 902
    invoke-static {v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->getAsinFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 905
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->getBookInfo(Ljava/lang/String;)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v0

    .line 908
    if-eqz v0, :cond_0

    .line 911
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->resuscitatePartialDownloads(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 892
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 923
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->settings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->partialFiles:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v2, v0}, Lcom/amazon/kcp/library/models/internal/ResumableDownloadHelper;->removePartialFile(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/io/IPersistentSettingsHelper;Ljava/lang/String;)Z

    goto :goto_1

    .line 928
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->partialFiles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 929
    return-void
.end method

.method public primeSyncMetadataRequest(Z)V
    .locals 2
    .parameter "throttled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 834
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->shouldSyncMetadata(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->webservicesClient:Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;->primeSyncMetadataRequest(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;)V

    .line 838
    :cond_0
    return-void
.end method

.method protected resuscitatePartialDownloads(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 937
    if-nez p1, :cond_1

    .line 985
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->isSample()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->getDownloadBookIndex(Ljava/lang/String;Z)I

    move-result v0

    .line 947
    if-ne v0, v3, :cond_0

    .line 949
    new-instance v0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    invoke-direct {v0}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;-><init>()V

    .line 952
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setAsin(Ljava/lang/String;)V

    .line 953
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->isSample()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setSample(Z)V

    .line 955
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setTitle(Ljava/lang/String;)V

    .line 956
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setAuthor(Ljava/lang/String;)V

    .line 958
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setCoverUrl(Ljava/lang/String;)V

    .line 959
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getCover()Lcom/amazon/system/drawing/Image;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setCover(Lcom/amazon/system/drawing/Image;)V

    .line 960
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getCoverState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setCoverState(I)V

    .line 961
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getPublicationDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setPublicationDate(Ljava/lang/String;)V

    .line 962
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setDate(J)V

    .line 965
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getBookType()I

    move-result v1

    .line 966
    if-ne v1, v3, :cond_2

    .line 968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t map todo item type to bookType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getBookType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 970
    :cond_2
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setBookType(I)V

    .line 973
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 974
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadAddedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 977
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setDownloadState(I)V

    .line 978
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadUpdatedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBooks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    goto/16 :goto_0
.end method

.method public reuseBookDetailForDownload(Lcom/amazon/kcp/store/models/IBookDetails;)V
    .locals 2
    .parameter "bookDetail"

    .prologue
    .line 775
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBookCache:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    if-nez v0, :cond_0

    .line 777
    new-instance v0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    invoke-direct {v0}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBookCache:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    .line 784
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBookCache:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    invoke-interface {p1}, Lcom/amazon/kcp/store/models/IBookDetails;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setAsin(Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBookCache:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setBookType(I)V

    .line 788
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBookCache:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    invoke-interface {p1}, Lcom/amazon/kcp/store/models/IBookDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setTitle(Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBookCache:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    invoke-interface {p1}, Lcom/amazon/kcp/store/models/IBookDetails;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setAuthor(Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBookCache:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    invoke-interface {p1}, Lcom/amazon/kcp/store/models/IBookDetails;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setCoverUrl(Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBookCache:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    invoke-interface {p1}, Lcom/amazon/kcp/store/models/IBookDetails;->getPublicationDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setPublicationDate(Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBookCache:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->setCover(Lcom/amazon/system/drawing/Image;)V

    .line 796
    return-void

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->downloadBookCache:Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->empty()V

    goto :goto_0
.end method

.method public serializeSyncMetadataCache(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 657
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadata:Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadata:Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->fileConnection:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v0, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 666
    :goto_0
    return-void

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadata:Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->serializeMetaData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMinSyncMetadataRequestInterval(I)V
    .locals 1
    .parameter "interval"

    .prologue
    .line 803
    sget-object v0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->MIN_SYNC_METADATA_INTERVAL_STATE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->storeInt(Ljava/lang/String;I)V

    .line 804
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->minSyncMetadataRequestInterval:I

    .line 805
    return-void
.end method

.method public setPartialDownloadsList(Ljava/util/Vector;)V
    .locals 1
    .parameter "filenames"

    .prologue
    .line 989
    if-nez p1, :cond_0

    .line 991
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->partialFiles:Ljava/util/Vector;

    .line 997
    :goto_0
    return-void

    .line 995
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->partialFiles:Ljava/util/Vector;

    goto :goto_0
.end method

.method public synchronizeMetadataIfNeeded(Lcom/amazon/foundation/internal/IBooleanCallback;Lcom/amazon/foundation/IStatusTracker;Z)V
    .locals 5
    .parameter "callback"
    .parameter "statusTracker"
    .parameter "throttled"

    .prologue
    const/4 v3, 0x0

    .line 842
    new-instance v0, Lcom/amazon/kcp/library/models/internal/CDownloadManager$PendingSynchronization;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/amazon/kcp/library/models/internal/CDownloadManager$PendingSynchronization;-><init>(Lcom/amazon/kcp/library/models/internal/CDownloadManager;Lcom/amazon/kcp/library/models/internal/CDownloadManager$1;)V

    .line 843
    .local v0, pending:Lcom/amazon/kcp/library/models/internal/CDownloadManager$PendingSynchronization;
    iput-object p1, v0, Lcom/amazon/kcp/library/models/internal/CDownloadManager$PendingSynchronization;->callback:Lcom/amazon/foundation/internal/IBooleanCallback;

    .line 845
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->pendingCallbacks:Ljava/util/Vector;

    invoke-virtual {v2, v0, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 847
    invoke-direct {p0, p3}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->shouldSyncMetadata(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 849
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadataExecutor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 851
    iput-boolean v3, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->startedSyncMetadataConnection:Z

    .line 853
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->webservicesClient:Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p2}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebService;->createSyncMetadataRequest(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/library/models/internal/ISyncMetadata;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v1

    .line 855
    .local v1, request:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadataReceivedStatusCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->registerHttpStatusCallback(Lcom/amazon/foundation/IIntCallback;)V

    .line 856
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->syncMetadataExecutor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->metadataSynchronizedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v2, v1, v3}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    .line 863
    .end local v1           #request:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    :cond_0
    :goto_0
    return-void

    .line 861
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/CDownloadManager;->notifyPendingCallbacks()V

    goto :goto_0
.end method
