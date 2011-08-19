.class public Lcom/amazon/kcp/reader/ObjectSelectionModel;
.super Ljava/lang/Object;
.source "ObjectSelectionModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;
    }
.end annotation


# static fields
.field public static final MAX_WORDS_FOR_SEARCH:I = 0xa


# instance fields
.field private annotationsManager:Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

.field private bookDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;

.field private canAnnotate:Z

.field private isShowDefinition:Z

.field private selectionAnchorElement:Lcom/amazon/kcp/reader/models/IPageElement;

.field private selectionAreaChangedEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private selectionEndpointElement:Lcom/amazon/kcp/reader/models/IPageElement;

.field private selectionStateChangedEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private state:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/models/IBookDisplay;Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;Z)V
    .locals 2
    .parameter "bookDisplay"
    .parameter "annotationsManager"
    .parameter "canAnnotate"

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionStateChangedEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 67
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionAreaChangedEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->isShowDefinition:Z

    .line 78
    iput-object v1, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/kcp/reader/models/IPageElement;

    .line 79
    iput-object v1, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/kcp/reader/models/IPageElement;

    .line 80
    iput-object p1, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->bookDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;

    .line 81
    iput-object p2, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->annotationsManager:Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionAreaChangedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 83
    iput-boolean p3, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->canAnnotate:Z

    .line 85
    sget-object v0, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->setSelectionState(Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;)V

    .line 86
    return-void
.end method

.method private assertSelecting(Z)V
    .locals 3
    .parameter "selecting"

    .prologue
    .line 485
    iget-object v1, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->state:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    sget-object v2, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->CREATING_SELECTION:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->state:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    sget-object v2, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->CHANGING_SELECTION:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 486
    .local v0, inSelection:Z
    :goto_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 488
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No selection in progress!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 485
    .end local v0           #inSelection:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 490
    .restart local v0       #inSelection:Z
    :cond_2
    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    .line 492
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attempt to start a selection when already in a selecting state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 494
    :cond_3
    return-void
.end method

.method private assertValidElement(Lcom/amazon/kcp/reader/models/IPageElement;)V
    .locals 2
    .parameter "pageElement"

    .prologue
    .line 477
    if-nez p1, :cond_0

    .line 479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must supply a valid page element!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_0
    return-void
.end method

.method private changeSelectedArea(Lcom/amazon/kcp/reader/models/IPageElement;Lcom/amazon/kcp/reader/models/IPageElement;)V
    .locals 2
    .parameter "anchorElement"
    .parameter "endpointElement"

    .prologue
    .line 500
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/kcp/reader/models/IPageElement;

    if-nez v0, :cond_5

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/kcp/reader/models/IPageElement;

    if-eqz v0, :cond_5

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/kcp/reader/models/IPageElement;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    :cond_2
    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/kcp/reader/models/IPageElement;

    if-nez v0, :cond_5

    :cond_3
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/kcp/reader/models/IPageElement;

    if-eqz v0, :cond_5

    :cond_4
    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/kcp/reader/models/IPageElement;

    if-eqz v0, :cond_6

    invoke-interface {p2}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 505
    :cond_5
    iput-object p1, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/kcp/reader/models/IPageElement;

    .line 506
    iput-object p2, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/kcp/reader/models/IPageElement;

    .line 507
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionAreaChangedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 509
    :cond_6
    return-void
.end method

