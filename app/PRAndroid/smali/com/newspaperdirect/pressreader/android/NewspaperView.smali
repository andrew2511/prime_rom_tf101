.class public Lcom/newspaperdirect/pressreader/android/NewspaperView;
.super Landroid/app/Activity;
.source "NewspaperView.java"


# static fields
.field private static final ARTICLE_VIEW_REQUEST_CODE:I = 0x1

.field public static final EXTRA_PAGE_NUMBER:Ljava/lang/String; = "com.newspaperdirect.pressreader.android.PageNumber"

.field private static final INTENT_CURRENT_ISSUE_DB_ID:Ljava/lang/String; = "id"

.field private static final PREF_POPUP_TOOLS_INVISIBILITY:Ljava/lang/String; = "popup_tools_invisibility"

.field public static final PREVIOUS_ACTIVITY_MARKER:Ljava/lang/String; = "previous_activity_string"

.field public static final RESULT_FILES_CONSISTENCY_CHECK_FAILED:I = 0x3

.field public static final RESULT_NO_MY_LIBRARY_ITEM_SELECTED:I = 0x1

.field public static final RESULT_NO_PAGES_INFORMATION_FOUND:I = 0x2

.field private static final STATE_CURRENT_ISSUE_KEY:Ljava/lang/String; = "current_issue_id"

.field private static final TOC_ID:I = 0x3

.field private static final TOC_VIEW_REQUEST_CODE:I = 0x2

.field private static final ZOOM_ID:I = 0x2


# instance fields
.field private mIsPopupTipsInvsible:Z

.field private mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

.field private mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

.field private mPageNumber:I

.field private mPopupTips:Landroid/widget/ImageView;

.field private mProgressDialog:Landroid/app/AlertDialog;

.field private mToolbar:Landroid/view/View;

.field private mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

.field private toolbarIsEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    .line 73
    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->toolbarIsEnabled:Z

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/NewspaperView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mIsPopupTipsInvsible:Z

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V
    .locals 0
    .parameter

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->setPopupTipsVisibility()V

    return-void
.end method

