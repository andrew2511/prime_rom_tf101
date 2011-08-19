.class public Lcom/amazon/kcp/sample/SampleLibraryController;
.super Ljava/lang/Object;
.source "SampleLibraryController.java"

# interfaces
.implements Lcom/amazon/kcp/library/ILibraryController;


# instance fields
.field private appController:Lcom/amazon/kcp/sample/SampleApplicationController;

.field private archivedItemsModel:Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;

.field private dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

.field private imageFactory:Lcom/amazon/system/drawing/ImageFactoryExtended;

.field private invokeUtilities:Lcom/amazon/system/util/Utilities;

.field private libraryModel:Lcom/amazon/kcp/library/models/CLibrary;

.field private libraryPage:Lcom/amazon/kcp/library/pages/internal/CLibraryPage;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/sample/SampleApplicationController;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/security/Security;Lcom/mobipocket/common/library/reader/ApplicationCommands;Lcom/amazon/system/io/InflaterFactory;Lcom/amazon/system/xml/SAXParserFactory;Lcom/amazon/system/util/Utilities;)V
    .locals 18
    .parameter "appController"
    .parameter "fileSystem"
    .parameter "localStorage"
    .parameter "fontFactory"
    .parameter "imageFactory"
    .parameter "security"
    .parameter "applicationsCommands"
    .parameter "inflaterFactory"
    .parameter "saxFactory"
    .parameter "utilities"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v17, Ljava/util/Vector;

    invoke-direct/range {v17 .. v17}, Ljava/util/Vector;-><init>()V

    .line 69
    .local v17, builderList:Ljava/util/Vector;
    new-instance v4, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/sample/SampleApplicationController;->getAnnotationCache()Lcom/amazon/kcp/application/IAnnotationCache;

    move-result-object v5

    const/4 v12, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p3

    move-object/from16 v11, p7

    invoke-direct/range {v4 .. v12}, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;-><init>(Lcom/amazon/kcp/application/IAnnotationUpdateHandler;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/security/Security;Lcom/amazon/kcp/application/ILocalStorage;Lcom/mobipocket/common/library/reader/ApplicationCommands;Lcom/amazon/system/util/Utilities;)V

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 70
    const/4 v6, 0x0

    .line 71
    .local v6, annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;
    new-instance v4, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;

    const-wide/32 v12, 0x25a0000

    move-object/from16 v5, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p5

    move-object/from16 v10, p9

    move-object/from16 v11, p3

    invoke-direct/range {v4 .. v13}, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;-><init>(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/application/IAnnotationCache;Lcom/amazon/system/security/Security;Lcom/amazon/system/io/InflaterFactory;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/xml/SAXParserFactory;Lcom/amazon/kcp/application/ILocalStorage;J)V

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 72
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/sample/SampleLibraryController;->imageFactory:Lcom/amazon/system/drawing/ImageFactoryExtended;

    .line 73
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/sample/SampleLibraryController;->appController:Lcom/amazon/kcp/sample/SampleApplicationController;

    .line 74
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/sample/SampleLibraryController;->invokeUtilities:Lcom/amazon/system/util/Utilities;

    .line 76
    new-instance v4, Lcom/amazon/kcp/library/dictionary/internal/DictionaryManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/sample/SampleLibraryController;->appController:Lcom/amazon/kcp/sample/SampleApplicationController;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/amazon/kcp/sample/SampleApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/sample/SampleLibraryController;->appController:Lcom/amazon/kcp/sample/SampleApplicationController;

    move-object v6, v0

    .end local v6           #annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;
    invoke-virtual {v6}, Lcom/amazon/kcp/sample/SampleApplicationController;->getDownloadManager()Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    move-result-object v6

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryManager;-><init>(Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/kcp/application/internal/ILocalTodoManager;Lcom/amazon/kcp/library/models/internal/IDownloadManager;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/sample/SampleLibraryController;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    .line 77
    new-instance v7, Lcom/amazon/kcp/library/models/CLibrary;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/sample/SampleLibraryController;->appController:Lcom/amazon/kcp/sample/SampleApplicationController;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/amazon/kcp/sample/SampleApplicationController;->getDownloadManager()Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/sample/SampleLibraryController;->appController:Lcom/amazon/kcp/sample/SampleApplicationController;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/amazon/kcp/sample/SampleApplicationController;->getWebConnector()Lcom/amazon/foundation/internal/net/LightWebConnector;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/sample/SampleLibraryController;->appController:Lcom/amazon/kcp/sample/SampleApplicationController;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/amazon/kcp/sample/SampleApplicationController;->getDelayedCallbackFactory()Lcom/amazon/kcp/application/IDelayedCallbackFactory;

    move-result-object v12

    invoke-interface/range {p2 .. p2}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/system/io/IPathDescriptor;->getApplicationPaths()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v14, v4, v5

    new-instance v15, Lcom/amazon/system/drawing/Dimension;

    invoke-direct {v15}, Lcom/amazon/system/drawing/Dimension;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/sample/SampleLibraryController;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    move-object/from16 v16, v0

    move-object/from16 v9, p5

    move-object/from16 v11, v17

    move-object/from16 v13, p2

    invoke-direct/range {v7 .. v16}, Lcom/amazon/kcp/library/models/CLibrary;-><init>(Lcom/amazon/kcp/library/models/internal/IDownloadManager;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/util/Vector;Lcom/amazon/kcp/application/IDelayedCallbackFactory;Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Lcom/amazon/system/drawing/Dimension;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/sample/SampleLibraryController;->libraryModel:Lcom/amazon/kcp/library/models/CLibrary;

    .line 78
    new-instance v4, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/sample/SampleLibraryController;->appController:Lcom/amazon/kcp/sample/SampleApplicationController;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/amazon/kcp/sample/SampleApplicationController;->getDownloadManager()Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/sample/SampleLibraryController;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    move-object v6, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p2

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;-><init>(Lcom/amazon/kcp/library/models/internal/IDownloadManager;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/sample/SampleLibraryController;->archivedItemsModel:Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;

    .line 79
    new-instance v7, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/sample/SampleLibraryController;->appController:Lcom/amazon/kcp/sample/SampleApplicationController;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/sample/SampleLibraryController;->libraryModel:Lcom/amazon/kcp/library/models/CLibrary;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/sample/SampleLibraryController;->archivedItemsModel:Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/sample/SampleLibraryController;->appController:Lcom/amazon/kcp/sample/SampleApplicationController;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/amazon/kcp/sample/SampleApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v11

    move-object/from16 v12, p0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/library/models/CLibrary;Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;Lcom/amazon/kcp/reader/IReaderController;Lcom/amazon/kcp/library/ILibraryController;)V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/sample/SampleLibraryController;->libraryPage:Lcom/amazon/kcp/library/pages/internal/CLibraryPage;

    .line 80
    return-void
.end method


# virtual methods
.method public getArchivedItems()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/sample/SampleLibraryController;->archivedItemsModel:Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;

    return-object v0
.end method

.method public getBookFromAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;
    .locals 1
    .parameter "asin"
    .parameter "sample"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/sample/SampleLibraryController;->libraryModel:Lcom/amazon/kcp/library/models/CLibrary;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/models/CLibrary;->getBook(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    return-object v0
.end method

.method public getCatalogViewCache()Lcom/amazon/kcp/library/models/CatalogViewCache;
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentCatalog()Lcom/amazon/kcp/library/models/IContentCatalog;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDictionaryManager()Lcom/amazon/kcp/library/dictionary/IDictionaryManager;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/sample/SampleLibraryController;->libraryModel:Lcom/amazon/kcp/library/models/CLibrary;

    return-object v0
.end method

.method public showArchivedItemsPage(Lcom/amazon/kcp/application/internal/ICommand;Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;)Lcom/amazon/kcp/library/pages/IArchivedItemsPage;
    .locals 6
    .parameter "command"
    .parameter "model"

    .prologue
    .line 103
    new-instance v0, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;

    iget-object v1, p0, Lcom/amazon/kcp/sample/SampleLibraryController;->appController:Lcom/amazon/kcp/sample/SampleApplicationController;

    iget-object v3, p0, Lcom/amazon/kcp/sample/SampleLibraryController;->imageFactory:Lcom/amazon/system/drawing/ImageFactoryExtended;

    iget-object v2, p0, Lcom/amazon/kcp/sample/SampleLibraryController;->appController:Lcom/amazon/kcp/sample/SampleApplicationController;

    invoke-virtual {v2}, Lcom/amazon/kcp/sample/SampleApplicationController;->getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kcp/sample/SampleLibraryController;->invokeUtilities:Lcom/amazon/system/util/Utilities;

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/util/Utilities;)V

    .line 104
    .local v0, aiPage:Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;
    return-object v0
.end method

.method public showArchivedItemsPage()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/sample/SampleLibraryController;->libraryPage:Lcom/amazon/kcp/library/pages/internal/CLibraryPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->gotoArchivedItems()V

    .line 96
    return-void
.end method

.method public showDefaultPage()Lcom/amazon/kcp/application/IBasePage;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/amazon/kcp/sample/SampleLibraryController;->showLibraryPage()Lcom/amazon/kcp/library/pages/ILibraryPage;

    move-result-object v0

    return-object v0
.end method

.method public showLibraryPage()Lcom/amazon/kcp/library/pages/ILibraryPage;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/sample/SampleLibraryController;->libraryPage:Lcom/amazon/kcp/library/pages/internal/CLibraryPage;

    return-object v0
.end method
