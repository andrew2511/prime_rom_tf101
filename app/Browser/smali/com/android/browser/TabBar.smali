.class public Lcom/android/browser/TabBar;
.super Landroid/widget/LinearLayout;
.source "TabBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/browser/ScrollWebView$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/TabBar$TabView;
    }
.end annotation


# instance fields
.field private mActiveDrawable:Landroid/graphics/drawable/Drawable;

.field private final mActiveMatrix:Landroid/graphics/Matrix;

.field private mActiveShader:Landroid/graphics/BitmapShader;

.field private final mActiveShaderPaint:Landroid/graphics/Paint;

.field private mActivity:Landroid/app/Activity;

.field private mAddTabOverlap:I

.field private mButtonWidth:I

.field private mCurrentTextureHeight:I

.field private mCurrentTextureWidth:I

.field private final mFocusPaint:Landroid/graphics/Paint;

.field private mGenericFavicon:Landroid/graphics/drawable/Drawable;

.field private mInactiveDrawable:Landroid/graphics/drawable/Drawable;

.field private final mInactiveMatrix:Landroid/graphics/Matrix;

.field private mInactiveShader:Landroid/graphics/BitmapShader;

.field private final mInactiveShaderPaint:Landroid/graphics/Paint;

.field private mNewTab:Landroid/widget/ImageButton;

.field private mTabControl:Lcom/android/browser/TabControl;

.field private mTabMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/browser/Tab;",
            "Lcom/android/browser/TabBar$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private mTabOverlap:I

.field private mTabSliceWidth:I

.field private mTabWidthSelected:I

.field private mTabWidthUnselected:I

.field private mTabs:Lcom/android/browser/TabScrollView;

.field private mUi:Lcom/android/browser/XLargeUi;

.field private mUiController:Lcom/android/browser/UiController;

