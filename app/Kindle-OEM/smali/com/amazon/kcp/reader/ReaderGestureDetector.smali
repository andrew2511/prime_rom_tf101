.class public Lcom/amazon/kcp/reader/ReaderGestureDetector;
.super Ljava/lang/Object;
.source "ReaderGestureDetector.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ReaderGestureDetector$2;
    }
.end annotation


# static fields
.field private static final METRICS_NAME:Ljava/lang/String; = "ReaderGestureDetector"

.field private static final MIN_PAGE_FLING_HORIZ_DELTA_DIPS:I = 0x1e

.field private static final OBJECT_SELECTION_XY_MOTION_TOLERANCE:I = 0x14

.field private static final POINTER_ACTIVE_AREA_PRECISION:I = 0xf


# instance fields
.field private brightnessChanged:Z

.field private draggingSelection:Z

.field private final gestureDetector:Landroid/view/GestureDetector;

.field private hasSelectedObject:Z

.field private inMultiTouch:Z

.field private magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

.field private final objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

.field private origY:F

.field private readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field private final supportsBookmarks:Z

.field private touchY0:F

.field private touchY1:F

.field private waitingForDoubleTap:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/kcp/reader/ObjectSelectionModel;Lcom/amazon/kcp/reader/ObjectSelectionController;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->hasSelectedObject:Z

    .line 46
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    .line 47
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->inMultiTouch:Z

    .line 48
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->waitingForDoubleTap:Z

    .line 49
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->brightnessChanged:Z

    .line 82
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 86
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 88
    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionStateChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/ReaderGestureDetector$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector$1;-><init>(Lcom/amazon/kcp/reader/ReaderGestureDetector;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getCurrentPageView()Lcom/amazon/kcp/reader/ui/PageLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/PageLayout;->getObjectSelectionView()Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->setObjectSelectionModel(Lcom/amazon/kcp/reader/ObjectSelectionModel;)V

    .line 101
    invoke-virtual {v0, p3}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->setObjectSelectionController(Lcom/amazon/kcp/reader/ObjectSelectionController;)V

    .line 102
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionAreaChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v1

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionAreaChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v1, v0}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 104
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getMagnifyingGlass()Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionAreaChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getMagnifyingView()Lcom/amazon/kcp/reader/ui/MagnifyingView;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedViewChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 109
    :cond_0
    iput-boolean p4, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->supportsBookmarks:Z

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ReaderGestureDetector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->onSelectionStateChange()V

    return-void
.end method

.method private doPageTurningAnimation(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 488
    const/4 v1, 0x0

    .line 489
    .local v1, pageTurnDirection:I
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getPageTurnOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 490
    .local v0, deltaX:I
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->origY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 492
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getPageTurnOffset()I

    move-result v2

    neg-int v1, v2

    .line 495
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->turnPage(IF)V

    .line 496
    return-void
.end method

.method private executeSingleTapAction(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 233
    iput-boolean v5, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->waitingForDoubleTap:Z

    .line 236
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areAnyViewOptionOverlaysVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideAllViewOptionOverlays()Z

    .line 293
    :goto_0
    return v6

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->hasSelectionOnScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0, v5, v6}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionState()Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    if-eq v0, v1, :cond_2

    .line 246
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectNone()V

    .line 249
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getBookNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getObjectSelector()Lcom/amazon/kcp/reader/models/IObjectSelector;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IObjectSelector;->selectNone()V

    .line 250
    iput-boolean v5, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->hasSelectedObject:Z

    goto :goto_0

    .line 252
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->hasSelectedObject:Z

    if-eqz v0, :cond_3

    .line 254
    iput-boolean v5, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->hasSelectedObject:Z

    .line 255
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getBookNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getObjectSelector()Lcom/amazon/kcp/reader/models/IObjectSelector;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IObjectSelector;->performAction()I

    .line 257
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getBookNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getObjectSelector()Lcom/amazon/kcp/reader/models/IObjectSelector;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IObjectSelector;->selectNone()V

    .line 258
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->refresh()V

    goto :goto_0

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->isPointInOrientationLock(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 262
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onOrientationLockClick()V

    goto :goto_0

    .line 266
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getNavigationMarginPercent()F

    move-result v1

    mul-float/2addr v0, v1

    .line 267
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getCurrentPageView()Lcom/amazon/kcp/reader/ui/PageLayout;

    move-result-object v1

    .line 268
    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->supportsBookmarks:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 270
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/PageLayout;->getWidth()I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_6

    .line 272
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/PageLayout;->getPage()Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getAnnotationsManager()Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->toggleBookmark()V

    .line 273
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    .line 289
    :goto_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1, v0, v6}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)V

    goto/16 :goto_0

    :cond_5
    move v2, v5

    .line 268
    goto :goto_1

    .line 275
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_7

    .line 277
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ReaderGestureDetector"

    const-string v2, "PageTurnTouchTap"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v7}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->turnPage(IF)V

    move v0, v5

    goto :goto_2

    .line 280
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_8

    .line 282
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ReaderGestureDetector"

    const-string v2, "PageTurnTouchTap"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0, v6, v7}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->turnPage(IF)V

    move v0, v5

    goto :goto_2

    .line 285
    :cond_8
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v6

    .line 287
    goto :goto_2

    :cond_9
    move v0, v5

    goto :goto_2
