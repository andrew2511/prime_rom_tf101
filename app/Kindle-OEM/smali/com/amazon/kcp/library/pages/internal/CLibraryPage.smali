.class public Lcom/amazon/kcp/library/pages/internal/CLibraryPage;
.super Lcom/amazon/kcp/application/internal/CBasePage;
.source "CLibraryPage.java"

# interfaces
.implements Lcom/amazon/kcp/library/pages/ILibraryPage;


# instance fields
.field private archivedItems:Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;

.field private archivedItemsCountCallback:Lcom/amazon/foundation/IIntCallback;

.field private archivedItemsCountEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field private authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

.field private downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

.field private library:Lcom/amazon/kcp/library/models/CLibrary;

.field private libraryController:Lcom/amazon/kcp/library/ILibraryController;

.field private readerController:Lcom/amazon/kcp/reader/IReaderController;

.field private registrationFactory:Lcom/amazon/kcp/application/ILoginUIFactory;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/library/models/CLibrary;Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;Lcom/amazon/kcp/reader/IReaderController;Lcom/amazon/kcp/library/ILibraryController;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/CBasePage;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    .line 35
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->archivedItemsCountEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 37
    new-instance v0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/pages/internal/CLibraryPage$1;-><init>(Lcom/amazon/kcp/library/pages/internal/CLibraryPage;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->archivedItemsCountCallback:Lcom/amazon/foundation/IIntCallback;

    .line 59
    iput-object p2, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->library:Lcom/amazon/kcp/library/models/CLibrary;

    .line 60
    iput-object p3, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->archivedItems:Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;

    .line 61
    iput-object p4, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    .line 62
    iput-object p1, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->registrationFactory:Lcom/amazon/kcp/application/ILoginUIFactory;

    .line 63
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    .line 64
    iput-object p5, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    .line 65
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getDownloadManager()Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    .line 67
    invoke-virtual {p3}, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->getArchivedItemsCountEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->archivedItemsCountCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/pages/internal/CLibraryPage;)Lcom/amazon/foundation/internal/IntEventProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->archivedItemsCountEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method


# virtual methods
.method public deleteBook(Lcom/amazon/kcp/library/models/ILocalBookItem;)Z
    .locals 1
    .parameter "book"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->library:Lcom/amazon/kcp/library/models/CLibrary;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/models/CLibrary;->deleteBook(Lcom/amazon/kcp/library/models/ILocalBookItem;)Z

    move-result v0

    return v0
.end method

.method public getArchivedItemsCountChangeEvent()Lcom/amazon/foundation/internal/IntEventProvider;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->archivedItemsCountEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getModel()Lcom/amazon/kcp/library/models/CLibrary;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->library:Lcom/amazon/kcp/library/models/CLibrary;

    return-object v0
.end method

.method public gotoArchivedItems()V
    .locals 6

    .prologue
    .line 77
    new-instance v0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;

    iget-object v1, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->registrationFactory:Lcom/amazon/kcp/application/ILoginUIFactory;

    iget-object v2, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v3, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    iget-object v4, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    iget-object v5, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->archivedItems:Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;-><init>(Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/kcp/library/models/internal/IDownloadManager;Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;)V

    .line 78
    .local v0, command:Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;
    invoke-virtual {v0}, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->execute()V

    .line 79
    return-void
.end method

.method public openBook(Lcom/amazon/kcp/library/models/ILocalBookItem;)V
    .locals 5
    .parameter "bookItem"

    .prologue
    .line 83
    new-instance v0, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;

    iget-object v1, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;-><init>(Lcom/amazon/kcp/reader/IReaderController;Lcom/amazon/kcp/library/models/ILocalBookItem;Z)V

    .line 84
    .local v0, readerCommand:Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;->execute()V

    .line 85
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;->hasError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "CLibraryPage"

    const-string v3, "OpenBookFailed"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 88
    iget-object v1, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    const-string v2, "OpenBookError"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/amazon/kcp/application/IKindleApplicationController;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public retryDownload(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 1
    .parameter "book"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-static {v0, p1}, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->downloadBook(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 103
    return-void
.end method
