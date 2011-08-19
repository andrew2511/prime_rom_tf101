.class public Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;
.super Lcom/amazon/kcp/application/internal/commands/CCommand;
.source "COpenReaderCommand.java"


# instance fields
.field protected bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

.field protected closePreviousEbook:Z

.field protected readerController:Lcom/amazon/kcp/reader/IReaderController;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/IReaderController;Lcom/amazon/kcp/library/models/ILocalBookItem;Z)V
    .locals 0
    .parameter "readerController"
    .parameter "bookItem"
    .parameter "closePreviousEbook"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/CCommand;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    .line 29
    iput-object p2, p0, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;->bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

    .line 30
    iput-boolean p3, p0, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;->closePreviousEbook:Z

    .line 31
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;->bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

    if-eqz v0, :cond_2

    .line 42
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "BookOpenTimer"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "BookOpenTimer"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 48
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;->closePreviousEbook:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;->bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->closeCurrentBook()V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;->bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->createDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_3

    .line 60
    iget-object v1, p0, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v1, v0}, Lcom/amazon/kcp/reader/IReaderController;->showReaderPage(Lcom/amazon/kcp/reader/models/IBookDocument;)Lcom/amazon/kcp/reader/pages/IReaderPage;

    .line 61
    iget-object v1, p0, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;->bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-interface {v1, v2}, Lcom/amazon/kcp/library/models/ILocalBookItem;->proposeFurthestReadLocation(I)V

    .line 64
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/LocalBookState;->isBookRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/LocalBookState;->setBookRead(Z)V

    .line 72
    :try_start_0
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/LocalBookState;->persist()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "OpenReaderCommnad"

    const-string v2, "BookOpenTimer"

    const-string v3, "BookOpenTimer"

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;->kill()V

    .line 92
    return-void

    .line 85
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "BookOpenTimer"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;->setError(Z)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
