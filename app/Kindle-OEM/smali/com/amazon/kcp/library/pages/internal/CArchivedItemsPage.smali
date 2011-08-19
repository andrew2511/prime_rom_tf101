.class public Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;
.super Lcom/amazon/kcp/application/internal/CBasePage;
.source "CArchivedItemsPage.java"

# interfaces
.implements Lcom/amazon/kcp/library/pages/IArchivedItemsPage;


# instance fields
.field private fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

.field private imageFactory:Lcom/amazon/system/drawing/ImageFactory;

.field private invokeUtilities:Lcom/amazon/system/util/Utilities;

.field private model:Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

.field private updateModelFinishedEvent:Lcom/amazon/foundation/internal/EventProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/util/Utilities;)V
    .locals 1
    .parameter "applicationController"
    .parameter "model"
    .parameter "imageFactory"
    .parameter "fileSystem"
    .parameter "invokeUtilities"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/CBasePage;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->model:Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    .line 32
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->updateModelFinishedEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 44
    iput-object p2, p0, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->model:Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    .line 45
    iput-object p3, p0, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    .line 46
    iput-object p4, p0, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 47
    iput-object p5, p0, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->invokeUtilities:Lcom/amazon/system/util/Utilities;

    .line 48
    return-void
.end method

.method public static downloadBook(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/library/models/IListableBook;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 65
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 70
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getBookType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 72
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->MAGAZINE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    .line 87
    :goto_0
    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->addItemToDownload(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)V

    .line 88
    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->execute(Lcom/amazon/foundation/IStatusTracker;)V

    .line 90
    :cond_0
    return-void

    .line 74
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getBookType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 76
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NEWSPAPER:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_0

    .line 78
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getBookType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 80
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_0

    .line 84
    :cond_3
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_0
.end method


# virtual methods
.method public downloadBook(Lcom/amazon/kcp/library/models/IListableBook;)V
    .locals 1
    .parameter "metadata"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-static {v0, p1}, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->downloadBook(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 56
    return-void
.end method

.method public downloadCovers([ILcom/amazon/system/drawing/Dimension;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->getModel()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    move-result-object v6

    .line 100
    if-eqz v6, :cond_0

    if-eqz p1, :cond_0

    .line 110
    invoke-interface {v6}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getBookCount()I

    .line 112
    invoke-interface {v6}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getBookCount()I

    move-result v0

    .line 115
    if-gtz v0, :cond_1

    .line 146
    :cond_0
    return-void

    .line 120
    :cond_1
    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 122
    array-length v0, p1

    move v7, v0

    .line 125
    :goto_0
    new-instance v4, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;

    iget-object v0, p0, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getWebConnector()Lcom/amazon/foundation/internal/net/LightWebConnector;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/application/internal/CImageBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    invoke-direct {v1, v2}, Lcom/amazon/kcp/application/internal/CImageBuilder;-><init>(Lcom/amazon/system/drawing/ImageFactory;)V

    iget-object v2, p0, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleApplicationController;->getDelayedCallbackFactory()Lcom/amazon/kcp/application/IDelayedCallbackFactory;

    move-result-object v2

    invoke-direct {v4, v0, v1, v2, p2}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;Lcom/amazon/kcp/application/IDelayedCallbackFactory;Lcom/amazon/system/drawing/Dimension;)V

    .line 131
    new-instance v0, Lcom/amazon/kcp/application/internal/CCoverSerializer;

    iget-object v1, p0, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v2, p0, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    iget-object v3, p0, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->invokeUtilities:Lcom/amazon/system/util/Utilities;

    invoke-interface {v6}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getBookCount()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/application/internal/CCoverSerializer;-><init>(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/util/Utilities;Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;I)V

    .line 132
    invoke-virtual {v4, v0}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->setDataSerializer(Lcom/amazon/kcp/application/internal/IDataSerializer;)V

    .line 134
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_0

    .line 137
    aget v2, p1, v1

    invoke-interface {v6, v2}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getArchivedBookFromIndex(I)Lcom/amazon/kcp/library/models/internal/IMetadata;

    move-result-object v2

    .line 139
    invoke-interface {v2}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getCoverState()I

    move-result v3

    if-nez v3, :cond_2

    .line 141
    invoke-virtual {v0, v2, p2}, Lcom/amazon/kcp/application/internal/CCoverSerializer;->deSerialize(Lcom/amazon/kcp/library/models/internal/IMetadata;Lcom/amazon/system/drawing/Dimension;)V

    .line 134
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v7, v0

    goto :goto_0
.end method

.method public getModel()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->model:Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    return-object v0
.end method

.method public getUpdateModelFinishedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->updateModelFinishedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method protected onCommandIdle()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->updateModelFinishedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 170
    invoke-super {p0}, Lcom/amazon/kcp/application/internal/CBasePage;->onCommandIdle()V

    .line 171
    return-void
.end method

.method protected onCommandKilled()V
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->getCommand()Lcom/amazon/kcp/application/internal/ICommand;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ICommand;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/library/pages/internal/CArchivedItemsPage;->updateModelFinishedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 182
    :cond_0
    return-void
.end method
