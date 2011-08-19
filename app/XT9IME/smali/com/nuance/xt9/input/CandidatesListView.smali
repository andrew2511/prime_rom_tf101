.class public Lcom/nuance/xt9/input/CandidatesListView;
.super Landroid/view/View;
.source "CandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/CandidatesListView$RollAverage;,
        Lcom/nuance/xt9/input/CandidatesListView$GetMoreWordsHandler;,
        Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;
    }
.end annotation


# static fields
.field public static final COMPONENT_MARKER:C = '\u9fff'

.field protected static final EMPTY_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_NUMERIC_SELECTION_CANDIDATES:I = 0x9

#the value of this static final field might be set in the static constructor
.field protected static final MAX_SUGGESTIONS:I = 0x0

.field protected static final MSG_REMOVE_PREVIEW:I = 0x1

.field protected static final MSG_REMOVE_THROUGH_PREVIEW:I = 0x2

.field protected static final OUT_OF_BOUNDS:I = -0x1

.field protected static final SCROLL_PIXELS:I = 0xc

.field protected static TAG:Ljava/lang/String;


# instance fields
.field protected mA:F

.field protected mBgPadding:Landroid/graphics/Rect;

.field protected mColorComponent:I

.field protected mColorNormal:I

.field protected mColorOther:I

.field protected mColorRecommended:I

.field private mCurrentPage:I

.field protected mCurrentWordIndex:I

.field protected mDescent:I

.field protected mDivider:Landroid/graphics/drawable/Drawable;

.field protected mDragSelected:Z

.field protected mEnableHighlight:Z

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mGetMoreWordsHandler:Lcom/nuance/xt9/input/CandidatesListView$GetMoreWordsHandler;

.field mHandler:Landroid/os/Handler;

