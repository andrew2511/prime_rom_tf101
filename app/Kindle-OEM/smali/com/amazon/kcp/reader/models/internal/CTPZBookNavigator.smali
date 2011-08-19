.class Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;
.super Ljava/lang/Object;
.source "CTPZBookNavigator.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/IBookNavigator;


# instance fields
.field private book:Lcom/amazon/topaz/TPZBook;

.field private navigatingToSearchResult:Lcom/amazon/topaz/TPZBookSearchResult;

.field objectSelector:Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;

.field private pageTurnedEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private final positionChangedCallback:Lcom/amazon/foundation/ICallback;

.field private searchResult:Lcom/amazon/topaz/TPZBookSearchResult;

.field private worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator$1;-><init>(Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->positionChangedCallback:Lcom/amazon/foundation/ICallback;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->book:Lcom/amazon/topaz/TPZBook;

    .line 55
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;-><init>(Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->objectSelector:Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;

    .line 56
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->pageTurnedEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 57
    return-void
.end method

.method static synthetic access$002(Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;Lcom/amazon/topaz/TPZBookSearchResult;)Lcom/amazon/topaz/TPZBookSearchResult;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->searchResult:Lcom/amazon/topaz/TPZBookSearchResult;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;)Lcom/amazon/topaz/TPZBookSearchResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->navigatingToSearchResult:Lcom/amazon/topaz/TPZBookSearchResult;

    return-object v0
.end method

.method static synthetic access$102(Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;Lcom/amazon/topaz/TPZBookSearchResult;)Lcom/amazon/topaz/TPZBookSearchResult;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->navigatingToSearchResult:Lcom/amazon/topaz/TPZBookSearchResult;

    return-object p1
.end method


# virtual methods
.method public back()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->goBack()Z

    move-result v0

    return v0
.end method

.method public executeActiveArea(Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;)V
    .locals 1
    .parameter "activeArea"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->executeActiveArea(Ljava/lang/Object;)V

    .line 394
    return-void
.end method

.method getBook()Lcom/amazon/topaz/TPZBook;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->book:Lcom/amazon/topaz/TPZBook;

    return-object v0
.end method

.method public getCurrentPageLastPosition()I
    .locals 2

    .prologue
    .line 398
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v1

    iget v0, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageEndPosID:I

    .line 400
    .local v0, lastPosition:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getPosition()I

    move-result v0

    .line 405
    :cond_0
    return v0
.end method

.method public getCurrentPageSearchResult()Lcom/amazon/topaz/TPZBookSearchResult;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->searchResult:Lcom/amazon/topaz/TPZBookSearchResult;

    return-object v0
.end method

.method public getDictionaryCapabilities()Lcom/amazon/kcp/library/dictionary/IDictionary;
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstWordsLastPosition()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    iget v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->firstWordsEndPosID:I

    return v0
.end method

.method public getLastPageNumber()I
    .locals 1

    .prologue
    .line 183
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLastPosition()I
    .locals 2

    .prologue
    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->book:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v0}, Lcom/amazon/topaz/TPZBook;->lastID()I
    :try_end_0
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 103
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getLocationFromPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 161
    invoke-static {p1}, Lcom/amazon/kcp/reader/models/internal/CTPZUserLocation;->getAmznUserLocationFromPosition(I)I

    move-result v0

    return v0
.end method

.method public getNoteSelectionListener()Lcom/amazon/foundation/internal/INoteSelectionListener;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->objectSelector:Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->objectSelector:Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->getNoteSelectionListener()Lcom/amazon/foundation/internal/INoteSelectionListener;

    move-result-object v0

    .line 473
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObjectSelector()Lcom/amazon/kcp/reader/models/IObjectSelector;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->objectSelector:Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;

    return-object v0
.end method

.method public getPageFirstPosition(I)I
    .locals 2
    .parameter

    .prologue
    .line 111
    sparse-switch p1, :sswitch_data_0

    .line 121
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getPosition()I

    move-result v0

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 114
    :sswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getNextPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    iget v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->startPosID:I

    .line 126
    :goto_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getPosition()I

    move-result v0

    goto :goto_0

    .line 117
    :sswitch_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getPreviousPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    iget v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->startPosID:I

    goto :goto_1

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_1
        0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method public getPageLastPosition(I)I
    .locals 2
    .parameter "pageShift"

    .prologue
    .line 136
    sparse-switch p1, :sswitch_data_0

    .line 146
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v1

    iget v0, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageEndPosID:I

    .line 152
    .local v0, lastPosition:I
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getPosition()I

    move-result v0

    .line 156
    :cond_0
    return v0

    .line 139
    .end local v0           #lastPosition:I
    :sswitch_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getNextPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v1

    iget v0, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageEndPosID:I

    .line 140
    .restart local v0       #lastPosition:I
    goto :goto_0

    .line 142
    .end local v0           #lastPosition:I
    :sswitch_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getPreviousPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v1

    iget v0, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageEndPosID:I

    .line 143
    .restart local v0       #lastPosition:I
    goto :goto_0

    .line 136
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_1
        0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method public getPageNumber()I
    .locals 1

    .prologue
    .line 200
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPageTurnedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->pageTurnedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getPosition()I

    move-result v0

    return v0
