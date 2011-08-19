.class public Lcom/amazon/kcp/library/LibraryController;
.super Ljava/lang/Object;
.source "LibraryController.java"

# interfaces
.implements Lcom/amazon/kcp/library/IAndroidLibraryController;


# static fields
.field private static final MEMORY_SIZE:J = 0x1000000L


# instance fields
.field private appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

.field private archivedItemsModel:Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;

.field private archivedItemsPage:Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;

.field private catalog:Lcom/amazon/kcp/library/models/IContentCatalog;

.field private catalogViewCache:Lcom/amazon/kcp/library/models/CatalogViewCache;

.field private context:Landroid/content/Context;

.field private dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

.field private fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

.field private fileSystemChangedCallback:Lcom/amazon/foundation/ICallback;

.field private imageFactory:Lcom/amazon/system/drawing/ImageFactoryExtended;

.field private page:Lcom/amazon/kcp/library/pages/internal/CLibraryPage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/application/IAndroidApplicationController;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/security/Security;Lcom/amazon/system/io/InflaterFactory;Lcom/amazon/system/xml/SAXParserFactory;)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v2, Lcom/amazon/kcp/library/LibraryController$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/library/LibraryController$1;-><init>(Lcom/amazon/kcp/library/LibraryController;)V

    iput-object v2, p0, Lcom/amazon/kcp/library/LibraryController;->fileSystemChangedCallback:Lcom/amazon/foundation/ICallback;

    .line 100
    move-object/from16 v0, p2

    move-object v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 101
    move-object/from16 v0, p1

    move-object v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    .line 102
    move-object/from16 v0, p5

    move-object v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/library/LibraryController;->imageFactory:Lcom/amazon/system/drawing/ImageFactoryExtended;

    .line 103
    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/library/LibraryController;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 104
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryController;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/system/io/IPathDescriptor;->getChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryController;->fileSystemChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v2, v3}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 106
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 107
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAnnotationCache()Lcom/amazon/kcp/application/IAnnotationCache;

    move-result-object v3

    .line 109
    new-instance v2, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;

    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v4}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v4}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getUtilities()Lcom/amazon/android/system/AndroidUtilities;

    move-result-object v10

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v10}, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;-><init>(Lcom/amazon/kcp/application/IAnnotationUpdateHandler;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/security/Security;Lcom/amazon/kcp/application/ILocalStorage;Lcom/mobipocket/common/library/reader/ApplicationCommands;Lcom/amazon/system/util/Utilities;)V

    invoke-virtual {v14, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 110
    new-instance v4, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;

    move-result-object v11

    const-wide/32 v12, 0x1000000

    move-object/from16 v5, p3

    move-object v6, v3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    invoke-direct/range {v4 .. v13}, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;-><init>(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/application/IAnnotationCache;Lcom/amazon/system/security/Security;Lcom/amazon/system/io/InflaterFactory;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/xml/SAXParserFactory;Lcom/amazon/kcp/application/ILocalStorage;J)V

    invoke-virtual {v14, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 112
    const-string v2, ""

    .line 113
    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryController;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v3}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/system/io/IPathDescriptor;->getApplicationPaths()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryController;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v3}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/system/io/IPathDescriptor;->getApplicationPaths()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_0

    .line 116
    invoke-interface/range {p3 .. p3}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/system/io/IPathDescriptor;->getApplicationPaths()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v9, v2

    .line 119
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 120
    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 121
    const v3, 0x7f0a0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 122
    const v3, 0x7f0a0011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 123
    const v3, 0x7f0a0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 125
    new-instance v11, Lcom/amazon/kcp/util/AndroidLocalizedStringComparator;

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v11, v2}, Lcom/amazon/kcp/util/AndroidLocalizedStringComparator;-><init>(Landroid/content/res/Resources;)V

    .line 127
    new-instance v2, Lcom/amazon/kcp/library/dictionary/internal/DictionaryManager;

    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v4}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getDownloadManager()Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryManager;-><init>(Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/kcp/application/internal/ILocalTodoManager;Lcom/amazon/kcp/library/models/internal/IDownloadManager;)V

    iput-object v2, p0, Lcom/amazon/kcp/library/LibraryController;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    .line 128
    new-instance v2, Lcom/amazon/kcp/library/models/CLibrary;

    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getDownloadManager()Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryController;->imageFactory:Lcom/amazon/system/drawing/ImageFactoryExtended;

    iget-object v5, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v5}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getWebConnector()Lcom/amazon/foundation/internal/net/LightWebConnector;

    move-result-object v5

    iget-object v7, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v7}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getDelayedCallbackFactory()Lcom/amazon/kcp/application/IDelayedCallbackFactory;

    move-result-object v7

    new-instance v10, Lcom/amazon/system/drawing/Dimension;

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    mul-int/lit8 v8, v13, 0x2

    sub-int v8, v12, v8

    invoke-direct {v10, v6, v8}, Lcom/amazon/system/drawing/Dimension;-><init>(II)V

    iget-object v12, p0, Lcom/amazon/kcp/library/LibraryController;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    move-object v6, v14

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v12}, Lcom/amazon/kcp/library/models/CLibrary;-><init>(Lcom/amazon/kcp/library/models/internal/IDownloadManager;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/util/Vector;Lcom/amazon/kcp/application/IDelayedCallbackFactory;Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Lcom/amazon/system/drawing/Dimension;Lcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)V

    .line 139
    new-instance v3, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;

    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v4}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getDownloadManager()Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kcp/library/LibraryController;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v6, p0, Lcom/amazon/kcp/library/LibraryController;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    invoke-direct {v3, v4, v5, v11, v6}, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;-><init>(Lcom/amazon/kcp/library/models/internal/IDownloadManager;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/util/ILocalizedStringComparator;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)V

    iput-object v3, p0, Lcom/amazon/kcp/library/LibraryController;->archivedItemsModel:Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;

    .line 141
    new-instance v3, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;

    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    iget-object v6, p0, Lcom/amazon/kcp/library/LibraryController;->archivedItemsModel:Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;

    iget-object v5, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v5}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v7

    move-object v5, v2

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/library/models/CLibrary;Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;Lcom/amazon/kcp/reader/IReaderController;Lcom/amazon/kcp/library/ILibraryController;)V

    iput-object v3, p0, Lcom/amazon/kcp/library/LibraryController;->page:Lcom/amazon/kcp/library/pages/internal/CLibraryPage;

    .line 142
    new-instance v2, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;

    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryController;->archivedItemsModel:Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;

    iget-object v5, p0, Lcom/amazon/kcp/library/LibraryController;->imageFactory:Lcom/amazon/system/drawing/ImageFactoryExtended;

    iget-object v6, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v6}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;

    move-result-object v6

    new-instance v7, Lcom/amazon/android/system/AndroidUtilities;

    invoke-direct {v7}, Lcom/amazon/android/system/AndroidUtilities;-><init>()V

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/util/Utilities;)V

    iput-object v2, p0, Lcom/amazon/kcp/library/LibraryController;->archivedItemsPage:Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;

    .line 146
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->deserializeSyncMetadataCache()V

    .line 149
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getDownloadManager()Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryController;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v2, v3}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->populatePartialDownloads(Lcom/amazon/system/io/IFileConnectionFactory;)V

    .line 151
    new-instance v2, Lcom/amazon/kcp/library/models/ContentCatalog;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryController;->getArchivedItems()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/library/models/ContentCatalog;-><init>(Lcom/amazon/kcp/library/models/ILibrary;Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;)V

    iput-object v2, p0, Lcom/amazon/kcp/library/LibraryController;->catalog:Lcom/amazon/kcp/library/models/IContentCatalog;

    .line 152
    new-instance v2, Lcom/amazon/kcp/library/models/CatalogViewCache;

    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryController;->catalog:Lcom/amazon/kcp/library/models/IContentCatalog;

    invoke-direct {v2, v3, v11}, Lcom/amazon/kcp/library/models/CatalogViewCache;-><init>(Lcom/amazon/kcp/library/models/IContentCatalog;Lcom/amazon/kcp/util/ILocalizedStringComparator;)V

    iput-object v2, p0, Lcom/amazon/kcp/library/LibraryController;->catalogViewCache:Lcom/amazon/kcp/library/models/CatalogViewCache;

    .line 153
    return-void

    :cond_0
    move-object v9, v2

    goto/16 :goto_0