.field private mUseQuickControls:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/XLargeUi;)V
    .locals 6
    .parameter "activity"
    .parameter "controller"
    .parameter "ui"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 81
    iput v4, p0, Lcom/android/browser/TabBar;->mCurrentTextureWidth:I

    .line 82
    iput v4, p0, Lcom/android/browser/TabBar;->mCurrentTextureHeight:I

    .line 87
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/browser/TabBar;->mActiveShaderPaint:Landroid/graphics/Paint;

    .line 88
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/browser/TabBar;->mInactiveShaderPaint:Landroid/graphics/Paint;

    .line 89
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    .line 90
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/android/browser/TabBar;->mActiveMatrix:Landroid/graphics/Matrix;

    .line 91
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/android/browser/TabBar;->mInactiveMatrix:Landroid/graphics/Matrix;

    .line 103
    iput-object p1, p0, Lcom/android/browser/TabBar;->mActivity:Landroid/app/Activity;

    .line 104
    iput-object p2, p0, Lcom/android/browser/TabBar;->mUiController:Lcom/android/browser/UiController;

    .line 105
    iget-object v3, p0, Lcom/android/browser/TabBar;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v3}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/TabBar;->mTabControl:Lcom/android/browser/TabControl;

    .line 106
    iput-object p3, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    .line 107
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 108
    .local v1, res:Landroid/content/res/Resources;
    const/high16 v3, 0x7f0c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/browser/TabBar;->mTabWidthSelected:I

    .line 109
    const v3, 0x7f0c0001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/browser/TabBar;->mTabWidthUnselected:I

    .line 110
    const v3, 0x7f020007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/TabBar;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    const v3, 0x7f020015

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/TabBar;->mInactiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    .line 114
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 115
    .local v2, resources:Landroid/content/res/Resources;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 116
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f04002a

    invoke-virtual {v0, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 117
    const v3, 0x7f0c001c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v4, v3, v4, v4}, Lcom/android/browser/TabBar;->setPadding(IIII)V

    .line 118
    const v3, 0x7f100077

    invoke-virtual {p0, v3}, Lcom/android/browser/TabBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/browser/TabScrollView;

    iput-object v3, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    .line 119
    const v3, 0x7f100078

    invoke-virtual {p0, v3}, Lcom/android/browser/TabBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    .line 120
    iget-object v3, p0, Lcom/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v3, 0x7f020001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/TabBar;->mGenericFavicon:Landroid/graphics/drawable/Drawable;

    .line 123
    iget-object v3, p0, Lcom/android/browser/TabBar;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v3}, Lcom/android/browser/UiController;->getTabs()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/browser/TabBar;->updateTabs(Ljava/util/List;)V

    .line 124
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/browser/TabBar;->mButtonWidth:I

    .line 126
    const v3, 0x7f0c0003

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/browser/TabBar;->mTabOverlap:I

    .line 127
    const v3, 0x7f0c0004

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/browser/TabBar;->mAddTabOverlap:I

    .line 128
    const v3, 0x7f0c0005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/browser/TabBar;->mTabSliceWidth:I

    .line 130
    iget-object v3, p0, Lcom/android/browser/TabBar;->mActiveShaderPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    iget-object v3, p0, Lcom/android/browser/TabBar;->mActiveShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    iget-object v3, p0, Lcom/android/browser/TabBar;->mInactiveShaderPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    iget-object v3, p0, Lcom/android/browser/TabBar;->mInactiveShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    iget-object v3, p0, Lcom/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    iget-object v3, p0, Lcom/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    const v4, 0x7f0c0006

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    iget-object v3, p0, Lcom/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    iget-object v3, p0, Lcom/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    const v4, 0x7f0b000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/TabBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/browser/TabBar;->mTabOverlap:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/browser/TabBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/browser/TabBar;->mTabSliceWidth:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/browser/TabBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/browser/TabBar;->mCurrentTextureHeight:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/browser/TabBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/browser/TabBar;->mCurrentTextureHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/browser/TabBar;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/TabBar;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lcom/android/browser/TabBar;->getDrawableAsBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/browser/TabBar;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/TabBar;->mInactiveDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/browser/TabBar;)Landroid/graphics/BitmapShader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/TabBar;->mActiveShader:Landroid/graphics/BitmapShader;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/browser/TabBar;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/browser/TabBar;->mActiveShader:Landroid/graphics/BitmapShader;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/TabBar;->mActiveShaderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/browser/TabBar;)Landroid/graphics/BitmapShader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/TabBar;->mInactiveShader:Landroid/graphics/BitmapShader;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/browser/TabBar;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/browser/TabBar;->mInactiveShader:Landroid/graphics/BitmapShader;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/TabBar;->mInactiveShaderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/browser/TabBar;)Landroid/graphics/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/TabBar;->mActiveMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/browser/TabBar;)Landroid/graphics/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/TabBar;->mInactiveMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/TabBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/browser/TabBar;->mTabWidthSelected:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/browser/TabBar;)Lcom/android/browser/TabScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/browser/TabBar;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/TabBar;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/browser/TabBar;->renderFavicon(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/TabBar;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/TabBar;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/TabBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/browser/TabBar;->mTabWidthUnselected:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/browser/TabBar;)Lcom/android/browser/TabControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/TabBar;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/browser/TabBar;)Lcom/android/browser/UiController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/TabBar;->mUiController:Lcom/android/browser/UiController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/browser/TabBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/browser/TabBar;->mCurrentTextureWidth:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/browser/TabBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/browser/TabBar;->mCurrentTextureWidth:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/browser/TabBar;)Lcom/android/browser/XLargeUi;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    return-object v0
.end method