.method private setSelectionState(Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->state:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    if-eq p1, v0, :cond_0

    .line 124
    iput-object p1, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->state:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    .line 125
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionStateChangedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 127
    :cond_0
    return-void
.end method

.method private startSelectionChange(Lcom/amazon/kcp/reader/models/IPageElement;Lcom/amazon/kcp/reader/models/IPageElement;)V
    .locals 2
    .parameter "selectionAnchorElement"
    .parameter "selectionEndpointElement"

    .prologue
    .line 430
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->assertValidElement(Lcom/amazon/kcp/reader/models/IPageElement;)V

    .line 431
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->state:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    sget-object v1, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    if-eq v0, v1, :cond_0

    .line 433
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must have created and ended a selection before calling this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->changeSelectedArea(Lcom/amazon/kcp/reader/models/IPageElement;Lcom/amazon/kcp/reader/models/IPageElement;)V

    .line 438
    sget-object v0, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->CHANGING_SELECTION:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->setSelectionState(Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;)V

    .line 439
    return-void
.end method

.method private trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "text"

    .prologue
    .line 298
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 313
    :goto_0
    return-object v2

    .line 303
    :cond_0
    const/4 v1, 0x0

    .line 304
    .local v1, start:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 308
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .line 309
    .local v0, end:I
    :goto_2
    if-le v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 311
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 313
    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public canAnnotate()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->canAnnotate:Z

    return v0
.end method

.method public canPerformInDocumentSearch()Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 321
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getFirstSelectedElementId()I

    move-result v0

    .line 322
    .local v0, firstSelectedId:I
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getLastSelectedElementId()I

    move-result v1

    .line 324
    .local v1, lastSelectedId:I
    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getBookDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDisplay;->getCurrentDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectedText(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public canSendTextToWebService()Z
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, ".+\\s+.+\\s+.+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public endSelection(Lcom/amazon/kcp/reader/models/IPageElement;)V
    .locals 1
    .parameter "selectedObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->assertValidElement(Lcom/amazon/kcp/reader/models/IPageElement;)V

    .line 468
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->assertSelecting(Z)V

    .line 471
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->changeSelectedArea(Lcom/amazon/kcp/reader/models/IPageElement;Lcom/amazon/kcp/reader/models/IPageElement;)V

    .line 472
    sget-object v0, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->setSelectionState(Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;)V

    .line 473
    return-void
.end method

.method public getBookDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->bookDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;

    return-object v0
.end method

.method public getCoveringRectangles()Ljava/util/Vector;
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 227
    iget-object v6, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->bookDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->bookDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;

    invoke-interface {v6}, Lcom/amazon/kcp/reader/models/IBookDisplay;->getCurrentDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;

    move-result-object v6

    if-nez v6, :cond_1

    .line 230
    :cond_0
    const/4 v6, 0x0

    .line 254
    :goto_0
    return-object v6

    .line 235
    :cond_1
    iget-object v6, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->bookDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;

    invoke-interface {v6}, Lcom/amazon/kcp/reader/models/IBookDisplay;->getCurrentDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;

    move-result-object v3

    .line 236
    .local v3, page:Lcom/amazon/kcp/reader/models/IDocumentPage;
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getFirstSelectedElementId()I

    move-result v1

    .line 237
    .local v1, firstSelectedId:I
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getLastSelectedElementId()I

    move-result v2

    .line 239
    .local v2, lastSelectedId:I
    if-eq v1, v7, :cond_2

    if-eq v2, v7, :cond_2

    .line 244
    invoke-interface {v3}, Lcom/amazon/kcp/reader/models/IDocumentPage;->getFirstElementPositionId()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 245
    .local v5, startSelectionId:I
    invoke-interface {v3}, Lcom/amazon/kcp/reader/models/IDocumentPage;->getLastElementPositionId()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 247
    .local v0, endSelectionId:I
    invoke-interface {v3, v5, v0}, Lcom/amazon/kcp/reader/models/IDocumentPage;->createCoveringRectangles(II)Ljava/util/Vector;

    move-result-object v4

    .end local v0           #endSelectionId:I
    .end local v5           #startSelectionId:I
    .local v4, selectionRectangles:Ljava/util/Vector;
    :goto_1
    move-object v6, v4

    .line 254
    goto :goto_0

    .line 251
    .end local v4           #selectionRectangles:Ljava/util/Vector;
    :cond_2
    const/4 v4, 0x0

    .restart local v4       #selectionRectangles:Ljava/util/Vector;
    goto :goto_1
.end method

.method public getFirstSelectedElement()Lcom/amazon/kcp/reader/models/IPageElement;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/kcp/reader/models/IPageElement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/kcp/reader/models/IPageElement;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/kcp/reader/models/IPageElement;

    .line 152
    :goto_0
    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/kcp/reader/models/IPageElement;

    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstSelectedElementId()I
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getFirstSelectedElement()Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v0

    .line 182
    .local v0, firstElement:Lcom/amazon/kcp/reader/models/IPageElement;
    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v1

    .line 188
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getLastSelectedElement()Lcom/amazon/kcp/reader/models/IPageElement;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/kcp/reader/models/IPageElement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/kcp/reader/models/IPageElement;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/kcp/reader/models/IPageElement;

    .line 170
    :goto_0
    return-object v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/kcp/reader/models/IPageElement;

    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastSelectedElementId()I
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getLastSelectedElement()Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v0

    .line 200
    .local v0, lastElement:Lcom/amazon/kcp/reader/models/IPageElement;
    if-eqz v0, :cond_0

    .line 202
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v1

    .line 206
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectedText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/String;
    .locals 4
    .parameter "maxWords"

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getBookDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDisplay;->getCurrentDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getFirstSelectedElementId()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getLastSelectedElementId()I

    move-result v3

    invoke-interface {v1, v2, v3, p1}, Lcom/amazon/kcp/reader/models/IDocumentPage;->createText(III)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, selectedText:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSelectionAreaChangedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionAreaChangedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getSelectionState()Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->state:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    return-object v0
.end method

.method public getSelectionStateChangedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionStateChangedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public hasSelectionOnScreen()Z
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->state:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    sget-object v1, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getFirstSelectedElementId()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->bookDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDisplay;->getCurrentDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IDocumentPage;->getLastElementPositionId()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getLastSelectedElementId()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->bookDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDisplay;->getCurrentDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IDocumentPage;->getFirstElementPositionId()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHighlightSelected()Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 337
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getFirstSelectedElementId()I

    move-result v0

    .line 338
    .local v0, firstSelectedId:I
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getLastSelectedElementId()I

    move-result v1

    .line 340
    .local v1, lastSelectedId:I
    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getBookDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDisplay;->getCurrentDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->annotationsManager:Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    invoke-interface {v2, v0, v1}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->getHighlightCoveringArea(II)Lcom/amazon/kcp/reader/models/IAnnotation;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isOnlyImageSelected()Z
    .locals 4

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getFirstSelectedElement()Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v0

    .line 352
    .local v0, firstSelected:Lcom/amazon/kcp/reader/models/IPageElement;
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getLastSelectedElement()Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v1

    .line 354
    .local v1, lastSelected:Lcom/amazon/kcp/reader/models/IPageElement;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getBookDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDisplay;->getCurrentDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v2

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    instance-of v2, v0, Lcom/amazon/kcp/reader/models/internal/ImagePageElement;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isShowDefinition()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->isShowDefinition:Z

    return v0
.end method

.method public selectNone()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 376
    invoke-direct {p0, v0, v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->changeSelectedArea(Lcom/amazon/kcp/reader/models/IPageElement;Lcom/amazon/kcp/reader/models/IPageElement;)V

    .line 377
    sget-object v0, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->setSelectionState(Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;)V

    .line 378
    return-void
.end method

.method public setShowDefinition(Z)V
    .locals 0
    .parameter "isShowDefinition"

    .prologue
    .line 537
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->isShowDefinition:Z

    .line 538
    return-void
.end method

.method public setStateCreatingAnnotation()V
    .locals 1

    .prologue
    .line 400
    sget-object v0, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->ANNOTATE_SELECTED:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->setSelectionState(Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;)V

    .line 401
    return-void
.end method

.method public startSelection(Lcom/amazon/kcp/reader/models/IPageElement;)V
    .locals 1
    .parameter "selectedObject"

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->assertValidElement(Lcom/amazon/kcp/reader/models/IPageElement;)V

    .line 387
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->assertSelecting(Z)V

    .line 390
    invoke-direct {p0, p1, p1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->changeSelectedArea(Lcom/amazon/kcp/reader/models/IPageElement;Lcom/amazon/kcp/reader/models/IPageElement;)V

    .line 391
    sget-object v0, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->CREATING_SELECTION:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->setSelectionState(Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;)V

    .line 392
    return-void
.end method

.method public startSelectionBeginChange(Lcom/amazon/kcp/reader/models/IPageElement;)V
    .locals 1
    .parameter "closestElement"

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getLastSelectedElement()Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->startSelectionChange(Lcom/amazon/kcp/reader/models/IPageElement;Lcom/amazon/kcp/reader/models/IPageElement;)V

    .line 411
    return-void
.end method

.method public startSelectionEndChange(Lcom/amazon/kcp/reader/models/IPageElement;)V
    .locals 1
    .parameter "closestElement"

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getFirstSelectedElement()Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->startSelectionChange(Lcom/amazon/kcp/reader/models/IPageElement;Lcom/amazon/kcp/reader/models/IPageElement;)V

    .line 421
    return-void
.end method

.method public updateSelectionBounds(Lcom/amazon/kcp/reader/models/IPageElement;)V
    .locals 1
    .parameter "selectedObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->assertValidElement(Lcom/amazon/kcp/reader/models/IPageElement;)V

    .line 452
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->assertSelecting(Z)V

    .line 453
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->changeSelectedArea(Lcom/amazon/kcp/reader/models/IPageElement;Lcom/amazon/kcp/reader/models/IPageElement;)V

    .line 454
    return-void
.end method