.end method

.method private getElementAtPoint(IIZ)Lcom/amazon/kcp/reader/models/IPageElement;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 560
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getBookDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDisplay;->getCurrentDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;

    move-result-object v1

    .line 561
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getCurrentPageView()Lcom/amazon/kcp/reader/ui/PageLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/PageLayout;->getLeftMargin()I

    move-result v2

    sub-int v2, p1, v2

    .line 562
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getCurrentPageView()Lcom/amazon/kcp/reader/ui/PageLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/PageLayout;->getTopMargin()I

    move-result v3

    sub-int v3, p2, v3

    .line 563
    const/4 v4, 0x3

    .line 567
    if-eqz p3, :cond_1

    .line 569
    invoke-interface {v1, v2, v3, v4}, Lcom/amazon/kcp/reader/models/IDocumentPage;->getElementAtPoint(III)Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v1

    .line 576
    :goto_0
    if-eqz v1, :cond_0

    .line 578
    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IPageElement;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected word was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/amazon/kcp/reader/models/IWordPageElement;

    move-object p0, v0

    invoke-interface {p0}, Lcom/amazon/kcp/reader/models/IWordPageElement;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    :cond_0
    return-object v1

    .line 573
    :cond_1
    invoke-interface {v1, v2, v3, v4}, Lcom/amazon/kcp/reader/models/IDocumentPage;->getElementClosestToPoint(III)Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v1

    goto :goto_0
.end method

