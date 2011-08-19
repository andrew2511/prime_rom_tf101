.class public abstract Lcom/amazon/kcp/reader/ui/ReaderLayout;
.super Landroid/widget/FrameLayout;
.source "ReaderLayout.java"

# interfaces
.implements Lcom/amazon/foundation/internal/INoteSelectionListener;
.implements Lcom/amazon/kcp/redding/ReddingActivity$OnActionBarVisibilityChangedListener;
.implements Lcom/mobipocket/common/library/reader/ApplicationCommands;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/ReaderLayout$13;
    }
.end annotation


# static fields
.field private static final DEFAULT_PAGE_TURN_TIME:J = 0xfaL

.field private static final MAX_PAGE_TURN_TIME:J = 0x258L

.field private static final METRICS_NAME:Ljava/lang/String; = "ReaderLayout"

.field private static final MIN_PAGE_TURN_TIME:J = 0x64L

.field private static final ORIENTATION_LOCK_TIME:J = 0xbb8L

.field protected static final OVERLAY_FLASH_TIME:J = 0x7d0L

.field public static final OVERLAY_LOCATION:I = 0x4

.field public static final OVERLAY_NONE:I = 0x0

.field public static final OVERLAY_STATUSBAR:I = 0x1

.field public static final OVERLAY_TITLE:I = 0x3

.field private static final TABLE_X_PRECISION:I = 0x19


# instance fields
.field protected activity:Lcom/amazon/kcp/reader/ReaderActivity;

.field protected belowStatusBarHeight:I

.field private bottomAddedMargin:I

.field private brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

.field private buySampleCallBack:Lcom/amazon/foundation/ICallback;

.field private currentAnimation:Lcom/amazon/kcp/reader/ui/TranslateXAnimator;

.field protected final currentPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

.field private doneInitialDraw:Z

.field private forceRefreshCallback:Lcom/amazon/foundation/ICallback;

.field private final hideOrientationLockHandler:Landroid/os/Handler;

.field private final hideOrientationLockRunnable:Ljava/lang/Runnable;

.field protected hideOverlaysHandler:Landroid/os/Handler;

.field protected hideOverlaysRunnable:Ljava/lang/Runnable;

.field private horizontalAddedMargin:I

.field private initalLocation:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

.field private isPageTurnInteractionDisabled:Z

.field private magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

.field private navigationMarginPercent:F

.field private objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

.field private orientationLockClickListener:Landroid/view/View$OnClickListener;

.field private orientationLockContainer:Landroid/view/View;

.field private orientationLockView:Landroid/widget/ImageView;

.field private orientationLockVisible:Z

.field protected page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

.field private pageTurnAnimationDirection:I

.field private pageTurnOffset:I

.field private pagesContainer:Landroid/view/ViewGroup;

.field private positionChangedCallback:Lcom/amazon/foundation/ICallback;

.field private readerGestureDetector:Lcom/amazon/kcp/reader/ReaderGestureDetector;

.field private showDetailsCallBack:Lcom/amazon/foundation/ICallback;

.field protected statusBarHeight:I

.field private tableLeftImage:Landroid/graphics/Bitmap;

.field private tableRightImage:Landroid/graphics/Bitmap;

.field private textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

.field private topAddedMargin:I

.field private final transitionPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

.field private viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

.field protected visibleOverlays:I

.field protected window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->doneInitialDraw:Z

    .line 145
    sget-object v0, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->DEFAULT:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->initalLocation:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOrientationLockHandler:Landroid/os/Handler;

    .line 154
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$1;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOrientationLockRunnable:Ljava/lang/Runnable;

    .line 179
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$2;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->forceRefreshCallback:Lcom/amazon/foundation/ICallback;

    .line 188
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$3;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->buySampleCallBack:Lcom/amazon/foundation/ICallback;

    .line 198
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$4;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->showDetailsCallBack:Lcom/amazon/foundation/ICallback;

    .line 207
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$5;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->positionChangedCallback:Lcom/amazon/foundation/ICallback;

    .line 225
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->newPageLayout()Lcom/amazon/kcp/reader/ui/PageLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    .line 226
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->newPageLayout()Lcom/amazon/kcp/reader/ui/PageLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->transitionPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    .line 227
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->showBookBuyPage()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->showBookDetails()V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOrientationLockAfterDelay()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ui/ReaderLayout;)Lcom/amazon/kcp/reader/ObjectSelectionModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/ui/ReaderLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->doneInitialDraw:Z

    return v0