.method static synthetic access$10(Lcom/newspaperdirect/pressreader/android/NewspaperView;ZLcom/newspaperdirect/pressreader/android/NewspaperViewCommon;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 381
    invoke-direct {p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->showToolbar(ZLcom/newspaperdirect/pressreader/android/NewspaperViewCommon;)V

    return-void
.end method

.method static synthetic access$11(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mToolbar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$12(Lcom/newspaperdirect/pressreader/android/NewspaperView;Lcom/newspaperdirect/pressreader/android/core/layout/Article;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->showArticle(Lcom/newspaperdirect/pressreader/android/core/layout/Article;)V

    return-void
.end method

.method static synthetic access$13(Lcom/newspaperdirect/pressreader/android/NewspaperView;Lcom/newspaperdirect/pressreader/android/core/layout/Page;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 410
    invoke-direct {p0, p1, p2, p3}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->zoomInMax(Lcom/newspaperdirect/pressreader/android/core/layout/Page;FF)V

    return-void
.end method

.method static synthetic access$14(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V
    .locals 0
    .parameter

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->showNoZoomsTip()V

    return-void
.end method

.method static synthetic access$15(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/BaseZoomView;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mProgressDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/NewspaperView;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mProgressDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    return-object v0
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->updateSubtitle()V

    return-void
.end method

.method static synthetic access$6(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/newspaperdirect/pressreader/android/NewspaperView;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    return v0
.end method

.method static synthetic access$8(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->toolbarIsEnabled:Z

    return v0
.end method

.method static synthetic access$9(Lcom/newspaperdirect/pressreader/android/NewspaperView;ZLcom/newspaperdirect/pressreader/android/NewspaperViewCommon;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->hideToolbar(ZLcom/newspaperdirect/pressreader/android/NewspaperViewCommon;)V

    return-void
.end method

.method private getLeftPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    .locals 3

    .prologue
    .line 477
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayout()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getPages()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCurrentPageNumber()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    return-object p0
.end method

.method private hideToolbar(ZLcom/newspaperdirect/pressreader/android/NewspaperViewCommon;)V
    .locals 4
    .parameter "permanently"
    .parameter "viewContainer"

    .prologue
    const/4 v3, 0x0

    .line 355
    invoke-interface {p2, v3}, Lcom/newspaperdirect/pressreader/android/NewspaperViewCommon;->setHighlightArticles(Z)V

    .line 356
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mToolbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 379
    :goto_0
    return-void

    .line 357
    :cond_0
    if-eqz p1, :cond_1

    iput-boolean v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->toolbarIsEnabled:Z

    .line 358
    :cond_1
    new-instance v0, Lcom/newspaperdirect/pressreader/android/NewspaperView$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/NewspaperView$14;-><init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;ZLcom/newspaperdirect/pressreader/android/NewspaperViewCommon;)V

    .line 367
    .local v0, animation:Landroid/view/animation/Animation;
    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewspaperView$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/NewspaperView$15;-><init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;ZLcom/newspaperdirect/pressreader/android/NewspaperViewCommon;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 377
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 378
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mToolbar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private initNewspaperView()V
    .locals 2

    .prologue
    .line 267
    const v0, 0x7f0c0039

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    .line 268
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewspaperView$3;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView$3;-><init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->setOnPageClickedListener(Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageClickedListener;)V

    .line 274
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewspaperView$4;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView$4;-><init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->post(Ljava/lang/Runnable;)Z

    .line 279
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewspaperView$5;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView$5;-><init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->setOnArticleClickedListener(Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnArticleClickedListener;)V

    .line 285
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewspaperView$6;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView$6;-><init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->setOnPageDoubleClickedListener(Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageDoubleClickedListener;)V

    .line 290
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewspaperView$7;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView$7;-><init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->setOnPageZoomInStartedListener(Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInStartedListener;)V

    .line 299
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewspaperView$8;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView$8;-><init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->setOnPageZoomInFinishedListener(Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInFinishedListener;)V

    .line 309
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewspaperView$9;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView$9;-><init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->setOnPageZoomInCanceledListener(Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInCanceledListener;)V

    .line 314
    return-void
.end method

.method private initToolbar()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    const v5, 0x3dcccccd

    .line 456
    const v3, 0x7f0c003b

    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mToolbar:Landroid/view/View;

    .line 457
    const/4 v3, 0x3

    new-array v1, v3, [Landroid/graphics/drawable/Drawable;

    .line 458
    .local v1, layers:[Landroid/graphics/drawable/Drawable;
    const/16 v3, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    .line 459
    .local v2, rr:[F
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v2, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 460
    .local v0, drawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v3, Lcom/newspaperdirect/pressreader/android/NewspaperView$18;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView$18;-><init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    .line 466
    const/4 v3, 0x0

    aput-object v0, v1, v3

    .line 467
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v5, v6, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v3, v2, v4, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 468
    .restart local v0       #drawable:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const v4, -0xd0d0e

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 469
    const/4 v3, 0x1

    aput-object v0, v1, v3

    .line 470
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v5, v5, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v3, v2, v4, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 471
    .restart local v0       #drawable:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const v4, -0x6c6c6d

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 472
    const/4 v3, 0x2

    aput-object v0, v1, v3

    .line 473
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mToolbar:Landroid/view/View;

    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 474
    return-void

    .line 458
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private initZoomView()V
    .locals 2

    .prologue
    .line 317
    const v0, 0x7f0c003a

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    .line 318
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewspaperView$10;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView$10;-><init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->setOnPageClickedListener(Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnPageClickedListener;)V

    .line 325
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewspaperView$11;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView$11;-><init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->setOnZoomClosedListener(Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnZoomClosedListener;)V

    .line 340
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewspaperView$12;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView$12;-><init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->setOnZoomClosingListener(Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnZoomClosingListener;)V

    .line 344
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewspaperView$13;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView$13;-><init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->setOnArticleClickedListener(Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnArticleClickedListener;)V

    .line 352
    return-void
.end method

.method private isSinglePageView()Z
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method private setPopupTipsVisibility()V
    .locals 2

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mIsPopupTipsInvsible:Z

    if-nez v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 550
    :goto_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPopupTips:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    :goto_1
    return-void

    .line 544
    :pswitch_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPopupTips:Landroid/widget/ImageView;

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 547
    :pswitch_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPopupTips:Landroid/widget/ImageView;

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPopupTips:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 542
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showArticle(Lcom/newspaperdirect/pressreader/android/core/layout/Article;)V
    .locals 3
    .parameter "article"

    .prologue
    .line 533
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayout()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v1

    if-nez v1, :cond_0

    .line 538
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->recycle()V

    .line 535
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 536
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.newspaperdirect.pressreader.android.ArticleId"

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getArticleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private showNext()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->toggleZoom()V

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayout()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v0

    if-nez v0, :cond_1

    .line 511
    :goto_0
    return-void

    .line 504
    :cond_1
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->isSinglePageView()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    .line 506
    :goto_1
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesCount()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesCount()I

    move-result v0

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    .line 507
    :cond_3
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->setCurrentPageNumber(I)V

    .line 508
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->updateSubtitle()V

    .line 509
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->showNext()Z

    goto :goto_0

    .line 505
    :cond_4
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    goto :goto_1
.end method

.method private showNoZoomsTip()V
    .locals 4

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    :goto_0
    return-void

    .line 558
    :cond_0
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>(Ljava/lang/Object;)V

    .line 559
    .local v0, flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 560
    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 561
    const v2, 0x7f090017

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 562
    const v2, 0x7f09005e

    new-instance v3, Lcom/newspaperdirect/pressreader/android/NewspaperView$19;

    invoke-direct {v3, p0, v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView$19;-><init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 570
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showPrev()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 514
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->toggleZoom()V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayout()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v0

    if-nez v0, :cond_1

    .line 524
    :goto_0
    return-void

    .line 518
    :cond_1
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->isSinglePageView()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    .line 520
    :goto_1
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    if-gtz v0, :cond_2

    iput v2, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->setCurrentPageNumber(I)V

    .line 522
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->updateSubtitle()V

    .line 523
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->showPrev()Z

    goto :goto_0

    .line 519
    :cond_3
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    goto :goto_1
.end method

.method private showToolbar(ZLcom/newspaperdirect/pressreader/android/NewspaperViewCommon;)V
    .locals 3
    .parameter "permanently"
    .parameter "viewContainer"

    .prologue
    const/4 v2, 0x1

    .line 382
    invoke-interface {p2, v2}, Lcom/newspaperdirect/pressreader/android/NewspaperViewCommon;->setHighlightArticles(Z)V

    .line 383
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mToolbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 408
    :goto_0
    return-void

    .line 384
    :cond_0
    if-eqz p1, :cond_1

    iput-boolean v2, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->toolbarIsEnabled:Z

    .line 385
    :cond_1
    new-instance v0, Lcom/newspaperdirect/pressreader/android/NewspaperView$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/NewspaperView$16;-><init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;ZLcom/newspaperdirect/pressreader/android/NewspaperViewCommon;)V

    .line 394
    .local v0, animation:Landroid/view/animation/Animation;
    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewspaperView$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/NewspaperView$17;-><init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;ZLcom/newspaperdirect/pressreader/android/NewspaperViewCommon;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 406
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 407
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mToolbar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private toggleZoom()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 428
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayout()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v1

    if-nez v1, :cond_0

    .line 443
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->hide()V

    .line 431
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->recycle()V

    .line 432
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->restore()V

    .line 433
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->setVisibility(I)V

    .line 434
    iget-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->toolbarIsEnabled:Z

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    invoke-direct {p0, v3, v1}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->showToolbar(ZLcom/newspaperdirect/pressreader/android/NewspaperViewCommon;)V

    goto :goto_0

    .line 437
    :cond_1
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    invoke-direct {p0, v3, v1}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->hideToolbar(ZLcom/newspaperdirect/pressreader/android/NewspaperViewCommon;)V

    goto :goto_0

    .line 440
    :cond_2
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->getLeftPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v0

    .line 441
    .local v0, currentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v1

    iget v1, v1, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v2

    iget v2, v2, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->zoomInMax(Lcom/newspaperdirect/pressreader/android/core/layout/Page;FF)V

    goto :goto_0
.end method

.method private updateSubtitle()V
    .locals 6

    .prologue
    .line 446
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "E, d MMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 447
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, subtitle:Ljava/lang/String;
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayout()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 449
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayout()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getPages()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    .line 450
    .local v1, page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getSection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 452
    .end local v1           #page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    :cond_0
    const v3, 0x7f0c0042

    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    return-void
.end method

.method private zoomInMax(Lcom/newspaperdirect/pressreader/android/core/layout/Page;FF)V
    .locals 4
    .parameter "page"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    .line 411
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCurrent()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->hasZooms()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->showNoZoomsTip()V

    .line 425
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->show()V

    .line 416
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    invoke-virtual {v0, p1}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->setCurrentPage(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    .line 417
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->getPosition()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->setOriginalPosition(Landroid/graphics/RectF;)V

    .line 418
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getZoomScales()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    invoke-virtual {v0, v1, p2, p3}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->setScale(FFF)V

    .line 419
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->recycle()V

    .line 421
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->toolbarIsEnabled:Z

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    invoke-direct {p0, v3, v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->showToolbar(ZLcom/newspaperdirect/pressreader/android/NewspaperViewCommon;)V

    goto :goto_0

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    invoke-direct {p0, v3, v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->hideToolbar(ZLcom/newspaperdirect/pressreader/android/NewspaperViewCommon;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 178
    packed-switch p1, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 180
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 187
    :pswitch_2
    if-eqz p3, :cond_1

    .line 188
    const-string v1, "com.newspaperdirect.pressreader.android.PageNumber"

    iget v2, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 189
    .local v0, pnum:I
    if-le v0, v4, :cond_0

    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->isSinglePageView()Z

    move-result v1

    if-nez v1, :cond_0

    rem-int/lit8 v1, v0, 0x2

    sub-int/2addr v0, v1

    .line 190
    :cond_0
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    if-eq v0, v1, :cond_1

    .line 191
    iput v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    .line 192
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v1, v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->setCurrentPageNumber(I)V

    .line 193
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->updateSubtitle()V

    .line 196
    .end local v0           #pnum:I
    :cond_1
    iget-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->toolbarIsEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mToolbar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->hide()V

    .line 198
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    invoke-virtual {v1, v3}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->setVisibility(I)V

    .line 199
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->getLeftPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->setCurrentPage(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    goto :goto_0

    .line 183
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->setResult(I)V

    .line 184
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->finish()V

    goto :goto_0

    .line 203
    :pswitch_4
    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    if-ne p2, v4, :cond_4

    .line 204
    :cond_3
    invoke-virtual {p0, p2}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->setResult(I)V

    .line 205
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->finish()V

    goto :goto_0

    .line 208
    :cond_4
    const/4 v1, -0x1

    if-ne p2, v1, :cond_8

    if-eqz p3, :cond_8

    .line 209
    const-string v1, "com.newspaperdirect.pressreader.android.PageNumber"

    iget v2, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 210
    .restart local v0       #pnum:I
    if-le v0, v4, :cond_5

    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->isSinglePageView()Z

    move-result v1

    if-nez v1, :cond_5

    rem-int/lit8 v1, v0, 0x2

    sub-int/2addr v0, v1

    .line 211
    :cond_5
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    if-eq v0, v1, :cond_6

    .line 212
    iput v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    .line 213
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v1, v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->setCurrentPageNumber(I)V

    .line 214
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->updateSubtitle()V

    .line 218
    .end local v0           #pnum:I
    :cond_6
    :goto_1
    iget-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->toolbarIsEnabled:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mToolbar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :cond_7
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->hide()V

    .line 220
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    invoke-virtual {v1, v3}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->setVisibility(I)V

    .line 221
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->getLeftPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->setCurrentPage(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    goto/16 :goto_0

    .line 217
    :cond_8
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCurrentPageNumber()I

    move-result v1

    iput v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    goto :goto_1

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 180
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onBtnCloseClicked(Landroid/view/View;)V
    .locals 1
    .parameter "btn"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->recycle()V

    .line 487
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->finish()V

    .line 488
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 234
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 235
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->setPopupTipsVisibility()V

    .line 236
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/AppInitHelper;->init(Landroid/app/Activity;)V

    .line 81
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "id"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 83
    .local v0, id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_5

    .line 84
    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->findItemById(J)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v3

    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 85
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    if-nez v3, :cond_1

    .line 86
    invoke-virtual {p0, v7}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->setResult(I)V

    .line 87
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->finish()V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->setAsCurrent()V

    .line 105
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCurrentPageNumber()I

    move-result v3

    iput v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPageNumber:I

    .line 106
    const v3, 0x7f030011

    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->setContentView(I)V

    .line 109
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "previous_activity_string"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 110
    const v3, 0x7f0c003c

    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f0900cd

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 113
    :cond_3
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->initToolbar()V

    .line 114
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->initNewspaperView()V

    .line 115
    const v3, 0x7f0c003a

    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    .line 116
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->initZoomView()V

    .line 117
    const v3, 0x7f0c0041

    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->updateSubtitle()V

    .line 119
    const v3, 0x7f0c005c

    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPopupTips:Landroid/widget/ImageView;

    .line 120
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "popup_tools_invisibility"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mIsPopupTipsInvsible:Z

    .line 121
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->setPopupTipsVisibility()V

    .line 122
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mPopupTips:Landroid/widget/ImageView;

    new-instance v4, Lcom/newspaperdirect/pressreader/android/NewspaperView$1;

    invoke-direct {v4, p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView$1;-><init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayout()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, ""

    const v4, 0x7f09000b

    invoke-virtual {p0, v4}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {p0, v3, v4, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mProgressDialog:Landroid/app/AlertDialog;

    .line 131
    :cond_4
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    new-instance v4, Lcom/newspaperdirect/pressreader/android/NewspaperView$2;

    invoke-direct {v4, p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView$2;-><init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V

    invoke-virtual {v3, v4}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->loadLayout(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnLayoutLoadedListener;)V

    goto/16 :goto_0

    .line 93
    :cond_5
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCurrent()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v3

    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 94
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    if-nez v3, :cond_2

    .line 95
    const-string v3, "current_issue_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, issue:Ljava/lang/String;
    if-eqz v2, :cond_6

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->findItem(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v3

    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 97
    :cond_6
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    if-nez v3, :cond_7

    .line 98
    invoke-virtual {p0, v7}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->setResult(I)V

    .line 99
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->finish()V

    goto/16 :goto_0

    .line 102
    :cond_7
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->setAsCurrent()V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 240
    const/4 v0, 0x2

    const v1, 0x7f090074

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 241
    const v1, 0x7f020047

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 242
    const/4 v0, 0x3

    const v1, 0x7f090075

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 243
    const v1, 0x7f020046

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 244
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 255
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 263
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 257
    :pswitch_0
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->toggleZoom()V

    move v0, v1

    .line 258
    goto :goto_0

    .line 260
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->onTOCBtnClicked(Landroid/view/View;)V

    move v0, v1

    .line 261
    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 155
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mProgressDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 157
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mProgressDialog:Landroid/app/AlertDialog;

    .line 159
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mZoomView:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f020048

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 250
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 249
    :cond_0
    const v1, 0x7f020047

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 164
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    if-nez v0, :cond_1

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->setResult(I)V

    .line 166
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->finish()V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkFilesConsistency()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->setResult(I)V

    .line 171
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->finish()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 229
    const-string v0, "current_issue_id"

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public onShowNextPageBtnClicked(Landroid/view/View;)V
    .locals 0
    .parameter "btn"

    .prologue
    .line 491
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->showNext()V

    .line 492
    return-void
.end method

.method public onShowPrevPageBtnClicked(Landroid/view/View;)V
    .locals 0
    .parameter "btn"

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->showPrev()V

    .line 496
    return-void
.end method

.method public onTOCBtnClicked(Landroid/view/View;)V
    .locals 2
    .parameter "btn"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayout()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v0

    if-nez v0, :cond_0

    .line 530
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView;->mNewspaperView:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->recycle()V

    .line 529
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/newspaperdirect/pressreader/android/TOCView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
