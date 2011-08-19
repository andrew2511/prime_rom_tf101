.class public Lcom/amazon/kcp/library/models/CLibrary;
.super Ljava/lang/Object;
.source "CLibrary.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ILibrary;


# static fields
.field public static final MAX_PERIODICAL_ISSUES:I = 0x7


# instance fields
.field private addEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field private bookUpdatedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field private cachedBookBuilderList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<*>;"
        }
    .end annotation
.end field

.field private changeEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private delayedCallbackFactory:Lcom/amazon/kcp/application/IDelayedCallbackFactory;

.field private deleteEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field private dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

.field private downloadDeleteEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field private downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

.field private fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

.field private imageFactory:Lcom/amazon/system/drawing/ImageFactory;

.field private invalidatedEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private localBookList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/amazon/kcp/library/models/ILocalBookItem;",
            ">;"
        }
    .end annotation
.end field

.field private localDeleteEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field private onDownloadBookAdded:Lcom/amazon/foundation/IIntCallback;

.field private onDownloadBookRemoved:Lcom/amazon/foundation/internal/IIndexedDownloadBookItemCallback;

.field private onDownloadBookUpdated:Lcom/amazon/foundation/IIntCallback;

.field private onModelChanged:Lcom/amazon/foundation/IIntCallback;

.field private onSyncMetadataAdded:Lcom/amazon/foundation/IIntCallback;

.field private preferredDimension:Lcom/amazon/system/drawing/Dimension;

.field private final stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

.field private targetLocation:Ljava/lang/String;