.end method

.method static synthetic access$302(Lcom/amazon/kcp/reader/ui/ReaderLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->doneInitialDraw:Z

    return p1
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/ui/ReaderLayout;)Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->initalLocation:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->moveToLocation(Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/kcp/reader/ui/ReaderLayout;)Lcom/amazon/kcp/reader/ui/PageLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->transitionPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/reader/ui/ReaderLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnAnimationDirection:I

    return v0
.end method

.method static synthetic access$802(Lcom/amazon/kcp/reader/ui/ReaderLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->isPageTurnInteractionDisabled:Z

    return p1
.end method

.method static synthetic access$902(Lcom/amazon/kcp/reader/ui/ReaderLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnOffset:I

    return p1
.end method

.method private animatePageTurn(F)Z
    .locals 11
    .parameter

    .prologue
    const-wide/16 v6, 0x258

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 617
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->isPageTurnInteractionDisabled:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnAnimationDirection:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnOffset:I

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnAnimationDirection:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->isPreviousPageAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnAnimationDirection:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->isNextPageAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v9

    .line 735
    :goto_0
    return v0

    .line 626
    :cond_3
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnAnimationDirection:I

    if-nez v0, :cond_5

    .line 628
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnOffset:I

    neg-int v0, v0

    move v1, v0

    .line 641
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 642
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_8

    .line 645
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 649
    iget v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnOffset:I

    if-nez v2, :cond_7

    const-wide/16 v2, 0xfa

    :goto_2
    move-object v4, v0

    .line 657
    :goto_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pagesContainer:Landroid/view/ViewGroup;

    new-instance v5, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;

    new-instance v6, Lcom/amazon/kcp/reader/ui/ReaderLayout$7;

    invoke-direct {v6, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$7;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    new-instance v7, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;

    invoke-direct {v7, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-direct {v5, v6, v10, v7}, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/reader/ui/TranslateXAnimatorFactory;->createAnimation(Landroid/view/View;IJLandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)Lcom/amazon/kcp/reader/ui/TranslateXAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentAnimation:Lcom/amazon/kcp/reader/ui/TranslateXAnimator;

    .line 723
    iput-boolean v8, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->isPageTurnInteractionDisabled:Z

    .line 724
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

    if-eqz v0, :cond_9

    .line 726
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ViewOptions;->hide()Z

    .line 733
    :cond_4
    :goto_4
    invoke-virtual {p0, v9, v8}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)V

    .line 734
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->requestLayout()V

    move v0, v8

    .line 735
    goto :goto_0

    .line 630
    :cond_5
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnAnimationDirection:I

    if-gez v0, :cond_6

    .line 632
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnOffset:I

    sub-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 636
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnOffset:I

    sub-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_7
    move-wide v2, v6

    .line 649
    goto :goto_2

    .line 654
    :cond_8
    const-wide/16 v2, 0x64

    int-to-float v4, v1

    div-float v0, v4, v0

    float-to-long v4, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object v4, v10

    goto :goto_3

    .line 728
    :cond_9
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    if-eqz v0, :cond_4

    .line 730
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->hide()Z

    .line 731
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;->hide()Z

    goto :goto_4
.end method

.method private animateToNextPage()Z
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnAnimationDirection:I

    .line 600
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->animatePageTurn(F)Z

    move-result v0

    return v0
.end method

.method private animateToPrevPage()Z
    .locals 1

    .prologue
    .line 605
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnAnimationDirection:I

    .line 606
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->animatePageTurn(F)Z

    move-result v0

    return v0
.end method

.method private displayNotePopup(Lcom/amazon/kcp/reader/models/IAnnotation;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1080
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00ef

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IAnnotation;->getUserLocation()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1082
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1084
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1085
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1086
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IAnnotation;->getUserText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1087
    const v0, 0x7f0b0008

    new-instance v2, Lcom/amazon/kcp/reader/ui/ReaderLayout$10;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout$10;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/kcp/reader/models/IAnnotation;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1105
    const v0, 0x7f0b0009

    new-instance v2, Lcom/amazon/kcp/reader/ui/ReaderLayout$11;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout$11;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/kcp/reader/models/IAnnotation;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1117
    const v0, 0x7f0b0007

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1118
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1119
    return-void
.end method

.method private getTableLeftImage()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->tableLeftImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1211
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->tableLeftImage:Landroid/graphics/Bitmap;

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->tableLeftImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getTableRightImage()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->tableRightImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1220
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->tableRightImage:Landroid/graphics/Bitmap;

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->tableRightImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private hideOrientationLockAfterDelay()V
    .locals 4

    .prologue
    .line 1018
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockVisible:Z

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOrientationLockHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOrientationLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1021
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOrientationLockHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOrientationLockRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1023
    :cond_0
    return-void
.end method

.method private layoutPages(I)V
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v5, 0x0

    .line 574
    if-nez p1, :cond_0

    .line 576
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pagesContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getBottom()I

    move-result v3

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 577
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getBottom()I

    move-result v3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/amazon/kcp/reader/ui/PageLayout;->layout(IIII)V

    .line 578
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->transitionPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getBottom()I

    move-result v3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/amazon/kcp/reader/ui/PageLayout;->layout(IIII)V

    .line 579
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->transitionPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    invoke-virtual {v0, v5}, Lcom/amazon/kcp/reader/ui/PageLayout;->setPageShift(I)V

    .line 595
    :goto_0
    return-void

    .line 581
    :cond_0
    if-gez p1, :cond_1

    .line 583
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pagesContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnOffset:I

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getTop()I

    move-result v2

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnOffset:I

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 584
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/reader/ui/PageLayout;->layout(IIII)V

    .line 585
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->transitionPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getBottom()I

    move-result v3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/amazon/kcp/reader/ui/PageLayout;->layout(IIII)V

    .line 586
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->transitionPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/PageLayout;->setPageShift(I)V

    goto :goto_0

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pagesContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnOffset:I

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getTop()I

    move-result v2

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnOffset:I

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 591
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getBottom()I

    move-result v3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/amazon/kcp/reader/ui/PageLayout;->layout(IIII)V

    .line 592
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->transitionPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/reader/ui/PageLayout;->layout(IIII)V

    .line 593
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->transitionPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/PageLayout;->setPageShift(I)V

    goto/16 :goto_0
.end method

.method private moveToLocation(Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;)V
    .locals 2
    .parameter

    .prologue
    .line 468
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$13;->$SwitchMap$com$amazon$kcp$reader$IAndroidReaderController$StartPage:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 472
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getServerLastPageRead()Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_0

    .line 475
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v1

    iget v0, v0, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->position:I

    invoke-interface {v1, v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->gotoPosition(I)V

    goto :goto_0

    .line 479
    :pswitch_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->gotoStartReadingPosition()V

    goto :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showBookBuyPage()V
    .locals 2

    .prologue
    .line 1128
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/store/IWebStoreController;->showBuyPage(Ljava/lang/String;)V

    .line 1129
    return-void
.end method

.method private showBookDetails()V
    .locals 2

    .prologue
    .line 1123
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/store/IWebStoreController;->showDetailPage(Ljava/lang/String;)V

    .line 1124
    return-void
.end method

.method private updateOrientationLockImage()V
    .locals 3

    .prologue
    .line 1031
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v1

    .line 1033
    .local v1, settings:Lcom/amazon/kcp/application/SettingsController;
    invoke-virtual {v1}, Lcom/amazon/kcp/application/SettingsController;->getOrientation()I

    move-result v2

    if-nez v2, :cond_1

    .line 1035
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->getDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDisplay;->getColorMode()Lcom/amazon/kcp/reader/models/ColorMode;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getRotationUnlockedResId()I

    move-result v0

    .line 1041
    .local v0, resourceId:I
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 1043
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1045
    :cond_0
    return-void

    .line 1039
    .end local v0           #resourceId:I
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->getDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDisplay;->getColorMode()Lcom/amazon/kcp/reader/models/ColorMode;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getRotationLockedResId()I

    move-result v0

    .restart local v0       #resourceId:I
    goto :goto_0
.end method


# virtual methods
.method public areAnyViewOptionOverlaysVisible()Z
    .locals 1

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->isViewOptionsVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->isTextSizeOptionsVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->isBrighnessAndColorsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public areOverlaysVisible()Z
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->window:Landroid/view/Window;

    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->isStatusBarVisible(Landroid/view/Window;)Z

    move-result v0

    return v0
.end method

.method public buyBook(Lcom/mobipocket/common/library/reader/BookItem;Ljava/lang/String;)V
    .locals 0
    .parameter "book"
    .parameter "fallBackURL"

    .prologue
    .line 1136
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->showBookBuyPage()V

    .line 1137
    return-void
.end method

.method public cancelHideOverlaysAfterDelay()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1413
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1416
    iput-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysHandler:Landroid/os/Handler;

    .line 1417
    iput-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysRunnable:Ljava/lang/Runnable;

    .line 1419
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 407
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 410
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->doneInitialDraw:Z

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 440
    :cond_0
    return-void
.end method

.method public drawTableNavigation(Lcom/amazon/system/drawing/Graphics;IZ)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1143
    new-instance v0, Lcom/amazon/system/drawing/Point;

    invoke-direct {v0}, Lcom/amazon/system/drawing/Point;-><init>()V

    .line 1146
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 1148
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getTableLeftImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1149
    iput v7, v0, Lcom/amazon/system/drawing/Point;->x:I

    .line 1163
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->topAddedMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->bottomAddedMargin:I

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/amazon/system/drawing/Point;->y:I

    .line 1167
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1168
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1171
    new-instance v3, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    new-instance v4, Lcom/amazon/system/drawing/Dimension;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/amazon/system/drawing/Dimension;-><init>(II)V

    invoke-direct {v3, v2, v4}, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;-><init>([BLcom/amazon/system/drawing/Dimension;)V

    iget v2, v0, Lcom/amazon/system/drawing/Point;->x:I

    iget v4, v0, Lcom/amazon/system/drawing/Point;->y:I

    invoke-interface {p1, v3, v2, v4}, Lcom/amazon/system/drawing/Graphics;->drawImage(Lcom/amazon/system/drawing/Image;II)V

    .line 1172
    if-eqz p3, :cond_0

    .line 1174
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->topAddedMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->bottomAddedMargin:I

    sub-int/2addr v2, v3

    .line 1176
    iget v0, v0, Lcom/amazon/system/drawing/Point;->x:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-interface {p1, v0, v7, v1, v2}, Lcom/amazon/system/drawing/Graphics;->invert(IIII)V

    .line 1178
    :cond_0
    return-void

    .line 1151
    :cond_1
    if-nez p2, :cond_0

    .line 1153
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getTableRightImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1154
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->horizontalAddedMargin:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/amazon/system/drawing/Point;->x:I

    goto :goto_0
.end method

.method protected flashOverlays()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->window:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/android/util/UIUtils;->setStatusBarVisible(Landroid/view/Window;Z)V

    .line 530
    return-void
.end method

.method public getBookNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPageView()Lcom/amazon/kcp/reader/ui/PageLayout;
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    return-object v0
.end method

.method public getMagnifyingGlass()Lcom/amazon/kcp/reader/ui/MagnifyingGlass;
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    return-object v0
.end method

.method public getNavigationMarginPercent()F
    .locals 1

    .prologue
    .line 1446
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->navigationMarginPercent:F

    return v0
.end method

.method public getPageTurnOffset()I
    .locals 1

    .prologue
    .line 1312
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnOffset:I

    return v0
.end method

.method public getVisibleOverlays()I
    .locals 1

    .prologue
    .line 1428
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    return v0
.end method

.method public hideAllViewOptionOverlays()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 947
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setViewOptionsVisible(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setFontSizeViewOptionsVisible(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setBrightnessTextColorViewOptionsVisible(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public hideOverlaysAfterDelay(J)V
    .locals 2
    .parameter

    .prologue
    .line 1395
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->cancelHideOverlaysAfterDelay()V

    .line 1396
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$12;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$12;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysRunnable:Ljava/lang/Runnable;

    .line 1404
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysHandler:Landroid/os/Handler;

    .line 1405
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1406
    return-void
.end method

.method protected initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 6
    .parameter "activity"

    .prologue
    const/4 v5, 0x0

    .line 235
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->window:Landroid/view/Window;

    .line 237
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getObjectSelectionModel()Lcom/amazon/kcp/reader/ObjectSelectionModel;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    .line 238
    new-instance v1, Lcom/amazon/kcp/reader/ReaderGestureDetector;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getObjectSelectionController()Lcom/amazon/kcp/reader/ObjectSelectionController;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->supportsBookmarks()Z

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/amazon/kcp/reader/ReaderGestureDetector;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/kcp/reader/ObjectSelectionModel;Lcom/amazon/kcp/reader/ObjectSelectionController;Z)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerGestureDetector:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    .line 239
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerGestureDetector:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 240
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 241
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    iput v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->navigationMarginPercent:F

    .line 243
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 244
    .local v0, settings:Lcom/amazon/kcp/application/SettingsController;
    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getColorMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->updateExtraUiForColorMode(I)V

    .line 246
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v5}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)V

    .line 247
    invoke-virtual {p0, v5, v5}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOrientationLockTemporarilyVisible(ZZ)V

    .line 248
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->flashOverlays()V

    .line 249
    return-void
.end method

.method public isBrighnessAndColorsViewVisible()Z
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;->isShown()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPageTurnInteractionDisabled()Z
    .locals 1

    .prologue
    .line 1303
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->isPageTurnInteractionDisabled:Z

    return v0
.end method

.method public isPointInOrientationLock(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1358
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockContainer:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1360
    const/4 v1, 0x0

    .line 1368
    :goto_0
    return v1

    .line 1363
    :cond_0
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 1368
    .local v0, lockLayout:Lcom/amazon/system/drawing/Rectangle;
    invoke-virtual {v0, p1, p2}, Lcom/amazon/system/drawing/Rectangle;->contains(II)Z

    move-result v1

    goto :goto_0
.end method

.method public isTextSizeOptionsVisible()Z
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->isShown()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewOptionsVisible()Z
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ViewOptions;->isShown()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makePhoneCall(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneNumber"

    .prologue
    .line 1229
    return-void
.end method

.method protected abstract newPageLayout()Lcom/amazon/kcp/reader/ui/PageLayout;
.end method

.method public onActionBarVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1435
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    .prologue
    .line 1378
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->isViewOptionsVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1380
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ViewOptions;->updateOptions()V

    .line 1386
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->isBrighnessAndColorsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;->updateOptions()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 299
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 302
    const v1, 0x7f0c00a6

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pagesContainer:Landroid/view/ViewGroup;

    .line 303
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 304
    .local v0, pageLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pagesContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->transitionPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pagesContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    const v1, 0x7f0c00aa

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/ViewOptions;

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

    .line 309
    const v1, 0x7f0c00ab

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    .line 310
    const v1, 0x7f0c003c

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    .line 312
    const v1, 0x7f0c00a7

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    .line 313
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getMagnifyingView()Lcom/amazon/kcp/reader/ui/MagnifyingView;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->setMagnifiedView(Landroid/view/View;)V

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->topAddedMargin:I

    .line 320
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->bottomAddedMargin:I

    .line 325
    const v1, 0x7f0c00a9

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockView:Landroid/widget/ImageView;

    .line 326
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 328
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockVisible:Z

    .line 333
    :cond_1
    const v1, 0x7f0c00a8

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockContainer:Landroid/view/View;

    .line 334
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 750
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 751
    const/4 v1, 0x1

    .line 752
    sparse-switch p1, :sswitch_data_0

    move v0, v2

    .line 824
    :goto_0
    return v0

    .line 755
    :sswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getObjectSelector()Lcom/amazon/kcp/reader/models/IObjectSelector;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IObjectSelector;->selectNext()Z

    move v0, v1

    .line 756
    goto :goto_0

    .line 759
    :sswitch_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getObjectSelector()Lcom/amazon/kcp/reader/models/IObjectSelector;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IObjectSelector;->selectPrevious()Z

    move v0, v1

    .line 760
    goto :goto_0

    .line 763
    :sswitch_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "ReaderLayout"

    const-string v3, "PageTurnKeyboard"

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->animateToPrevPage()Z

    move v0, v1

    .line 765
    goto :goto_0

    .line 768
    :sswitch_3
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "ReaderLayout"

    const-string v3, "PageTurnKeyboard"

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->animateToNextPage()Z

    move v0, v1

    .line 770
    goto :goto_0

    .line 773
    :sswitch_4
    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->areVolumeKeysPageControls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "ReaderLayout"

    const-string v3, "PageTurnVolumeButtons"

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->animateToNextPage()Z

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 782
    goto :goto_0

    .line 785
    :sswitch_5
    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->areVolumeKeysPageControls()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "ReaderLayout"

    const-string v3, "PageTurnVolumeButtons"

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->animateToPrevPage()Z

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 794
    goto :goto_0

    .line 797
    :sswitch_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 799
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "ReaderLayout"

    const-string v3, "PageTurnKeyboard"

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->animateToPrevPage()Z

    move v0, v1

    goto/16 :goto_0

    .line 804
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "ReaderLayout"

    const-string v3, "PageTurnKeyboard"

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->animateToNextPage()Z

    move v0, v1

    .line 807
    goto/16 :goto_0

    .line 811
    :sswitch_7
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getObjectSelector()Lcom/amazon/kcp/reader/models/IObjectSelector;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IObjectSelector;->performAction()I

    move v0, v1

    .line 812
    goto/16 :goto_0

    .line 815
    :sswitch_8
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->isBackAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 817
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->back()Z

    move v0, v1

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_0

    .line 752
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_0
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_7
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0x3e -> :sswitch_6
        0x42 -> :sswitch_7
        0x43 -> :sswitch_8
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 830
    packed-switch p1, :pswitch_data_0

    .line 838
    const/4 v1, 0x0

    .end local p0
    :goto_0
    return v1

    .line 835
    .restart local p0
    :pswitch_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 836
    .local v0, settings:Lcom/amazon/kcp/application/SettingsController;
    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->areVolumeKeysPageControls()Z

    move-result v1

    goto :goto_0

    .line 830
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 339
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 340
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->window:Landroid/view/Window;

    if-eqz v3, :cond_0

    .line 343
    iget v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->belowStatusBarHeight:I

    if-nez v3, :cond_3

    .line 350
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->belowStatusBarHeight:I

    .line 351
    sget-boolean v3, Lcom/amazon/kcp/application/ReddingApplication;->HAS_ACTION_BAR:Z

    if-nez v3, :cond_0

    .line 353
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->window:Landroid/view/Window;

    const/16 v4, 0x300

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 368
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentAnimation:Lcom/amazon/kcp/reader/ui/TranslateXAnimator;

    if-eqz v3, :cond_5

    .line 370
    iget v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnAnimationDirection:I

    if-nez v3, :cond_4

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnOffset:I

    neg-int v3, v3

    :goto_1
    invoke-direct {p0, v3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutPages(I)V

    .line 372
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentAnimation:Lcom/amazon/kcp/reader/ui/TranslateXAnimator;

    invoke-interface {v3}, Lcom/amazon/kcp/reader/ui/TranslateXAnimator;->start()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 374
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pagesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    .line 383
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/PageLayout;->getCalculatedHorizontalMargins()I

    move-result v3

    iput v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->horizontalAddedMargin:I

    .line 387
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    if-eqz v3, :cond_2

    .line 389
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getMagnifyingView()Lcom/amazon/kcp/reader/ui/MagnifyingView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getMagnifiedCenterPoint()Landroid/graphics/PointF;

    move-result-object v2

    .line 390
    .local v2, magnifiedPoint:Landroid/graphics/PointF;
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    .line 392
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v0, v3

    .line 393
    .local v0, magLeft:I
    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v3, v4

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    int-to-float v3, v3

    sub-float v3, v4, v3

    float-to-int v1, v3

    .line 394
    .local v1, magTop:I
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->layout(IIII)V

    .line 397
    .end local v0           #magLeft:I
    .end local v1           #magTop:I
    .end local v2           #magnifiedPoint:Landroid/graphics/PointF;
    :cond_2
    return-void

    .line 356
    :cond_3
    iget v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->belowStatusBarHeight:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->statusBarHeight:I

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->belowStatusBarHeight:I

    if-le v3, v4, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->belowStatusBarHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->statusBarHeight:I

    goto/16 :goto_0

    .line 370
    :cond_4
    iget v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnAnimationDirection:I

    goto/16 :goto_1

    .line 379
    :cond_5
    iget v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnOffset:I

    neg-int v3, v3

    invoke-direct {p0, v3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutPages(I)V

    goto :goto_2
.end method

.method public onNoteSelection(Lcom/amazon/kcp/reader/models/IAnnotation;)V
    .locals 0
    .parameter "noteAnnotation"

    .prologue
    .line 1075
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->displayNotePopup(Lcom/amazon/kcp/reader/models/IAnnotation;)V

    .line 1076
    return-void
.end method

.method public onOrientationLockClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 548
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p0, v1, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOrientationLockTemporarilyVisible(ZZ)V

    .line 561
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockContainer:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 558
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->updateOrientationLockImage()V

    .line 559
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOrientationLockAfterDelay()V

    goto :goto_0
.end method

.method public onTableNavigation(III)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1183
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0}, Lcom/amazon/system/drawing/Rectangle;-><init>()V

    .line 1186
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 1188
    iput v3, v0, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 1200
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41c8

    invoke-static {v1, v2}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 1201
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->topAddedMargin:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->bottomAddedMargin:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 1202
    iput v3, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 1204
    invoke-virtual {v0, p1, p2}, Lcom/amazon/system/drawing/Rectangle;->contains(II)Z

    move-result v0

    :goto_1
    return v0

    .line 1190
    :cond_0
    if-nez p3, :cond_1

    .line 1192
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getTableRightImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->horizontalAddedMargin:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/amazon/system/drawing/Rectangle;->x:I

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1197
    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerGestureDetector:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerGestureDetector:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 539
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openAnnotation(Lcom/mobipocket/common/library/reader/AnnotationItem;)V
    .locals 2
    .parameter "annotation"

    .prologue
    .line 1236
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-direct {v0, v1, p1}, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;-><init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;Lcom/mobipocket/common/library/reader/AnnotationItem;)V

    .line 1237
    .local v0, annotationItem:Lcom/amazon/kcp/reader/models/IAnnotation;
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->displayNotePopup(Lcom/amazon/kcp/reader/models/IAnnotation;)V

    .line 1238
    return-void
.end method

.method public openExternalLink(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 1243
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->openUrl(Ljava/lang/String;)V

    .line 1244
    return-void
.end method

.method public openImage([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 1250
    return-void
.end method

.method public openIndex(Lcom/mobipocket/common/library/reader/IndexDescriptor;)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1256
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1052
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->isPageTurnInteractionDisabled:Z

    .line 1055
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/PageLayout;->updateDisplay()Z

    .line 1056
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->transitionPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/PageLayout;->updateDisplay()Z

    .line 1057
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getMagnifyingView()Lcom/amazon/kcp/reader/ui/MagnifyingView;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedViewChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0}, Lcom/amazon/foundation/ICallback;->execute()V

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentAnimation:Lcom/amazon/kcp/reader/ui/TranslateXAnimator;

    if-eqz v0, :cond_1

    .line 1066
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->removeAnimation()V

    .line 1067
    iput v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnOffset:I

    .line 1068
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->requestLayout()V

    .line 1070
    :cond_1
    return-void
.end method

.method public refreshBookScreen()V
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->forceRefreshCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0}, Lcom/amazon/foundation/ICallback;->execute()V

    .line 1262
    return-void
.end method

.method protected removeAnimation()V
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentAnimation:Lcom/amazon/kcp/reader/ui/TranslateXAnimator;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentAnimation:Lcom/amazon/kcp/reader/ui/TranslateXAnimator;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/TranslateXAnimator;->clear()V

    .line 743
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentAnimation:Lcom/amazon/kcp/reader/ui/TranslateXAnimator;

    .line 745
    :cond_0
    return-void
.end method

.method public setBrightnessTextColorViewOptionsVisible(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 902
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    if-eqz v0, :cond_1

    .line 904
    if-eqz p1, :cond_0

    .line 906
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->hide()Z

    .line 907
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;->showBrightnessTextColorOptions()Z

    move-result v0

    .line 916
    :goto_0
    return v0

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;->hide()Z

    move-result v0

    goto :goto_0

    .line 916
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFontSizeViewOptionsVisible(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 927
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    if-eqz v0, :cond_1

    .line 929
    if-eqz p1, :cond_0

    .line 931
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->brightnessColorsOptions:Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;->hide()Z

    .line 932
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->showTextSizeOptions()Z

    move-result v0

    .line 941
    :goto_0
    return v0

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->textSizeOptions:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->hide()Z

    move-result v0

    goto :goto_0

    .line 941
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLocation(Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->doneInitialDraw:Z

    if-eqz v0, :cond_0

    .line 455
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->moveToLocation(Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;)V

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->initalLocation:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    goto :goto_0
.end method

.method public setOrientationLockClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 958
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockClickListener:Landroid/view/View$OnClickListener;

    .line 959
    return-void
.end method

.method public setOrientationLockTemporarilyVisible(ZZ)V
    .locals 4
    .parameter "visible"
    .parameter "animated"

    .prologue
    const/4 v3, 0x0

    .line 970
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockVisible:Z

    if-ne p1, v1, :cond_1

    .line 972
    if-eqz p1, :cond_0

    .line 975
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOrientationLockAfterDelay()V

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 981
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areAnyViewOptionOverlaysVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 985
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 987
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockVisible:Z

    .line 988
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_5

    const/high16 v2, 0x10a

    :goto_1
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 989
    .local v0, visibleAnimation:Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 990
    if-nez p2, :cond_3

    .line 992
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 994
    :cond_3
    if-eqz p1, :cond_4

    .line 996
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->updateOrientationLockImage()V

    .line 997
    new-instance v1, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;

    new-instance v2, Lcom/amazon/kcp/reader/ui/ReaderLayout$9;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$9;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-direct {v1, v3, v3, v2}, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1008
    :cond_4
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 988
    .end local v0           #visibleAnimation:Landroid/view/animation/Animation;
    :cond_5
    const v2, 0x10a0001

    goto :goto_1
.end method

.method public setOverlaysVisible(ZZ)V
    .locals 1
    .parameter "visible"
    .parameter "animated"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->setActionBarVisibility(Z)V

    .line 501
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->window:Landroid/view/Window;

    invoke-static {v0, p1}, Lcom/amazon/android/util/UIUtils;->setStatusBarVisible(Landroid/view/Window;Z)V

    .line 503
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->isImmersiveReadingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->setSystemUiVisibility(Z)V

    .line 508
    :cond_0
    if-nez p1, :cond_1

    .line 510
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setTitleVisibility(Z)V

    .line 512
    :cond_1
    return-void
.end method

.method public setPage(Lcom/amazon/kcp/reader/pages/internal/CReaderPage;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 259
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDisplay;->getForceRefreshEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->forceRefreshCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 263
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getShowBookBuyEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->buySampleCallBack:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 264
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getShowBookDetailsEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->showDetailsCallBack:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 266
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->setNoteSelectionListener(Lcom/amazon/foundation/internal/INoteSelectionListener;)V

    .line 267
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->setApplicationCommands(Lcom/mobipocket/common/library/reader/ApplicationCommands;)V

    .line 269
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getPositionChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->positionChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 272
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    .line 276
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->doneInitialDraw:Z

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/PageLayout;->setPage(Lcom/amazon/kcp/reader/pages/internal/CReaderPage;)V

    .line 279
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->transitionPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/PageLayout;->setPage(Lcom/amazon/kcp/reader/pages/internal/CReaderPage;)V

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDisplay;->getForceRefreshEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->forceRefreshCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 287
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getShowBookBuyEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->buySampleCallBack:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 288
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getShowBookDetailsEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->showDetailsCallBack:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 289
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kcp/reader/models/IBookDocument;->setNoteSelectionListener(Lcom/amazon/foundation/internal/INoteSelectionListener;)V

    .line 290
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kcp/reader/models/IBookDocument;->setApplicationCommands(Lcom/mobipocket/common/library/reader/ApplicationCommands;)V

    .line 292
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getPositionChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->positionChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 294
    :cond_2
    return-void
.end method

.method public setPageTurnOffset(I)V
    .locals 0
    .parameter "turnOffset"

    .prologue
    .line 1321
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnOffset:I

    .line 1322
    return-void
.end method

.method public setTitleVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 1457
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 1458
    .local v0, visibility:I
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getCurrentPageView()Lcom/amazon/kcp/reader/ui/PageLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/PageLayout;->setTitleVisibility(I)V

    .line 1459
    return-void

    .line 1457
    .end local v0           #visibility:I
    :cond_0
    const/4 v1, 0x4

    move v0, v1

    goto :goto_0
.end method

.method public setViewOptionsVisible(Z)Z
    .locals 1
    .parameter "visible"

    .prologue
    .line 878
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

    if-eqz v0, :cond_1

    .line 880
    if-eqz p1, :cond_0

    .line 882
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ViewOptions;->show()Z

    move-result v0

    .line 891
    :goto_0
    return v0

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ViewOptions;->hide()Z

    move-result v0

    goto :goto_0

    .line 891
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showMarketingBookDetails(Lcom/mobipocket/common/library/reader/BookItem;Ljava/lang/String;)V
    .locals 0
    .parameter "book"
    .parameter "fallBackURL"

    .prologue
    .line 1267
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->showBookDetails()V

    .line 1268
    return-void
.end method

.method public toolTip(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1274
    return-void
.end method

.method public turnPage(IF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1293
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pageTurnAnimationDirection:I

    .line 1294
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->animatePageTurn(F)Z

    .line 1295
    return-void
.end method

.method protected updateExtraUiForColorMode(I)V
    .locals 0
    .parameter "colorMode"

    .prologue
    .line 402
    return-void
.end method