.method private animateTabIn(Lcom/android/browser/Tab;Lcom/android/browser/TabBar$TabView;)V
    .locals 3
    .parameter "tab"
    .parameter "tv"

    .prologue
    .line 590
    const-string v1, "scaleX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 591
    .local v0, scalex:Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 592
    new-instance v1, Lcom/android/browser/TabBar$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/browser/TabBar$2;-><init>(Lcom/android/browser/TabBar;Lcom/android/browser/Tab;Lcom/android/browser/TabBar$TabView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 613
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 614
    return-void

    .line 590
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private animateTabOut(Lcom/android/browser/Tab;Lcom/android/browser/TabBar$TabView;)V
    .locals 7
    .parameter "tab"
    .parameter "tv"

    .prologue
    const/4 v6, 0x2

    .line 558
    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 559
    .local v2, scalex:Landroid/animation/ObjectAnimator;
    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 560
    .local v3, scaley:Landroid/animation/ObjectAnimator;
    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 561
    .local v0, alpha:Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 562
    .local v1, animator:Landroid/animation/AnimatorSet;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 563
    const-wide/16 v4, 0x96

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 564
    new-instance v4, Lcom/android/browser/TabBar$1;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/browser/TabBar$1;-><init>(Lcom/android/browser/TabBar;Lcom/android/browser/TabBar$TabView;Lcom/android/browser/Tab;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 586
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 587
    return-void

    .line 558
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 559
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 560
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private buildTabView(Lcom/android/browser/Tab;)Lcom/android/browser/TabBar$TabView;
    .locals 2
    .parameter "tab"

    .prologue
    .line 303
    new-instance v0, Lcom/android/browser/TabBar$TabView;

    iget-object v1, p0, Lcom/android/browser/TabBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/browser/TabBar$TabView;-><init>(Lcom/android/browser/TabBar;Landroid/content/Context;Lcom/android/browser/Tab;)V

    .line 304
    .local v0, tabview:Lcom/android/browser/TabBar$TabView;
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-virtual {v0, p0}, Lcom/android/browser/TabBar$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    return-object v0
.end method

.method static createFaviconBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"

    .prologue
    .line 535
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 536
    .local v0, faviconBackground:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 537
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 539
    const v2, 0x7f0c0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 541
    return-object v0
.end method

.method private static getDrawableAsBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "drawable"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 310
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 311
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 312
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {p0, v3, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 313
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 314
    return-object v0
.end method

.method private isLoading()Z
    .locals 3

    .prologue
    .line 672
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/browser/TabBar;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/TabBar$TabView;

    .line 673
    .local v0, tv:Lcom/android/browser/TabBar$TabView;
    if-eqz v0, :cond_0

    .line 674
    iget-boolean v1, v0, Lcom/android/browser/TabBar$TabView;->mInLoad:Z

    .line 676
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private renderFavicon(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "icon"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 545
    new-array v6, v2, [Landroid/graphics/drawable/Drawable;

    .line 546
    .local v6, array:[Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/browser/TabBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/browser/TabBar;->createFaviconBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v6, v3

    .line 547
    if-nez p1, :cond_0

    .line 548
    iget-object v3, p0, Lcom/android/browser/TabBar;->mGenericFavicon:Landroid/graphics/drawable/Drawable;

    aput-object v3, v6, v1

    .line 552
    :goto_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v0, d:Landroid/graphics/drawable/LayerDrawable;
    move v3, v2

    move v4, v2

    move v5, v2

    .line 553
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 554
    return-object v0

    .line 550
    .end local v0           #d:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v3, v6, v1

    goto :goto_0
.end method

.method private showUrlBar()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v0}, Lcom/android/browser/XLargeUi;->stopWebViewScrolling()V

    .line 235
    iget-object v0, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v0}, Lcom/android/browser/XLargeUi;->showTitleBar()V

    .line 236
    return-void
.end method


# virtual methods
.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/browser/TabBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 298
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0f000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 299
    iget-object v1, p0, Lcom/android/browser/TabBar;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p0, v2}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 300
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    if-ne v1, p1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/android/browser/TabBar;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    invoke-virtual {v1}, Lcom/android/browser/TabScrollView;->getSelectedTab()Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_5

    .line 210
    iget-boolean v1, p0, Lcom/android/browser/TabBar;->mUseQuickControls:Z

    if-eqz v1, :cond_3

    .line 211
    iget-object v1, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v1}, Lcom/android/browser/XLargeUi;->isTitleBarShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/browser/TabBar;->isLoading()Z

    move-result v1

    if-nez v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v1}, Lcom/android/browser/XLargeUi;->stopEditingUrl()V

    .line 213
    iget-object v1, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v1}, Lcom/android/browser/XLargeUi;->hideTitleBar()V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v1}, Lcom/android/browser/XLargeUi;->stopWebViewScrolling()V

    .line 216
    iget-object v1, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v1}, Lcom/android/browser/XLargeUi;->showTitleBarAndEdit()V

    goto :goto_0

    .line 218
    :cond_3
    iget-object v1, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v1}, Lcom/android/browser/XLargeUi;->isTitleBarShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/browser/TabBar;->isLoading()Z

    move-result v1

    if-nez v1, :cond_4

    .line 219
    iget-object v1, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v1}, Lcom/android/browser/XLargeUi;->stopEditingUrl()V

    .line 220
    iget-object v1, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v1}, Lcom/android/browser/XLargeUi;->hideTitleBar()V

    goto :goto_0

    .line 222
    :cond_4
    invoke-direct {p0}, Lcom/android/browser/TabBar;->showUrlBar()V

    goto :goto_0

    .line 225
    :cond_5
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    invoke-virtual {v1, p1}, Lcom/android/browser/TabScrollView;->getChildIndex(Landroid/view/View;)I

    move-result v0

    .line 226
    .local v0, ix:I
    if-ltz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    invoke-virtual {v1, v0}, Lcom/android/browser/TabScrollView;->setSelectedTab(I)V

    .line 228
    iget-object v1, p0, Lcom/android/browser/TabBar;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1, v0}, Lcom/android/browser/UiController;->switchToTab(I)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 145
    iget-object v1, p0, Lcom/android/browser/TabBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 146
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/browser/TabBar;->mTabWidthSelected:I

    .line 147
    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/browser/TabBar;->mTabWidthUnselected:I

    .line 149
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    invoke-virtual {v1}, Lcom/android/browser/TabScrollView;->updateLayout()V

    .line 150
    return-void