.end method

.method public getPositionChangedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getPositionChangedEvent()Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    return-object v0
.end method

.method public getPositionFromLocation(I)I
    .locals 1
    .parameter "location"

    .prologue
    .line 166
    invoke-static {p1}, Lcom/amazon/kcp/reader/models/internal/CTPZUserLocation;->getPositionFromAmznUserLocation(I)I

    move-result v0

    return v0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->book:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v0}, Lcom/amazon/topaz/TPZBook;->lastID()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 419
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getCurrentPageLastPosition()I
    :try_end_0
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 428
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 424
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getStartReadingPosition()I
    .locals 3

    .prologue
    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->book:Lcom/amazon/topaz/TPZBook;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->book:Lcom/amazon/topaz/TPZBook;

    sget-object v2, Lcom/amazon/topaz/internal/TopazStrings;->METADATA_FIRSTTEXTPAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/TPZBook;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/TPZBook;->getPageNum(Ljava/lang/String;)I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->book:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v1, v0}, Lcom/amazon/topaz/TPZBook;->firstID(I)I
    :try_end_0
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 85
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 81
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getTOC()Lcom/amazon/kcp/reader/models/IBookTOC;
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    return-object v0
.end method

.method public gotoCover()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->gotoPosition(I)V

    .line 239
    return-void
.end method

.method public gotoFirstPage()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->gotoPosition(I)V

    .line 257
    return-void
.end method

.method public gotoPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->gotoPosition(IZ)V

    .line 219
    return-void
.end method

.method public gotoSearchResult(Lcom/amazon/topaz/TPZBookSearchResult;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->navigatingToSearchResult:Lcom/amazon/topaz/TPZBookSearchResult;

    .line 230
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/amazon/topaz/TPZBookSearchResult;->getMatchWordID(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->gotoPosition(IZ)V

    .line 231
    return-void
.end method

.method public gotoStartReadingPosition()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->gotoStartReadingPosition(Z)V

    .line 265
    return-void
.end method

.method public gotoTOC()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->gotoTOC(Z)V

    .line 273
    return-void
.end method

.method public hasCoverPage()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public hasTOC()Z
    .locals 3

    .prologue
    .line 280
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->book:Lcom/amazon/topaz/TPZBook;

    sget-object v2, Lcom/amazon/topaz/internal/TopazStrings;->METADATA_FIRSTTOCPAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/TPZBook;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, tocLoc:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBackAvailable()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->isBackAvailable()Z

    move-result v0

    return v0
.end method

.method public isNextLineAvailable()Z
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->isNextPageAvailable()Z

    move-result v0

    return v0
.end method

.method public isNextPageAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 298
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->book:Lcom/amazon/topaz/TPZBook;

    if-nez v0, :cond_0

    move v0, v2

    .line 312
    :goto_0
    return v0

    .line 303
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    iget v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageEndPosID:I

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->book:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v1}, Lcom/amazon/topaz/TPZBook;->lastID()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    .line 312
    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public isPreviousLineAvailable()Z
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->isPreviousPageAvailable()Z

    move-result v0

    return v0
.end method

.method public isPreviousPageAvailable()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 331
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getPosition()I

    move-result v0

    if-lt v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextLine()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->nextLine()V

    .line 483
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->pageTurnedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 484
    return-void
.end method

.method public nextPage()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->nextPage()V

    .line 348
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->pageTurnedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 349
    return-void
.end method

.method public previousLine()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->prevLine()V

    .line 492
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->pageTurnedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 493
    return-void
.end method

.method public previousPage()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->previousPage()V

    .line 357
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->pageTurnedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 358
    return-void
.end method

.method public proposeFurthestReadLocation(Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 435
    const v0, 0x7fffffff

    .line 438
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getBook()Lcom/amazon/topaz/TPZBook;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/TPZBook;->lastID()I
    :try_end_0
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    sub-int/2addr v0, v4

    .line 448
    :goto_0
    iget v1, p1, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->position:I

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getCurrentPageLastPosition()I

    move-result v2

    if-le v1, v2, :cond_0

    iget v1, p1, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->position:I

    if-gt v1, v0, :cond_0

    move v0, v4

    :goto_1
    return v0

    .line 440
    :catch_0
    move-exception v1

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got a topaz exception while trying to get the last page read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/topaz/exception/TopazException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 444
    :catch_1
    move-exception v1

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got IO exception while trying to get the last page read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 448
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setBookAndWorker(Lcom/amazon/topaz/TPZBook;Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 381
    iput-object p2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    .line 382
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->objectSelector:Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->setState(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)V

    .line 383
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->book:Lcom/amazon/topaz/TPZBook;

    .line 384
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getPositionChangedEvent()Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->positionChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/EventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 385
    return-void
.end method

.method public setDisplay(Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;)V
    .locals 1
    .parameter "display"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->objectSelector:Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->setDisplay(Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;)V

    .line 372
    return-void
.end method

.method public setNoteSelectionListener(Lcom/amazon/foundation/internal/INoteSelectionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 457
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->objectSelector:Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->objectSelector:Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->setNoteSelectionListener(Lcom/amazon/foundation/internal/INoteSelectionListener;)V

    .line 461
    :cond_0
    return-void
.end method
