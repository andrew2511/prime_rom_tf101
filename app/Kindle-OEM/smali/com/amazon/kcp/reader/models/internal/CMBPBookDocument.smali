.class public Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;
.super Lcom/amazon/kcp/reader/models/internal/AbstractBookDocument;
.source "CMBPBookDocument.java"


# instance fields
.field private annotationsManager:Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;

.field private bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

.field private bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

.field private display:Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;

.field private documentCloseEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private navigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

.field private noteSelectionListener:Lcom/amazon/foundation/internal/INoteSelectionListener;

.field private searchHelper:Lcom/amazon/kcp/library/models/internal/CBookItemMobi$SearchHelper;

.field private showBookBuyDetailsEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private showBookBuyEvent:Lcom/amazon/foundation/internal/EventProvider;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookManager;Lcom/amazon/kcp/library/models/ILocalBookInfo;Lcom/amazon/kcp/application/IAnnotationUpdateHandler;Lcom/amazon/kcp/library/models/internal/CBookItemMobi$SearchHelper;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/AbstractBookDocument;-><init>()V

    .line 27
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->documentCloseEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->noteSelectionListener:Lcom/amazon/foundation/internal/INoteSelectionListener;

    .line 29
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->showBookBuyEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 30
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->showBookBuyDetailsEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 49
    iput-object p3, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    .line 50
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    .line 51
    iput-object p5, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->searchHelper:Lcom/amazon/kcp/library/models/internal/CBookItemMobi$SearchHelper;

    .line 52
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    invoke-direct {v0, v1, p2, v2}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookManager;Lcom/amazon/kcp/library/models/ILocalBookInfo;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->navigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    .line 53
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->navigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-direct {v0, v1, p1}, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;-><init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;Lcom/mobipocket/common/library/reader/BookViewManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->display:Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;

    .line 56
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->navigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->display:Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;

    move-object v1, p1

    move-object v2, p4

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/amazon/kcp/application/IAnnotationUpdateHandler;Lcom/amazon/kcp/library/models/ILocalBookInfo;Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->annotationsManager:Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->annotationsManager:Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->getNeedRefreshEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument$1;-><init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->navigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->getPositionChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument$2;-><init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;)Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->display:Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;)Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->navigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    return-object v0
.end method


# virtual methods
.method public closeDocument()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->closeBook()V

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->documentCloseEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 111
    return-void
.end method

.method public getAnnotationsManager()Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->annotationsManager:Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;

    return-object v0
.end method

.method public getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    return-object v0
.end method

.method public getDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->display:Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;

    return-object v0
.end method

.method public getDocumentCloseEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->documentCloseEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->navigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    return-object v0
.end method

.method public getNoteSelectionListener()Lcom/amazon/foundation/internal/INoteSelectionListener;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->noteSelectionListener:Lcom/amazon/foundation/internal/INoteSelectionListener;

    return-object v0
.end method

.method public getShowBookBuyEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->showBookBuyEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getShowBookDetailsEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->showBookBuyDetailsEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public saveLocalBookState()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->saveBookState()Z

    .line 175
    return-void
.end method

.method public search(Ljava/lang/String;Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStatusTracker;)Ljava/lang/Runnable;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;

    new-instance v5, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument$3;

    invoke-direct {v5, p0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument$3;-><init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;-><init>(Ljava/lang/String;Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStatusTracker;Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents$ResultOpener;)V

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->searchHelper:Lcom/amazon/kcp/library/models/internal/CBookItemMobi$SearchHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/amazon/kcp/library/models/internal/CBookItemMobi$SearchHelper;->search(Lcom/mobipocket/common/library/reader/SearchEvents;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    new-instance v1, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument$4;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument$4;-><init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;)V

    return-object v1

    .line 203
    :catch_0
    move-exception v1

    invoke-interface {p3}, Lcom/amazon/foundation/ICallback;->execute()V

    goto :goto_0
.end method

.method public setApplicationCommands(Lcom/mobipocket/common/library/reader/ApplicationCommands;)V
    .locals 1
    .parameter "applicationCommands"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager;->setApplicationCommands(Lcom/mobipocket/common/library/reader/ApplicationCommands;)V

    .line 159
    return-void
.end method

.method public setNoteSelectionListener(Lcom/amazon/foundation/internal/INoteSelectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->noteSelectionListener:Lcom/amazon/foundation/internal/INoteSelectionListener;

    .line 141
    return-void
.end method