.method private magnifyTouchPoint(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 533
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    if-eqz v3, :cond_0

    .line 540
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getMagnifyingView()Lcom/amazon/kcp/reader/ui/MagnifyingView;

    move-result-object v1

    .line 541
    .local v1, magnifyingView:Lcom/amazon/kcp/reader/ui/MagnifyingView;
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getMagnifiedView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getMagnification()F

    move-result v5

    div-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float v2, v3, v4

    .line 542
    .local v2, maxY:F
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 544
    .local v0, magPoint:Landroid/graphics/PointF;
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getMagnifyingView()Lcom/amazon/kcp/reader/ui/MagnifyingView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->setMagnifiedCenterPoint(Landroid/graphics/PointF;)V

    .line 545
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->requestLayout()V

    .line 547
    .end local v0           #magPoint:Landroid/graphics/PointF;
    .end local v1           #magnifyingView:Lcom/amazon/kcp/reader/ui/MagnifyingView;
    .end local v2           #maxY:F
    :cond_0
    return-void
.end method

.method private onSelectionStateChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 504
    sget-object v0, Lcom/amazon/kcp/reader/ReaderGestureDetector$2;->$SwitchMap$com$amazon$kcp$reader$ObjectSelectionModel$SelectionState:[I

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionState()Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 509
    :pswitch_0
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    .line 510
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->setVisibility(I)V

    goto :goto_0

    .line 517
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    .line 518
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->setVisibility(I)V

    goto :goto_0

    .line 504
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 178
    iput-boolean v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->waitingForDoubleTap:Z

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1, v5}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getElementAtPoint(IIZ)Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v1

    .line 182
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IPageElement;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 187
    check-cast v1, Lcom/amazon/kcp/reader/models/internal/ImagePageElement;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/ImagePageElement;->getImageId()I

    move-result v1

    .line 188
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/amazon/kcp/reader/ImageZoomActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    const-string v3, "image_position_id_index"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v3, "ImageZoomActivity"

    const-string v4, "ImageZoomLaunchViaDoubleTap"

    invoke-virtual {v1, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectNone()V

    move v0, v5

    .line 197
    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    .line 116
    iget-object v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v7}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areAnyViewOptionOverlaysVisible()Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v9

    .line 156
    :goto_0
    return v7

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->origY:F

    .line 124
    iget-object v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v7}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionState()Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    move-result-object v7

    sget-object v8, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    if-ne v7, v8, :cond_3

    .line 126
    iget-object v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v7}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getCurrentPageView()Lcom/amazon/kcp/reader/ui/PageLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/kcp/reader/ui/PageLayout;->getObjectSelectionView()Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    move-result-object v3

    .line 128
    .local v3, objSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 129
    .local v5, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 130
    .local v6, y:I
    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getElementAtPoint(IIZ)Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v2

    .line 131
    .local v2, closestElement:Lcom/amazon/kcp/reader/models/IPageElement;
    invoke-virtual {v3, v5, v6}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->pointIsInStartHandle(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 133
    iget-object v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v7, v2}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->startSelectionBeginChange(Lcom/amazon/kcp/reader/models/IPageElement;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->magnifyTouchPoint(Landroid/view/MotionEvent;)V

    .end local v2           #closestElement:Lcom/amazon/kcp/reader/models/IPageElement;
    .end local v3           #objSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_1
    :goto_1
    move v7, v9

    .line 156
    goto :goto_0

    .line 136
    .restart local v2       #closestElement:Lcom/amazon/kcp/reader/models/IPageElement;
    .restart local v3       #objSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;
    .restart local v5       #x:I
    .restart local v6       #y:I
    :cond_2
    invoke-virtual {v3, v5, v6}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->pointIsInEndHandle(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 138
    iget-object v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v7, v2}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->startSelectionEndChange(Lcom/amazon/kcp/reader/models/IPageElement;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->magnifyTouchPoint(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 145
    .end local v2           #closestElement:Lcom/amazon/kcp/reader/models/IPageElement;
    .end local v3           #objSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_3
    iget-object v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v7}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getBookNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getObjectSelector()Lcom/amazon/kcp/reader/models/IObjectSelector;

    move-result-object v4

    .line 146
    .local v4, objectSelector:Lcom/amazon/kcp/reader/models/IObjectSelector;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v8}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getCurrentPageView()Lcom/amazon/kcp/reader/ui/PageLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazon/kcp/reader/ui/PageLayout;->getLeftMargin()I

    move-result v8

    sub-int v0, v7, v8

    .line 147
    .local v0, adjustedX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v8}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getCurrentPageView()Lcom/amazon/kcp/reader/ui/PageLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazon/kcp/reader/ui/PageLayout;->getTopMargin()I

    move-result v8

    sub-int v1, v7, v8

    .line 148
    .local v1, adjustedY:I
    iget-object v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v7}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x4170

    invoke-static {v7, v8}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v7

    invoke-interface {v4, v0, v1, v7}, Lcom/amazon/kcp/reader/models/IObjectSelector;->selectAt(III)Z

    move-result v7

    iput-boolean v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->hasSelectedObject:Z

    .line 150
    iget-boolean v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->hasSelectedObject:Z

    if-eqz v7, :cond_1

    .line 152
    iget-object v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v7}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->refresh()V

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 390
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    if-eqz v0, :cond_0

    move v0, v4

    .line 436
    :goto_0
    return v0

    .line 396
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->hasSelectedObject:Z

    if-nez v0, :cond_2

    .line 399
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 400
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 403
    if-gt v1, v0, :cond_1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41f0

    invoke-static {v2, v3}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 406
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring fling event because dx is too small or dy>dx; dx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", dy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v4

    .line 434
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1, v0, p3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->turnPage(IF)V

    :cond_2
    move v0, v5

    .line 436
    goto :goto_0

    .line 408
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getPageTurnOffset()I

    move-result v0

    if-nez v0, :cond_5

    .line 411
    cmpl-float v0, p3, v6

    if-lez v0, :cond_4

    move v0, v7

    .line 412
    :goto_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1, v4, v5}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)V

    .line 413
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideAllViewOptionOverlays()Z

    goto :goto_1

    :cond_4
    move v0, v5

    .line 411
    goto :goto_2

    .line 417
    :cond_5
    cmpl-float v0, p3, v6

    if-lez v0, :cond_6

    move v0, v5

    :goto_3
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getPageTurnOffset()I

    move-result v1

    if-lez v1, :cond_7

    move v1, v5

    :goto_4
    if-eq v0, v1, :cond_8

    move v0, v4

    .line 421
    goto :goto_1

    :cond_6
    move v0, v4

    .line 417
    goto :goto_3

    :cond_7
    move v1, v4

    goto :goto_4

    .line 423
    :cond_8
    cmpl-float v0, p3, v6

    if-lez v0, :cond_9

    .line 426
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ReaderGestureDetector"

    const-string v2, "PageTurnTouchFling"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    goto :goto_1

    .line 431
    :cond_9
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ReaderGestureDetector"

    const-string v2, "PageTurnTouchFling"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 300
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areAnyViewOptionOverlaysVisible()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->inMultiTouch:Z

    if-eqz v1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getBookNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getObjectSelector()Lcom/amazon/kcp/reader/models/IObjectSelector;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IObjectSelector;->selectNone()V

    .line 310
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)V

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getElementAtPoint(IIZ)Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v0

    .line 315
    .local v0, selectedObject:Lcom/amazon/kcp/reader/models/IPageElement;
    if-eqz v0, :cond_0

    .line 317
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->startSelection(Lcom/amazon/kcp/reader/models/IPageElement;)V

    .line 318
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->magnifyTouchPoint(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x41a0

    const/4 v2, 0x0

    .line 325
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 384
    :goto_0
    return v0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areAnyViewOptionOverlaysVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideAllViewOptionOverlays()Z

    move v0, v2

    .line 336
    goto :goto_0

    .line 340
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->hasSelectedObject:Z

    if-eqz v0, :cond_4

    .line 345
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getBookNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getObjectSelector()Lcom/amazon/kcp/reader/models/IObjectSelector;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IObjectSelector;->selectNone()V

    .line 350
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->hasSelectedObject:Z

    .line 351
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->refresh()V

    :cond_3
    :goto_1
    move v0, v4

    .line 384
    goto :goto_0

    .line 356
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->isPageTurnInteractionDisabled()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 358
    goto :goto_0

    .line 362
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 363
    if-lez v0, :cond_6

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getBookNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookNavigator;->isPreviousPageAvailable()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    if-gez v0, :cond_8

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getBookNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookNavigator;->isNextPageAvailable()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    move v0, v2

    .line 370
    :cond_8
    if-eqz v0, :cond_9

    .line 372
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1, v2, v4}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)V

    .line 373
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideAllViewOptionOverlays()Z

    .line 377
    :cond_9
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getPageTurnOffset()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 379
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setPageTurnOffset(I)V

    .line 380
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->requestLayout()V

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 163
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->waitingForDoubleTap:Z

    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->executeSingleTapAction(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 207
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 213
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areAnyViewOptionOverlaysVisible()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->hasSelectedObject:Z

    if-nez v1, :cond_0

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getElementAtPoint(IIZ)Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v0

    .line 220
    .local v0, selectedObject:Lcom/amazon/kcp/reader/models/IPageElement;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IPageElement;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 223
    iput-boolean v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->waitingForDoubleTap:Z

    .line 224
    const/4 v1, 0x0

    .line 228
    .end local v0           #selectedObject:Lcom/amazon/kcp/reader/models/IPageElement;
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->executeSingleTapAction(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    .line 593
    iget-object v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v7}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v6

    .line 596
    .local v6, settings:Lcom/amazon/kcp/application/SettingsController;
    invoke-virtual {v6}, Lcom/amazon/kcp/application/SettingsController;->isSystemUsingAutoBrightness()Z

    move-result v7

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    if-eqz v7, :cond_1

    .line 599
    :cond_0
    const/4 v7, 0x0

    .line 672
    :goto_0
    return v7

    .line 602
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    packed-switch v7, :pswitch_data_0

    .line 672
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v7, 0x0

    goto :goto_0

    .line 610
    :pswitch_1
    const/4 v7, 0x0

    invoke-static {p2, v7}, Lcom/amazon/android/system/io/PointerLocationReflect;->getY(Landroid/view/MotionEvent;I)F

    move-result v7

    iput v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->touchY0:F

    .line 611
    const/4 v7, 0x1

    invoke-static {p2, v7}, Lcom/amazon/android/system/io/PointerLocationReflect;->getY(Landroid/view/MotionEvent;I)F

    move-result v7

    iput v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->touchY1:F

    goto :goto_1

    .line 616
    :pswitch_2
    iget-boolean v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->inMultiTouch:Z

    if-eqz v7, :cond_2

    .line 618
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->inMultiTouch:Z

    .line 619
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->doPageTurningAnimation(Landroid/view/MotionEvent;)V

    .line 620
    const/4 v7, 0x1

    goto :goto_0

    .line 626
    :pswitch_3
    iget-boolean v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->brightnessChanged:Z

    if-eqz v7, :cond_2

    .line 628
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v7

    const-string v8, "ReaderGestureDetector"

    const-string v9, "ScreenBrightnessChanged"

    invoke-virtual {v7, v8, v9}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->brightnessChanged:Z

    goto :goto_1

    .line 635
    :pswitch_4
    const/4 v4, 0x0

    .line 637
    .local v4, handled:Z
    invoke-static {p2}, Lcom/amazon/android/system/io/PointerCountReflect;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v7}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areAnyViewOptionOverlaysVisible()Z

    move-result v7

    if-nez v7, :cond_6

    .line 640
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->inMultiTouch:Z

    .line 641
    const/4 v7, 0x0

    invoke-static {p2, v7}, Lcom/amazon/android/system/io/PointerLocationReflect;->getY(Landroid/view/MotionEvent;I)F

    move-result v7

    iget v8, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->touchY0:F

    sub-float v2, v7, v8

    .line 642
    .local v2, deltaY0:F
    const/4 v7, 0x1

    invoke-static {p2, v7}, Lcom/amazon/android/system/io/PointerLocationReflect;->getY(Landroid/view/MotionEvent;I)F

    move-result v7

    iget v8, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->touchY1:F

    sub-float v3, v7, v8

    .line 645
    .local v3, deltaY1:F
    const/4 v7, 0x0

    cmpg-float v7, v2, v7

    if-gez v7, :cond_3

    const/4 v7, 0x0

    cmpg-float v7, v3, v7

    if-ltz v7, :cond_4

    :cond_3
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_5

    const/4 v7, 0x0

    cmpl-float v7, v3, v7

    if-lez v7, :cond_5

    .line 648
    :cond_4
    add-float v7, v2, v3

    const/high16 v8, 0x4000

    div-float v0, v7, v8

    .line 649
    .local v0, avgDelta:F
    invoke-virtual {v6}, Lcom/amazon/kcp/application/SettingsController;->getScreenBrightness()F

    move-result v1

    .line 653
    .local v1, currentBrightness:F
    const v7, 0x3dcccccd

    const/high16 v8, 0x3f80

    neg-float v9, v0

    const v10, 0x3f666666

    iget-object v11, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v11}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    div-float/2addr v9, v10

    add-float/2addr v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 655
    .local v5, newBrightness:F
    invoke-virtual {v6, v5}, Lcom/amazon/kcp/application/SettingsController;->setScreenBrightness(F)V

    .line 656
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->brightnessChanged:Z

    .line 657
    const/4 v4, 0x1

    .line 661
    .end local v0           #avgDelta:F
    .end local v1           #currentBrightness:F
    .end local v5           #newBrightness:F
    :cond_5
    const/4 v7, 0x0

    invoke-static {p2, v7}, Lcom/amazon/android/system/io/PointerLocationReflect;->getY(Landroid/view/MotionEvent;I)F

    move-result v7

    iput v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->touchY0:F

    .line 662
    const/4 v7, 0x1

    invoke-static {p2, v7}, Lcom/amazon/android/system/io/PointerLocationReflect;->getY(Landroid/view/MotionEvent;I)F

    move-result v7

    iput v7, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->touchY1:F

    .line 665
    .end local v2           #deltaY0:F
    .end local v3           #deltaY1:F
    :cond_6
    if-eqz v4, :cond_2

    .line 667
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 447
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 450
    .local v0, handled:Z
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    if-eqz v2, :cond_2

    .line 452
    const/4 v0, 0x1

    .line 455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getElementAtPoint(IIZ)Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v1

    .line 458
    .local v1, selectedObject:Lcom/amazon/kcp/reader/models/IPageElement;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 460
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v2, v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->endSelection(Lcom/amazon/kcp/reader/models/IPageElement;)V

    .line 478
    .end local v1           #selectedObject:Lcom/amazon/kcp/reader/models/IPageElement;
    :cond_0
    :goto_0
    return v0

    .line 464
    .restart local v1       #selectedObject:Lcom/amazon/kcp/reader/models/IPageElement;
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v2, v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->updateSelectionBounds(Lcom/amazon/kcp/reader/models/IPageElement;)V

    .line 465
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->magnifyTouchPoint(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 468
    .end local v1           #selectedObject:Lcom/amazon/kcp/reader/models/IPageElement;
    :cond_2
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getPageTurnOffset()I

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->doPageTurningAnimation(Landroid/view/MotionEvent;)V

    .line 476
    const/4 v0, 0x1

    goto :goto_0
.end method