.end method

.method public onFavicon(Lcom/android/browser/Tab;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "tab"
    .parameter "favicon"

    .prologue
    .line 633
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/TabBar$TabView;

    .line 634
    .local v0, tv:Lcom/android/browser/TabBar$TabView;
    if-eqz v0, :cond_0

    .line 635
    invoke-direct {p0, p2}, Lcom/android/browser/TabBar;->renderFavicon(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabBar$TabView;->setFavicon(Landroid/graphics/drawable/Drawable;)V

    .line 637
    :cond_0
    return-void
.end method

.method onHideTitleBar()V
    .locals 3

    .prologue
    .line 266
    iget-object v2, p0, Lcom/android/browser/TabBar;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 267
    .local v0, tab:Lcom/android/browser/Tab;
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 268
    .local v1, w:Landroid/webkit/WebView;
    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {v1}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/browser/TabBar;->showTitleBarIndicator(Z)V

    .line 271
    :cond_0
    return-void

    .line 269
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/browser/TabBar;->getPaddingLeft()I

    move-result v0

    .line 187
    .local v0, pl:I
    invoke-virtual {p0}, Lcom/android/browser/TabBar;->getPaddingTop()I

    move-result v1

    .line 188
    .local v1, pt:I
    iget-object v4, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    invoke-virtual {v4}, Lcom/android/browser/TabScrollView;->getMeasuredWidth()I

    move-result v2

    .line 189
    .local v2, sw:I
    sub-int v4, p4, p2

    sub-int v3, v4, v0

    .line 190
    .local v3, w:I
    iget-boolean v4, p0, Lcom/android/browser/TabBar;->mUseQuickControls:Z

    if-eqz v4, :cond_2

    .line 191
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/browser/TabBar;->mButtonWidth:I

    .line 198
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    add-int v5, v0, v2

    sub-int v6, p5, p3

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/android/browser/TabScrollView;->layout(IIII)V

    .line 200
    iget-boolean v4, p0, Lcom/android/browser/TabBar;->mUseQuickControls:Z

    if-nez v4, :cond_1

    .line 201
    iget-object v4, p0, Lcom/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    add-int v5, v0, v2

    iget v6, p0, Lcom/android/browser/TabBar;->mAddTabOverlap:I

    sub-int/2addr v5, v6

    add-int v6, v0, v2

    iget v7, p0, Lcom/android/browser/TabBar;->mButtonWidth:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/browser/TabBar;->mAddTabOverlap:I

    sub-int/2addr v6, v7

    sub-int v7, p5, p3

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 204
    :cond_1
    return-void

    .line 193
    :cond_2
    iget-object v4, p0, Lcom/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/android/browser/TabBar;->mAddTabOverlap:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/browser/TabBar;->mButtonWidth:I

    .line 194
    sub-int v4, v3, v2

    iget v5, p0, Lcom/android/browser/TabBar;->mButtonWidth:I

    if-ge v4, v5, :cond_0

    .line 195
    iget v4, p0, Lcom/android/browser/TabBar;->mButtonWidth:I

    sub-int v2, v3, v4

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "hspec"
    .parameter "vspec"

    .prologue
    .line 174
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 175
    invoke-virtual {p0}, Lcom/android/browser/TabBar;->getMeasuredWidth()I

    move-result v0

    .line 177
    .local v0, w:I
    iget-boolean v1, p0, Lcom/android/browser/TabBar;->mUseQuickControls:Z

    if-nez v1, :cond_0

    .line 178
    iget v1, p0, Lcom/android/browser/TabBar;->mAddTabOverlap:I

    sub-int/2addr v0, v1

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/TabBar;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/TabBar;->setMeasuredDimension(II)V

    .line 181
    return-void
.end method

.method public onNewTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/android/browser/TabBar;->buildTabView(Lcom/android/browser/Tab;)Lcom/android/browser/TabBar$TabView;

    move-result-object v0

    .line 641
    .local v0, tv:Lcom/android/browser/TabBar$TabView;
    invoke-direct {p0, p1, v0}, Lcom/android/browser/TabBar;->animateTabIn(Lcom/android/browser/Tab;Lcom/android/browser/TabBar$TabView;)V

    .line 642
    return-void
.end method

.method public onProgress(Lcom/android/browser/Tab;I)V
    .locals 2
    .parameter "tab"
    .parameter "progress"

    .prologue
    .line 645
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/TabBar$TabView;

    .line 646
    .local v0, tv:Lcom/android/browser/TabBar$TabView;
    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {v0, p2}, Lcom/android/browser/TabBar$TabView;->setProgress(I)V

    .line 649
    :cond_0
    return-void
.end method

.method public onRemoveTab(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 652
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/TabBar$TabView;

    .line 653
    .local v0, tv:Lcom/android/browser/TabBar$TabView;
    if-eqz v0, :cond_0

    .line 654
    invoke-direct {p0, p1, v0}, Lcom/android/browser/TabBar;->animateTabOut(Lcom/android/browser/Tab;Lcom/android/browser/TabBar$TabView;)V

    .line 658
    :goto_0
    return-void

    .line 656
    :cond_0
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onScroll(IZ)V
    .locals 1
    .parameter "visibleTitleHeight"
    .parameter "userInitiated"

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/android/browser/TabBar;->mUseQuickControls:Z

    if-eqz v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/browser/TabBar;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/browser/TabBar;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    if-nez p1, :cond_3

    .line 282
    invoke-virtual {p0}, Lcom/android/browser/TabBar;->showsTitleBarIndicator()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v0}, Lcom/android/browser/XLargeUi;->isEditingUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v0}, Lcom/android/browser/XLargeUi;->hideTitleBar()V

    .line 285
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/TabBar;->showTitleBarIndicator(Z)V

    goto :goto_0

    .line 288
    :cond_3
    invoke-virtual {p0}, Lcom/android/browser/TabBar;->showsTitleBarIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/TabBar;->showTitleBarIndicator(Z)V

    goto :goto_0
.end method

.method public onSetActiveTab(Lcom/android/browser/Tab;)V
    .locals 5
    .parameter "tab"

    .prologue
    .line 619
    iget-object v3, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    iget-object v4, p0, Lcom/android/browser/TabBar;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4, p1}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/browser/TabScrollView;->setSelectedTab(I)V

    .line 620
    iget-object v3, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/TabBar$TabView;

    .line 621
    .local v1, tv:Lcom/android/browser/TabBar$TabView;
    if-eqz v1, :cond_0

    .line 622
    iget-object v3, v1, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v3}, Lcom/android/browser/Tab;->getLoadProgress()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/browser/TabBar$TabView;->setProgress(I)V

    .line 624
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 625
    .local v2, webview:Landroid/webkit/WebView;
    if-eqz v2, :cond_0

    .line 626
    invoke-virtual {v2}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v0

    .line 627
    .local v0, h:I
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/browser/TabBar;->onScroll(IZ)V

    .line 630
    .end local v0           #h:I
    .end local v2           #webview:Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method onShowTitleBar()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/TabBar;->showTitleBarIndicator(Z)V

    .line 262
    return-void