.end method

.method private filterBooks(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/search/SearchResult;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/search/SearchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    if-nez p2, :cond_2

    const-string v0, ""

    move-object v1, v0

    .line 309
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/SearchResult;

    .line 312
    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryController;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    iget-object v5, v0, Lcom/amazon/kcp/search/SearchResult;->book:Lcom/amazon/kcp/library/models/IListableBook;

    invoke-interface {v4, v5}, Lcom/amazon/kcp/library/dictionary/IDictionaryManager;->isPreferredDictionary(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 317
    iget-object v4, v0, Lcom/amazon/kcp/search/SearchResult;->book:Lcom/amazon/kcp/library/models/IListableBook;

    invoke-interface {v4}, Lcom/amazon/kcp/library/models/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/amazon/kcp/search/SearchResult;->book:Lcom/amazon/kcp/library/models/IListableBook;

    invoke-interface {v4}, Lcom/amazon/kcp/library/models/IListableBook;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 319
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 308
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 322
    :cond_3
    return-object v2
.end method


# virtual methods
.method public getArchivedItems()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->archivedItemsModel:Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;

    return-object v0
.end method

.method public getArchivedItemsPage()Lcom/amazon/kcp/library/pages/IArchivedItemsPage;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->archivedItemsPage:Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;

    return-object v0
.end method

.method public getBookFromAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;
    .locals 2
    .parameter "asin"
    .parameter "sample"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->page:Lcom/amazon/kcp/library/pages/internal/CLibraryPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->getModel()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    .line 177
    .local v0, model:Lcom/amazon/kcp/library/models/CLibrary;
    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/models/CLibrary;->getBook(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v1

    return-object v1
.end method

.method public getBookFromBookId(Ljava/lang/String;)Lcom/amazon/kcp/library/models/ILocalBookItem;
    .locals 2
    .parameter "bookId"

    .prologue
    .line 183
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->page:Lcom/amazon/kcp/library/pages/internal/CLibraryPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->getModel()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    .line 184
    .local v0, model:Lcom/amazon/kcp/library/models/CLibrary;
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/models/CLibrary;->getBook(Ljava/lang/String;)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v1

    return-object v1
.end method

.method public getCatalogViewCache()Lcom/amazon/kcp/library/models/CatalogViewCache;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->catalogViewCache:Lcom/amazon/kcp/library/models/CatalogViewCache;

    return-object v0
.end method

.method public getContentCatalog()Lcom/amazon/kcp/library/models/IContentCatalog;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->catalog:Lcom/amazon/kcp/library/models/IContentCatalog;

    return-object v0
.end method

.method public getDictionaryManager()Lcom/amazon/kcp/library/dictionary/IDictionaryManager;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    return-object v0
.end method

.method public getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->page:Lcom/amazon/kcp/library/pages/internal/CLibraryPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->getModel()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    return-object v0
.end method

.method public getLocalLibraryPage()Lcom/amazon/kcp/library/pages/internal/CLibraryPage;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->page:Lcom/amazon/kcp/library/pages/internal/CLibraryPage;

    return-object v0
.end method

.method public refreshBookDirectory()V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/io/IPathDescriptor;->getApplicationPaths()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/io/IPathDescriptor;->getApplicationPaths()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->page:Lcom/amazon/kcp/library/pages/internal/CLibraryPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->getModel()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/system/io/IPathDescriptor;->getApplicationPaths()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/CLibrary;->setTargetLocation(Ljava/lang/String;)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->page:Lcom/amazon/kcp/library/pages/internal/CLibraryPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->getModel()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CLibrary;->refreshBookList()V

    .line 244
    return-void
.end method

.method public search(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/search/SearchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryController;->searchAi(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 250
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryController;->searchLocal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 252
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 254
    return-object v0
.end method

.method public searchAi(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/search/SearchResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryController;->getArchivedItems()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getBookCount()I

    move-result v1

    move v2, v5

    .line 264
    :goto_0
    if-ge v2, v1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryController;->getArchivedItems()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getArchivedBookFromIndex(I)Lcom/amazon/kcp/library/models/internal/IMetadata;

    move-result-object v3

    .line 267
    new-instance v4, Lcom/amazon/kcp/search/SearchResult;

    invoke-direct {v4, v3, v2, v5}, Lcom/amazon/kcp/search/SearchResult;-><init>(Lcom/amazon/kcp/library/models/IListableBook;IZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/library/LibraryController;->filterBooks(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 272
    return-object v0
.end method

.method public searchLocal(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/search/SearchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/CLibrary;->getBookCount()I

    move-result v1

    .line 282
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amazon/kcp/library/models/CLibrary;->getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v3

    .line 288
    instance-of v4, v3, Lcom/amazon/kcp/library/models/ILocalBookInfo;

    if-eqz v4, :cond_0

    .line 290
    new-instance v4, Lcom/amazon/kcp/search/SearchResult;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v2, v5}, Lcom/amazon/kcp/search/SearchResult;-><init>(Lcom/amazon/kcp/library/models/IListableBook;IZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/library/LibraryController;->filterBooks(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 296
    return-object v0
.end method

.method public showArchivedItemsPage(Lcom/amazon/kcp/application/internal/ICommand;Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;)Lcom/amazon/kcp/library/pages/IArchivedItemsPage;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->archivedItemsPage:Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->connectToCommand(Lcom/amazon/kcp/application/internal/ICommand;)V

    .line 205
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    const-class v2, Lcom/amazon/kcp/library/ArchivedItemsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v1, v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    .line 209
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->archivedItemsPage:Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;

    return-object v0
.end method

.method public showArchivedItemsPage()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->page:Lcom/amazon/kcp/library/pages/internal/CLibraryPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->gotoArchivedItems()V

    .line 197
    return-void
.end method

.method public showDefaultPage()Lcom/amazon/kcp/application/IBasePage;
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryController;->showLibraryPage()Lcom/amazon/kcp/library/pages/ILibraryPage;

    move-result-object v0

    return-object v0
.end method

.method public showLibraryPage()Lcom/amazon/kcp/library/pages/ILibraryPage;
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getHistoryManager()Lcom/amazon/kcp/application/HistoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/HistoryManager;->clear()V

    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 218
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-class v0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;

    :goto_0
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    .line 223
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController;->page:Lcom/amazon/kcp/library/pages/internal/CLibraryPage;

    return-object v0

    .line 218
    :cond_0
    const-class v0, Lcom/amazon/kcp/library/HomeActivity;

    goto :goto_0
.end method
