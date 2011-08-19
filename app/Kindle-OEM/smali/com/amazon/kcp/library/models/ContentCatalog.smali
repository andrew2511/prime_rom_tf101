.class public Lcom/amazon/kcp/library/models/ContentCatalog;
.super Lcom/amazon/kcp/library/models/AbstractCatalogView;
.source "ContentCatalog.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/IContentCatalog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;,
        Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;,
        Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;,
        Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;,
        Lcom/amazon/kcp/library/models/ContentCatalog$DebugCatalogListener;
    }
.end annotation


# instance fields
.field private final archivedLibrary:Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

.field private bookMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/amazon/kcp/library/models/IBookID;",
            "Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final debugListener:Lcom/amazon/kcp/library/models/ContentCatalog$DebugCatalogListener;

.field private final lastReadDateChangeCallback:Lcom/amazon/foundation/internal/ILocalBookItemCallback;

.field private final localLibrary:Lcom/amazon/kcp/library/models/ILibrary;

.field private readOnlySet:Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/ILibrary;Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;)V
    .locals 2
    .parameter "localLibrary"
    .parameter "archivedLibrary"

    .prologue
    const/4 v1, 0x0

    .line 281
    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/models/AbstractCatalogView;-><init>(Lcom/amazon/kcp/library/models/ICatalogView;)V

    .line 269
    new-instance v0, Lcom/amazon/kcp/library/models/ContentCatalog$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/ContentCatalog$1;-><init>(Lcom/amazon/kcp/library/models/ContentCatalog;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->lastReadDateChangeCallback:Lcom/amazon/foundation/internal/ILocalBookItemCallback;

    .line 283
    iput-object p1, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->localLibrary:Lcom/amazon/kcp/library/models/ILibrary;

    .line 284
    iput-object p2, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->archivedLibrary:Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    .line 286
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/ContentCatalog;->initializeCatalogData()V

    .line 287
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/ContentCatalog;->initializeLocalLibraryListeners()V

    .line 288
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/ContentCatalog;->initializeArchivedLibraryListeners()V

    .line 292
    new-instance v0, Lcom/amazon/kcp/library/models/ContentCatalog$DebugCatalogListener;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/models/ContentCatalog$DebugCatalogListener;-><init>(Lcom/amazon/kcp/library/models/ContentCatalog$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->debugListener:Lcom/amazon/kcp/library/models/ContentCatalog$DebugCatalogListener;

    .line 293
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->debugListener:Lcom/amazon/kcp/library/models/ContentCatalog$DebugCatalogListener;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/ContentCatalog;->registerListener(Lcom/amazon/kcp/library/models/ICatalogListener;)V

    .line 294
    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/models/ContentCatalog;Lcom/amazon/kcp/library/models/ILocalBookItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/ContentCatalog;->onLastReadDateChanged(Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/models/ContentCatalog;I)Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/ContentCatalog;->libraryIndexFromLocalIndex(I)Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/library/models/ContentCatalog;Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;)Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/ContentCatalog;->catalogRecordFromLibraryIndex(Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;)Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/library/models/ContentCatalog;Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/ContentCatalog;->onLibraryAdd(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/kcp/library/models/ContentCatalog;Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/ContentCatalog;->onLibraryDelete(Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;)V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/kcp/library/models/ContentCatalog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/ContentCatalog;->onLocalLibraryInvalidated()V

    return-void
.end method

.method private catalogRecordFromLibraryIndex(Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;)Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;
    .locals 3
    .parameter "idx"

    .prologue
    .line 639
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/ContentCatalog;->getListableBookByIndex(Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    .line 640
    .local v0, listableBook:Lcom/amazon/kcp/library/models/IListableBook;
    new-instance v1, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;

    invoke-direct {v1, p1, v0}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;-><init>(Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 641
    .local v1, record:Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;
    iget-object v2, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->lastReadDateChangeCallback:Lcom/amazon/foundation/internal/ILocalBookItemCallback;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->setLastReadDateChangeCallback(Lcom/amazon/foundation/internal/ILocalBookItemCallback;)V

    .line 642
    return-object v1
.end method

.method private findArchivedItemBookIndex(Lcom/amazon/kcp/library/models/IBookID;)Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;
    .locals 4
    .parameter "bookID"

    .prologue
    .line 587
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->archivedLibrary:Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getBookCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 589
    iget-object v2, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->archivedLibrary:Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    invoke-interface {v2, v1}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    .line 590
    .local v0, archivedBook:Lcom/amazon/kcp/library/models/IListableBook;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IListableBook;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 592
    new-instance v2, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    sget-object v3, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->ARCHIVE:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    invoke-direct {v2, v3, v1}, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;-><init>(Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;I)V

    .line 595
    .end local v0           #archivedBook:Lcom/amazon/kcp/library/models/IListableBook;
    :goto_1
    return-object v2

    .line 587
    .restart local v0       #archivedBook:Lcom/amazon/kcp/library/models/IListableBook;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 595
    .end local v0           #archivedBook:Lcom/amazon/kcp/library/models/IListableBook;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getListableBookByIndex(Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;)Lcom/amazon/kcp/library/models/IListableBook;
    .locals 5
    .parameter

    .prologue
    .line 647
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->archivedLibrary:Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getBookCount()I

    move-result v0

    .line 648
    iget-object v1, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->localLibrary:Lcom/amazon/kcp/library/models/ILibrary;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILibrary;->getLocalBookCount()I

    move-result v1

    .line 649
    iget-object v2, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->localLibrary:Lcom/amazon/kcp/library/models/ILibrary;

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/ILibrary;->getBookCount()I

    move-result v2

    sub-int/2addr v2, v1

    .line 651
    iget-object v3, p1, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->libraryId:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    sget-object v4, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->ARCHIVE:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    invoke-virtual {v3, v4}, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p1, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->relativeIndex:I

    if-ge v3, v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->archivedLibrary:Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    iget v1, p1, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->relativeIndex:I

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    .line 665
    :goto_0
    return-object v0

    .line 655
    :cond_0
    iget-object v0, p1, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->libraryId:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    sget-object v3, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->LOCAL:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->relativeIndex:I

    if-ge v0, v1, :cond_1

    .line 657
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->localLibrary:Lcom/amazon/kcp/library/models/ILibrary;

    iget v1, p1, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->relativeIndex:I

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/ILibrary;->getLocalBookItemFromIndex(I)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    goto :goto_0

    .line 659
    :cond_1
    iget-object v0, p1, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->libraryId:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    sget-object v3, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->DOWNLOAD:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->relativeIndex:I

    if-ge v0, v2, :cond_2

    .line 661
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->localLibrary:Lcom/amazon/kcp/library/models/ILibrary;

    iget v2, p1, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->relativeIndex:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/ILibrary;->getDownloadBookItemFromIndex(I)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v0

    goto :goto_0

    .line 665
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeArchivedLibraryListeners()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->archivedLibrary:Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getAddEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/models/ContentCatalog$6;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/models/ContentCatalog$6;-><init>(Lcom/amazon/kcp/library/models/ContentCatalog;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 426
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->archivedLibrary:Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getDeleteEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/models/ContentCatalog$7;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/models/ContentCatalog$7;-><init>(Lcom/amazon/kcp/library/models/ContentCatalog;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 436
    return-void
.end method

.method private initializeCatalogData()V
    .locals 6

    .prologue
    .line 321
    iget-object v5, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->localLibrary:Lcom/amazon/kcp/library/models/ILibrary;

    invoke-interface {v5}, Lcom/amazon/kcp/library/models/ILibrary;->getBookCount()I

    move-result v3

    .line 322
    .local v3, localCount:I
    iget-object v5, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->archivedLibrary:Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    invoke-interface {v5}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getBookCount()I

    move-result v0

    .line 323
    .local v0, archiveCount:I
    add-int v2, v3, v0

    .line 324
    .local v2, itemCount:I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->bookMap:Ljava/util/HashMap;

    .line 326
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/ContentCatalog;->loadArchivedItems()Ljava/util/HashMap;

    move-result-object v1

    .line 327
    .local v1, archiveMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/amazon/kcp/library/models/IBookID;Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;>;"
    iget-object v5, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->bookMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 332
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/ContentCatalog;->loadLocalLibrary()Ljava/util/HashMap;

    move-result-object v4

    .line 333
    .local v4, localMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/amazon/kcp/library/models/IBookID;Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;>;"
    iget-object v5, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->bookMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 334
    return-void
.end method

.method private initializeLocalLibraryListeners()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->localLibrary:Lcom/amazon/kcp/library/models/ILibrary;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILibrary;->getAddEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/models/ContentCatalog$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/models/ContentCatalog$2;-><init>(Lcom/amazon/kcp/library/models/ContentCatalog;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 377
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->localLibrary:Lcom/amazon/kcp/library/models/ILibrary;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILibrary;->getLocalDeleteEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/models/ContentCatalog$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/models/ContentCatalog$3;-><init>(Lcom/amazon/kcp/library/models/ContentCatalog;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 390
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->localLibrary:Lcom/amazon/kcp/library/models/ILibrary;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILibrary;->getDownloadDeleteEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/models/ContentCatalog$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/models/ContentCatalog$4;-><init>(Lcom/amazon/kcp/library/models/ContentCatalog;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 401
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->localLibrary:Lcom/amazon/kcp/library/models/ILibrary;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILibrary;->getInvalidatedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/models/ContentCatalog$5;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/models/ContentCatalog$5;-><init>(Lcom/amazon/kcp/library/models/ContentCatalog;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 410
    return-void
.end method

.method private libraryIndexFromLocalIndex(I)Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;
    .locals 4
    .parameter "i"

    .prologue
    .line 672
    iget-object v1, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->localLibrary:Lcom/amazon/kcp/library/models/ILibrary;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILibrary;->getLocalBookCount()I

    move-result v0

    .line 673
    .local v0, localBookCount:I
    iget-object v1, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->localLibrary:Lcom/amazon/kcp/library/models/ILibrary;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILibrary;->getLocalBookCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 675
    new-instance v1, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    sget-object v2, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->DOWNLOAD:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    sub-int v3, p1, v0

    invoke-direct {v1, v2, v3}, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;-><init>(Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;I)V

    .line 679
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    sget-object v2, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->LOCAL:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    invoke-direct {v1, v2, p1}, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;-><init>(Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;I)V

    goto :goto_0
.end method

.method private loadArchivedItems()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/amazon/kcp/library/models/IBookID;",
            "Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->archivedLibrary:Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getBookCount()I

    move-result v0

    .line 353
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 354
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 356
    new-instance v3, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    sget-object v4, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->ARCHIVE:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    invoke-direct {v3, v4, v2}, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;-><init>(Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;I)V

    .line 357
    invoke-direct {p0, v3}, Lcom/amazon/kcp/library/models/ContentCatalog;->catalogRecordFromLibraryIndex(Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;)Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;

    move-result-object v3

    .line 358
    invoke-static {v3}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$100(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/CatalogItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/library/models/CatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    :cond_0
    return-object v1
.end method

.method private loadLocalLibrary()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/amazon/kcp/library/models/IBookID;",
            "Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->localLibrary:Lcom/amazon/kcp/library/models/ILibrary;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILibrary;->getBookCount()I

    move-result v0

    .line 339
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 340
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 342
    invoke-direct {p0, v2}, Lcom/amazon/kcp/library/models/ContentCatalog;->libraryIndexFromLocalIndex(I)Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    move-result-object v3

    .line 343
    invoke-direct {p0, v3}, Lcom/amazon/kcp/library/models/ContentCatalog;->catalogRecordFromLibraryIndex(Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;)Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;

    move-result-object v3

    .line 344
    invoke-static {v3}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$100(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/CatalogItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/library/models/CatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    :cond_0
    return-object v1
.end method

.method private onLastReadDateChanged(Lcom/amazon/kcp/library/models/ILocalBookItem;)V
    .locals 2
    .parameter

    .prologue
    .line 487
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->bookMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;

    .line 488
    if-eqz v0, :cond_0

    .line 490
    invoke-static {v0}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$900(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/models/ContentCatalog;->getListableBookByIndex(Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;)Lcom/amazon/kcp/library/models/IListableBook;

    .line 492
    invoke-static {v0}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$900(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/models/ContentCatalog;->catalogRecordFromLibraryIndex(Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;)Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;

    move-result-object v1

    .line 493
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/library/models/ContentCatalog;->updateRecord(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)V

    .line 494
    :cond_0
    return-void
.end method

.method private onLibraryAdd(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)V
    .locals 2
    .parameter

    .prologue
    .line 611
    invoke-static {p1}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$100(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/CatalogItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v0

    .line 612
    iget-object v1, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->bookMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;

    .line 614
    if-eqz v0, :cond_0

    .line 619
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/library/models/ContentCatalog;->updateRecord(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)V

    .line 626
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->bookMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$100(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/CatalogItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/CatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-static {p1}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$100(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/CatalogItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    goto :goto_0
.end method

.method private onLibraryDelete(Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;)V
    .locals 5
    .parameter

    .prologue
    .line 536
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->bookMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 537
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 539
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;

    .line 540
    invoke-static {v0}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$900(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 546
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/ContentCatalog;->updateDeletedDownloadRecord(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Z

    move-result v2

    .line 547
    if-nez v2, :cond_0

    .line 549
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 550
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/ContentCatalog;->onRecordRemoved(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)V

    goto :goto_0

    .line 553
    :cond_1
    invoke-static {v0}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$900(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    move-result-object v2

    iget-object v2, v2, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->libraryId:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    iget-object v3, p1, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->libraryId:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$900(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    move-result-object v2

    iget v2, v2, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->relativeIndex:I

    iget v3, p1, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->relativeIndex:I

    if-le v2, v3, :cond_0

    .line 555
    invoke-static {v0}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$900(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    move-result-object v2

    iget v3, v2, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->relativeIndex:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->relativeIndex:I

    .line 556
    invoke-static {v0}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$900(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/ContentCatalog;->getListableBookByIndex(Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;)Lcom/amazon/kcp/library/models/IListableBook;

    goto :goto_0

    .line 560
    :cond_2
    return-void
.end method

.method private onLocalLibraryInvalidated()V
    .locals 6

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/ContentCatalog;->loadLocalLibrary()Ljava/util/HashMap;

    move-result-object v2

    .line 447
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->bookMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 448
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyBulkUpdateBegin()V

    .line 450
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;

    .line 453
    invoke-static {v0}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$900(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->libraryId:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    sget-object v4, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->ARCHIVE:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    invoke-virtual {v1, v4}, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 458
    invoke-static {v0}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$100(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/CatalogItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/CatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v4

    .line 459
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 461
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 462
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/ContentCatalog;->onRecordRemoved(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)V

    goto :goto_0

    .line 466
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;

    .line 467
    invoke-static {v1}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$900(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    move-result-object v5

    invoke-static {v0}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$900(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/models/ContentCatalog;->onLibraryAdd(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)V

    .line 472
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 477
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;

    .line 479
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/ContentCatalog;->onLibraryAdd(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)V

    goto :goto_1

    .line 482
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyBulkUpdateEnd()V

    .line 483
    return-void
.end method

.method private onRecordRemoved(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)V
    .locals 2
    .parameter "record"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-static {p1}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$100(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/CatalogItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    .line 506
    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->dispose()V

    .line 507
    return-void
.end method

.method private updateDeletedDownloadRecord(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Z
    .locals 5
    .parameter "record"

    .prologue
    .line 564
    const/4 v2, 0x0

    .line 565
    .local v2, updated:Z
    invoke-static {p1}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$900(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    move-result-object v3

    iget-object v3, v3, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->libraryId:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    sget-object v4, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->DOWNLOAD:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    invoke-virtual {v3, v4}, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 569
    invoke-static {p1}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$100(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/CatalogItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/CatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amazon/kcp/library/models/ContentCatalog;->findArchivedItemBookIndex(Lcom/amazon/kcp/library/models/IBookID;)Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    move-result-object v0

    .line 570
    .local v0, archivedItemIndex:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;
    if-eqz v0, :cond_0

    .line 572
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/ContentCatalog;->catalogRecordFromLibraryIndex(Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;)Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;

    move-result-object v1

    .line 573
    .local v1, archivedItemRecord:Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;
    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/models/ContentCatalog;->onLibraryAdd(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)V

    .line 574
    const/4 v2, 0x1

    .line 577
    .end local v0           #archivedItemIndex:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;
    .end local v1           #archivedItemRecord:Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;
    :cond_0
    return v2
.end method

.method private updateRecord(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)V
    .locals 3
    .parameter "existingRecord"
    .parameter "newRecord"

    .prologue
    .line 630
    invoke-static {p1}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$100(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/CatalogItem;

    move-result-object v1

    .line 631
    .local v1, originalItem:Lcom/amazon/kcp/library/models/CatalogItem;
    invoke-static {p2}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$100(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/CatalogItem;

    move-result-object v0

    .line 632
    .local v0, newItem:Lcom/amazon/kcp/library/models/CatalogItem;
    invoke-virtual {p1, p2}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->update(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)V

    .line 634
    iget-object v2, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v2, v1, v0}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyItemChanged(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)V

    .line 635
    return-void
.end method


# virtual methods
.method public getItemByID(Lcom/amazon/kcp/library/models/IBookID;)Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 2
    .parameter "bookID"

    .prologue
    .line 315
    iget-object v1, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->bookMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;

    .line 316
    .local v0, record:Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$100(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/CatalogItem;

    move-result-object v1

    goto :goto_0
.end method

.method public items()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->readOnlySet:Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->bookMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;-><init>(Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->readOnlySet:Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog;->readOnlySet:Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;

    return-object v0
.end method