.field private mLocation:[I

.field protected mMinCandidateWidth:I

.field protected mMinPadWidth:I

.field protected mMouseDown:Z

.field private mNumericSelectionEnabled:Z

.field protected mOnWordSelectActionListener:Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;

.field protected mPadWidth:[I

.field private mPage:[I

.field private mPageCount:I

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPopupPreviewX:I

.field protected mPopupPreviewY:I

.field protected mPreviewPopup:Landroid/widget/PopupWindow;

.field protected mPreviewText:Landroid/widget/TextView;

.field protected mScrolled:Z

.field protected mSelectedIndex:I

.field protected mSelectedString:Ljava/lang/CharSequence;

.field protected mSelectionHighlight:Landroid/graphics/drawable/Drawable;

.field protected mShowingNextCandidatesPrediction:Z

.field protected mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field mSwipeSpeed:Lcom/nuance/xt9/input/CandidatesListView$RollAverage;

.field protected mTargetScrollX:I

.field protected mTextSize:I

.field protected mTotalWidth:I

.field protected mTouchIndex:I

.field protected mTouchX:I

.field protected mV:F

.field protected mWordWidth:[I

.field protected mWordX:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "WordListView"

    sput-object v0, Lcom/nuance/xt9/input/CandidatesListView;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nuance/xt9/input/CandidatesListView;->EMPTY_LIST:Ljava/util/List;

    .line 59
    const/16 v0, 0x100

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/nuance/xt9/input/CandidatesListView;->MAX_SUGGESTIONS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 183
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    sget-object v2, Lcom/nuance/xt9/input/CandidatesListView;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    .line 47
    const/4 v2, -0x1

    iput v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTouchX:I

    .line 65
    sget v2, Lcom/nuance/xt9/input/CandidatesListView;->MAX_SUGGESTIONS:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordWidth:[I

    .line 66
    sget v2, Lcom/nuance/xt9/input/CandidatesListView;->MAX_SUGGESTIONS:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPadWidth:[I

    .line 67
    sget v2, Lcom/nuance/xt9/input/CandidatesListView;->MAX_SUGGESTIONS:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordX:[I

    .line 85
    iput v5, p0, Lcom/nuance/xt9/input/CandidatesListView;->mV:F

    .line 86
    iput v5, p0, Lcom/nuance/xt9/input/CandidatesListView;->mA:F

    .line 88
    iput-boolean v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mMouseDown:Z

    .line 89
    iput-boolean v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mDragSelected:Z

    .line 91
    const/4 v2, -0x1

    iput v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTouchIndex:I

    .line 100
    sget v2, Lcom/nuance/xt9/input/CandidatesListView;->MAX_SUGGESTIONS:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPage:[I

    .line 101
    sget v2, Lcom/nuance/xt9/input/CandidatesListView;->MAX_SUGGESTIONS:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mLocation:[I

    .line 113
    new-instance v2, Lcom/nuance/xt9/input/CandidatesListView$1;

    invoke-direct {v2, p0}, Lcom/nuance/xt9/input/CandidatesListView$1;-><init>(Lcom/nuance/xt9/input/CandidatesListView;)V

    iput-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    .line 167
    new-instance v2, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;

    const v3, 0x3e99999a

    invoke-direct {v2, p0, v3}, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;-><init>(Lcom/nuance/xt9/input/CandidatesListView;F)V

    iput-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSwipeSpeed:Lcom/nuance/xt9/input/CandidatesListView$RollAverage;

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    .line 188
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 191
    .local v1, inflate:Landroid/view/LayoutInflater;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 192
    const v2, 0x7f030008

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    .line 193
    iget-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v8, v8}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 194
    iget-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 195
    iget-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/CandidatesListView;->readStyles(Landroid/content/Context;)V

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 203
    iput-boolean v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mEnableHighlight:Z

    .line 205
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    .line 206
    iget-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mColorNormal:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    iget-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 208
    iget-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 209
    iget-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 210
    iget-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mDescent:I

    .line 212
    iput-object v7, p0, Lcom/nuance/xt9/input/CandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/xt9/input/CandidatesListView$GetMoreWordsHandler;

    .line 213
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/nuance/xt9/input/CandidatesListView$2;

    invoke-direct {v3, p0}, Lcom/nuance/xt9/input/CandidatesListView$2;-><init>(Lcom/nuance/xt9/input/CandidatesListView;)V

    invoke-direct {v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 233
    iget-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 234
    invoke-virtual {p0, v6}, Lcom/nuance/xt9/input/CandidatesListView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 235
    invoke-virtual {p0, v4}, Lcom/nuance/xt9/input/CandidatesListView;->setWillNotDraw(Z)V

    .line 236
    invoke-virtual {p0, v4}, Lcom/nuance/xt9/input/CandidatesListView;->setHorizontalScrollBarEnabled(Z)V

    .line 237
    invoke-virtual {p0, v4}, Lcom/nuance/xt9/input/CandidatesListView;->setVerticalScrollBarEnabled(Z)V

    .line 238
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->clear()V

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 241
    .local v0, dm:Landroid/util/DisplayMetrics;
    const/high16 v2, 0x4120

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mMinPadWidth:I

    .line 242
    const/high16 v2, 0x4220

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mMinCandidateWidth:I

    .line 243
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/xt9/input/CandidatesListView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/CandidatesListView;->setScrollX(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/xt9/input/CandidatesListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/nuance/xt9/input/CandidatesListView;->needMoreWords()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/xt9/input/CandidatesListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/nuance/xt9/input/CandidatesListView;->hidePreview()V

    return-void
.end method

.method private bound(FFF)F
    .locals 1
    .parameter "val"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 170
    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    move v0, p2

    .line 174
    :goto_0
    return v0

    .line 172
    :cond_0
    cmpl-float v0, p1, p3

    if-lez v0, :cond_1

    move v0, p3

    .line 173
    goto :goto_0

    :cond_1
    move v0, p1

    .line 174
    goto :goto_0
.end method

.method private calculatePage()V
    .locals 18

    .prologue
    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object v7, v0

    .line 279
    .local v7, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    .line 280
    .local v2, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->getWidth()I

    move-result v10

    .line 282
    .local v10, totalCandidateWidth:I
    const/4 v3, 0x0

    .line 283
    .local v3, currentWidth:I
    const/4 v11, 0x1

    .line 284
    .local v11, wordCountOnPage:I
    const/4 v13, 0x0

    .line 286
    .local v13, wordX:I
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/xt9/input/CandidatesListView;->mPageCount:I

    .line 288
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 289
    const/4 v8, 0x0

    .line 290
    .local v8, startIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    .line 291
    .local v9, suggestion:Ljava/lang/CharSequence;
    const/4 v14, 0x0

    invoke-interface {v9, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    const v15, 0x9fff

    if-ne v14, v15, :cond_1

    .line 292
    const/4 v14, 0x1

    invoke-interface {v9, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    const/16 v15, 0x7e

    if-ne v14, v15, :cond_0

    .line 288
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 295
    :cond_0
    const/4 v8, 0x1

    .line 298
    :cond_1
    div-int/lit8 v5, v10, 0x9

    .line 299
    .local v5, minCandidateWidth:I
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-virtual {v7, v9, v8, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v14

    float-to-int v12, v14

    .line 300
    .local v12, wordWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mMinPadWidth:I

    move v14, v0

    sub-int v15, v5, v12

    div-int/lit8 v15, v15, 0x2

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 302
    .local v6, padWidth:I
    mul-int/lit8 v14, v6, 0x2

    add-int/2addr v12, v14

    .line 303
    add-int/2addr v3, v12

    .line 304
    if-le v3, v10, :cond_2

    .line 305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mPageCount:I

    move v14, v0

    add-int/lit8 v14, v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/xt9/input/CandidatesListView;->mPageCount:I

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mWordWidth:[I

    move-object v14, v0

    const/4 v15, 0x1

    sub-int v15, v4, v15

    aget v16, v14, v15

    sub-int v17, v3, v10

    sub-int v17, v12, v17

    add-int v16, v16, v17

    aput v16, v14, v15

    .line 307
    const/4 v11, 0x1

    .line 308
    move v3, v12

    .line 311
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mWordWidth:[I

    move-object v14, v0

    aput v12, v14, v4

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mPadWidth:[I

    move-object v14, v0

    aput v6, v14, v4

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mPage:[I

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mPageCount:I

    move v15, v0

    const/16 v16, 0x1

    sub-int v15, v15, v16

    aput v15, v14, v4

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mLocation:[I

    move-object v14, v0

    aput v11, v14, v4

    .line 316
    const/16 v14, 0x9

    if-ne v11, v14, :cond_3

    .line 317
    const/4 v3, 0x0

    .line 318
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mPageCount:I

    move v14, v0

    add-int/lit8 v14, v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/xt9/input/CandidatesListView;->mPageCount:I

    .line 319
    const/4 v11, 0x0

    .line 321
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mWordX:[I

    move-object v14, v0

    aput v13, v14, v4

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mWordWidth:[I

    move-object v14, v0

    aget v14, v14, v4

    add-int/2addr v13, v14

    goto/16 :goto_1

    .line 327
    .end local v5           #minCandidateWidth:I
    .end local v6           #padWidth:I
    .end local v8           #startIndex:I
    .end local v9           #suggestion:Ljava/lang/CharSequence;
    .end local v12           #wordWidth:I
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->calculateWidth()I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/xt9/input/CandidatesListView;->mTotalWidth:I

    .line 328
    return-void
.end method

.method private calculateWidth()I
    .locals 4

    .prologue
    .line 331
    iget-object v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 332
    .local v0, count:I
    const/4 v2, 0x0

    .line 333
    .local v2, sum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 334
    iget-object v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordWidth:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_0
    return v2
.end method

.method private hidePreview()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1000
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mCurrentWordIndex:I

    .line 1001
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1003
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1005
    :cond_0
    return-void
.end method

.method private needMoreWords()Z
    .locals 2

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/xt9/input/CandidatesListView$GetMoreWordsHandler;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTotalWidth:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDrawNormal(Landroid/graphics/Canvas;)V
    .locals 28
    .parameter "canvas"

    .prologue
    .line 458
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/xt9/input/CandidatesListView;->mTotalWidth:I

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    move-object v5, v0

    if-nez v5, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->getHeight()I

    move-result v15

    .line 462
    .local v15, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    move-object v5, v0

    if-nez v5, :cond_2

    .line 463
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/xt9/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 469
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->getHeight()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->getHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->getHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 472
    const/16 v26, 0x0

    .line 473
    .local v26, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    .line 474
    .local v14, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    move-object v13, v0

    .line 475
    .local v13, bgPadding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object v11, v0

    .line 476
    .local v11, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mTouchX:I

    move/from16 v24, v0

    .line 477
    .local v24, touchX:I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v20

    .line 478
    .local v20, scrollX:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mScrolled:Z

    move/from16 v21, v0

    .line 479
    .local v21, scrolled:Z
    int-to-float v5, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mDescent:I

    move v6, v0

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v27, v5, 0x2

    .line 481
    .local v27, y:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    move v1, v14

    if-ge v0, v1, :cond_f

    .line 483
    if-nez v16, :cond_3

    if-eqz p1, :cond_3

    .line 484
    move/from16 v0, v26

    int-to-float v0, v0

    move v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 486
    move/from16 v0, v26

    neg-int v0, v0

    move v5, v0

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 489
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 490
    .local v6, suggestion:Ljava/lang/CharSequence;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 481
    .end local v6           #suggestion:Ljava/lang/CharSequence;
    :cond_4
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 494
    .restart local v6       #suggestion:Ljava/lang/CharSequence;
    :cond_5
    const/4 v7, 0x0

    .line 495
    .local v7, startIndex:I
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 497
    const/4 v5, 0x0

    invoke-interface {v6, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const v8, 0x9fff

    if-ne v5, v8, :cond_8

    .line 498
    const/4 v5, 0x1

    invoke-interface {v6, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v7, 0x7e

    if-eq v5, v7, :cond_4

    .line 501
    .end local v7           #startIndex:I
    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 502
    const/4 v7, 0x1

    .line 503
    .restart local v7       #startIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mColorComponent:I

    move v5, v0

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 521
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mWordWidth:[I

    move-object v5, v0

    aget v5, v5, v16

    if-eqz v5, :cond_b

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mWordWidth:[I

    move-object v5, v0

    aget v25, v5, v16

    .line 523
    .local v25, wordWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mPadWidth:[I

    move-object v5, v0

    aget v19, v5, v16

    .line 534
    .local v19, padWidth:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mWordX:[I

    move-object v5, v0

    aput v26, v5, v16

    .line 536
    add-int v5, v24, v20

    move v0, v5

    move/from16 v1, v26

    if-lt v0, v1, :cond_7

    add-int v5, v24, v20

    add-int v8, v26, v25

    if-ge v5, v8, :cond_7

    if-nez v21, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mTouchX:I

    move v5, v0

    const/4 v8, -0x1

    if-eq v5, v8, :cond_7

    .line 537
    if-eqz p1, :cond_6

    .line 538
    move/from16 v0, v26

    int-to-float v0, v0

    move v5, v0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    const/4 v8, 0x0

    iget v9, v13, Landroid/graphics/Rect;->top:I

    move-object v0, v5

    move v1, v8

    move v2, v9

    move/from16 v3, v25

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 541
    move/from16 v0, v26

    neg-int v0, v0

    move v5, v0

    int-to-float v5, v5

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 543
    :cond_6
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/xt9/input/CandidatesListView;->mTouchIndex:I

    .line 547
    :cond_7
    if-eqz p1, :cond_e

    .line 548
    instance-of v5, v6, Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_c

    .line 550
    move-object v0, v6

    check-cast v0, Landroid/text/SpannableStringBuilder;

    move-object v8, v0

    const/4 v5, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const-class v10, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v8, v5, v9, v10}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/ForegroundColorSpan;

    .local v12, arr$:[Landroid/text/style/ForegroundColorSpan;
    move-object v0, v12

    array-length v0, v0

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_5
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    aget-object v22, v12, v17

    .line 552
    .local v22, span:Landroid/text/style/ForegroundColorSpan;
    invoke-virtual/range {v22 .. v22}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v5

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 550
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 505
    .end local v12           #arr$:[Landroid/text/style/ForegroundColorSpan;
    .end local v17           #i$:I
    .end local v18           #len$:I
    .end local v19           #padWidth:I
    .end local v22           #span:Landroid/text/style/ForegroundColorSpan;
    .end local v25           #wordWidth:I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    move v5, v0

    move v0, v5

    move/from16 v1, v16

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mEnableHighlight:Z

    move v5, v0

    if-eqz v5, :cond_9

    .line 508
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 510
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mColorRecommended:I

    move v5, v0

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 512
    :cond_9
    if-nez v16, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mEnableHighlight:Z

    move v5, v0

    if-eqz v5, :cond_a

    .line 513
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mColorNormal:I

    move v5, v0

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 516
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mColorOther:I

    move v5, v0

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 525
    :cond_b
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v11, v6, v7, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v23

    .line 526
    .local v23, textWidth:F
    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v25, v0

    .line 528
    .restart local v25       #wordWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mMinPadWidth:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mMinCandidateWidth:I

    move v8, v0

    sub-int v8, v8, v25

    div-int/lit8 v8, v8, 0x2

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 529
    .restart local v19       #padWidth:I
    mul-int/lit8 v5, v19, 0x2

    add-int v25, v25, v5

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mWordWidth:[I

    move-object v5, v0

    aput v25, v5, v16

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mPadWidth:[I

    move-object v5, v0

    aput v19, v5, v16

    goto/16 :goto_4

    .line 558
    .end local v23           #textWidth:F
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    move v5, v0

    move v0, v5

    move/from16 v1, v16

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mEnableHighlight:Z

    move v5, v0

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mTouchX:I

    move v5, v0

    const/4 v8, -0x1

    if-ne v5, v8, :cond_d

    .line 559
    move/from16 v0, v26

    int-to-float v0, v0

    move v5, v0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    const/4 v8, 0x0

    iget v9, v13, Landroid/graphics/Rect;->top:I

    move-object v0, v5

    move v1, v8

    move v2, v9

    move/from16 v3, v25

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 562
    move/from16 v0, v26

    neg-int v0, v0

    move v5, v0

    int-to-float v5, v5

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 566
    :cond_d
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int v5, v26, v19

    int-to-float v9, v5

    move/from16 v0, v27

    int-to-float v0, v0

    move v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 567
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mColorOther:I

    move v5, v0

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 568
    add-int v5, v26, v25

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 569
    .end local v6           #suggestion:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 570
    move/from16 v0, v26

    neg-int v0, v0

    move v5, v0

    sub-int v5, v5, v25

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 572
    :cond_e
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 573
    add-int v26, v26, v25

    goto/16 :goto_2

    .line 575
    .end local v7           #startIndex:I
    .end local v19           #padWidth:I
    .end local v25           #wordWidth:I
    :cond_f
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/xt9/input/CandidatesListView;->mTotalWidth:I

    .line 576
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mTargetScrollX:I

    move v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v6

    if-eq v5, v6, :cond_10

    .line 577
    invoke-direct/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->scrollToTarget()V

    .line 585
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mMouseDown:Z

    move v5, v0

    if-nez v5, :cond_0

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->calcAccel()V

    .line 587
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mA:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_11

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mV:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 588
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->slide()V

    goto/16 :goto_0
.end method

.method private onDrawNumericSelection(Landroid/graphics/Canvas;)V
    .locals 31
    .parameter "canvas"

    .prologue
    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    move-object v5, v0

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->getHeight()I

    move-result v16

    .line 343
    .local v16, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    move-object v5, v0

    if-nez v5, :cond_2

    .line 344
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/xt9/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 350
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->getHeight()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->getHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->getHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 353
    const/16 v29, 0x0

    .line 354
    .local v29, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    .line 355
    .local v14, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    move-object v13, v0

    .line 356
    .local v13, bgPadding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object v11, v0

    .line 357
    .local v11, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mTouchX:I

    move/from16 v27, v0

    .line 358
    .local v27, touchX:I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v23

    .line 359
    .local v23, scrollX:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mScrolled:Z

    move/from16 v24, v0

    .line 360
    .local v24, scrolled:Z
    move/from16 v0, v16

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mDescent:I

    move v6, v0

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v30, v5, 0x2

    .line 362
    .local v30, y:I
    const/16 v26, 0x0

    .line 363
    .local v26, startWord:I
    :goto_1
    move/from16 v0, v26

    move v1, v14

    if-ge v0, v1, :cond_3

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mPage:[I

    move-object v5, v0

    aget v5, v5, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mCurrentPage:I

    move v6, v0

    if-ne v5, v6, :cond_7

    .line 368
    :cond_3
    move/from16 v15, v26

    .line 369
    .local v15, endWord:I
    :goto_2
    if-ge v15, v14, :cond_4

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mPage:[I

    move-object v5, v0

    aget v5, v5, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mCurrentPage:I

    move v6, v0

    if-eq v5, v6, :cond_8

    .line 375
    :cond_4
    move/from16 v17, v26

    .local v17, i:I
    :goto_3
    move/from16 v0, v17

    move v1, v15

    if-ge v0, v1, :cond_11

    .line 376
    move/from16 v0, v26

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 377
    move/from16 v0, v29

    int-to-float v0, v0

    move v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 379
    move/from16 v0, v29

    neg-int v0, v0

    move v5, v0

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 382
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 383
    .local v6, suggestion:Ljava/lang/CharSequence;
    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_9

    .line 375
    .end local v6           #suggestion:Ljava/lang/CharSequence;
    :cond_6
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 363
    .end local v15           #endWord:I
    .end local v17           #i:I
    :cond_7
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 369
    .restart local v15       #endWord:I
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 387
    .restart local v6       #suggestion:Ljava/lang/CharSequence;
    .restart local v17       #i:I
    :cond_9
    const/4 v7, 0x0

    .line 388
    .local v7, startIndex:I
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 390
    const/4 v5, 0x0

    invoke-interface {v6, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const v8, 0x9fff

    if-ne v5, v8, :cond_c

    .line 391
    const/4 v5, 0x1

    invoke-interface {v6, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v7, 0x7e

    if-eq v5, v7, :cond_6

    .line 394
    .end local v7           #startIndex:I
    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 395
    const/4 v7, 0x1

    .line 396
    .restart local v7       #startIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mColorComponent:I

    move v5, v0

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 407
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mWordWidth:[I

    move-object v5, v0

    aget v28, v5, v17

    .line 408
    .local v28, wordWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mPadWidth:[I

    move-object v5, v0

    aget v22, v5, v17

    .line 409
    .local v22, padWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mWordX:[I

    move-object v5, v0

    aget v29, v5, v17

    .line 411
    add-int v5, v27, v23

    move v0, v5

    move/from16 v1, v29

    if-lt v0, v1, :cond_b

    add-int v5, v27, v23

    add-int v8, v29, v28

    if-ge v5, v8, :cond_b

    if-nez v24, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mTouchX:I

    move v5, v0

    const/4 v8, -0x1

    if-eq v5, v8, :cond_b

    .line 412
    if-eqz p1, :cond_a

    .line 413
    move/from16 v0, v29

    int-to-float v0, v0

    move v5, v0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    const/4 v8, 0x0

    iget v9, v13, Landroid/graphics/Rect;->top:I

    move-object v0, v5

    move v1, v8

    move v2, v9

    move/from16 v3, v28

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 416
    move/from16 v0, v29

    neg-int v0, v0

    move v5, v0

    int-to-float v5, v5

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 418
    :cond_a
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/xt9/input/CandidatesListView;->mTouchIndex:I

    .line 421
    :cond_b
    instance-of v5, v6, Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_f

    .line 422
    move-object v0, v6

    check-cast v0, Landroid/text/SpannableStringBuilder;

    move-object v8, v0

    const/4 v5, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const-class v10, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v8, v5, v9, v10}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/ForegroundColorSpan;

    .local v12, arr$:[Landroid/text/style/ForegroundColorSpan;
    move-object v0, v12

    array-length v0, v0

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_6
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    aget-object v25, v12, v18

    .line 423
    .local v25, span:Landroid/text/style/ForegroundColorSpan;
    invoke-virtual/range {v25 .. v25}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v5

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 422
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 397
    .end local v12           #arr$:[Landroid/text/style/ForegroundColorSpan;
    .end local v18           #i$:I
    .end local v19           #len$:I
    .end local v22           #padWidth:I
    .end local v25           #span:Landroid/text/style/ForegroundColorSpan;
    .end local v28           #wordWidth:I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    move v5, v0

    move v0, v5

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mEnableHighlight:Z

    move v5, v0

    if-eqz v5, :cond_d

    .line 399
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mColorRecommended:I

    move v5, v0

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_5

    .line 401
    :cond_d
    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mEnableHighlight:Z

    move v5, v0

    if-eqz v5, :cond_e

    .line 402
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mColorNormal:I

    move v5, v0

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_5

    .line 404
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mColorOther:I

    move v5, v0

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_5

    .line 428
    .restart local v22       #padWidth:I
    .restart local v28       #wordWidth:I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    move v5, v0

    move v0, v5

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mEnableHighlight:Z

    move v5, v0

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mTouchX:I

    move v5, v0

    const/4 v8, -0x1

    if-ne v5, v8, :cond_10

    .line 429
    move/from16 v0, v29

    int-to-float v0, v0

    move v5, v0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    const/4 v8, 0x0

    iget v9, v13, Landroid/graphics/Rect;->top:I

    move-object v0, v5

    move v1, v8

    move v2, v9

    move/from16 v3, v28

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 432
    move/from16 v0, v29

    neg-int v0, v0

    move v5, v0

    int-to-float v5, v5

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 435
    :cond_10
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int v5, v29, v22

    int-to-float v9, v5

    move/from16 v0, v30

    int-to-float v0, v0

    move v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 436
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mColorOther:I

    move v5, v0

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    add-int v5, v29, v28

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 438
    .end local v6           #suggestion:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 439
    move/from16 v0, v29

    neg-int v0, v0

    move v5, v0

    sub-int v5, v5, v28

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 442
    invoke-virtual {v11}, Landroid/graphics/Paint;->getTextSize()F

    move-result v21

    .line 443
    .local v21, oldSize:F
    invoke-virtual {v11}, Landroid/graphics/Paint;->getAlpha()I

    move-result v20

    .line 444
    .local v20, oldAlpha:I
    const/high16 v5, 0x4000

    div-float v5, v21, v5

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 445
    const/16 v5, 0xa0

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 446
    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mLocation:[I

    move-object v8, v0

    .end local v7           #startIndex:I
    aget v8, v8, v17

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    div-int/lit8 v6, v22, 0x2

    add-int v6, v6, v29

    int-to-float v6, v6

    invoke-virtual {v11}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 447
    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 448
    move-object v0, v11

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 449
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_4

    .line 452
    .end local v20           #oldAlpha:I
    .end local v21           #oldSize:F
    .end local v22           #padWidth:I
    .end local v28           #wordWidth:I
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mTargetScrollX:I

    move v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 453
    invoke-direct/range {p0 .. p0}, Lcom/nuance/xt9/input/CandidatesListView;->scrollToTarget()V

    goto/16 :goto_0
.end method

.method private readStyles(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/high16 v6, -0x1

    .line 1072
    const v4, 0x7f0e0004

    sget-object v5, Lcom/nuance/xt9/input/R$styleable;->WordListView:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1076
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 1078
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1079
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 1081
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 1078
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1083
    :pswitch_0
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mColorNormal:I

    goto :goto_1

    .line 1086
    :pswitch_1
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mColorRecommended:I

    goto :goto_1

    .line 1089
    :pswitch_2
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mColorOther:I

    goto :goto_1

    .line 1092
    :pswitch_3
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mColorComponent:I

    goto :goto_1

    .line 1095
    :pswitch_4
    const/16 v4, 0x14

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTextSize:I

    goto :goto_1

    .line 1098
    .end local v1           #attr:I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1099
    return-void

    .line 1081
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private scrollToTarget()V
    .locals 13

    .prologue
    const-wide/high16 v11, 0x4028

    const-wide/high16 v9, 0x3ff8

    const-wide/high16 v7, 0x3ff0

    const-wide/high16 v5, 0x4059

    .line 746
    iget v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 747
    iget v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v0, v2

    .line 748
    .local v0, dist:D
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    div-double/2addr v3, v5

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v3, v11

    add-double/2addr v3, v7

    double-to-int v3, v3

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/CandidatesListView;->setScrollX(I)V

    .line 749
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTargetScrollX:I

    if-lt v2, v3, :cond_0

    .line 750
    iget v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTargetScrollX:I

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/CandidatesListView;->setScrollX(I)V

    .line 751
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->requestLayout()V

    .line 761
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->invalidate()V

    .line 762
    return-void

    .line 754
    .end local v0           #dist:D
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTargetScrollX:I

    sub-int/2addr v2, v3

    int-to-double v0, v2

    .line 755
    .restart local v0       #dist:D
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    div-double/2addr v3, v5

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v3, v11

    add-double/2addr v3, v7

    double-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/CandidatesListView;->setScrollX(I)V

    .line 756
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTargetScrollX:I

    if-gt v2, v3, :cond_0

    .line 757
    iget v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTargetScrollX:I

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/CandidatesListView;->setScrollX(I)V

    .line 758
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->requestLayout()V

    goto :goto_0
.end method

.method private setScrollX(I)V
    .locals 1
    .parameter "newScrollX"

    .prologue
    .line 1068
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/xt9/input/CandidatesListView;->scrollTo(II)V

    .line 1069
    return-void
.end method

.method private setScrollXNoSlide(I)V
    .locals 1
    .parameter "newScrollX"

    .prologue
    .line 1305
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1306
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/CandidatesListView;->setScrollX(I)V

    .line 1307
    iput p1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTargetScrollX:I

    .line 1308
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->requestLayout()V

    .line 1309
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->invalidate()V

    .line 1311
    :cond_0
    return-void
.end method

.method private slide()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 699
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v4

    int-to-float v3, v4

    .line 700
    .local v3, oldX:F
    iget v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTotalWidth:I

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 703
    .local v1, maxScroll:I
    const/high16 v0, 0x3f80

    .line 704
    .local v0, dt:F
    iget v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mV:F

    .line 708
    .local v2, oldV:F
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v4

    iget v5, p0, Lcom/nuance/xt9/input/CandidatesListView;->mV:F

    mul-float/2addr v5, v0

    invoke-virtual {p0, v5}, Lcom/nuance/xt9/input/CandidatesListView;->pull(F)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/CandidatesListView;->setScrollX(I)V

    .line 709
    iget v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mV:F

    iget v5, p0, Lcom/nuance/xt9/input/CandidatesListView;->mA:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mV:F

    .line 711
    iget v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mV:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f80

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 712
    iput v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mV:F

    .line 716
    :cond_0
    iget v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mV:F

    mul-float/2addr v4, v2

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v4

    if-ltz v4, :cond_1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v4

    if-le v4, v1, :cond_3

    :cond_1
    cmpg-float v4, v3, v6

    if-gez v4, :cond_2

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v4

    if-gez v4, :cond_3

    :cond_2
    int-to-float v4, v1

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v4

    if-gt v4, v1, :cond_4

    .line 720
    :cond_3
    iput v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mV:F

    .line 721
    iput v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mA:F

    .line 722
    cmpg-float v4, v3, v6

    if-gez v4, :cond_6

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v4

    if-ltz v4, :cond_6

    .line 723
    invoke-direct {p0, v7}, Lcom/nuance/xt9/input/CandidatesListView;->setScrollX(I)V

    .line 731
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v4

    iput v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTargetScrollX:I

    .line 732
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->requestLayout()V

    .line 734
    invoke-direct {p0}, Lcom/nuance/xt9/input/CandidatesListView;->needMoreWords()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 735
    iget-object v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/xt9/input/CandidatesListView$GetMoreWordsHandler;

    invoke-interface {v4}, Lcom/nuance/xt9/input/CandidatesListView$GetMoreWordsHandler;->requestMoreWords()V

    .line 739
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->invalidate()V

    .line 740
    return-void

    .line 725
    :cond_6
    int-to-float v4, v1

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v4

    if-gt v4, v1, :cond_4

    .line 727
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/CandidatesListView;->setScrollX(I)V

    goto :goto_0
.end method

.method private stopSliding()V
    .locals 2

    .prologue
    .line 1298
    iget v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1299
    iget v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTargetScrollX:I

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/CandidatesListView;->setScrollX(I)V

    .line 1300
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->requestLayout()V

    .line 1302
    :cond_0
    return-void
.end method

.method private turnToNextPage()V
    .locals 7

    .prologue
    .line 1229
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v6

    add-int v1, v5, v6

    .line 1230
    .local v1, currentRightEdge:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v0

    .line 1231
    .local v0, currentLeftEdge:I
    iget-object v5, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordX:[I

    iget v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    aget v2, v5, v6

    .line 1232
    .local v2, neededLeftEdge:I
    iget-object v5, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordWidth:[I

    iget v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    aget v5, v5, v6

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_3

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    move v3, v5

    .line 1237
    .local v3, neededRightEdge:I
    :goto_0
    if-lt v2, v0, :cond_0

    if-gt v3, v1, :cond_0

    sub-int v5, v3, v1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getWidth()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 1241
    :cond_0
    move v4, v2

    .line 1242
    .local v4, targetScrollX:I
    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/CandidatesListView;->setScrollXNoSlide(I)V

    .line 1244
    invoke-direct {p0}, Lcom/nuance/xt9/input/CandidatesListView;->needMoreWords()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1245
    iget-object v5, p0, Lcom/nuance/xt9/input/CandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/xt9/input/CandidatesListView$GetMoreWordsHandler;

    invoke-interface {v5}, Lcom/nuance/xt9/input/CandidatesListView$GetMoreWordsHandler;->requestMoreWords()V

    .line 1249
    :cond_1
    iget-object v5, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPage:[I

    iget v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    aget v5, v5, v6

    iput v5, p0, Lcom/nuance/xt9/input/CandidatesListView;->mCurrentPage:I

    .line 1252
    .end local v4           #targetScrollX:I
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->invalidate()V

    .line 1253
    return-void

    .line 1232
    .end local v3           #neededRightEdge:I
    :cond_3
    iget-object v5, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordWidth:[I

    iget v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    aget v5, v5, v6

    add-int/2addr v5, v2

    move v3, v5

    goto :goto_0
.end method

.method private turnToPreviousPage()V
    .locals 9

    .prologue
    .line 1256
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v8

    add-int v1, v7, v8

    .line 1257
    .local v1, currentRightEdge:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v0

    .line 1258
    .local v0, currentLeftEdge:I
    iget-object v7, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordX:[I

    iget v8, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    aget v4, v7, v8

    .line 1259
    .local v4, neededLeftEdge:I
    iget-object v7, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordWidth:[I

    iget v8, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    aget v7, v7, v8

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getWidth()I

    move-result v8

    if-le v7, v8, :cond_4

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getWidth()I

    move-result v7

    add-int/2addr v7, v4

    move v5, v7

    .line 1264
    .local v5, neededRightEdge:I
    :goto_0
    if-lt v4, v0, :cond_0

    if-gt v5, v1, :cond_0

    sub-int v7, v0, v4

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getWidth()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 1267
    :cond_0
    const/4 v6, 0x0

    .line 1268
    .local v6, targetScrollX:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->isNumericSelectionEnabled()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1269
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getWidth()I

    move-result v7

    sub-int v6, v5, v7

    .line 1270
    if-gez v6, :cond_1

    .line 1271
    const/4 v6, 0x0

    .line 1285
    :cond_1
    :goto_1
    invoke-direct {p0, v6}, Lcom/nuance/xt9/input/CandidatesListView;->setScrollXNoSlide(I)V

    .line 1287
    invoke-direct {p0}, Lcom/nuance/xt9/input/CandidatesListView;->needMoreWords()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1288
    iget-object v7, p0, Lcom/nuance/xt9/input/CandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/xt9/input/CandidatesListView$GetMoreWordsHandler;

    invoke-interface {v7}, Lcom/nuance/xt9/input/CandidatesListView$GetMoreWordsHandler;->requestMoreWords()V

    .line 1292
    :cond_2
    iget-object v7, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPage:[I

    iget v8, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    aget v7, v7, v8

    iput v7, p0, Lcom/nuance/xt9/input/CandidatesListView;->mCurrentPage:I

    .line 1294
    .end local v6           #targetScrollX:I
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->invalidate()V

    .line 1295
    return-void

    .line 1259
    .end local v5           #neededRightEdge:I
    :cond_4
    iget-object v7, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordWidth:[I

    iget v8, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    aget v7, v7, v8

    add-int/2addr v7, v4

    move v5, v7

    goto :goto_0

    .line 1274
    .restart local v5       #neededRightEdge:I
    .restart local v6       #targetScrollX:I
    :cond_5
    iget-object v7, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPage:[I

    iget v8, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    aget v3, v7, v8

    .line 1275
    .local v3, lastItemPage:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v7, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 1276
    iget-object v7, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPage:[I

    aget v7, v7, v2

    if-ne v7, v3, :cond_6

    .line 1277
    iget-object v7, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordX:[I

    aget v6, v7, v2

    .line 1278
    if-gez v6, :cond_1

    .line 1279
    const/4 v6, 0x0

    goto :goto_1

    .line 1275
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method protected calcAccel()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 621
    iget v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mV:F

    cmpl-float v4, v6, v4

    if-nez v4, :cond_1

    move v2, v6

    .line 622
    .local v2, vUnitVect:F
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v4

    int-to-float v3, v4

    .line 623
    .local v3, x:F
    iget v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTotalWidth:I

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 626
    .local v0, maxScroll:I
    cmpg-float v4, v3, v6

    if-ltz v4, :cond_0

    int-to-float v4, v0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    .line 627
    :cond_0
    cmpg-float v4, v3, v6

    if-gez v4, :cond_2

    move v1, v3

    .line 630
    .local v1, oobDist:F
    :goto_1
    mul-float v4, v2, v1

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    .line 631
    const v4, -0x445c28f6

    mul-float/2addr v4, v2

    mul-float/2addr v4, v1

    mul-float/2addr v4, v1

    iput v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mA:F

    .line 632
    iget v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mA:F

    const/high16 v5, -0x3ee0

    const/high16 v6, 0x4120

    invoke-direct {p0, v4, v5, v6}, Lcom/nuance/xt9/input/CandidatesListView;->bound(FFF)F

    move-result v4

    iput v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mA:F

    .line 656
    .end local v1           #oobDist:F
    :goto_2
    return-void

    .line 621
    .end local v0           #maxScroll:I
    .end local v2           #vUnitVect:F
    .end local v3           #x:F
    :cond_1
    iget v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mV:F

    iget v5, p0, Lcom/nuance/xt9/input/CandidatesListView;->mV:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v4, v5

    move v2, v4

    goto :goto_0

    .line 627
    .restart local v0       #maxScroll:I
    .restart local v2       #vUnitVect:F
    .restart local v3       #x:F
    :cond_2
    int-to-float v4, v0

    sub-float v4, v3, v4

    move v1, v4

    goto :goto_1

    .line 636
    .restart local v1       #oobDist:F
    :cond_3
    iput v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mA:F

    .line 637
    iput v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mV:F

    .line 638
    cmpg-float v4, v1, v6

    if-gez v4, :cond_4

    .line 639
    iput v7, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTargetScrollX:I

    .line 644
    :goto_3
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->invalidate()V

    goto :goto_2

    .line 642
    :cond_4
    iput v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTargetScrollX:I

    goto :goto_3

    .line 649
    .end local v1           #oobDist:F
    :cond_5
    iget v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mV:F

    cmpl-float v4, v6, v4

    if-eqz v4, :cond_6

    .line 650
    const v4, -0x40e66666

    mul-float/2addr v4, v2

    iput v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mA:F

    goto :goto_2

    .line 653
    :cond_6
    iput v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mA:F

    goto :goto_2
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 890
    sget-object v0, Lcom/nuance/xt9/input/CandidatesListView;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    .line 891
    iput v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTouchX:I

    .line 892
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    .line 893
    iput v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    .line 894
    iput v1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTotalWidth:I

    .line 895
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->invalidate()V

    .line 896
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordWidth:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 897
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordX:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 898
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 901
    :cond_0
    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/CandidatesListView;->setScrollX(I)V

    .line 902
    iput v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mA:F

    .line 903
    iput v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mV:F

    .line 906
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPage:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 907
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mLocation:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 908
    iput v1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mCurrentPage:I

    .line 909
    iput v1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPageCount:I

    .line 911
    return-void
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTotalWidth:I

    return v0
.end method

.method public disableHighlight()V
    .locals 1

    .prologue
    .line 1106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mEnableHighlight:Z

    .line 1107
    return-void
.end method

.method public enableHighlight()V
    .locals 1

    .prologue
    .line 1102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mEnableHighlight:Z

    .line 1103
    return-void
.end method

.method public enableNumericSelection(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1126
    iput-boolean p1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mNumericSelectionEnabled:Z

    .line 1127
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->clear()V

    .line 1128
    return-void
.end method

.method public getCurrentHighlighted()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1117
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    .line 1121
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumericIndexWord(I)I
    .locals 5
    .parameter "index"

    .prologue
    .line 1335
    if-ltz p1, :cond_0

    const/16 v3, 0x9

    if-gt p1, v3, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 1336
    :cond_0
    const/4 v3, -0x1

    .line 1352
    :goto_0
    return v3

    .line 1340
    :cond_1
    const/4 v1, -0x1

    .line 1341
    .local v1, newIndex:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v2

    .line 1342
    .local v2, wordCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 1343
    iget-object v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPage:[I

    aget v3, v3, v0

    iget v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mCurrentPage:I

    if-ne v3, v4, :cond_4

    .line 1344
    add-int v1, p1, v0

    .line 1349
    :cond_2
    if-lt v1, v2, :cond_3

    .line 1350
    const/4 v1, -0x1

    :cond_3
    move v3, v1

    .line 1352
    goto :goto_0

    .line 1342
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 1189
    iget v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    return v0
.end method

.method public isEnableHighlight()Z
    .locals 1

    .prologue
    .line 1193
    iget-boolean v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mEnableHighlight:Z

    return v0
.end method

.method public isNumericSelectionEnabled()Z
    .locals 1

    .prologue
    .line 1131
    iget-boolean v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mNumericSelectionEnabled:Z

    return v0
.end method

.method public isShowingNextCandidatesPrediction()Z
    .locals 1

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mShowingNextCandidatesPrediction:Z

    return v0
.end method

.method protected longPressFirstWord()V
    .locals 0

    .prologue
    .line 1049
    return-void
.end method

.method public moveSelectedIndex(Z)V
    .locals 5
    .parameter "toNextWord"

    .prologue
    const/4 v3, 0x1

    .line 1197
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v1

    .line 1198
    .local v1, wordCount:I
    if-nez v1, :cond_1

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1203
    :cond_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/CandidatesListView;->stopSliding()V

    .line 1205
    if-eqz p1, :cond_3

    .line 1206
    iget v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    .line 1207
    .local v0, oldSelectedIndex:I
    iget v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    if-lt v2, v1, :cond_2

    .line 1208
    sub-int v2, v1, v3

    iput v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    .line 1211
    :cond_2
    iget v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    if-eq v0, v2, :cond_0

    .line 1212
    iget v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    iget-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    iget v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v3, v2}, Lcom/nuance/xt9/input/CandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 1213
    invoke-direct {p0}, Lcom/nuance/xt9/input/CandidatesListView;->turnToNextPage()V

    goto :goto_0

    .line 1216
    .end local v0           #oldSelectedIndex:I
    :cond_3
    iget v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    .line 1217
    .restart local v0       #oldSelectedIndex:I
    iget v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    if-gez v2, :cond_4

    .line 1218
    const/4 v2, 0x0

    iput v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    .line 1221
    :cond_4
    iget v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    if-eq v0, v2, :cond_0

    .line 1222
    iget v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    iget-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    iget v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v3, v2}, Lcom/nuance/xt9/input/CandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 1223
    invoke-direct {p0}, Lcom/nuance/xt9/input/CandidatesListView;->turnToPreviousPage()V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1063
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1064
    invoke-direct {p0}, Lcom/nuance/xt9/input/CandidatesListView;->hidePreview()V

    .line 1065
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->isNumericSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/CandidatesListView;->onDrawNumericSelection(Landroid/graphics/Canvas;)V

    .line 611
    :goto_0
    return-void

    .line 608
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/CandidatesListView;->onDrawNormal(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "me"

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 935
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->isNumericSelectionEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 936
    iget-object v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    .line 981
    :goto_0
    return v3

    .line 942
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 943
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 944
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 945
    .local v2, y:I
    iput v1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTouchX:I

    .line 947
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v3, v6

    .line 981
    goto :goto_0

    .line 949
    :pswitch_0
    iput-boolean v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mMouseDown:Z

    .line 950
    iput-boolean v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mDragSelected:Z

    .line 952
    iget-object v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSwipeSpeed:Lcom/nuance/xt9/input/CandidatesListView$RollAverage;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;->flush()V

    .line 953
    iput v5, p0, Lcom/nuance/xt9/input/CandidatesListView;->mA:F

    .line 954
    iput v5, p0, Lcom/nuance/xt9/input/CandidatesListView;->mV:F

    .line 955
    iput-boolean v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mScrolled:Z

    .line 956
    iput v7, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTouchIndex:I

    .line 957
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->invalidate()V

    goto :goto_1

    .line 960
    :pswitch_1
    if-gtz v2, :cond_1

    iget-boolean v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mDragSelected:Z

    if-nez v3, :cond_1

    .line 962
    iput-boolean v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mDragSelected:Z

    goto :goto_1

    .line 966
    :pswitch_2
    iput-boolean v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mMouseDown:Z

    .line 967
    iput-boolean v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mDragSelected:Z

    .line 969
    iget-object v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSwipeSpeed:Lcom/nuance/xt9/input/CandidatesListView$RollAverage;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;->isFlushed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 970
    iget-object v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSwipeSpeed:Lcom/nuance/xt9/input/CandidatesListView$RollAverage;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;->get()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/nuance/xt9/input/CandidatesListView;->setVelocity(F)V

    .line 972
    :cond_2
    iget-boolean v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mScrolled:Z

    if-nez v3, :cond_3

    iget v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTouchIndex:I

    if-eq v3, v7, :cond_3

    iget-object v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTouchIndex:I

    iget-object v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 973
    iget v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTouchIndex:I

    iget-object v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    iget v5, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTouchIndex:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0, v4, v3}, Lcom/nuance/xt9/input/CandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 974
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->trySelect()V

    .line 976
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->removeHighlight()V

    .line 977
    invoke-direct {p0}, Lcom/nuance/xt9/input/CandidatesListView;->hidePreview()V

    goto :goto_1

    .line 947
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected pull(F)F
    .locals 14
    .parameter "dist"

    .prologue
    const/high16 v13, 0x3f80

    const/4 v12, 0x0

    .line 659
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v8

    int-to-float v7, v8

    .line 660
    .local v7, x:F
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getWidth()I

    move-result v6

    .line 661
    .local v6, width:I
    const/4 v8, 0x0

    iget v9, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTotalWidth:I

    sub-int/2addr v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 664
    .local v1, maxScroll:I
    div-int/lit8 v8, v6, 0x4

    int-to-float v0, v8

    .line 666
    .local v0, maxPullDist:F
    cmpg-float v8, v7, v12

    if-gez v8, :cond_1

    .line 667
    move v2, v7

    .line 676
    .local v2, oobDist:F
    :goto_0
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 678
    .local v3, pinnedOobDist:F
    mul-float v8, v3, v3

    mul-float v9, v0, v0

    div-float/2addr v8, v9

    sub-float v8, v13, v8

    float-to-double v8, v8

    const-wide v10, 0x3fe999999999999aL

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v5, v8

    .line 679
    .local v5, scale:F
    mul-float v4, v5, p1

    .line 682
    .local v4, ret:F
    mul-float v8, p1, v2

    cmpg-float v8, v8, v12

    if-gez v8, :cond_0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v13

    if-gez v8, :cond_0

    .line 684
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float v4, p1, v8

    .line 690
    :cond_0
    return v4

    .line 669
    .end local v2           #oobDist:F
    .end local v3           #pinnedOobDist:F
    .end local v4           #ret:F
    .end local v5           #scale:F
    :cond_1
    int-to-float v8, v1

    cmpl-float v8, v7, v8

    if-lez v8, :cond_2

    .line 670
    int-to-float v8, v1

    sub-float v2, v7, v8

    .restart local v2       #oobDist:F
    goto :goto_0

    .line 673
    .end local v2           #oobDist:F
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #oobDist:F
    goto :goto_0
.end method

.method protected removeHighlight()V
    .locals 1

    .prologue
    .line 1044
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTouchX:I

    .line 1045
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->invalidate()V

    .line 1046
    return-void
.end method

.method public scrollNext()V
    .locals 9

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->isNumericSelectionEnabled()Z

    move-result v6

    if-nez v6, :cond_5

    .line 836
    const/4 v1, 0x0

    .line 837
    .local v1, i:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v5

    .line 838
    .local v5, targetX:I
    iget-object v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 839
    .local v0, count:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getWidth()I

    move-result v7

    add-int v4, v6, v7

    .line 840
    .local v4, rightEdge:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 841
    iget-object v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordX:[I

    aget v6, v6, v1

    if-gt v6, v4, :cond_4

    iget-object v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordX:[I

    aget v6, v6, v1

    iget-object v7, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordWidth:[I

    aget v7, v7, v1

    add-int/2addr v6, v7

    if-lt v6, v4, :cond_4

    .line 843
    iget-object v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordX:[I

    aget v6, v6, v1

    iget v7, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTotalWidth:I

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 849
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v6

    if-gt v5, v6, :cond_1

    .line 850
    move v5, v4

    .line 853
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 854
    .local v2, iParentWidth:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_2

    .line 855
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 858
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getRight()I

    move-result v6

    sub-int v3, v2, v6

    .line 860
    .local v3, rightArrowSize:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getLeft()I

    move-result v6

    if-ge v6, v3, :cond_3

    .line 861
    sub-int/2addr v5, v3

    .line 864
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 867
    :cond_3
    invoke-virtual {p0, v5}, Lcom/nuance/xt9/input/CandidatesListView;->updateScrollPosition(I)V

    .line 872
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #iParentWidth:I
    .end local v3           #rightArrowSize:I
    .end local v4           #rightEdge:I
    .end local v5           #targetX:I
    :goto_1
    return-void

    .line 846
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v4       #rightEdge:I
    .restart local v5       #targetX:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 869
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v4           #rightEdge:I
    .end local v5           #targetX:I
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->turnToNextPageCycle()V

    goto :goto_1
.end method

.method public scrollPrev()V
    .locals 7

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->isNumericSelectionEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 809
    const/4 v2, 0x0

    .line 810
    .local v2, i:I
    iget-object v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 811
    .local v0, count:I
    const/4 v1, 0x0

    .line 812
    .local v1, firstItem:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 813
    iget-object v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordX:[I

    aget v4, v4, v2

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordX:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordWidth:[I

    aget v5, v5, v2

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_3

    .line 815
    move v1, v2

    .line 820
    :cond_0
    iget-object v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordX:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordWidth:[I

    aget v5, v5, v1

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getWidth()I

    move-result v5

    sub-int v3, v4, v5

    .line 821
    .local v3, leftEdge:I
    if-gez v3, :cond_1

    const/4 v3, 0x0

    .line 823
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 824
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 826
    :cond_2
    invoke-virtual {p0, v3}, Lcom/nuance/xt9/input/CandidatesListView;->updateScrollPosition(I)V

    .line 831
    .end local v0           #count:I
    .end local v1           #firstItem:I
    .end local v2           #i:I
    .end local v3           #leftEdge:I
    :goto_1
    return-void

    .line 818
    .restart local v0       #count:I
    .restart local v1       #firstItem:I
    .restart local v2       #i:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 828
    .end local v0           #count:I
    .end local v1           #firstItem:I
    .end local v2           #i:I
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->turnToPreviousPageCycle()V

    goto :goto_1
.end method

.method public selecetWord(I)Z
    .locals 6
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    .line 1316
    if-ltz p1, :cond_0

    const/16 v3, 0x9

    if-gt p1, v3, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v3

    if-lt p1, v3, :cond_1

    :cond_0
    move v3, v5

    .line 1331
    :goto_0
    return v3

    .line 1320
    :cond_1
    iget-object v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1321
    .local v0, count:I
    const/4 v2, 0x0

    .line 1322
    .local v2, newindex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1323
    iget-object v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPage:[I

    aget v3, v3, v1

    iget v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mCurrentPage:I

    if-ne v3, v4, :cond_3

    .line 1324
    add-int v2, p1, v1

    .line 1328
    :cond_2
    iget-object v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;

    iget-object v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v4, v2, v3, p0}, Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1329
    iput v5, p0, Lcom/nuance/xt9/input/CandidatesListView;->mCurrentPage:I

    .line 1331
    const/4 v3, 0x1

    goto :goto_0

    .line 1322
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public selectActiveWord()V
    .locals 4

    .prologue
    .line 914
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    if-ltz v0, :cond_0

    .line 916
    iget-object v1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;

    iget v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    iget v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v0, p0}, Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 922
    :goto_0
    return-void

    .line 920
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->trySelect()V

    goto :goto_0
.end method

.method public setGetMoreWordsHandler(Lcom/nuance/xt9/input/CandidatesListView$GetMoreWordsHandler;)V
    .locals 0
    .parameter "GetMoreWordsHandler"

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/xt9/input/CandidatesListView$GetMoreWordsHandler;

    .line 1053
    return-void
.end method

.method public setMoreSuggestions(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 768
    .local p1, wordList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_0

    .line 769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    .line 773
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->isNumericSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    invoke-direct {p0}, Lcom/nuance/xt9/input/CandidatesListView;->calculatePage()V

    .line 777
    :cond_1
    return-void
.end method

.method public setOnWordSelectActionListener(Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;

    .line 259
    return-void
.end method

.method public setSuggestions(Ljava/util/List;ZI)V
    .locals 2
    .parameter
    .parameter "nextWordCandidatesPrediction"
    .parameter "defaultWordIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .local p1, wordList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .line 781
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->clear()V

    .line 783
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 784
    iput-boolean p2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mShowingNextCandidatesPrediction:Z

    .line 786
    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/CandidatesListView;->setScrollX(I)V

    .line 787
    iput v1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTargetScrollX:I

    .line 788
    iput p3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    .line 790
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/CandidatesListView;->setMoreSuggestions(Ljava/util/List;)V

    .line 792
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, p3, v0}, Lcom/nuance/xt9/input/CandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 796
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->isNumericSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    invoke-direct {p0}, Lcom/nuance/xt9/input/CandidatesListView;->calculatePage()V

    .line 800
    :cond_1
    return-void
.end method

.method protected setVelocity(F)V
    .locals 3
    .parameter "v"

    .prologue
    .line 614
    const v0, 0x3f333333

    const/high16 v1, -0x3e10

    const/high16 v2, 0x41f0

    invoke-direct {p0, p1, v1, v2}, Lcom/nuance/xt9/input/CandidatesListView;->bound(FFF)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mV:F

    .line 615
    return-void
.end method

.method protected showPreview(ILjava/lang/String;)V
    .locals 11
    .parameter "wordIndex"
    .parameter "altText"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1008
    iget v1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mCurrentWordIndex:I

    .line 1009
    .local v1, oldWordIndex:I
    iput p1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mCurrentWordIndex:I

    .line 1011
    iget v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mCurrentWordIndex:I

    if-ne v1, v6, :cond_0

    if-eqz p2, :cond_1

    .line 1012
    :cond_0
    const/4 v6, -0x1

    if-ne p1, v6, :cond_2

    .line 1013
    invoke-direct {p0}, Lcom/nuance/xt9/input/CandidatesListView;->hidePreview()V

    .line 1041
    :cond_1
    :goto_0
    return-void

    .line 1015
    :cond_2
    if-eqz p2, :cond_3

    move-object v4, p2

    .line 1016
    .local v4, word:Ljava/lang/CharSequence;
    :goto_1
    iget-object v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    iget-object v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 1019
    iget-object v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v6, v4, v10, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    iget v7, p0, Lcom/nuance/xt9/input/CandidatesListView;->mMinPadWidth:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 1020
    .local v5, wordWidth:I
    iget-object v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v5

    iget-object v7, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    add-int v3, v6, v7

    .line 1022
    .local v3, popupWidth:I
    iget-object v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 1024
    .local v2, popupHeight:I
    iget-object v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mWordX:[I

    aget v6, v6, p1

    iget-object v7, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPopupPreviewX:I

    .line 1025
    neg-int v6, v2

    iput v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPopupPreviewY:I

    .line 1026
    iget-object v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1027
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 1028
    .local v0, offsetInWindow:[I
    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/CandidatesListView;->getLocationInWindow([I)V

    .line 1029
    iget-object v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1030
    iget-object v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPopupPreviewX:I

    iget v8, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPopupPreviewY:I

    aget v9, v0, v9

    add-int/2addr v8, v9

    invoke-virtual {v6, v7, v8, v3, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1038
    :goto_2
    iget-object v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1015
    .end local v0           #offsetInWindow:[I
    .end local v2           #popupHeight:I
    .end local v3           #popupWidth:I
    .end local v4           #word:Ljava/lang/CharSequence;
    .end local v5           #wordWidth:I
    :cond_3
    iget-object v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    move-object v4, v6

    goto :goto_1

    .line 1033
    .restart local v0       #offsetInWindow:[I
    .restart local v2       #popupHeight:I
    .restart local v3       #popupWidth:I
    .restart local v4       #word:Ljava/lang/CharSequence;
    .restart local v5       #wordWidth:I
    :cond_4
    iget-object v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1034
    iget-object v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1035
    iget-object v6, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPopupPreviewX:I

    iget v8, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPopupPreviewY:I

    aget v9, v0, v9

    add-int/2addr v8, v9

    invoke-virtual {v6, p0, v10, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2
.end method

.method public takeSuggestionAt(F)V
    .locals 4
    .parameter "x"

    .prologue
    const/4 v2, 0x2

    .line 990
    float-to-int v0, p1

    iput v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTouchX:I

    .line 992
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/CandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 993
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->trySelect()V

    .line 994
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->invalidate()V

    .line 995
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 996
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 997
    return-void
.end method

.method protected touchWord(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "i"
    .parameter "suggestion"

    .prologue
    .line 267
    iget v1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;

    instance-of v1, v1, Lcom/nuance/xt9/input/ChineseHandWritingInputView;

    if-eqz v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;

    check-cast v0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;

    .line 270
    .local v0, v:Lcom/nuance/xt9/input/ChineseHandWritingInputView;
    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->setActiveCandidate(I)V

    .line 272
    .end local v0           #v:Lcom/nuance/xt9/input/ChineseHandWritingInputView;
    :cond_0
    iput p1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    .line 273
    iput-object p2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    .line 274
    return-void
.end method

.method protected trySelect()V
    .locals 3

    .prologue
    .line 926
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;

    iget v1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    iget-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, p0}, Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 929
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/xt9/input/CandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 930
    return-void
.end method

.method public turnToNextPageCycle()V
    .locals 5

    .prologue
    .line 1135
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v2

    .line 1136
    .local v2, wordCount:I
    iget v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPageCount:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    if-gtz v2, :cond_1

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1140
    :cond_1
    iget v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    if-lt v3, v2, :cond_3

    .line 1141
    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    .line 1144
    :cond_3
    const/4 v1, 0x0

    .line 1145
    .local v1, newIndex:I
    iget v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 1146
    iget-object v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPage:[I

    aget v3, v3, v0

    iget v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPageCount:I

    if-lt v3, v4, :cond_5

    .line 1154
    :cond_4
    :goto_2
    iget v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    if-eq v1, v3, :cond_0

    .line 1155
    iput v1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    .line 1156
    invoke-direct {p0}, Lcom/nuance/xt9/input/CandidatesListView;->turnToNextPage()V

    goto :goto_0

    .line 1148
    :cond_5
    iget-object v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPage:[I

    aget v3, v3, v0

    iget v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mCurrentPage:I

    if-eq v3, v4, :cond_6

    .line 1149
    move v1, v0

    .line 1150
    goto :goto_2

    .line 1145
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public turnToPreviousPageCycle()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1161
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v2

    .line 1162
    .local v2, wordCount:I
    iget v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPageCount:I

    if-le v3, v4, :cond_0

    if-gtz v2, :cond_1

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1166
    :cond_1
    iget v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    if-lt v3, v2, :cond_3

    .line 1167
    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    .line 1170
    :cond_3
    sub-int v1, v2, v4

    .line 1171
    .local v1, newIndex:I
    iget v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 1172
    iget-object v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPage:[I

    aget v3, v3, v0

    iget v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPageCount:I

    if-lt v3, v4, :cond_5

    .line 1180
    :cond_4
    :goto_2
    iget v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    if-eq v1, v3, :cond_0

    .line 1181
    iput v1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSelectedIndex:I

    .line 1182
    invoke-direct {p0}, Lcom/nuance/xt9/input/CandidatesListView;->turnToPreviousPage()V

    goto :goto_0

    .line 1174
    :cond_5
    iget-object v3, p0, Lcom/nuance/xt9/input/CandidatesListView;->mPage:[I

    aget v3, v3, v0

    iget v4, p0, Lcom/nuance/xt9/input/CandidatesListView;->mCurrentPage:I

    if-eq v3, v4, :cond_6

    .line 1175
    move v1, v0

    .line 1176
    goto :goto_2

    .line 1171
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method protected updateScrollPosition(I)V
    .locals 1
    .parameter "targetX"

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 876
    iput p1, p0, Lcom/nuance/xt9/input/CandidatesListView;->mTargetScrollX:I

    .line 877
    invoke-direct {p0}, Lcom/nuance/xt9/input/CandidatesListView;->needMoreWords()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/xt9/input/CandidatesListView$GetMoreWordsHandler;

    invoke-interface {v0}, Lcom/nuance/xt9/input/CandidatesListView$GetMoreWordsHandler;->requestMoreWords()V

    .line 882
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView;->invalidate()V

    .line 883
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mScrolled:Z

    .line 887
    :cond_1
    return-void
.end method

.method public wordCount()I
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
