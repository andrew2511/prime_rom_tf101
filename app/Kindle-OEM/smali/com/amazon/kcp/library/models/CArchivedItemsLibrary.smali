.class public Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;
.super Ljava/lang/Object;
.source "CArchivedItemsLibrary.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;


# instance fields
.field private addEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field private archivedBookList:Ljava/util/Vector;

.field archivedItemsCount:Lcom/amazon/foundation/internal/IntEventProvider;

.field private deleteEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field private final dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

.field downloadAddedCallback:Lcom/amazon/foundation/IIntCallback;

.field downloadBeforeRemovedCallback:Lcom/amazon/foundation/IIntCallback;

.field private final downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

.field downloadUpdatedCallback:Lcom/amazon/foundation/IIntCallback;

.field private final fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

.field itemAddedCallback:Lcom/amazon/foundation/IIntCallback;

.field itemBeforeRemovedCallback:Lcom/amazon/foundation/IIntCallback;

.field itemUpdatedCallback:Lcom/amazon/foundation/IIntCallback;

.field private onLicenseCountErrorEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field replaceDownloadingItemCallback:Lcom/amazon/foundation/IIntCallback;

.field private final stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/internal/IDownloadManager;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)V
    .locals 1
    .parameter "downloadManager"
    .parameter "fileSystem"
    .parameter "dictionaryManager"

    .prologue
    .line 346
    new-instance v0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary$8;

    invoke-direct {v0}, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary$8;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;-><init>(Lcom/amazon/kcp/library/models/internal/IDownloadManager;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)V

    .line 355
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/models/internal/IDownloadManager;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    .line 36
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->addEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 38
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->deleteEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 40
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->onLicenseCountErrorEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 42
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedItemsCount:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 44
    new-instance v0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary$1;-><init>(Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->itemAddedCallback:Lcom/amazon/foundation/IIntCallback;

    .line 52
    new-instance v0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary$2;-><init>(Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->itemUpdatedCallback:Lcom/amazon/foundation/IIntCallback;

    .line 60
    new-instance v0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary$3;-><init>(Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->itemBeforeRemovedCallback:Lcom/amazon/foundation/IIntCallback;

    .line 68
    new-instance v0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary$4;-><init>(Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadAddedCallback:Lcom/amazon/foundation/IIntCallback;

    .line 76
    new-instance v0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary$5;-><init>(Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadUpdatedCallback:Lcom/amazon/foundation/IIntCallback;

    .line 84
    new-instance v0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary$6;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary$6;-><init>(Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadBeforeRemovedCallback:Lcom/amazon/foundation/IIntCallback;

    .line 92
    new-instance v0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary$7;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary$7;-><init>(Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->replaceDownloadingItemCallback:Lcom/amazon/foundation/IIntCallback;

    .line 368
    iput-object p1, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    .line 369
    iput-object p2, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 370
    iput-object p4, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    .line 371
    iput-object p3, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    .line 373
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getAddedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->itemAddedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 380
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getBeforeDeletedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->itemBeforeRemovedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 381
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getUpdatedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->itemUpdatedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 382
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadAddedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadAddedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 383
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBeforeRemovedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadBeforeRemovedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 384
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadUpdatedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadUpdatedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 385
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getOnLicenseCountErrorEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->replaceDownloadingItemCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 386
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->refreshArchivedBookList()V

    .line 388
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->itemAdded(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->itemUpdated(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->itemBeforeRemoved(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadAdded(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadUpdated(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadBeforeRemoved(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->replaceDownloadingItem(I)V

    return-void
.end method

.method private downloadAdded(I)V
    .locals 5
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBookItemFromIndex(I)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v1

    .line 210
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->isSample()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    .line 222
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getErrorState()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/models/internal/IMetadata;->setErrorState(Ljava/lang/String;)V

    .line 226
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getErrorSubstate()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/models/internal/IMetadata;->setErrorSubstate(Ljava/lang/String;)V

    .line 227
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->setDownloadState(I)V

    .line 233
    :cond_0
    return-void

    .line 219
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private downloadBeforeRemoved(I)V
    .locals 5
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBookItemFromIndex(I)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v1

    .line 244
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->isSample()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 250
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    .line 256
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getErrorState()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/models/internal/IMetadata;->setErrorState(Ljava/lang/String;)V

    .line 260
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getErrorSubstate()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/models/internal/IMetadata;->setErrorSubstate(Ljava/lang/String;)V

    .line 265
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->setDownloadState(I)V

    .line 271
    :cond_0
    return-void

    .line 253
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private downloadUpdated(I)V
    .locals 5
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBookItemFromIndex(I)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v1

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find book in the downloadmanager fronm index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " !"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    if-nez v1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->isSample()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    .line 298
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 302
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getErrorState()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/models/internal/IMetadata;->setErrorState(Ljava/lang/String;)V

    .line 303
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getErrorSubstate()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/models/internal/IMetadata;->setErrorSubstate(Ljava/lang/String;)V

    .line 304
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->setDownloadState(I)V

    goto :goto_0

    .line 295
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method private itemAdded(I)V
    .locals 3
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata from index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getDownloadState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 117
    iget-object v1, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->addEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedItemsCount:Lcom/amazon/foundation/internal/IntEventProvider;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 124
    :cond_0
    return-void
.end method

.method private itemBeforeRemoved(I)V
    .locals 3
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    .line 184
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 194
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedItemsCount:Lcom/amazon/foundation/internal/IntEventProvider;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->deleteEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 200
    :cond_0
    return-void

    .line 186
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private itemUpdated(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v3, -0x1

    .line 132
    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata from index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 143
    iget-object v2, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_1

    .line 151
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getDownloadState()I

    move-result v2

    if-ne v2, v4, :cond_2

    if-eq v1, v3, :cond_2

    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 157
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedItemsCount:Lcom/amazon/foundation/internal/IntEventProvider;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->deleteEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 171
    :cond_0
    :goto_2
    return-void

    .line 141
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_2
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getDownloadState()I

    move-result v2

    if-eq v2, v4, :cond_0

    if-ne v1, v3, :cond_0

    .line 164
    iget-object v1, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedItemsCount:Lcom/amazon/foundation/internal/IntEventProvider;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->addEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method private refreshArchivedBookList()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 314
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->setSize(I)V

    .line 315
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v1

    .line 316
    if-eqz v1, :cond_2

    .line 318
    :goto_0
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 320
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    .line 322
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getDownloadState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getDownloadState()I

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    iget-object v3, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->addEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 318
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedItemsCount:Lcom/amazon/foundation/internal/IntEventProvider;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 333
    :cond_2
    return-void
.end method

.method private replaceDownloadingItem(I)V
    .locals 5
    .parameter

    .prologue
    .line 506
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBookItemFromIndex(I)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v1

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find book in the downloadmanager from index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " !"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    if-nez v1, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->isSample()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_0

    .line 523
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    .line 526
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getAsin()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 530
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getErrorState()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/amazon/kcp/library/models/internal/IMetadata;->setErrorState(Ljava/lang/String;)V

    .line 531
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getErrorSubstate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->setErrorSubstate(Ljava/lang/String;)V

    .line 532
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->setDownloadState(I)V

    .line 534
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->onLicenseCountErrorEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v0, v2}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    goto :goto_0

    .line 523
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method


# virtual methods
.method public cleanupCoverCache()Z
    .locals 3

    .prologue
    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, success:Z
    iget-object v1, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    if-eqz v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v2}, Lcom/amazon/kcp/application/internal/CCoverSerializer;->getCoverSerializationPath(Lcom/amazon/system/io/IFileConnectionFactory;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/system/io/internal/FileSystemHelper;->emptyDirectory(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v0

    .line 500
    :cond_0
    return v0
.end method

.method public getAddEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->addEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getArchivedBookByAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/internal/IMetadata;
    .locals 3
    .parameter "asin"
    .parameter "isSample"

    .prologue
    .line 405
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 407
    iget-object v2, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/internal/IMetadata;

    .line 408
    .local v1, item:Lcom/amazon/kcp/library/models/internal/IMetadata;
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->isSample()Z

    move-result v2

    if-ne p2, v2, :cond_0

    move-object v2, v1

    .line 414
    .end local v1           #item:Lcom/amazon/kcp/library/models/internal/IMetadata;
    :goto_1
    return-object v2

    .line 405
    .restart local v1       #item:Lcom/amazon/kcp/library/models/internal/IMetadata;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    .end local v1           #item:Lcom/amazon/kcp/library/models/internal/IMetadata;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getArchivedBookFromIndex(I)Lcom/amazon/kcp/library/models/internal/IMetadata;
    .locals 2
    .parameter

    .prologue
    .line 395
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 397
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong call to getArchivedBookFromIndex, size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index requested is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 398
    const/4 v0, 0x0

    .line 400
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    move-object v0, p0

    goto :goto_0
.end method

.method public getArchivedItemsCountEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedItemsCount:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getBookCount()I
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;
    .locals 1
    .parameter "index"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->archivedBookList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/library/models/IListableBook;

    return-object p0
.end method

.method public getDeleteEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->deleteEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getOnLicenseCountErrorEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->onLicenseCountErrorEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getSyncMetadataModel()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v0

    return-object v0
.end method

.method public sortByAuthor()[I
    .locals 4

    .prologue
    .line 455
    const/4 v0, 0x4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    invoke-static {v0, v1, v2, p0, v3}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->filterAndSort(IILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)[I

    move-result-object v0

    return-object v0
.end method

.method public sortByTitle()[I
    .locals 4

    .prologue
    .line 463
    const/4 v0, 0x4

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    invoke-static {v0, v1, v2, p0, v3}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->filterAndSort(IILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)[I

    move-result-object v0

    return-object v0
.end method
