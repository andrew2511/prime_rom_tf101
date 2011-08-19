.class public Landroid/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;,
        Landroid/widget/NumberPicker$AdjustScrollerCommand;,
        Landroid/widget/NumberPicker$SetSelectionCommand;,
        Landroid/widget/NumberPicker$InputTextFilter;,
        Landroid/widget/NumberPicker$Formatter;,
        Landroid/widget/NumberPicker$OnScrollListener;,
        Landroid/widget/NumberPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C = null

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final SHOW_INPUT_CONTROLS_DELAY_MILLIS:I = 0x0

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field public static final TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter; = null

.field private static final UPDATE_STEP_DECREMENT:I = -0x1

.field private static final UPDATE_STEP_INCREMENT:I = 0x1


# instance fields
.field private final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

.field private mAdjustScrollerOnUpEvent:Z

.field private mBeginEditOnUpEvent:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDisplayedValues:[Ljava/lang/String;

.field private mDrawSelectorWheel:Z

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private final mFlingable:Z

.field private mFormatter:Landroid/widget/NumberPicker$Formatter;

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventY:F

.field private mLastMotionEventY:F

.field private mLongPressUpdateInterval:J

.field private mMaxValue:I

.field private mMaximumFlingVelocity:I

.field private mMinValue:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private final mSelectorPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

.field private final mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

.field private final mShowInputControlsAnimimationDuration:J

.field private final mSolidColor:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTextSize:I

.field private mTouchSlop:I

.field private mUpdateFromLongPressCommand:Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 95
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/widget/NumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    .line 121
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_18

    sput-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    .line 133
    new-instance v0, Landroid/widget/NumberPicker$1;

    invoke-direct {v0}, Landroid/widget/NumberPicker$1;-><init>()V

    sput-object v0, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    return-void

    .line 121
    nop

    :array_18
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 430
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 439
    const v0, 0x1010373

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 440
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 25
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 450
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I

    .line 206
    const-wide/16 v17, 0x12c

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 211
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 216
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_30e

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 234
    const/high16 v17, -0x8000

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 350
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mTempRect:Landroid/graphics/Rect;

    .line 355
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mScrollState:I

    .line 453
    sget-object v17, Lcom/android/internal/R$styleable;->NumberPicker:[I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 455
    .local v5, attributesArray:Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v0, v5

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mSolidColor:I

    .line 456
    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object v0, v5

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/NumberPicker;->mFlingable:Z

    .line 457
    const/16 v17, 0x2

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 458
    const/16 v17, 0x1

    const/high16 v18, 0x4000

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move v9, v0

    .line 461
    .local v9, defSelectionDividerHeight:I
    const/16 v17, 0x3

    move-object v0, v5

    move/from16 v1, v17

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 463
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 465
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x10e0002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    .line 473
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setWillNotDraw(Z)V

    .line 474
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker;->setDrawSelectorWheel(Z)V

    .line 476
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 478
    .local v11, inflater:Landroid/view/LayoutInflater;
    const v17, 0x109005e

    const/16 v18, 0x1

    move-object v0, v11

    move/from16 v1, v17

    move-object/from16 v2, p0

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 480
    new-instance v12, Landroid/widget/NumberPicker$2;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$2;-><init>(Landroid/widget/NumberPicker;)V

    .line 491
    .local v12, onClickListener:Landroid/view/View$OnClickListener;
    new-instance v13, Landroid/widget/NumberPicker$3;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$3;-><init>(Landroid/widget/NumberPicker;)V

    .line 504
    .local v13, onLongClickListener:Landroid/view/View$OnLongClickListener;
    const v17, 0x1020291

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/ImageButton;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 509
    const v17, 0x1020293

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 514
    const v17, 0x1020292

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/NumberPicker$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$4;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Landroid/widget/NumberPicker$InputTextFilter;

    invoke-direct/range {v20 .. v21}, Landroid/widget/NumberPicker$InputTextFilter;-><init>(Landroid/widget/NumberPicker;)V

    aput-object v20, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 529
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mTouchSlop:I

    .line 530
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    .line 531
    .local v8, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mTouchSlop:I

    .line 532
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 533
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v17

    div-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getTextSize()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mTextSize:I

    .line 538
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 539
    .local v14, paint:Landroid/graphics/Paint;
    const/16 v17, 0x1

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 540
    sget-object v17, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 541
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mTextSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 544
    .local v7, colors:Landroid/content/res/ColorStateList;
    sget-object v17, Landroid/widget/NumberPicker;->ENABLED_STATE_SET:[I

    const/16 v18, -0x1

    move-object v0, v7

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    .line 545
    .local v6, color:I
    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 546
    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectorPaint:Landroid/graphics/Paint;

    .line 549
    const-string/jumbo v17, "selectorPaintAlpha"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_31c

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 550
    .local v10, fadeScroller:Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    const-string v18, "alpha"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_324

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 552
    .local v16, showIncrementButton:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    const-string v18, "alpha"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_32c

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 554
    .local v15, showDecrementButton:Landroid/animation/ObjectAnimator;
    new-instance v17, Landroid/animation/AnimatorSet;

    invoke-direct/range {v17 .. v17}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v10, v18, v19

    const/16 v19, 0x1

    aput-object v16, v18, v19

    const/16 v19, 0x2

    aput-object v15, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/NumberPicker$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$5;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual/range {v17 .. v18}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 580
    new-instance v17, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-direct/range {v17 .. v20}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 581
    new-instance v17, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v18

    new-instance v19, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v20, 0x4020

    invoke-direct/range {v19 .. v20}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v17 .. v19}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 583
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 584
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 586
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mFlingable:Z

    move/from16 v17, v0

    if-eqz v17, :cond_30c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->isInEditMode()Z

    move-result v17

    if-nez v17, :cond_30c

    .line 590
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker;->setDrawSelectorWheel(Z)V

    .line 591
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->hideInputControls()V

    .line 593
    :cond_30c
    return-void

    .line 216
    nop

    :array_30e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
    .end array-data

    .line 549
    :array_31c
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 550
    :array_324
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 552
    :array_32c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/NumberPicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    return v0
.end method

.method static synthetic access$1100()[C
    .registers 1

    .prologue
    .line 69
    sget-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/NumberPicker;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/NumberPicker;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/NumberPicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/NumberPicker;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1602(Landroid/widget/NumberPicker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    return p1
.end method

.method static synthetic access$1700(Landroid/widget/NumberPicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/NumberPicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/NumberPicker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/NumberPicker;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    return-void
.end method

.method static synthetic access$2000(Landroid/widget/NumberPicker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    return-wide v0
.end method

.method static synthetic access$2100(Landroid/widget/NumberPicker;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;->showInputControls(J)V

    return-void
.end method

.method static synthetic access$2200(Landroid/widget/NumberPicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/NumberPicker;)Landroid/widget/Scroller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/widget/NumberPicker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/widget/NumberPicker;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->postUpdateValueFromLongPress(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/NumberPicker;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/NumberPicker;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->setDrawSelectorWheel(Z)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/NumberPicker;)Landroid/graphics/Paint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/NumberPicker;)Landroid/animation/AnimatorSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method private changeCurrent(I)V
    .registers 4
    .parameter "current"

    .prologue
    .line 1159
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ne v1, p1, :cond_5

    .line 1169
    :goto_4
    return-void

    .line 1163
    :cond_5
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_d

    .line 1164
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1166
    :cond_d
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1167
    .local v0, previous:I
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1168
    invoke-direct {p0, v0, p1}, Landroid/widget/NumberPicker;->notifyChange(II)V

    goto :goto_4
.end method

.method private decrementSelectorIndices([I)V
    .registers 6
    .parameter "selectorIndices"

    .prologue
    const/4 v3, 0x1

    .line 1363
    array-length v2, p1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_4
    if-lez v0, :cond_f

    .line 1364
    sub-int v2, v0, v3

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1363
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1366
    :cond_f
    aget v2, p1, v3

    sub-int v1, v2, v3

    .line 1367
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1d

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1d

    .line 1368
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1370
    :cond_1d
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1371
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1372
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .registers 6
    .parameter "selectorIndex"

    .prologue
    .line 1380
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1381
    .local v0, cache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1382
    .local v2, scrollSelectorValue:Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 1396
    :goto_a
    return-void

    .line 1385
    :cond_b
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_13

    iget v3, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_19

    .line 1386
    :cond_13
    const-string v2, ""

    .line 1395
    :goto_15
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_a

    .line 1388
    :cond_19
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_26

    .line 1389
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 1390
    .local v1, displayedValueIndex:I
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1391
    goto :goto_15

    .line 1392
    .end local v1           #displayedValueIndex:I
    :cond_26
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_15
.end method

.method private fling(I)V
    .registers 11
    .parameter "velocityY"

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1249
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1250
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1252
    .local v0, flingScroller:Landroid/widget/Scroller;
    iget-boolean v3, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v3, :cond_25

    .line 1253
    if-lez p1, :cond_1b

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    .line 1254
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1269
    :goto_17
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1270
    return-void

    :cond_1b
    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    .line 1256
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_17

    .line 1259
    :cond_25
    if-lez p1, :cond_3a

    .line 1260
    iget v3, p0, Landroid/widget/NumberPicker;->mTextSize:I

    iget v4, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v5, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v4, v5

    mul-int v8, v3, v4

    .local v8, maxY:I
    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    .line 1261
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_17

    .line 1263
    .end local v8           #maxY:I
    :cond_3a
    iget v3, p0, Landroid/widget/NumberPicker;->mTextSize:I

    iget v4, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v5, p0, Landroid/widget/NumberPicker;->mValue:I

    sub-int/2addr v4, v5

    mul-int v2, v3, v4

    .line 1264
    .local v2, startY:I
    move v8, v2

    .restart local v8       #maxY:I
    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    .line 1265
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_17
.end method

.method private formatNumber(I)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 1399
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Landroid/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .registers 4
    .parameter "value"

    .prologue
    .line 1477
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_9

    .line 1479
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_2d

    move-result v1

    .line 1503
    :goto_8
    return v1

    .line 1484
    :cond_9
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 1486
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1487
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1488
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_8

    .line 1484
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1497
    :cond_28
    :try_start_28
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2b} :catch_31

    move-result v1

    goto :goto_8

    .line 1480
    .end local v0           #i:I
    :catch_2d
    move-exception v1

    .line 1503
    :goto_2e
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    goto :goto_8

    .line 1498
    .restart local v0       #i:I
    :catch_31
    move-exception v1

    goto :goto_2e
.end method

.method private getSelectorIndices()[I
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 1316
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 1317
    .local v0, current:I
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    aget v3, v3, v4

    if-eq v3, v0, :cond_2b

    .line 1318
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2b

    .line 1319
    sub-int v3, v1, v4

    add-int v2, v0, v3

    .line 1320
    .local v2, selectorIndex:I
    iget-boolean v3, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v3, :cond_1d

    .line 1321
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 1323
    :cond_1d
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    aput v2, v3, v1

    .line 1324
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1318
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1327
    .end local v1           #i:I
    .end local v2           #selectorIndex:I
    :cond_2b
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    return-object v3
.end method

.method private getWrappedSelectorIndex(I)I
    .registers 6
    .parameter "selectorIndex"

    .prologue
    .line 1334
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_14

    .line 1335
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1339
    :goto_13
    return v0

    .line 1336
    :cond_14
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_27

    .line 1337
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_27
    move v0, p1

    .line 1339
    goto :goto_13
.end method

.method private hideInputControls()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 1276
    iget-object v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1277
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1278
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1279
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1280
    return-void
.end method

.method private incrementScrollSelectorIndices([I)V
    .registers 7
    .parameter "selectorIndices"

    .prologue
    const/4 v4, 0x1

    .line 1347
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v2, p1

    sub-int/2addr v2, v4

    if-ge v0, v2, :cond_f

    .line 1348
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1347
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1350
    :cond_f
    array-length v2, p1

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1351
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_20

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_20

    .line 1352
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1354
    :cond_20
    array-length v2, p1

    sub-int/2addr v2, v4

    aput v1, p1, v2

    .line 1355
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1356
    return-void
.end method

.method private initializeScrollWheel()V
    .registers 9

    .prologue
    .line 1202
    iget v6, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    const/high16 v7, -0x8000

    if-eq v6, v7, :cond_7

    .line 1217
    :goto_6
    return-void

    .line 1206
    :cond_7
    invoke-direct {p0}, Landroid/widget/NumberPicker;->getSelectorIndices()[I

    move-result-object v1

    .line 1207
    .local v1, selectorIndices:[I
    array-length v6, v1

    iget v7, p0, Landroid/widget/NumberPicker;->mTextSize:I

    mul-int v5, v6, v7

    .line 1208
    .local v5, totalTextHeight:I
    iget v6, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v7, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v6, v7

    sub-int v4, v6, v5

    .line 1209
    .local v4, totalTextGapHeight:I
    array-length v6, v1

    const/4 v7, 0x1

    sub-int v3, v6, v7

    .line 1210
    .local v3, textGapCount:I
    div-int v2, v4, v3

    .line 1213
    .local v2, selectorTextGapHeight:I
    iget v6, p0, Landroid/widget/NumberPicker;->mTextSize:I

    iget v7, p0, Landroid/widget/NumberPicker;->mBottom:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v6, v7

    rem-int v0, v6, v3

    .line 1214
    .local v0, integerDivisionLoss:I
    iget v6, p0, Landroid/widget/NumberPicker;->mTextSize:I

    div-int/lit8 v7, v0, 0x2

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iput v6, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 1215
    iget v6, p0, Landroid/widget/NumberPicker;->mTextSize:I

    add-int/2addr v6, v2

    iput v6, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1216
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    goto :goto_6
.end method

.method private isEventInViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 6
    .parameter "event"
    .parameter "view"

    .prologue
    .line 1188
    iget-object v0, p0, Landroid/widget/NumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1189
    iget-object v0, p0, Landroid/widget/NumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private notifyChange(II)V
    .registers 5
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 1439
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_b

    .line 1440
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/NumberPicker$OnValueChangeListener;->onValueChange(Landroid/widget/NumberPicker;II)V

    .line 1442
    :cond_b
    return-void
.end method

.method private onScrollStateChange(I)V
    .registers 3
    .parameter "scrollState"

    .prologue
    .line 1236
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_5

    .line 1243
    :cond_4
    :goto_4
    return-void

    .line 1239
    :cond_5
    iput p1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 1240
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_4

    .line 1241
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Landroid/widget/NumberPicker;I)V

    goto :goto_4
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .registers 4
    .parameter "scroller"

    .prologue
    const/4 v1, 0x0

    .line 1223
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_c

    .line 1224
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->postAdjustScrollerCommand(I)V

    .line 1225
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1230
    :goto_b
    return-void

    .line 1227
    :cond_c
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1228
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v0, v1}, Landroid/widget/NumberPicker;->showInputControls(J)V

    goto :goto_b
.end method

.method private postAdjustScrollerCommand(I)V
    .registers 5
    .parameter "delayMillis"

    .prologue
    .line 1528
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    if-nez v0, :cond_12

    .line 1529
    new-instance v0, Landroid/widget/NumberPicker$AdjustScrollerCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$AdjustScrollerCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    .line 1533
    :goto_b
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1534
    return-void

    .line 1531
    :cond_12
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private postSetSelectionCommand(II)V
    .registers 4
    .parameter "selectionStart"
    .parameter "selectionEnd"

    .prologue
    .line 1512
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_1b

    .line 1513
    new-instance v0, Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    .line 1517
    :goto_b
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    #setter for: Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Landroid/widget/NumberPicker$SetSelectionCommand;->access$902(Landroid/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1518
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    #setter for: Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Landroid/widget/NumberPicker$SetSelectionCommand;->access$1002(Landroid/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1519
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1520
    return-void

    .line 1515
    :cond_1b
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private postUpdateValueFromLongPress(I)V
    .registers 3
    .parameter "updateMillis"

    .prologue
    .line 1449
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1450
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1451
    iget-object v0, p0, Landroid/widget/NumberPicker;->mUpdateFromLongPressCommand:Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;

    if-nez v0, :cond_13

    .line 1452
    new-instance v0, Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mUpdateFromLongPressCommand:Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;

    .line 1454
    :cond_13
    iget-object v0, p0, Landroid/widget/NumberPicker;->mUpdateFromLongPressCommand:Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;

    #calls: Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;->setUpdateStep(I)V
    invoke-static {v0, p1}, Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;->access$800(Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;I)V

    .line 1455
    iget-object v0, p0, Landroid/widget/NumberPicker;->mUpdateFromLongPressCommand:Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1456
    return-void
.end method

.method private removeAllCallbacks()V
    .registers 2

    .prologue
    .line 1462
    iget-object v0, p0, Landroid/widget/NumberPicker;->mUpdateFromLongPressCommand:Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;

    if-eqz v0, :cond_9

    .line 1463
    iget-object v0, p0, Landroid/widget/NumberPicker;->mUpdateFromLongPressCommand:Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1465
    :cond_9
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    if-eqz v0, :cond_12

    .line 1466
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1468
    :cond_12
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1b

    .line 1469
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1471
    :cond_1b
    return-void
.end method

.method private resetSelectorWheelIndices()V
    .registers 4

    .prologue
    .line 1143
    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1144
    invoke-direct {p0}, Landroid/widget/NumberPicker;->getSelectorIndices()[I

    move-result-object v1

    .line 1145
    .local v1, selectorIdices:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 1146
    const/high16 v2, -0x8000

    aput v2, v1, v0

    .line 1145
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1148
    :cond_14
    return-void
.end method

.method private setDrawSelectorWheel(Z)V
    .registers 2
    .parameter "drawSelectorWheel"

    .prologue
    .line 1196
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mDrawSelectorWheel:Z

    .line 1198
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1199
    return-void
.end method

.method private setSelectorPaintAlpha(I)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 1178
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1179
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mDrawSelectorWheel:Z

    if-eqz v0, :cond_c

    .line 1180
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1182
    :cond_c
    return-void
.end method

.method private showInputControls(J)V
    .registers 5
    .parameter "animationDuration"

    .prologue
    .line 1289
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1290
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1291
    iget-object v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1292
    iget-object v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1293
    return-void
.end method

.method private updateIncrementAndDecrementButtonsVisibilityState()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1299
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_c

    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-ge v0, v1, :cond_21

    .line 1300
    :cond_c
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1304
    :goto_11
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1b

    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-le v0, v1, :cond_27

    .line 1305
    :cond_1b
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1309
    :goto_20
    return-void

    .line 1302
    :cond_21
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_11

    .line 1307
    :cond_27
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_20
.end method

.method private updateInputTextView()V
    .registers 5

    .prologue
    .line 1426
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_1f

    .line 1427
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1431
    :goto_f
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1432
    return-void

    .line 1429
    :cond_1f
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 1403
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1404
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1406
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1412
    :goto_13
    return-void

    .line 1409
    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 1410
    .local v0, current:I
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    goto :goto_13
.end method


# virtual methods
.method public computeScroll()V
    .registers 5

    .prologue
    .line 742
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mDrawSelectorWheel:Z

    if-nez v2, :cond_5

    .line 764
    :cond_4
    :goto_4
    return-void

    .line 745
    :cond_5
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 746
    .local v1, scroller:Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 747
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 748
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 752
    :cond_15
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 753
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 754
    .local v0, currentScrollerY:I
    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_26

    .line 755
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 757
    :cond_26
    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 758
    iput v0, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 759
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 760
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_4

    .line 762
    :cond_3a
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_4
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 1074
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 724
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 725
    .local v0, keyCode:I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_c

    const/16 v1, 0x42

    if-ne v0, v1, :cond_f

    .line 726
    :cond_c
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 728
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 714
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 715
    .local v0, action:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    :cond_a
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-direct {p0, p1, v1}, Landroid/widget/NumberPicker;->isEventInViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 717
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 719
    :cond_15
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 733
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 734
    .local v0, action:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 735
    :cond_a
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 737
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    .line 1086
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1090
    iget-object v5, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-nez v5, :cond_f

    iget-boolean v5, p0, Landroid/widget/NumberPicker;->mDrawSelectorWheel:Z

    if-nez v5, :cond_2f

    .line 1091
    :cond_f
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getDrawingTime()J

    move-result-wide v2

    .line 1092
    .local v2, drawTime:J
    const/4 v4, 0x0

    .local v4, i:I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_18
    if-ge v4, v1, :cond_2f

    .line 1093
    invoke-virtual {p0, v4}, Landroid/widget/NumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1094
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_27

    .line 1092
    :goto_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 1097
    :cond_27
    invoke-virtual {p0, v4}, Landroid/widget/NumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v2, v3}, Landroid/widget/NumberPicker;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_24

    .line 1100
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #drawTime:J
    .end local v4           #i:I
    :cond_2f
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 1052
    const v0, 0x3f666666

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1021
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .registers 2

    .prologue
    .line 990
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .registers 2

    .prologue
    .line 959
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .registers 2

    .prologue
    .line 808
    iget v0, p0, Landroid/widget/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 1047
    const v0, 0x3f666666

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 950
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .registers 2

    .prologue
    .line 902
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    .line 1057
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1060
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1062
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Landroid/widget/NumberPicker;->showInputControls(J)V

    .line 1064
    :cond_15
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 1068
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1069
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    .line 1105
    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mDrawSelectorWheel:Z

    if-nez v10, :cond_6

    .line 1136
    :cond_5
    :goto_5
    return-void

    .line 1108
    :cond_6
    iget v10, p0, Landroid/widget/NumberPicker;->mRight:I

    iget v11, p0, Landroid/widget/NumberPicker;->mLeft:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    int-to-float v8, v10

    .line 1109
    .local v8, x:F
    iget v10, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v9, v10

    .line 1112
    .local v9, y:F
    invoke-direct {p0}, Landroid/widget/NumberPicker;->getSelectorIndices()[I

    move-result-object v5

    .line 1113
    .local v5, selectorIndices:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    array-length v10, v5

    if-ge v2, v10, :cond_2f

    .line 1114
    aget v4, v5, v2

    .line 1115
    .local v4, selectorIndex:I
    iget-object v10, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1116
    .local v3, scrollSelectorValue:Ljava/lang/String;
    iget-object v10, p0, Landroid/widget/NumberPicker;->mSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1117
    iget v10, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 1113
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1121
    .end local v3           #scrollSelectorValue:Ljava/lang/String;
    .end local v4           #selectorIndex:I
    :cond_2f
    iget-object v10, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_5

    .line 1122
    iget-object v10, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Landroid/widget/NumberPicker;->mSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1124
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result v10

    iget v11, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v10, v11

    div-int/lit8 v7, v10, 0x2

    .line 1126
    .local v7, topOfTopDivider:I
    iget v10, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    add-int v1, v7, v10

    .line 1127
    .local v1, bottomOfTopDivider:I
    iget-object v10, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget v11, p0, Landroid/widget/NumberPicker;->mRight:I

    invoke-virtual {v10, v12, v7, v11, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1128
    iget-object v10, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1131
    iget v10, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int v6, v7, v10

    .line 1132
    .local v6, topOfBottomDivider:I
    iget v10, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int v0, v1, v10

    .line 1133
    .local v0, bottomOfBottomDivider:I
    iget-object v10, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget v11, p0, Landroid/widget/NumberPicker;->mRight:I

    invoke-virtual {v10, v12, v6, v11, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1134
    iget-object v10, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 604
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-nez v3, :cond_e

    :cond_c
    move v3, v5

    .line 650
    :goto_d
    return v3

    .line 607
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_ac

    :cond_15
    :pswitch_15
    move v3, v5

    .line 650
    goto :goto_d

    .line 609
    :pswitch_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iput v3, p0, Landroid/widget/NumberPicker;->mLastMotionEventY:F

    .line 610
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 611
    iget-object v3, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 612
    iput-boolean v5, p0, Landroid/widget/NumberPicker;->mBeginEditOnUpEvent:Z

    .line 613
    iput-boolean v4, p0, Landroid/widget/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 614
    iget-boolean v3, p0, Landroid/widget/NumberPicker;->mDrawSelectorWheel:Z

    if-eqz v3, :cond_5a

    .line 615
    iget-object v3, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_58

    iget-object v3, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_58

    move v2, v4

    .line 617
    .local v2, scrollersFinished:Z
    :goto_40
    if-nez v2, :cond_4f

    .line 618
    iget-object v3, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 619
    iget-object v3, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 620
    invoke-direct {p0, v5}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 622
    :cond_4f
    iput-boolean v2, p0, Landroid/widget/NumberPicker;->mBeginEditOnUpEvent:Z

    .line 623
    iput-boolean v4, p0, Landroid/widget/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 624
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideInputControls()V

    move v3, v4

    .line 625
    goto :goto_d

    .end local v2           #scrollersFinished:Z
    :cond_58
    move v2, v5

    .line 615
    goto :goto_40

    .line 627
    :cond_5a
    iget-object v3, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-direct {p0, p1, v3}, Landroid/widget/NumberPicker;->isEventInViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_82

    iget-object v3, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->isShown()Z

    move-result v3

    if-nez v3, :cond_72

    iget-object v3, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v3}, Landroid/widget/NumberPicker;->isEventInViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_82

    :cond_72
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->isShown()Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v3}, Landroid/widget/NumberPicker;->isEventInViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 632
    :cond_82
    iput-boolean v5, p0, Landroid/widget/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 633
    invoke-direct {p0, v4}, Landroid/widget/NumberPicker;->setDrawSelectorWheel(Z)V

    .line 634
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideInputControls()V

    move v3, v4

    .line 635
    goto :goto_d

    .line 639
    :pswitch_8c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 640
    .local v0, currentMoveY:F
    iget v3, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v1, v3

    .line 641
    .local v1, deltaDownY:I
    iget v3, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-le v1, v3, :cond_15

    .line 642
    iput-boolean v5, p0, Landroid/widget/NumberPicker;->mBeginEditOnUpEvent:Z

    .line 643
    invoke-direct {p0, v4}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 644
    invoke-direct {p0, v4}, Landroid/widget/NumberPicker;->setDrawSelectorWheel(Z)V

    .line 645
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideInputControls()V

    move v3, v4

    .line 646
    goto/16 :goto_d

    .line 607
    nop

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_17
        :pswitch_15
        :pswitch_8c
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 597
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 599
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeScrollWheel()V

    .line 600
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "ev"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 655
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_a

    move v7, v9

    .line 709
    :goto_9
    return v7

    .line 658
    :cond_a
    iget-object v7, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_14

    .line 659
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 661
    :cond_14
    iget-object v7, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 662
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 663
    .local v0, action:I
    packed-switch v0, :pswitch_data_c8

    :goto_20
    move v7, v10

    .line 709
    goto :goto_9

    .line 665
    :pswitch_22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 666
    .local v1, currentMoveY:F
    iget-boolean v7, p0, Landroid/widget/NumberPicker;->mBeginEditOnUpEvent:Z

    if-nez v7, :cond_2e

    iget v7, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-eq v7, v10, :cond_40

    .line 668
    :cond_2e
    iget v7, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v2, v7

    .line 669
    .local v2, deltaDownY:I
    iget v7, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-le v2, v7, :cond_40

    .line 670
    iput-boolean v9, p0, Landroid/widget/NumberPicker;->mBeginEditOnUpEvent:Z

    .line 671
    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 674
    .end local v2           #deltaDownY:I
    :cond_40
    iget v7, p0, Landroid/widget/NumberPicker;->mLastMotionEventY:F

    sub-float v7, v1, v7

    float-to-int v3, v7

    .line 675
    .local v3, deltaMoveY:I
    invoke-virtual {p0, v9, v3}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 676
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 677
    iput v1, p0, Landroid/widget/NumberPicker;->mLastMotionEventY:F

    goto :goto_20

    .line 680
    .end local v1           #currentMoveY:F
    .end local v3           #deltaMoveY:I
    :pswitch_4e
    iget-boolean v7, p0, Landroid/widget/NumberPicker;->mBeginEditOnUpEvent:Z

    if-eqz v7, :cond_81

    .line 681
    invoke-direct {p0, v9}, Landroid/widget/NumberPicker;->setDrawSelectorWheel(Z)V

    .line 682
    iget-wide v7, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v7, v8}, Landroid/widget/NumberPicker;->showInputControls(J)V

    .line 683
    iget-object v7, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 684
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 686
    .local v4, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v7, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4, v7, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 687
    iget-object v7, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-virtual {v7, v9, v8}, Landroid/widget/EditText;->setSelection(II)V

    move v7, v10

    .line 688
    goto :goto_9

    .line 690
    .end local v4           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_81
    iget-object v6, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 691
    .local v6, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v7, 0x3e8

    iget v8, p0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 692
    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    float-to-int v5, v7

    .line 693
    .local v5, initialVelocity:I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    if-le v7, v8, :cond_a9

    .line 694
    invoke-direct {p0, v5}, Landroid/widget/NumberPicker;->fling(I)V

    .line 695
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 705
    :cond_9f
    :goto_9f
    iget-object v7, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 706
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_20

    .line 697
    :cond_a9
    iget-boolean v7, p0, Landroid/widget/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    if-eqz v7, :cond_c1

    .line 698
    iget-object v7, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_9f

    iget-object v7, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 699
    invoke-direct {p0, v9}, Landroid/widget/NumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_9f

    .line 702
    :cond_c1
    sget v7, Landroid/widget/NumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    invoke-direct {p0, v7}, Landroid/widget/NumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_9f

    .line 663
    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_22
    .end packed-switch
.end method

.method public scrollBy(II)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x2

    .line 776
    invoke-direct {p0}, Landroid/widget/NumberPicker;->getSelectorIndices()[I

    move-result-object v0

    .line 777
    .local v0, selectorIndices:[I
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_16

    if-lez p2, :cond_16

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_16

    .line 779
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 804
    :cond_15
    :goto_15
    return-void

    .line 782
    :cond_16
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_27

    if-gez p2, :cond_27

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_27

    .line 784
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_15

    .line 787
    :cond_27
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 788
    :cond_2c
    :goto_2c
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    if-lt v1, v2, :cond_4f

    .line 789
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 790
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 791
    aget v1, v0, v3

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    .line 792
    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_2c

    .line 793
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2c

    .line 796
    :cond_4f
    :goto_4f
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v2, v2

    if-gt v1, v2, :cond_15

    .line 797
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 798
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->incrementScrollSelectorIndices([I)V

    .line 799
    aget v1, v0, v3

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    .line 800
    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_4f

    .line 801
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_4f
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .registers 4
    .parameter "displayedValues"

    .prologue
    .line 1030
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_5

    .line 1043
    :goto_4
    return-void

    .line 1033
    :cond_5
    iput-object p1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1034
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 1036
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1041
    :goto_13
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1042
    invoke-direct {p0}, Landroid/widget/NumberPicker;->resetSelectorWheelIndices()V

    goto :goto_4

    .line 1039
    :cond_1a
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_13
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 768
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 769
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 770
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 771
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 772
    return-void
.end method

.method public setFormatter(Landroid/widget/NumberPicker$Formatter;)V
    .registers 3
    .parameter "formatter"

    .prologue
    .line 842
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_5

    .line 848
    :goto_4
    return-void

    .line 845
    :cond_5
    iput-object p1, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    .line 846
    invoke-direct {p0}, Landroid/widget/NumberPicker;->resetSelectorWheelIndices()V

    .line 847
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    goto :goto_4
.end method

.method public setMaxValue(I)V
    .registers 5
    .parameter "maxValue"

    .prologue
    .line 999
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_5

    .line 1013
    :goto_4
    return-void

    .line 1002
    :cond_5
    if-gez p1, :cond_f

    .line 1003
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1005
    :cond_f
    iput p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1006
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ge v1, v2, :cond_1b

    .line 1007
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iput v1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1009
    :cond_1b
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_31

    const/4 v1, 0x1

    move v0, v1

    .line 1010
    .local v0, wrapSelectorWheel:Z
    :goto_27
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1011
    invoke-direct {p0}, Landroid/widget/NumberPicker;->resetSelectorWheelIndices()V

    .line 1012
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    goto :goto_4

    .line 1009
    .end local v0           #wrapSelectorWheel:Z
    :cond_31
    const/4 v1, 0x0

    move v0, v1

    goto :goto_27
.end method

.method public setMinValue(I)V
    .registers 5
    .parameter "minValue"

    .prologue
    .line 968
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_5

    .line 982
    :goto_4
    return-void

    .line 971
    :cond_5
    if-gez p1, :cond_f

    .line 972
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 974
    :cond_f
    iput p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 975
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    if-le v1, v2, :cond_1b

    .line 976
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iput v1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 978
    :cond_1b
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_31

    const/4 v1, 0x1

    move v0, v1

    .line 979
    .local v0, wrapSelectorWheel:Z
    :goto_27
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 980
    invoke-direct {p0}, Landroid/widget/NumberPicker;->resetSelectorWheelIndices()V

    .line 981
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    goto :goto_4

    .line 978
    .end local v0           #wrapSelectorWheel:Z
    :cond_31
    const/4 v1, 0x0

    move v0, v1

    goto :goto_27
.end method

.method public setOnLongPressUpdateInterval(J)V
    .registers 3
    .parameter "intervalMillis"

    .prologue
    .line 941
    iput-wide p1, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 942
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/NumberPicker$OnScrollListener;)V
    .registers 2
    .parameter "onScrollListener"

    .prologue
    .line 826
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    .line 827
    return-void
.end method

.method public setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V
    .registers 2
    .parameter "onValueChangedListener"

    .prologue
    .line 817
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    .line 818
    return-void
.end method

.method public setValue(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 879
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_5

    .line 891
    :goto_4
    return-void

    .line 882
    :cond_5
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_10

    .line 883
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_24

    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    move p1, v0

    .line 885
    :cond_10
    :goto_10
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_1b

    .line 886
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_28

    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    move p1, v0

    .line 888
    :cond_1b
    :goto_1b
    iput p1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 889
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 890
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    goto :goto_4

    .line 883
    :cond_24
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    move p1, v0

    goto :goto_10

    .line 886
    :cond_28
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    move p1, v0

    goto :goto_1b
.end method

.method public setWrapSelectorWheel(Z)V
    .registers 5
    .parameter "wrapSelector"

    .prologue
    .line 918
    if-eqz p1, :cond_14

    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 919
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Range less than selector items count."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 921
    :cond_14
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_25

    .line 923
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    const/4 v1, 0x2

    const v2, 0x7fffffff

    aput v2, v0, v1

    .line 924
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 926
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 928
    :cond_25
    return-void
.end method