.field private webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/internal/IDownloadManager;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/util/Vector;Lcom/amazon/kcp/application/IDelayedCallbackFactory;Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Lcom/amazon/system/drawing/Dimension;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)V
    .locals 11
    .parameter "downloadManager"
    .parameter "imageFactory"
    .parameter "webConnector"
    .parameter
    .parameter "delayedCallbackFactory"
    .parameter "fileSystem"
    .parameter "targetLocation"
    .parameter "preferredDimension"
    .parameter "dictionaryManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/internal/IDownloadManager;",
            "Lcom/amazon/system/drawing/ImageFactory;",
            "Lcom/amazon/foundation/internal/net/LightWebConnector;",
            "Ljava/util/Vector",
            "<*>;",
            "Lcom/amazon/kcp/application/IDelayedCallbackFactory;",
            "Lcom/amazon/system/io/IFileConnectionFactory;",
            "Ljava/lang/String;",
            "Lcom/amazon/system/drawing/Dimension;",
            "Lcom/amazon/kcp/library/dictionary/IDictionaryManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 165
    .local p4, cachedBookBuilderList:Ljava/util/Vector;,"Ljava/util/Vector<*>;"
    new-instance v9, Lcom/amazon/kcp/util/LocalizedStringComparator;

    invoke-direct {v9}, Lcom/amazon/kcp/util/LocalizedStringComparator;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/amazon/kcp/library/models/CLibrary;-><init>(Lcom/amazon/kcp/library/models/internal/IDownloadManager;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/util/Vector;Lcom/amazon/kcp/application/IDelayedCallbackFactory;Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Lcom/amazon/system/drawing/Dimension;Lcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/models/internal/IDownloadManager;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/util/Vector;Lcom/amazon/kcp/application/IDelayedCallbackFactory;Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Lcom/amazon/system/drawing/Dimension;Lcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/internal/IDownloadManager;",
            "Lcom/amazon/system/drawing/ImageFactory;",
            "Lcom/amazon/foundation/internal/net/LightWebConnector;",
            "Ljava/util/Vector",
            "<*>;",
            "Lcom/amazon/kcp/application/IDelayedCallbackFactory;",
            "Lcom/amazon/system/io/IFileConnectionFactory;",
            "Ljava/lang/String;",
            "Lcom/amazon/system/drawing/Dimension;",
            "Lcom/amazon/kcp/util/ILocalizedStringComparator;",
            "Lcom/amazon/kcp/library/dictionary/IDictionaryManager;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    .line 62
    iput-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->cachedBookBuilderList:Ljava/util/Vector;

    .line 63
    iput-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 64
    iput-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->delayedCallbackFactory:Lcom/amazon/kcp/application/IDelayedCallbackFactory;

    .line 65
    iput-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->targetLocation:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    .line 67
    iput-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->preferredDimension:Lcom/amazon/system/drawing/Dimension;

    .line 68
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 69
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->invalidatedEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 70
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localDeleteEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 71
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadDeleteEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 72
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->deleteEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 73
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->addEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 74
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->bookUpdatedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 80
    new-instance v0, Lcom/amazon/kcp/library/models/CLibrary$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/CLibrary$1;-><init>(Lcom/amazon/kcp/library/models/CLibrary;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->onModelChanged:Lcom/amazon/foundation/IIntCallback;

    .line 89
    new-instance v0, Lcom/amazon/kcp/library/models/CLibrary$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/CLibrary$2;-><init>(Lcom/amazon/kcp/library/models/CLibrary;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->onDownloadBookAdded:Lcom/amazon/foundation/IIntCallback;

    .line 98
    new-instance v0, Lcom/amazon/kcp/library/models/CLibrary$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/CLibrary$3;-><init>(Lcom/amazon/kcp/library/models/CLibrary;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->onDownloadBookRemoved:Lcom/amazon/foundation/internal/IIndexedDownloadBookItemCallback;

    .line 119
    new-instance v0, Lcom/amazon/kcp/library/models/CLibrary$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/CLibrary$4;-><init>(Lcom/amazon/kcp/library/models/CLibrary;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->onDownloadBookUpdated:Lcom/amazon/foundation/IIntCallback;

    .line 131
    new-instance v0, Lcom/amazon/kcp/library/models/CLibrary$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/CLibrary$5;-><init>(Lcom/amazon/kcp/library/models/CLibrary;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->onSyncMetadataAdded:Lcom/amazon/foundation/IIntCallback;

    .line 202
    iput-object p5, p0, Lcom/amazon/kcp/library/models/CLibrary;->delayedCallbackFactory:Lcom/amazon/kcp/application/IDelayedCallbackFactory;

    .line 203
    iput-object p6, p0, Lcom/amazon/kcp/library/models/CLibrary;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 204
    iput-object p2, p0, Lcom/amazon/kcp/library/models/CLibrary;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    .line 205
    iput-object p4, p0, Lcom/amazon/kcp/library/models/CLibrary;->cachedBookBuilderList:Ljava/util/Vector;

    .line 206
    iput-object p1, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    .line 207
    iput-object p7, p0, Lcom/amazon/kcp/library/models/CLibrary;->targetLocation:Ljava/lang/String;

    .line 208
    iput-object p8, p0, Lcom/amazon/kcp/library/models/CLibrary;->preferredDimension:Lcom/amazon/system/drawing/Dimension;

    .line 209
    iput-object p3, p0, Lcom/amazon/kcp/library/models/CLibrary;->webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;

    .line 210
    iput-object p9, p0, Lcom/amazon/kcp/library/models/CLibrary;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    .line 211
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->deleteEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->onModelChanged:Lcom/amazon/foundation/IIntCallback;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 212
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->addEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->onModelChanged:Lcom/amazon/foundation/IIntCallback;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 213
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->bookUpdatedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->onModelChanged:Lcom/amazon/foundation/IIntCallback;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 214
    iput-object p10, p0, Lcom/amazon/kcp/library/models/CLibrary;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    .line 216
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadAddedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->onDownloadBookAdded:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadAfterRemovedEvent()Lcom/amazon/foundation/internal/IIndexedDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->onDownloadBookRemoved:Lcom/amazon/foundation/internal/IIndexedDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IIndexedDownloadBookItemEventProvider;->register(Lcom/amazon/foundation/internal/IIndexedDownloadBookItemCallback;)Z

    .line 218
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadUpdatedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->onDownloadBookUpdated:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 223
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 224
    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/library/models/CLibrary;->listBooks(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 227
    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v1, v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->setPartialDownloadsList(Ljava/util/Vector;)V

    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getAddedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CLibrary;->onSyncMetadataAdded:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v1, v2}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 236
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 238
    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/models/CLibrary;->onSyncMetadataAdded(I)V

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/models/CLibrary;)Lcom/amazon/foundation/internal/EventProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/models/CLibrary;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/models/CLibrary;)Lcom/amazon/foundation/internal/IntEventProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->addEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/models/CLibrary;)Lcom/amazon/foundation/internal/IntEventProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->deleteEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/models/CLibrary;)Lcom/amazon/foundation/internal/IntEventProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadDeleteEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/library/models/CLibrary;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/CLibrary;->deleteExcessBackIssues(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/kcp/library/models/CLibrary;)Lcom/amazon/foundation/internal/IntEventProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->bookUpdatedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/library/models/CLibrary;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/CLibrary;->onSyncMetadataAdded(I)V

    return-void
.end method

.method private deleteExcessBackIssues(Ljava/lang/String;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 393
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 394
    invoke-static {p0}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->generatePeriodicalMap(Lcom/amazon/kcp/library/models/IBookList;)Ljava/util/Map;

    move-result-object v0

    .line 395
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 397
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 398
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x7

    sub-int/2addr v3, v4

    .line 399
    if-lez v3, :cond_0

    .line 404
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    move v5, v8

    move v6, v8

    .line 408
    :goto_0
    array-length v0, v4

    if-ge v5, v0, :cond_1

    .line 410
    aget-object v0, v4, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 411
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/CLibrary;->getLocalBookItemFromIndex(I)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    .line 413
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/LocalBookState;->isBookKept()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 415
    add-int/lit8 v0, v6, 0x1

    .line 408
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v6, v0

    goto :goto_0

    .line 420
    :cond_1
    sub-int/2addr v3, v6

    .line 423
    array-length v0, v4

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    move v5, v0

    :goto_2
    if-ltz v5, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 425
    aget-object v0, v4, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 426
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/CLibrary;->getLocalBookItemFromIndex(I)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    .line 427
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getAsin()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 429
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping last downloaded back issue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :goto_3
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_2

    .line 431
    :cond_2
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/kcp/library/models/LocalBookState;->isBookKept()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 433
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping back issue to delete, it is marked as keep: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 439
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 446
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 448
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting excess back issue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/CLibrary;->deleteBook(Lcom/amazon/kcp/library/models/ILocalBookItem;)Z

    goto :goto_4

    .line 452
    :cond_5
    return-void

    :cond_6
    move v0, v6

    goto/16 :goto_1
.end method

.method private listBooks(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/amazon/kcp/library/models/ILocalBookItem;",
            ">;",
            "Ljava/util/Vector",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 699
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 702
    invoke-virtual {p1}, Ljava/util/Vector;->removeAllElements()V

    .line 703
    invoke-virtual {p2}, Ljava/util/Vector;->removeAllElements()V

    .line 706
    new-instance v0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CLibrary;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-direct {v0, v2}, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;-><init>(Lcom/amazon/system/io/IFileConnectionFactory;)V

    invoke-virtual {v0, v1, p2}, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->listCompleteAndPartialBooks(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 709
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->cachedBookBuilderList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->cachedBookBuilderList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;

    check-cast v0, Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;

    invoke-interface {v0, v1, p1}, Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;->buildBooks(Ljava/util/Vector;Ljava/util/Vector;)I

    .line 709
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 714
    :cond_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 715
    return-void
.end method

.method private onSyncMetadataAdded(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1042
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v0

    .line 1043
    if-eqz v0, :cond_0

    .line 1047
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    move v2, v4

    .line 1048
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 1050
    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/ILocalBookItem;

    .line 1051
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookItem;->isSample()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1053
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->setDownloadState(I)V

    .line 1070
    :cond_0
    :goto_1
    return-void

    .line 1048
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v4

    .line 1058
    :goto_2
    iget-object v2, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBookCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1060
    iget-object v2, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v2, v1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBookItemFromIndex(I)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v2

    .line 1061
    invoke-interface {v2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->isSample()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1063
    invoke-interface {v2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getErrorState()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->setErrorState(Ljava/lang/String;)V

    .line 1064
    invoke-interface {v2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getErrorSubstate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->setErrorSubstate(Ljava/lang/String;)V

    .line 1065
    invoke-interface {v2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->setDownloadState(I)V

    goto :goto_1

    .line 1058
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private resetDBSState(Lcom/amazon/kcp/library/models/IListableBook;)V
    .locals 5
    .parameter "book"

    .prologue
    .line 368
    iget-object v3, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v3}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v2

    .line 369
    .local v2, metadatas:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;
    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->isSample()Z

    move-result v3

    if-nez v3, :cond_0

    .line 371
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 373
    invoke-interface {v2}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/internal/IMetadata;

    .line 374
    .local v1, metadata:Lcom/amazon/kcp/library/models/internal/IMetadata;
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 376
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/amazon/kcp/library/models/internal/IMetadata;->setDownloadState(I)V

    .line 381
    .end local v0           #i:I
    .end local v1           #metadata:Lcom/amazon/kcp/library/models/internal/IMetadata;
    :cond_0
    return-void

    .line 371
    .restart local v0       #i:I
    .restart local v1       #metadata:Lcom/amazon/kcp/library/models/internal/IMetadata;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addBookFiles(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/system/drawing/Image;[B)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->targetLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-static {v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->removeTemporaryExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v2, v4

    .line 468
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    .line 472
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 474
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/CLibrary;->deleteBook(Lcom/amazon/kcp/library/models/ILocalBookItem;)Z

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CLibrary;->targetLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/system/io/internal/FileSystemHelper;->createFileFromTemporaryFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 487
    if-nez v1, :cond_2

    move v0, v4

    .line 552
    :goto_1
    return v0

    .line 468
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 493
    :cond_2
    if-eqz p2, :cond_3

    .line 495
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/kcp/library/models/CLibrary;->targetLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/system/io/internal/FileSystemHelper;->createFileFromTemporaryFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    move v2, v4

    move-object v0, v5

    .line 499
    :goto_2
    iget-object v3, p0, Lcom/amazon/kcp/library/models/CLibrary;->cachedBookBuilderList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 501
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->cachedBookBuilderList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;

    check-cast v0, Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;->buildCachedBook(Ljava/lang/String;)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    .line 502
    if-eqz v0, :cond_5

    .line 504
    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 509
    :cond_4
    if-nez v0, :cond_6

    move v0, v4

    .line 511
    goto :goto_1

    .line 499
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 514
    :cond_6
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->setNowAsLastReadDate()Z

    .line 516
    if-nez p3, :cond_7

    .line 519
    new-instance v1, Lcom/amazon/kcp/application/internal/CImageBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CLibrary;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    invoke-direct {v1, v2}, Lcom/amazon/kcp/application/internal/CImageBuilder;-><init>(Lcom/amazon/system/drawing/ImageFactory;)V

    .line 521
    new-instance v2, Lcom/amazon/kcp/library/models/CLibrary$6;

    invoke-direct {v2, p0, v0, v1}, Lcom/amazon/kcp/library/models/CLibrary$6;-><init>(Lcom/amazon/kcp/library/models/CLibrary;Lcom/amazon/kcp/library/models/ILocalBookItem;Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;)V

    .line 536
    new-instance v3, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;

    iget-object v4, p0, Lcom/amazon/kcp/library/models/CLibrary;->webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;

    iget-object v5, p0, Lcom/amazon/kcp/library/models/CLibrary;->delayedCallbackFactory:Lcom/amazon/kcp/application/IDelayedCallbackFactory;

    iget-object v6, p0, Lcom/amazon/kcp/library/models/CLibrary;->preferredDimension:Lcom/amazon/system/drawing/Dimension;

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;Lcom/amazon/kcp/application/IDelayedCallbackFactory;Lcom/amazon/system/drawing/Dimension;)V

    .line 542
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/MetaData;->getNonResizedCoverUrlFromAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->addCoversToDownload(Ljava/lang/String;Lcom/amazon/kcp/application/internal/IImageSetter;)V

    .line 543
    invoke-virtual {v3}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->execute()V

    .line 550
    :goto_3
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->addEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    move v0, v7

    .line 552
    goto :goto_1

    .line 547
    :cond_7
    invoke-virtual {p0, v0, p3, v5}, Lcom/amazon/kcp/library/models/CLibrary;->setCover(Lcom/amazon/kcp/library/models/ILocalBookItem;Lcom/amazon/system/drawing/Image;Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;)V

    goto :goto_3
.end method

.method public deleteBook(Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 338
    if-nez p1, :cond_0

    move v0, v2

    .line 358
    :goto_0
    return v0

    .line 344
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 347
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to delete a book ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") from library that is currently downloading or queued to download.  Not deleting!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 348
    goto :goto_0

    .line 352
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->isSample()Z

    move-result v0

    if-nez v0, :cond_3

    .line 354
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/CLibrary;->resetDBSState(Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 358
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v0, v1, p1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->cleanupDownload(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public deleteBook(Lcom/amazon/kcp/library/models/ILocalBookItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 246
    if-nez p1, :cond_0

    move v0, v5

    .line 318
    :goto_0
    return v0

    .line 253
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/CLibrary;->resetDBSState(Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 255
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getCoverPath()Ljava/lang/String;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_1

    .line 259
    const/4 v2, 0x1

    move v3, v5

    .line 262
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 264
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    .line 266
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getCoverPath()Ljava/lang/String;

    move-result-object v4

    .line 268
    if-eqz v4, :cond_3

    if-eq v0, p1, :cond_3

    .line 270
    invoke-virtual {v4, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v5

    .line 278
    :goto_2
    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v0, v1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    :cond_1
    move v1, v5

    .line 286
    :goto_3
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 290
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    .line 292
    if-ne v0, p1, :cond_4

    .line 295
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ILocalBookItem;->resetServerLastPageRead()Z

    .line 302
    iget-object v2, p0, Lcom/amazon/kcp/library/models/CLibrary;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getSettingsFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 303
    iget-object v2, p0, Lcom/amazon/kcp/library/models/CLibrary;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v2

    .line 305
    if-eqz v2, :cond_2

    .line 308
    iget-object v3, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->deleteEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 312
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localDeleteEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    move v0, v2

    .line 314
    goto :goto_0

    .line 262
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 288
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    move v0, v5

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method public deleteEncryptedContent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 923
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    move v2, v4

    .line 925
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 927
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    .line 928
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 930
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 925
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v4

    .line 934
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 936
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/CLibrary;->deleteBook(Lcom/amazon/kcp/library/models/ILocalBookItem;)Z

    .line 934
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 938
    :cond_2
    return-void
.end method

.method public deleteLicensedContent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 946
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    move v2, v4

    .line 948
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 950
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    .line 951
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getAsin()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 955
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 948
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v4

    .line 959
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 961
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/CLibrary;->deleteBook(Lcom/amazon/kcp/library/models/ILocalBookItem;)Z

    .line 959
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 963
    :cond_2
    return-void
.end method

.method public getAddEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->addEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getBackIssueCount()I
    .locals 5

    .prologue
    .line 658
    const/4 v0, 0x0

    .line 659
    .local v0, backIssueCount:I
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 661
    .local v3, issueSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 662
    .local v2, bookListEnumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/amazon/kcp/library/models/ILocalBookItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 664
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/IListableBook;

    .line 667
    .local v1, bookItem:Lcom/amazon/kcp/library/models/IListableBook;
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isListableBookPeriodical(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 670
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 672
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 677
    .end local v1           #bookItem:Lcom/amazon/kcp/library/models/IListableBook;
    :cond_1
    return v0
.end method

.method public getBook(Ljava/lang/String;)Lcom/amazon/kcp/library/models/ILocalBookItem;
    .locals 4
    .parameter "bookId"

    .prologue
    const/4 v3, 0x0

    .line 604
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v3

    .line 617
    :goto_0
    return-object v2

    .line 609
    :cond_0
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    iget-object v2, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 611
    iget-object v2, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    .line 612
    .local v0, bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    .line 614
    goto :goto_0

    .line 609
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;
    :cond_2
    move-object v2, v3

    .line 617
    goto :goto_0
.end method

.method public getBook(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;
    .locals 4
    .parameter "asin"
    .parameter "sample"

    .prologue
    const/4 v3, 0x0

    .line 582
    if-nez p1, :cond_0

    move-object v2, v3

    .line 595
    :goto_0
    return-object v2

    .line 587
    :cond_0
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    iget-object v2, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 589
    iget-object v2, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    .line 590
    .local v0, bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->isSample()Z

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getAsin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    .line 592
    goto :goto_0

    .line 587
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;
    :cond_2
    move-object v2, v3

    .line 595
    goto :goto_0
.end method

.method public getBookCount()I
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBookCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;
    .locals 1
    .parameter

    .prologue
    .line 643
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/CLibrary;->getBookItemTypeFromIndex(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 650
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 646
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/CLibrary;->getLocalBookItemFromIndex(I)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    goto :goto_0

    .line 648
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/CLibrary;->getDownloadBookItemFromIndex(I)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v0

    goto :goto_0

    .line 643
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getBookItemTypeFromIndex(I)I
    .locals 3
    .parameter

    .prologue
    .line 723
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 724
    const/4 v0, 0x0

    .line 726
    :goto_0
    return v0

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBookCount()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 726
    const/4 v0, 0x1

    goto :goto_0

    .line 728
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; total size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBookCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChangeEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getDeleteEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->deleteEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getDownloadBookItemFromIndex(I)Lcom/amazon/kcp/library/models/IDownloadBookItem;
    .locals 2
    .parameter

    .prologue
    .line 739
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 740
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBookCount()I

    .line 742
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBookItemFromIndex(I)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadDeleteEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadDeleteEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getInvalidatedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->invalidatedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getLocalBookCount()I
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getLocalBookItemFromIndex(I)Lcom/amazon/kcp/library/models/ILocalBookItem;
    .locals 1
    .parameter

    .prologue
    .line 751
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 754
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    .line 756
    return-object p0
.end method

.method public getLocalDeleteEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localDeleteEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getPreferredDimension()Lcom/amazon/system/drawing/Dimension;
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->preferredDimension:Lcom/amazon/system/drawing/Dimension;

    return-object v0
.end method

.method public getWatermarkAndAsinData(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 991
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 1037
    :cond_0
    return-void

    .line 997
    :cond_1
    if-eqz p1, :cond_2

    .line 999
    invoke-virtual {p1}, Ljava/util/Vector;->removeAllElements()V

    .line 1002
    :cond_2
    if-eqz p2, :cond_3

    .line 1004
    invoke-virtual {p2}, Ljava/util/Vector;->removeAllElements()V

    .line 1010
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    .line 1014
    if-eqz v0, :cond_4

    .line 1016
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getWatermark()Ljava/lang/String;

    move-result-object v2

    .line 1017
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 1020
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 1022
    if-eqz p1, :cond_4

    .line 1024
    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1010
    :cond_4
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1028
    :cond_5
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 1030
    if-eqz p2, :cond_4

    .line 1032
    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public isCoverValid(I)Z
    .locals 2
    .parameter

    .prologue
    .line 887
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/CLibrary;->getBookCount()I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid cover index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " !"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/CLibrary;->getBookCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 891
    :cond_1
    const/4 v0, 0x0

    .line 904
    :goto_0
    return v0

    .line 895
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 897
    const/4 v0, 0x1

    goto :goto_0

    .line 902
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBookItemFromIndex(I)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v0

    .line 904
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getCover()Lcom/amazon/system/drawing/Image;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/CoverImageUtils;->isCoverValid(Lcom/amazon/system/drawing/Image;)Z

    move-result v0

    goto :goto_0
.end method

.method public refreshBookList()V
    .locals 3

    .prologue
    .line 971
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 972
    .local v0, partiallyDownloadedFiles:Ljava/util/Vector;,"Ljava/util/Vector<*>;"
    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->localBookList:Ljava/util/Vector;

    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/library/models/CLibrary;->listBooks(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 976
    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v1, v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->setPartialDownloadsList(Ljava/util/Vector;)V

    .line 977
    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CLibrary;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v1, v2}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->populatePartialDownloads(Lcom/amazon/system/io/IFileConnectionFactory;)V

    .line 979
    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 980
    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->invalidatedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 981
    return-void
.end method

.method protected setCover(Lcom/amazon/kcp/library/models/ILocalBookItem;Lcom/amazon/system/drawing/Image;Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;)V
    .locals 3
    .parameter "newBook"
    .parameter "coverImage"
    .parameter "imageBuilder"

    .prologue
    const/4 v2, 0x1

    .line 562
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/amazon/system/drawing/Image;->getWidth()I

    move-result v1

    if-le v1, v2, :cond_1

    invoke-interface {p2}, Lcom/amazon/system/drawing/Image;->getHeight()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 564
    if-eqz p3, :cond_0

    .line 566
    invoke-interface {p3}, Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;->getImageData()[B

    move-result-object v0

    .line 567
    .local v0, coverData:[B
    if-eqz v0, :cond_0

    .line 569
    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->serializeCover([B)V

    .line 572
    .end local v0           #coverData:[B
    :cond_0
    invoke-interface {p1, p2}, Lcom/amazon/kcp/library/models/ILocalBookItem;->setCover(Lcom/amazon/system/drawing/Image;)V

    .line 574
    :cond_1
    return-void
.end method

.method public setTargetLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "targetLocation"

    .prologue
    .line 687
    iput-object p1, p0, Lcom/amazon/kcp/library/models/CLibrary;->targetLocation:Ljava/lang/String;

    .line 688
    return-void
.end method

.method public sortBackIssuesByAuthor()[I
    .locals 4

    .prologue
    .line 844
    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CLibrary;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/CLibrary;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    invoke-static {v0, v1, v2, p0, v3}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->filterAndSort(IILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)[I

    move-result-object v0

    return-object v0
.end method

.method public sortBackIssuesByRecent()[I
    .locals 4

    .prologue
    .line 854
    const/4 v0, 0x2

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CLibrary;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/CLibrary;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    invoke-static {v0, v1, v2, p0, v3}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->filterAndSort(IILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)[I

    move-result-object v0

    return-object v0
.end method

.method public sortBackIssuesByTitle()[I
    .locals 4

    .prologue
    .line 864
    const/4 v0, 0x2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CLibrary;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/CLibrary;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    invoke-static {v0, v1, v2, p0, v3}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->filterAndSort(IILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)[I

    move-result-object v0

    return-object v0
.end method

.method public sortByAuthor()[I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 816
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    invoke-static {v2, v2, v0, p0, v1}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->filterAndSort(IILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)[I

    move-result-object v0

    return-object v0
.end method

.method public sortByRecent()[I
    .locals 4

    .prologue
    .line 825
    const/4 v0, 0x1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CLibrary;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/CLibrary;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    invoke-static {v0, v1, v2, p0, v3}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->filterAndSort(IILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)[I

    move-result-object v0

    return-object v0
.end method

.method public sortByTitle()[I
    .locals 4

    .prologue
    .line 834
    const/4 v0, 0x1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CLibrary;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/CLibrary;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    invoke-static {v0, v1, v2, p0, v3}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->filterAndSort(IILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)[I

    move-result-object v0

    return-object v0
.end method

.method public sortLocalItemsByTitle()[I
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 874
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary;->stringComparator:Lcom/amazon/kcp/util/ILocalizedStringComparator;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    invoke-static {v2, v2, v0, p0, v1}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter;->filterAndSort(IILcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/models/IBookList;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)[I

    move-result-object v0

    return-object v0
.end method
