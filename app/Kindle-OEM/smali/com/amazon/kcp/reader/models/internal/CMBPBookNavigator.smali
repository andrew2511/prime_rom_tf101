.class public Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;
.super Ljava/lang/Object;
.source "CMBPBookNavigator.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/IBookNavigator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$1;,
        Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;
    }
.end annotation


# instance fields
.field private bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

.field private changedEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private dictionaryCapabilties:Lcom/amazon/kcp/library/dictionary/IDictionary;

.field private objectSelector:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;

.field private pagedTurnedEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private toc:Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookManager;Lcom/amazon/kcp/library/models/ILocalBookInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    .line 129
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->changedEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 130
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->pagedTurnedEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 131
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;-><init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->objectSelector:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;

    .line 132
    new-instance v0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryCapabilities;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryCapabilities;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->dictionaryCapabilties:Lcom/amazon/kcp/library/dictionary/IDictionary;

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->getTOC()Lcom/mobipocket/common/library/reader/TOC;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    .line 137
    new-instance v1, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;

    invoke-direct {v1, v0, p0, p1}, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;-><init>(Lcom/mobipocket/common/library/reader/TOC;Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;Lcom/mobipocket/common/library/reader/BookViewManager;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->toc:Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;

    .line 141
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)Lcom/mobipocket/common/library/reader/BookViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)Lcom/amazon/foundation/internal/EventProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->changedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method


# virtual methods
.method public back()Z
    .locals 2

    .prologue
    .line 147
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->back()Z

    move-result v0

    .line 148
    .local v0, back:Z
    if-eqz v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->changedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 152
    :cond_0
    return v0
.end method

.method public getDictionaryCapabilities()Lcom/amazon/kcp/library/dictionary/IDictionary;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->dictionaryCapabilties:Lcom/amazon/kcp/library/dictionary/IDictionary;

    return-object v0
.end method

.method public getLastPageNumber()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getLastEstimatedPageNumber()I

    move-result v0

    return v0
.end method

.method public getLastPosition()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getMaxPosition()I

    move-result v0

    return v0
.end method

.method public getLocationFromPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 320
    invoke-static {p1}, Lcom/mobipocket/common/library/reader/BookViewManager;->getUserLocationFromPosition(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public getObjectSelector()Lcom/amazon/kcp/reader/models/IObjectSelector;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->objectSelector:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;

    return-object v0
.end method

.method public getPageFirstPosition(I)I
    .locals 3
    .parameter "pageShift"

    .prologue
    .line 294
    sparse-switch p1, :sswitch_data_0

    .line 306
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getPageBeginPosition(I)I

    move-result v0

    .line 310
    .local v0, position:I
    :goto_0
    return v0

    .line 297
    .end local v0           #position:I
    :sswitch_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getPageBeginPosition(I)I

    move-result v0

    .line 298
    .restart local v0       #position:I
    goto :goto_0

    .line 301
    .end local v0           #position:I
    :sswitch_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getPageBeginPosition(I)I

    move-result v0

    .line 302
    .restart local v0       #position:I
    goto :goto_0

    .line 294
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_1
        0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method public getPageLastPosition(I)I
    .locals 3
    .parameter "pageShift"

    .prologue
    .line 272
    sparse-switch p1, :sswitch_data_0

    .line 284
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getPageEndPosition(I)I

    move-result v0

    .line 288
    .local v0, position:I
    :goto_0
    return v0

    .line 275
    .end local v0           #position:I
    :sswitch_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getPageEndPosition(I)I

    move-result v0

    .line 276
    .restart local v0       #position:I
    goto :goto_0

    .line 279
    .end local v0           #position:I
    :sswitch_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getPageEndPosition(I)I

    move-result v0

    .line 280
    .restart local v0       #position:I
    goto :goto_0

    .line 272
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
    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageNumber()I

    move-result v0

    return v0
.end method

.method public getPageTurnedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->pagedTurnedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getPositionChangedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->changedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getPositionFromLocation(I)I
    .locals 1
    .parameter "location"

    .prologue
    .line 315
    mul-int/lit8 v0, p1, 0x64

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->getPositionFromUserLocation(I)I

    move-result v0

    return v0
.end method

.method public getProgress()I
    .locals 3

    .prologue
    .line 325
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->getPageLastPosition(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getMaxPosition()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 326
    .local v0, progress:I
    return v0
.end method

.method public getStartReadingPosition()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getStartReadingPosition()I

    move-result v0

    return v0
.end method

.method public getTOC()Lcom/amazon/kcp/reader/models/IBookTOC;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->toc:Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;

    return-object v0
.end method

.method public gotoCover()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->gotoCoverPage()Z

    .line 178
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->changedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 179
    return-void
.end method

.method public gotoFirstPage()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->firstPage()V

    .line 189
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->changedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 190
    return-void
.end method

.method public gotoPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->gotoPosition(II)V

    .line 341
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->changedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 342
    return-void
.end method

.method public gotoStartReadingPosition()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->gotoStartReading()Z

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->changedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 196
    return-void
.end method

.method public gotoTOC()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->gotoTOC()Z

    .line 201
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->changedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 202
    return-void
.end method

.method public hasCoverPage()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->hasCoverView()Z

    move-result v0

    return v0
.end method

.method public hasTOC()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->hasTOC()Z

    move-result v0

    return v0
.end method

.method public isBackAvailable()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->isBackPossible()Z

    move-result v0

    return v0
.end method

.method public isNextLineAvailable()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->isNextLinePossible()Z

    move-result v0

    return v0
.end method

.method public isNextPageAvailable()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->isNextPagePossible()Z

    move-result v0

    return v0
.end method

.method public isPreviousLineAvailable()Z
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->isPreviousPageAvailable()Z

    move-result v0

    return v0
.end method

.method public isPreviousPageAvailable()Z
    .locals 2

    .prologue
    .line 231
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->isPreviousPagePossible()Z

    move-result v0

    .line 232
    .local v0, ret:Z
    return v0
.end method

.method public nextLine()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->nextLine()V

    .line 371
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->changedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 372
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->pagedTurnedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 373
    return-void
.end method

.method public nextPage()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->nextPage()V

    .line 243
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->changedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 244
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->pagedTurnedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 245
    return-void
.end method

.method public openAnnotation(Lcom/mobipocket/common/library/reader/AnnotationItem;)V
    .locals 1
    .parameter "annotation"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->open(Lcom/mobipocket/common/library/reader/AnnotationItem;)V

    .line 350
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->changedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 351
    return-void
.end method

.method public openFoundItem(Lcom/mobipocket/common/library/reader/FoundItem;)V
    .locals 1
    .parameter "foundItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager;->open(Lcom/mobipocket/common/library/reader/FoundItem;)V

    .line 361
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->changedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 362
    return-void
.end method

.method public previousLine()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->previousLine()V

    .line 381
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->changedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 382
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->pagedTurnedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 383
    return-void
.end method

.method public previousPage()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->previousPage()V

    .line 250
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->changedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 251
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->pagedTurnedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 252
    return-void
.end method

.method public proposeFurthestReadLocation(Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;)Z
    .locals 4
    .parameter "lastPageRead"

    .prologue
    const/4 v3, 0x0

    .line 331
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->getCurrentBook()Lcom/mobipocket/common/library/reader/BookItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookItem;->getMaxPosition()I

    move-result v0

    .line 332
    .local v0, lastPosition:I
    iget v1, p1, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->position:I

    invoke-virtual {p0, v3}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->getPageLastPosition(I)I

    move-result v2

    if-le v1, v2, :cond_0

    iget v1, p1, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->position:I

    if-gt v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method
