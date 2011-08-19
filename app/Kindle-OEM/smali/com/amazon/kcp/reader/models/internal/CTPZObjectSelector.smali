.class public Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;
.super Ljava/lang/Object;
.source "CTPZObjectSelector.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/IObjectSelector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;
    }
.end annotation


# static fields
.field static SELECTION_TYPE_ACTIVE_AREA:I

.field static SELECTION_TYPE_NOTE:I

.field static SELECTION_TYPE_UNKNOWN:I


# instance fields
.field private currentSelectionType:I

.field private display:Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

.field private navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

.field private noteSelectionListener:Lcom/amazon/foundation/internal/INoteSelectionListener;

.field private selectedActiveAreaIndex:I

.field private selectedNoteIndex:I

.field private worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_UNKNOWN:I

    .line 22
    const/4 v0, 0x1

    sput v0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_ACTIVE_AREA:I

    .line 23
    const/4 v0, 0x2

    sput v0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_NOTE:I

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;)V
    .locals 1
    .parameter "navigator"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget v0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_UNKNOWN:I

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    .line 91
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->display:Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    .line 94
    return-void
.end method

.method private isNoObjectSelected()Z
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectActiveAreaFromIndexIfNoNote(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 294
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllActiveAreas()Ljava/util/ArrayList;

    move-result-object v0

    .line 295
    .local v0, activeAreas:Ljava/util/List;,"Ljava/util/List<*>;"
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllNotesAreas()Ljava/util/ArrayList;

    move-result-object v1

    .line 297
    .local v1, noteAreas:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 299
    iput p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    .line 300
    sget v2, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_ACTIVE_AREA:I

    iput v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    .line 301
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->display:Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->refreshOverlay()V

    .line 302
    const/4 v2, 0x1

    .line 305
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private selectFirstSelectableObject()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 377
    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllActiveAreas()Ljava/util/ArrayList;

    move-result-object v1

    .line 378
    .local v1, activeAreas:Ljava/util/List;,"Ljava/util/List<*>;"
    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllNotesAreas()Ljava/util/ArrayList;

    move-result-object v3

    .line 380
    .local v3, noteAreas:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 382
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;

    .line 383
    .local v0, activeArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;

    .line 385
    .local v2, noteArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;
    iget-object v5, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->positions:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;

    iget-object v6, v2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->areas:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;

    invoke-virtual {p0, v5, v6}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->compareTopazItemPosition(Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;)I

    move-result v4

    .line 387
    .local v4, result:I
    if-ne v4, v8, :cond_1

    .line 389
    iput v7, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    .line 390
    sget v5, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_NOTE:I

    iput v5, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    .line 398
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->display:Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->refreshOverlay()V

    move v5, v8

    .line 403
    .end local v0           #activeArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;
    .end local v2           #noteArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;
    .end local v4           #result:I
    :goto_1
    return v5

    .line 392
    .restart local v0       #activeArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;
    .restart local v2       #noteArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;
    .restart local v4       #result:I
    :cond_1
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 394
    iput v7, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    .line 395
    sget v5, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_ACTIVE_AREA:I

    iput v5, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    goto :goto_0

    .end local v0           #activeArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;
    .end local v2           #noteArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;
    .end local v4           #result:I
    :cond_2
    move v5, v7

    .line 403
    goto :goto_1
.end method

.method private selectLastSelectableObject()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 340
    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllActiveAreas()Ljava/util/ArrayList;

    move-result-object v1

    .line 341
    .local v1, activeAreas:Ljava/util/List;,"Ljava/util/List<*>;"
    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllNotesAreas()Ljava/util/ArrayList;

    move-result-object v3

    .line 343
    .local v3, noteAreas:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 345
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;

    .line 346
    .local v0, activeArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;

    .line 348
    .local v2, noteArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;
    iget-object v5, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->positions:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;

    iget-object v6, v2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->areas:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;

    invoke-virtual {p0, v5, v6}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->compareTopazItemPosition(Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;)I

    move-result v4

    .line 350
    .local v4, result:I
    if-ne v4, v7, :cond_1

    .line 352
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    iput v5, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    .line 353
    sget v5, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_ACTIVE_AREA:I

    iput v5, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    .line 361
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->display:Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->refreshOverlay()V

    move v5, v7

    .line 366
    .end local v0           #activeArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;
    .end local v2           #noteArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;
    .end local v4           #result:I
    :goto_1
    return v5

    .line 355
    .restart local v0       #activeArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;
    .restart local v2       #noteArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;
    .restart local v4       #result:I
    :cond_1
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 357
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    iput v5, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    .line 358
    sget v5, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_NOTE:I

    iput v5, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    goto :goto_0

    .end local v0           #activeArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;
    .end local v2           #noteArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;
    .end local v4           #result:I
    :cond_2
    move v5, v8

    .line 366
    goto :goto_1
.end method

.method private selectNoteAreaFromIndexIfNoActiveArea(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 317
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllActiveAreas()Ljava/util/ArrayList;

    move-result-object v0

    .line 318
    .local v0, activeAreas:Ljava/util/List;,"Ljava/util/List<*>;"
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllNotesAreas()Ljava/util/ArrayList;

    move-result-object v1

    .line 320
    .local v1, noteAreas:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 322
    iput p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    .line 323
    sget v2, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_NOTE:I

    iput v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    .line 324
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->display:Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->refreshOverlay()V

    .line 325
    const/4 v2, 0x1

    .line 328
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private validateIndices()V
    .locals 3

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, currentPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getNoteAreaCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getActiveAreaCount()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->reset()V

    .line 283
    :cond_2
    return-void
.end method


# virtual methods
.method public compareTopazItemPosition(Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;)I
    .locals 3
    .parameter "tpzItemPosition1"
    .parameter "tpzItemPosition2"

    .prologue
    .line 620
    const/4 v0, 0x0

    .line 623
    .local v0, ret:I
    iget-object v1, p1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v1, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget-object v2, p2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v2, v2, Lcom/amazon/system/drawing/Rectangle;->y:I

    if-ge v1, v2, :cond_1

    .line 625
    const/4 v0, -0x1

    .line 644
    :cond_0
    :goto_0
    return v0

    .line 628
    :cond_1
    iget-object v1, p1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v1, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget-object v2, p2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v2, v2, Lcom/amazon/system/drawing/Rectangle;->y:I

    if-le v1, v2, :cond_2

    .line 630
    const/4 v0, 0x1

    goto :goto_0

    .line 634
    :cond_2
    iget-object v1, p1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v1, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget-object v2, p2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v2, v2, Lcom/amazon/system/drawing/Rectangle;->x:I

    if-ge v1, v2, :cond_3

    .line 636
    const/4 v0, -0x1

    goto :goto_0

    .line 638
    :cond_3
    iget-object v1, p1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v1, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget-object v2, p2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v2, v2, Lcom/amazon/system/drawing/Rectangle;->x:I

    if-le v1, v2, :cond_0

    .line 640
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getNoteSelectionListener()Lcom/amazon/foundation/internal/INoteSelectionListener;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->noteSelectionListener:Lcom/amazon/foundation/internal/INoteSelectionListener;

    return-object v0
.end method

.method public getSelectedPositions()Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;
    .locals 6

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 578
    new-instance v1, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;-><init>(Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;)V

    .line 580
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->validateIndices()V

    .line 582
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    sget v2, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_ACTIVE_AREA:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    if-eq v0, v3, :cond_1

    .line 584
    sget v0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_ACTIVE_AREA:I

    iput v0, v1, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;->selectionType:I

    .line 585
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllActiveAreas()Ljava/util/ArrayList;

    move-result-object v0

    .line 586
    iget v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;

    .line 587
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->typeIndex:I

    iput v0, v1, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;->typeIndex:I

    move v2, v5

    .line 588
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->positions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    move v3, v5

    .line 590
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->positions:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 592
    iget-object v4, v1, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;->list:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->positions:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 588
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 596
    :cond_1
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    sget v2, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_NOTE:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    if-eq v0, v3, :cond_2

    .line 598
    sget v0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_NOTE:I

    iput v0, v1, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;->selectionType:I

    .line 599
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllNotesAreas()Ljava/util/ArrayList;

    move-result-object v0

    .line 600
    iget v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;

    .line 601
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->typeIndex:I

    iput v0, v1, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;->typeIndex:I

    move v2, v5

    .line 602
    :goto_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->areas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 604
    iget-object v3, v1, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;->list:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->areas:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 607
    :cond_2
    return-object v1
.end method

.method public hasSelectableObjects()Z
    .locals 3

    .prologue
    .line 408
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllActiveAreas()Ljava/util/ArrayList;

    move-result-object v0

    .line 409
    .local v0, activeAreas:Ljava/util/List;,"Ljava/util/List<*>;"
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllNotesAreas()Ljava/util/ArrayList;

    move-result-object v1

    .line 411
    .local v1, noteAreas:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public performAction()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 131
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->validateIndices()V

    .line 132
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    if-ne v0, v1, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    .line 136
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    sget v1, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_ACTIVE_AREA:I

    if-ne v0, v1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllActiveAreas()Ljava/util/ArrayList;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    iget v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;

    invoke-virtual {v1, p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->executeActiveArea(Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;)V

    move v0, v3

    .line 139
    goto :goto_0

    .line 141
    :cond_1
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    sget v1, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_NOTE:I

    if-ne v0, v1, :cond_2

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllNotesAreas()Ljava/util/ArrayList;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->display:Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

    iget v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;

    iget v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->index:I

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->getAnnotation(I)Lcom/amazon/kcp/reader/models/IAnnotation;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_2

    .line 147
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->noteSelectionListener:Lcom/amazon/foundation/internal/INoteSelectionListener;

    invoke-interface {v1, v0}, Lcom/amazon/foundation/internal/INoteSelectionListener;->onNoteSelection(Lcom/amazon/kcp/reader/models/IAnnotation;)V

    .line 148
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v3

    .line 152
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 560
    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    .line 561
    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    .line 562
    return-void
.end method

.method public selectAt(III)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "margin"

    .prologue
    const/4 v5, -0x1

    .line 518
    const/4 v2, 0x0

    .line 520
    .local v2, foundItem:Z
    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v1

    .line 523
    .local v1, currentPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;
    invoke-virtual {v1, p1, p2, p3}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getNoteArea(III)I

    move-result v3

    .line 524
    .local v3, noteAreaIndex:I
    if-eq v3, v5, :cond_0

    .line 527
    const/4 v2, 0x1

    .line 528
    iput v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    .line 529
    sget v4, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_NOTE:I

    iput v4, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    .line 533
    :cond_0
    if-nez v2, :cond_1

    .line 535
    invoke-virtual {v1, p1, p2, p3}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getLinkArea(III)I

    move-result v0

    .line 537
    .local v0, activeAreaIndex:I
    if-eq v0, v5, :cond_1

    .line 540
    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    .line 541
    sget v4, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_ACTIVE_AREA:I

    iput v4, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    .line 542
    const/4 v2, 0x1

    .line 547
    .end local v0           #activeAreaIndex:I
    :cond_1
    if-eqz v2, :cond_2

    .line 549
    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->display:Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->refreshOverlay()V

    .line 552
    :cond_2
    return v2
.end method

.method public selectNext()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->validateIndices()V

    .line 166
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->isNoObjectSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    invoke-direct {p0, v4}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectActiveAreaFromIndexIfNoNote(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    .line 245
    :goto_0
    return v0

    .line 172
    :cond_0
    invoke-direct {p0, v4}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectNoteAreaFromIndexIfNoActiveArea(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    .line 174
    goto :goto_0

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectFirstSelectableObject()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    .line 178
    goto :goto_0

    :cond_2
    move v0, v4

    .line 181
    goto :goto_0

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllActiveAreas()Ljava/util/ArrayList;

    move-result-object v1

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllNotesAreas()Ljava/util/ArrayList;

    move-result-object v2

    .line 188
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    if-lt v0, v3, :cond_4

    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    if-lt v0, v3, :cond_4

    move v0, v4

    .line 189
    goto :goto_0

    .line 193
    :cond_4
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    if-le v0, v6, :cond_b

    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    if-ge v0, v3, :cond_b

    .line 195
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;

    move-object v1, v0

    .line 200
    :goto_1
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    if-le v0, v6, :cond_a

    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    if-ge v0, v3, :cond_a

    .line 202
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;

    move-object v2, v0

    .line 205
    :goto_2
    if-nez v1, :cond_5

    if-nez v2, :cond_5

    move v0, v4

    .line 208
    goto :goto_0

    .line 212
    :cond_5
    if-nez v1, :cond_7

    .line 214
    sget v0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_NOTE:I

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    .line 215
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    .line 243
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->display:Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->refreshOverlay()V

    move v0, v5

    .line 245
    goto/16 :goto_0

    .line 218
    :cond_7
    if-nez v2, :cond_8

    .line 220
    sget v0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_ACTIVE_AREA:I

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    .line 221
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    goto :goto_3

    .line 226
    :cond_8
    sget v0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_UNKNOWN:I

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    .line 229
    iget-object v0, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->positions:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;

    iget-object v1, v2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->areas:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->compareTopazItemPosition(Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;)I

    move-result v0

    if-gtz v0, :cond_9

    .line 231
    sget v0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_ACTIVE_AREA:I

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    .line 232
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    .line 236
    :cond_9
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    sget v1, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_UNKNOWN:I

    if-ne v0, v1, :cond_6

    .line 238
    sget v0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_NOTE:I

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    .line 239
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    goto :goto_3

    :cond_a
    move-object v2, v7

    goto :goto_2

    :cond_b
    move-object v1, v7

    goto :goto_1
.end method

.method public selectNone()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 250
    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    .line 251
    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    .line 252
    sget v0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_UNKNOWN:I

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    .line 254
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->display:Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->refreshOverlay()V

    .line 255
    return-void
.end method

.method public selectPrevious()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 419
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->validateIndices()V

    .line 422
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->hasSelectableObjects()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v5

    .line 510
    :goto_0
    return v0

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->isNoObjectSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 428
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllActiveAreas()Ljava/util/ArrayList;

    move-result-object v1

    .line 429
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllNotesAreas()Ljava/util/ArrayList;

    move-result-object v0

    .line 431
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectActiveAreaFromIndexIfNoNote(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v4

    .line 433
    goto :goto_0

    .line 435
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectNoteAreaFromIndexIfNoActiveArea(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    .line 437
    goto :goto_0

    .line 439
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectLastSelectableObject()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    .line 441
    goto :goto_0

    :cond_3
    move v0, v5

    .line 444
    goto :goto_0

    .line 447
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllActiveAreas()Ljava/util/ArrayList;

    move-result-object v1

    .line 448
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllNotesAreas()Ljava/util/ArrayList;

    move-result-object v2

    .line 451
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    sget v3, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_ACTIVE_AREA:I

    if-ne v0, v3, :cond_6

    .line 453
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    .line 462
    :cond_5
    :goto_1
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    if-ltz v0, :cond_d

    .line 464
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedActiveAreaIndex:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;

    move-object v1, v0

    .line 469
    :goto_2
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    if-ltz v0, :cond_c

    .line 471
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;

    move-object v2, v0

    .line 474
    :goto_3
    if-nez v1, :cond_7

    if-nez v2, :cond_7

    move v0, v5

    .line 477
    goto/16 :goto_0

    .line 455
    :cond_6
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    sget v3, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_NOTE:I

    if-ne v0, v3, :cond_5

    .line 457
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->selectedNoteIndex:I

    goto :goto_1

    .line 481
    :cond_7
    if-nez v1, :cond_9

    .line 483
    sget v0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_NOTE:I

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    .line 508
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->display:Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->refreshOverlay()V

    move v0, v4

    .line 510
    goto/16 :goto_0

    .line 486
    :cond_9
    if-nez v2, :cond_a

    .line 488
    sget v0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_ACTIVE_AREA:I

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    goto :goto_4

    .line 493
    :cond_a
    sget v0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_UNKNOWN:I

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    .line 496
    iget-object v0, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->positions:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;

    iget-object v1, v2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->areas:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->compareTopazItemPosition(Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;)I

    move-result v0

    if-ltz v0, :cond_b

    .line 498
    sget v0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_ACTIVE_AREA:I

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    .line 502
    :cond_b
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    sget v1, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_UNKNOWN:I

    if-ne v0, v1, :cond_8

    .line 504
    sget v0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_NOTE:I

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->currentSelectionType:I

    goto :goto_4

    :cond_c
    move-object v2, v6

    goto :goto_3

    :cond_d
    move-object v1, v6

    goto :goto_2
.end method

.method public setDisplay(Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;)V
    .locals 0
    .parameter "display"

    .prologue
    .line 570
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->display:Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

    .line 571
    return-void
.end method

.method public setNoteSelectionListener(Lcom/amazon/foundation/internal/INoteSelectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 104
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->noteSelectionListener:Lcom/amazon/foundation/internal/INoteSelectionListener;

    .line 106
    :cond_0
    return-void
.end method

.method public setState(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)V
    .locals 0
    .parameter "worker"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    .line 124
    return-void
.end method