.end method

.method public onUrlAndTitle(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tab"
    .parameter "url"
    .parameter "title"

    .prologue
    .line 661
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/TabBar$TabView;

    .line 662
    .local v0, tv:Lcom/android/browser/TabBar$TabView;
    if-eqz v0, :cond_0

    .line 663
    if-eqz p3, :cond_1

    .line 664
    invoke-virtual {v0, p3}, Lcom/android/browser/TabBar$TabView;->setDisplayTitle(Ljava/lang/String;)V

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    if-eqz p2, :cond_0

    .line 666
    invoke-static {p2}, Lcom/android/browser/UrlUtils;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabBar$TabView;->setDisplayTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setUseQuickControls(Z)V
    .locals 2
    .parameter "useQuickControls"

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/android/browser/TabBar;->mUseQuickControls:Z

    .line 154
    iget-object v0, p0, Lcom/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/android/browser/TabBar;->mUseQuickControls:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 156
    return-void

    .line 154
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method showTitleBarIndicator(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 239
    iget-object v2, p0, Lcom/android/browser/TabBar;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 240
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/TabBar$TabView;

    .line 242
    .local v1, tv:Lcom/android/browser/TabBar$TabView;
    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v1, p1}, Lcom/android/browser/TabBar$TabView;->showIndicator(Z)V

    .line 246
    .end local v1           #tv:Lcom/android/browser/TabBar$TabView;
    :cond_0
    return-void
.end method

.method showsTitleBarIndicator()Z
    .locals 3

    .prologue
    .line 249
    iget-object v2, p0, Lcom/android/browser/TabBar;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 250
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 251
    iget-object v2, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/TabBar$TabView;

    .line 252
    .local v1, tv:Lcom/android/browser/TabBar$TabView;
    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {v1}, Lcom/android/browser/TabBar$TabView;->showsIndicator()Z

    move-result v2

    .line 256
    .end local v1           #tv:Lcom/android/browser/TabBar$TabView;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method updateTabs(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, tabs:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/Tab;>;"
    iget-object v3, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    invoke-virtual {v3}, Lcom/android/browser/TabScrollView;->clearTabs()V

    .line 164
    iget-object v3, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 165
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 166
    .local v1, tab:Lcom/android/browser/Tab;
    invoke-direct {p0, v1}, Lcom/android/browser/TabBar;->buildTabView(Lcom/android/browser/Tab;)Lcom/android/browser/TabBar$TabView;

    move-result-object v2

    .line 167
    .local v2, tv:Lcom/android/browser/TabBar$TabView;
    iget-object v3, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    invoke-virtual {v3, v2}, Lcom/android/browser/TabScrollView;->addTab(Landroid/view/View;)V

    goto :goto_0

    .line 169
    .end local v1           #tab:Lcom/android/browser/Tab;
    .end local v2           #tv:Lcom/android/browser/TabBar$TabView;
    :cond_0
    iget-object v3, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    iget-object v4, p0, Lcom/android/browser/TabBar;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/browser/TabScrollView;->setSelectedTab(I)V

    .line 170
    return-void
.end method
