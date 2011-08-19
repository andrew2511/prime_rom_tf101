.class public Lcom/android/inputmethod/keyboard/KeyboardView;
.super Landroid/view/View;
.source "KeyboardView.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/PointerTracker$UIProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;
    }
.end annotation


# static fields
.field private static final LONG_PRESSABLE_STATE_SET:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final KEY_LABEL_OPTION_ALIGN_BOTTOM:I

.field private final KEY_LABEL_OPTION_ALIGN_LEFT:I

.field private final KEY_LABEL_OPTION_ALIGN_RIGHT:I

.field private final KEY_LABEL_OPTION_FONT_NORMAL:I

.field private final KEY_LABEL_REFERENCE_CHAR:Ljava/lang/String;

.field private final KEY_LABEL_VERTICAL_ADJUSTMENT_FACTOR_CENTER:F

.field private final KEY_LABEL_VERTICAL_PADDING_FACTOR:F

.field private mBackgroundDimAmount:F

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mColorScheme:I

.field private final mConfigShowMiniKeyboardAtTouchedPoint:Z

.field private final mDelayAfterPreview:I

.field private final mDelayBeforePreview:I

.field private final mDirtyRect:Landroid/graphics/Rect;

.field private final mDisambiguateSwipe:Z

.field private mDrawPending:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

.field private final mHasDistinctMultitouch:Z

.field private mInForeground:Z

.field private mInvalidatedKey:Lcom/android/inputmethod/keyboard/Key;

.field private final mInvalidatedKeyRect:Landroid/graphics/Rect;

.field private mIsAccessibilityEnabled:Z

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field protected mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

.field private mKeyHysteresisDistance:F

.field private final mKeyLabelHorizontalPadding:I

.field private mKeyLetterSize:I

.field private mKeyLetterStyle:Landroid/graphics/Typeface;

.field private final mKeyRepeatInterval:I

.field private mKeyTextColor:I

.field private mKeyTextColorDisabled:I

.field private mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

.field private mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field private mKeyboardChanged:Z

.field private mKeys:[Lcom/android/inputmethod/keyboard/Key;

.field private mLabelTextSize:I

.field private final mMiniKeyboardCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniKeyboardOriginX:I

.field private mMiniKeyboardOriginY:I

.field private mMiniKeyboardParent:Landroid/view/View;

.field private mMiniKeyboardPopup:Landroid/widget/PopupWindow;

.field private mMiniKeyboardPopupTime:J

.field private final mMiniKeyboardSlideAllowance:F

.field private mMiniKeyboardTrackerId:I

.field private mMiniKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

.field private mOffsetInWindow:[I

.field private mOldPointerCount:I

.field private mOldPreviewKeyIndex:I

.field private final mPadding:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPointerQueue:Lcom/android/inputmethod/keyboard/PointerTrackerQueue;

.field private final mPointerTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/keyboard/PointerTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupLayout:I

.field private mPopupPreviewDisplayedY:I

.field private mPopupPreviewOffsetX:I

.field private mPopupPreviewOffsetY:I

.field private mPreviewHeight:I

.field private mPreviewOffset:I

.field private mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewTextSizeLarge:I

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mShowPreview:Z

.field private final mSwipeThreshold:I

.field private final mSwipeTracker:Lcom/android/inputmethod/keyboard/SwipeTracker;

.field private final mTextHeightCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalCorrection:F

.field private mWindowOffset:[I

.field private mWindowY:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const-class v0, Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->TAG:Ljava/lang/String;

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101023c

    aput v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 309
    const/high16 v0, 0x7f01

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 310
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 313
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    sget-object v14, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyLetterStyle:Landroid/graphics/Typeface;

    .line 95
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mColorScheme:I

    .line 116
    const/4 v14, -0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mOldPreviewKeyIndex:I

    .line 117
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mShowPreview:Z

    .line 129
    new-instance v14, Ljava/util/WeakHashMap;

    invoke-direct {v14}, Ljava/util/WeakHashMap;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    .line 141
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mPointerTrackers:Ljava/util/ArrayList;

    .line 144
    new-instance v14, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;

    invoke-direct {v14}, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mPointerQueue:Lcom/android/inputmethod/keyboard/PointerTrackerQueue;

    .line 147
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mOldPointerCount:I

    .line 152
    new-instance v14, Lcom/android/inputmethod/keyboard/ProximityKeyDetector;

    invoke-direct {v14}, Lcom/android/inputmethod/keyboard/ProximityKeyDetector;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    .line 156
    new-instance v14, Lcom/android/inputmethod/keyboard/SwipeTracker;

    invoke-direct {v14}, Lcom/android/inputmethod/keyboard/SwipeTracker;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mSwipeTracker:Lcom/android/inputmethod/keyboard/SwipeTracker;

    .line 166
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 170
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeyRect:Landroid/graphics/Rect;

    .line 178
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mTextHeightCache:Ljava/util/HashMap;

    .line 180
    const v14, 0x3ee66666

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_VERTICAL_ADJUSTMENT_FACTOR_CENTER:F

    .line 181
    const v14, 0x3fcccccd

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_VERTICAL_PADDING_FACTOR:F

    .line 182
    const-string v14, "H"

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:Ljava/lang/String;

    .line 183
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_OPTION_ALIGN_LEFT:I

    .line 184
    const/4 v14, 0x2

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_OPTION_ALIGN_RIGHT:I

    .line 185
    const/16 v14, 0x8

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_OPTION_ALIGN_BOTTOM:I

    .line 186
    const/16 v14, 0x10

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_OPTION_FONT_NORMAL:I

    .line 189
    new-instance v14, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;-><init>(Lcom/android/inputmethod/keyboard/KeyboardView;)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    .line 315
    sget-object v14, Lcom/android/inputmethod/latin/R$styleable;->KeyboardView:[I

    const/high16 v15, 0x7f0e

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v14

    move/from16 v3, p3

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 317
    .local v5, a:Landroid/content/res/TypedArray;
    const/4 v12, 0x0

    .line 318
    .local v12, previewLayout:I
    const/4 v9, 0x0

    .line 320
    .local v9, keyTextSize:I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v11

    .line 322
    .local v11, n:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v11, :cond_0

    .line 323
    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 325
    .local v6, attr:I
    packed-switch v6, :pswitch_data_0

    .line 322
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 327
    :pswitch_0
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 330
    :pswitch_1
    const/4 v14, 0x0

    invoke-virtual {v5, v6, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    int-to-float v14, v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyHysteresisDistance:F

    goto :goto_1

    .line 333
    :pswitch_2
    const/4 v14, 0x0

    invoke-virtual {v5, v6, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    int-to-float v14, v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mVerticalCorrection:F

    goto :goto_1

    .line 336
    :pswitch_3
    const/4 v14, 0x0

    invoke-virtual {v5, v6, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 337
    goto :goto_1

    .line 339
    :pswitch_4
    const/4 v14, 0x0

    invoke-virtual {v5, v6, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewOffset:I

    goto :goto_1

    .line 342
    :pswitch_5
    const/16 v14, 0x50

    invoke-virtual {v5, v6, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewHeight:I

    goto :goto_1

    .line 345
    :pswitch_6
    const/16 v14, 0x12

    invoke-virtual {v5, v6, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyLetterSize:I

    goto :goto_1

    .line 348
    :pswitch_7
    const/high16 v14, -0x100

    invoke-virtual {v5, v6, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyTextColor:I

    goto :goto_1

    .line 351
    :pswitch_8
    const/high16 v14, -0x100

    invoke-virtual {v5, v6, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyTextColorDisabled:I

    goto :goto_1

    .line 354
    :pswitch_9
    const/16 v14, 0xe

    invoke-virtual {v5, v6, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mLabelTextSize:I

    goto :goto_1

    .line 357
    :pswitch_a
    const/4 v14, 0x0

    invoke-virtual {v5, v6, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mPopupLayout:I

    goto :goto_1

    .line 360
    :pswitch_b
    const/4 v14, 0x0

    invoke-virtual {v5, v6, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mShadowColor:I

    goto/16 :goto_1

    .line 363
    :pswitch_c
    const/4 v14, 0x0

    invoke-virtual {v5, v6, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mShadowRadius:F

    goto/16 :goto_1

    .line 367
    :pswitch_d
    const/high16 v14, 0x3f00

    invoke-virtual {v5, v6, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mBackgroundDimAmount:F

    goto/16 :goto_1

    .line 370
    :pswitch_e
    const/4 v14, 0x0

    invoke-virtual {v5, v6, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-static {v14}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyLetterStyle:Landroid/graphics/Typeface;

    goto/16 :goto_1

    .line 373
    :pswitch_f
    const/4 v14, 0x0

    invoke-virtual {v5, v6, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mColorScheme:I

    goto/16 :goto_1

    .line 378
    .end local v6           #attr:I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 380
    .local v13, res:Landroid/content/res/Resources;
    new-instance v14, Landroid/widget/PopupWindow;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 381
    if-eqz v12, :cond_1

    .line 382
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v12, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 383
    const v14, 0x7f0b000d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewTextSizeLarge:I

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object v15, v0

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    move-object v14, v0

    const v15, 0x7f0e0001

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 391
    const v14, 0x7f0a0003

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mDelayBeforePreview:I

    .line 392
    const v14, 0x7f0a0004

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mDelayAfterPreview:I

    .line 393
    const v14, 0x7f0b000e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyLabelHorizontalPadding:I

    .line 396
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardParent:Landroid/view/View;

    .line 397
    new-instance v14, Landroid/widget/PopupWindow;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    move-object v14, v0

    const v15, 0x7f0e0002

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 403
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v14, v0

    int-to-float v15, v9

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v14, v0

    sget-object v15, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v14, v0

    const/16 v15, 0xff

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 409
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPadding:Landroid/graphics/Rect;

    move-object v15, v0

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 412
    const/high16 v14, 0x43fa

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mSwipeThreshold:I

    .line 414
    const v14, 0x7f080001

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mDisambiguateSwipe:Z

    .line 415
    const v14, 0x7f0b0009

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardSlideAllowance:F

    .line 416
    const v14, 0x7f080014

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mConfigShowMiniKeyboardAtTouchedPoint:Z

    .line 419
    new-instance v10, Lcom/android/inputmethod/keyboard/KeyboardView$1;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardView$1;-><init>(Lcom/android/inputmethod/keyboard/KeyboardView;)V

    .line 483
    .local v10, listener:Landroid/view/GestureDetector$SimpleOnGestureListener;
    const/4 v8, 0x1

    .line 484
    .local v8, ignoreMultitouch:Z
    new-instance v14, Landroid/view/GestureDetector;

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v0, v14

    move-object v1, v15

    move-object v2, v10

    move-object/from16 v3, v16

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 487
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mHasDistinctMultitouch:Z

    .line 489
    const v14, 0x7f0a0008

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyRepeatInterval:I

    .line 490
    return-void

    .line 387
    .end local v8           #ignoreMultitouch:Z
    .end local v10           #listener:Landroid/view/GestureDetector$SimpleOnGestureListener;
    .restart local p2
    :cond_1
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mShowPreview:Z

    goto/16 :goto_2

    .line 325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/inputmethod/keyboard/KeyboardView;ILcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView;->showKey(ILcom/android/inputmethod/keyboard/PointerTracker;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/inputmethod/keyboard/KeyboardView;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/inputmethod/keyboard/KeyboardView;I)Lcom/android/inputmethod/keyboard/PointerTracker;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/inputmethod/keyboard/KeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/inputmethod/keyboard/KeyboardView;Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->onDoubleTapShiftKey(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/inputmethod/keyboard/KeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/inputmethod/keyboard/KeyboardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/inputmethod/keyboard/KeyboardView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyRepeatInterval:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/inputmethod/keyboard/KeyboardView;ILcom/android/inputmethod/keyboard/PointerTracker;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView;->openPopupIfRequired(ILcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/inputmethod/keyboard/KeyboardView;Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->onLongPressShiftKey(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/inputmethod/keyboard/KeyboardView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/inputmethod/keyboard/KeyboardView;)Lcom/android/inputmethod/keyboard/SwipeTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mSwipeTracker:Lcom/android/inputmethod/keyboard/SwipeTracker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/inputmethod/keyboard/KeyboardView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mSwipeThreshold:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/inputmethod/keyboard/KeyboardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDisambiguateSwipe:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/inputmethod/keyboard/KeyboardView;)Lcom/android/inputmethod/keyboard/Keyboard;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    return-object v0
.end method

.method private dismissKeyPreview()V
    .locals 4

    .prologue
    .line 909
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 910
    .local v1, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->releaseKey()V

    goto :goto_0

    .line 911
    .end local v1           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/inputmethod/keyboard/KeyboardView;->showPreview(ILcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 912
    return-void
.end method

.method private dismissPopupKeyboard()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1376
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    .line 1379
    iput v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardOriginX:I

    .line 1380
    iput v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardOriginY:I

    .line 1381
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->invalidateAllKeys()V

    .line 1383
    :cond_0
    return-void
.end method

.method private static drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 3
    .parameter "canvas"
    .parameter "icon"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 873
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 874
    invoke-virtual {p1, v2, v2, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 875
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 876
    neg-int v0, p2

    int-to-float v0, v0

    neg-int v1, p3

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 877
    return-void
.end method

.method private generateMiniKeyboardMotionEvent(IIIJ)Landroid/view/MotionEvent;
    .locals 8
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 1203
    iget-wide v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardPopupTime:J

    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardOriginX:I

    sub-int v2, p2, v2

    int-to-float v5, v2

    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardOriginY:I

    sub-int v2, p3, v2

    int-to-float v6, v2

    const/4 v7, 0x0

    move-wide v2, p4

    move v4, p1

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private getLabelCharHeight(ILandroid/graphics/Paint;)I
    .locals 6
    .parameter "labelSize"
    .parameter "paint"

    .prologue
    .line 858
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mTextHeightCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 860
    .local v1, labelHeightValue:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 861
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 868
    .local v0, labelCharHeight:I
    :goto_0
    return v0

    .line 863
    .end local v0           #labelCharHeight:I
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 864
    .local v2, textBounds:Landroid/graphics/Rect;
    const-string v3, "H"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p2, v3, v4, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 865
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 866
    .restart local v0       #labelCharHeight:I
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mTextHeightCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;
    .locals 9
    .parameter "id"

    .prologue
    .line 1208
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPointerTrackers:Ljava/util/ArrayList;

    .line 1209
    .local v8, pointers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/keyboard/PointerTracker;>;"
    iget-object v6, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    .line 1210
    .local v6, keys:[Lcom/android/inputmethod/keyboard/Key;
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 1213
    .local v7, listener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, i:I
    :goto_0
    if-gt v1, p1, :cond_2

    .line 1214
    new-instance v0, Lcom/android/inputmethod/keyboard/PointerTracker;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/PointerTracker;-><init>(ILcom/android/inputmethod/keyboard/KeyboardView$UIHandler;Lcom/android/inputmethod/keyboard/KeyDetector;Lcom/android/inputmethod/keyboard/PointerTracker$UIProxy;Landroid/content/res/Resources;)V

    .line 1216
    .local v0, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    if-eqz v6, :cond_0

    .line 1217
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyHysteresisDistance:F

    invoke-virtual {v0, v2, v6, v3}, Lcom/android/inputmethod/keyboard/PointerTracker;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;[Lcom/android/inputmethod/keyboard/Key;F)V

    .line 1218
    :cond_0
    if-eqz v7, :cond_1

    .line 1219
    invoke-virtual {v0, v7}, Lcom/android/inputmethod/keyboard/PointerTracker;->setOnKeyboardActionListener(Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V

    .line 1220
    :cond_1
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1223
    .end local v0           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_2
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/inputmethod/keyboard/PointerTracker;

    return-object p0
.end method

.method private inflateMiniKeyboardContainer(Lcom/android/inputmethod/keyboard/Key;)Landroid/view/View;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v5, -0x8000

    .line 1087
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPopupLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1088
    if-nez v1, :cond_0

    .line 1089
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1091
    :cond_0
    const v0, 0x7f070026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/KeyboardView;

    .line 1093
    new-instance v2, Lcom/android/inputmethod/keyboard/KeyboardView$2;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/keyboard/KeyboardView$2;-><init>(Lcom/android/inputmethod/keyboard/KeyboardView;)V

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/keyboard/KeyboardView;->setOnKeyboardActionListener(Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V

    .line 1126
    new-instance v2, Lcom/android/inputmethod/keyboard/MiniKeyboardKeyDetector;

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardSlideAllowance:F

    invoke-direct {v2, v3}, Lcom/android/inputmethod/keyboard/MiniKeyboardKeyDetector;-><init>(F)V

    iput-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    .line 1128
    iput-object v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1130
    new-instance v2, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/Keyboard;->getPopupKeyboardResId()I

    move-result v3

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-direct {v2, p0, v3, p1, v4}, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder;-><init>(Lcom/android/inputmethod/keyboard/KeyboardView;ILcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/Keyboard;)V

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder;->build()Lcom/android/inputmethod/keyboard/MiniKeyboard;

    move-result-object v2

    .line 1132
    invoke-virtual {v0, v2}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 1133
    iput-object p0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardParent:Landroid/view/View;

    .line 1135
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v0

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 1138
    return-object v1
.end method

.method private onBufferDraw()V
    .locals 40

    .prologue
    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v39

    .line 661
    .local v39, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v24

    .line 662
    .local v24, height:I
    if-eqz v39, :cond_0

    if-nez v24, :cond_1

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v11, v0

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboardChanged:Z

    move v11, v0

    if-eqz v11, :cond_3

    .line 665
    :cond_2
    const/4 v11, 0x0

    move v0, v11

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboardChanged:Z

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    move-object v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, v11

    move v1, v12

    move v2, v13

    move/from16 v3, v39

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 668
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v11, v0

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move v0, v11

    move/from16 v1, v39

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move v0, v11

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    .line 669
    :cond_4
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v39

    move/from16 v1, v24

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 670
    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v12, v0

    invoke-direct {v11, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 672
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    move-object v5, v0

    .line 673
    .local v5, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    move-object v11, v0

    sget-object v12, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    move-object v11, v0

    if-eqz v11, :cond_0

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    .line 678
    .local v18, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    .line 679
    .local v30, keyBackground:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    .line 680
    .local v36, padding:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingLeft()I

    move-result v27

    .line 681
    .local v27, kbdPaddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingTop()I

    move-result v28

    .line 682
    .local v28, kbdPaddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    move-object/from16 v32, v0

    .line 683
    .local v32, keys:[Lcom/android/inputmethod/keyboard/Key;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/android/inputmethod/keyboard/Keyboard;->isManualTemporaryUpperCase()Z

    move-result v26

    .line 684
    .local v26, isManualTemporaryUpperCase:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/android/inputmethod/keyboard/Key;

    move-object v11, v0

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeyRect:Landroid/graphics/Rect;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    move-object v12, v0

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    move/from16 v22, v11

    .line 687
    .local v22, drawSingleKey:Z
    :goto_1
    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 688
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v31, v0

    .line 689
    .local v31, keyCount:I
    const/16 v25, 0x0

    .local v25, i:I
    :goto_2
    move/from16 v0, v25

    move/from16 v1, v31

    if-ge v0, v1, :cond_16

    .line 690
    aget-object v29, v32, v25

    .line 691
    .local v29, key:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/android/inputmethod/keyboard/Key;

    move-object v11, v0

    move-object/from16 v0, v29

    move-object v1, v11

    if-eq v0, v1, :cond_7

    .line 689
    :goto_3
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 684
    .end local v22           #drawSingleKey:Z
    .end local v25           #i:I
    .end local v29           #key:Lcom/android/inputmethod/keyboard/Key;
    .end local v31           #keyCount:I
    :cond_6
    const/4 v11, 0x0

    move/from16 v22, v11

    goto :goto_1

    .line 694
    .restart local v22       #drawSingleKey:Z
    .restart local v25       #i:I
    .restart local v29       #key:Lcom/android/inputmethod/keyboard/Key;
    .restart local v31       #keyCount:I
    :cond_7
    invoke-virtual/range {v29 .. v29}, Lcom/android/inputmethod/keyboard/Key;->getCurrentDrawableState()[I

    move-result-object v23

    .line 695
    .local v23, drawableState:[I
    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 698
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    move-object v11, v0

    if-nez v11, :cond_d

    const/4 v11, 0x0

    move-object/from16 v33, v11

    .line 700
    .local v33, label:Ljava/lang/String;
    :goto_4
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v20

    .line 701
    .local v20, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    move v11, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v12, v0

    if-ne v11, v12, :cond_8

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    move v11, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v12, v0

    if-eq v11, v12, :cond_9

    .line 702
    :cond_8
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    move v13, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    move v14, v0

    move-object/from16 v0, v30

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 704
    :cond_9
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    move v11, v0

    add-int v11, v11, v27

    int-to-float v11, v11

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mY:I

    move v12, v0

    add-int v12, v12, v28

    int-to-float v12, v12

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 705
    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 707
    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v11, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    move v12, v0

    add-int v38, v11, v12

    .line 709
    .local v38, rowHeight:I
    if-eqz v33, :cond_a

    .line 711
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    move v11, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move v2, v11

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/keyboard/KeyboardView;->getLabelSizeAndSetPaint(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I

    move-result v35

    .line 712
    .local v35, labelSize:I
    move-object/from16 v0, p0

    move/from16 v1, v35

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardView;->getLabelCharHeight(ILandroid/graphics/Paint;)I

    move-result v34

    .line 716
    .local v34, labelCharHeight:I
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    move v11, v0

    and-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_e

    .line 717
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    move v11, v0

    int-to-float v11, v11

    move/from16 v0, v34

    int-to-float v0, v0

    move v12, v0

    const v13, 0x3fcccccd

    mul-float/2addr v12, v13

    sub-float v19, v11, v12

    .line 732
    .local v19, baseline:F
    :goto_5
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    move v11, v0

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_f

    .line 733
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyLabelHorizontalPadding:I

    move v11, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v12, v0

    add-int v37, v11, v12

    .line 734
    .local v37, positionX:I
    sget-object v11, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 750
    :goto_6
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mManualTemporaryUpperCaseHintIcon:Landroid/graphics/drawable/Drawable;

    move-object v11, v0

    if-eqz v11, :cond_11

    if-eqz v26, :cond_11

    .line 751
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyTextColorDisabled:I

    move v11, v0

    move-object/from16 v0, v18

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 755
    :goto_7
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/inputmethod/keyboard/Key;->mEnabled:Z

    move v11, v0

    if-eqz v11, :cond_12

    .line 757
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mShadowRadius:F

    move v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mShadowColor:I

    move v14, v0

    move-object/from16 v0, v18

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 762
    :goto_8
    move/from16 v0, v37

    int-to-float v0, v0

    move v11, v0

    move-object v0, v5

    move-object/from16 v1, v33

    move v2, v11

    move/from16 v3, v19

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 764
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, v18

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 767
    .end local v19           #baseline:F
    .end local v34           #labelCharHeight:I
    .end local v35           #labelSize:I
    .end local v37           #positionX:I
    :cond_a
    invoke-virtual/range {v29 .. v29}, Lcom/android/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 768
    .local v6, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    move-object v11, v0

    if-nez v11, :cond_b

    if-eqz v6, :cond_b

    .line 769
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 770
    .local v9, drawableWidth:I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 772
    .local v10, drawableHeight:I
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    move v11, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v12, v0

    add-int/2addr v11, v12

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v12, v0

    sub-int/2addr v11, v12

    sub-int/2addr v11, v10

    div-int/lit8 v8, v11, 0x2

    .line 774
    .local v8, drawableY:I
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    move v11, v0

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_13

    .line 775
    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyLabelHorizontalPadding:I

    move v12, v0

    add-int v7, v11, v12

    .line 790
    .local v7, drawableX:I
    :goto_9
    invoke-static/range {v5 .. v10}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 795
    .end local v7           #drawableX:I
    .end local v8           #drawableY:I
    .end local v9           #drawableWidth:I
    .end local v10           #drawableHeight:I
    :cond_b
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mHintIcon:Landroid/graphics/drawable/Drawable;

    move-object v11, v0

    if-eqz v11, :cond_c

    .line 796
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    move v9, v0

    .line 797
    .restart local v9       #drawableWidth:I
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    move v10, v0

    .line 798
    .restart local v10       #drawableHeight:I
    const/4 v7, 0x0

    .line 799
    .restart local v7       #drawableX:I
    const/4 v8, -0x1

    .line 800
    .restart local v8       #drawableY:I
    if-eqz v26, :cond_15

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mManualTemporaryUpperCaseHintIcon:Landroid/graphics/drawable/Drawable;

    move-object v11, v0

    if-eqz v11, :cond_15

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mManualTemporaryUpperCaseHintIcon:Landroid/graphics/drawable/Drawable;

    move-object v11, v0

    move-object v12, v11

    .line 803
    .local v12, hintIcon:Landroid/graphics/drawable/Drawable;
    :goto_a
    const/4 v13, 0x0

    const/4 v14, -0x1

    move-object v11, v5

    move v15, v9

    move/from16 v16, v10

    invoke-static/range {v11 .. v16}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 808
    .end local v7           #drawableX:I
    .end local v8           #drawableY:I
    .end local v9           #drawableWidth:I
    .end local v10           #drawableHeight:I
    .end local v12           #hintIcon:Landroid/graphics/drawable/Drawable;
    :cond_c
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    move v11, v0

    neg-int v11, v11

    sub-int v11, v11, v27

    int-to-float v11, v11

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mY:I

    move v12, v0

    neg-int v12, v12

    sub-int v12, v12, v28

    int-to-float v12, v12

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_3

    .line 698
    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    .end local v20           #bounds:Landroid/graphics/Rect;
    .end local v33           #label:Ljava/lang/String;
    .end local v38           #rowHeight:I
    :cond_d
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    move-object v11, v0

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v33, v11

    goto/16 :goto_4

    .line 723
    .restart local v20       #bounds:Landroid/graphics/Rect;
    .restart local v33       #label:Ljava/lang/String;
    .restart local v34       #labelCharHeight:I
    .restart local v35       #labelSize:I
    .restart local v38       #rowHeight:I
    :cond_e
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    move v11, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v12, v0

    add-int/2addr v11, v12

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v12, v0

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    move v0, v11

    int-to-float v0, v0

    move/from16 v21, v0

    .line 724
    .local v21, centerY:F
    move/from16 v0, v34

    int-to-float v0, v0

    move v11, v0

    const v12, 0x3ee66666

    mul-float/2addr v11, v12

    add-float v19, v21, v11

    .restart local v19       #baseline:F
    goto/16 :goto_5

    .line 737
    .end local v21           #centerY:F
    :cond_f
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    move v11, v0

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_10

    .line 738
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyLabelHorizontalPadding:I

    move v12, v0

    sub-int/2addr v11, v12

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v12, v0

    sub-int v37, v11, v12

    .line 739
    .restart local v37       #positionX:I
    sget-object v11, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_6

    .line 743
    .end local v37           #positionX:I
    :cond_10
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    move v11, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v12, v0

    add-int/2addr v11, v12

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v12, v0

    sub-int/2addr v11, v12

    div-int/lit8 v37, v11, 0x2

    .line 744
    .restart local v37       #positionX:I
    sget-object v11, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_6

    .line 753
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyTextColor:I

    move v11, v0

    move-object/from16 v0, v18

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_7

    .line 760
    :cond_12
    const/4 v11, 0x0

    move-object/from16 v0, v18

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_8

    .line 778
    .end local v19           #baseline:F
    .end local v34           #labelCharHeight:I
    .end local v35           #labelSize:I
    .end local v37           #positionX:I
    .restart local v6       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v8       #drawableY:I
    .restart local v9       #drawableWidth:I
    .restart local v10       #drawableHeight:I
    :cond_13
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    move v11, v0

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_14

    .line 779
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    move v11, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v12, v0

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyLabelHorizontalPadding:I

    move v12, v0

    sub-int/2addr v11, v12

    sub-int v7, v11, v9

    .restart local v7       #drawableX:I
    goto/16 :goto_9

    .line 785
    .end local v7           #drawableX:I
    :cond_14
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    move v11, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v12, v0

    add-int/2addr v11, v12

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v12, v0

    sub-int/2addr v11, v12

    sub-int/2addr v11, v9

    div-int/lit8 v7, v11, 0x2

    .restart local v7       #drawableX:I
    goto/16 :goto_9

    .line 800
    :cond_15
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mHintIcon:Landroid/graphics/drawable/Drawable;

    move-object v11, v0

    move-object v12, v11

    goto/16 :goto_a

    .line 827
    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #drawableX:I
    .end local v8           #drawableY:I
    .end local v9           #drawableWidth:I
    .end local v10           #drawableHeight:I
    .end local v20           #bounds:Landroid/graphics/Rect;
    .end local v23           #drawableState:[I
    .end local v29           #key:Lcom/android/inputmethod/keyboard/Key;
    .end local v33           #label:Ljava/lang/String;
    .end local v38           #rowHeight:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    move-object v11, v0

    if-eqz v11, :cond_17

    .line 828
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBackgroundDimAmount:F

    move v11, v0

    const/high16 v12, 0x437f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    shl-int/lit8 v11, v11, 0x18

    move-object/from16 v0, v18

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 829
    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v17, v0

    move-object v13, v5

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 832
    :cond_17
    const/4 v11, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/android/inputmethod/keyboard/Key;

    .line 833
    const/4 v11, 0x0

    move v0, v11

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawPending:Z

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_0
.end method

.method private onDoubleTapShiftKey(Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 4
    .parameter "tracker"

    .prologue
    const/4 v3, 0x0

    .line 1083
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    const/16 v1, -0x67

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCodeInput(I[III)V

    .line 1084
    return-void
.end method

.method private onLongPressShiftKey(Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 4
    .parameter "tracker"

    .prologue
    const/4 v3, 0x0

    .line 1074
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->setAlreadyProcessed()V

    .line 1075
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPointerQueue:Lcom/android/inputmethod/keyboard/PointerTrackerQueue;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;->remove(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 1076
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    const/16 v1, -0x67

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCodeInput(I[III)V

    .line 1077
    return-void
.end method

.method private openPopupIfRequired(ILcom/android/inputmethod/keyboard/PointerTracker;)Z
    .locals 4
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    const/4 v3, 0x0

    .line 1055
    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPopupLayout:I

    if-nez v2, :cond_0

    move v2, v3

    .line 1070
    :goto_0
    return v2

    .line 1059
    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 1060
    .local v0, popupKey:Lcom/android/inputmethod/keyboard/Key;
    if-nez v0, :cond_1

    move v2, v3

    .line 1061
    goto :goto_0

    .line 1062
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/android/inputmethod/keyboard/KeyboardView;->onLongPress(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v1

    .line 1063
    .local v1, result:Z
    if-eqz v1, :cond_2

    .line 1064
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->dismissKeyPreview()V

    .line 1065
    iget v2, p2, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardTrackerId:I

    .line 1067
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->setAlreadyProcessed()V

    .line 1068
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPointerQueue:Lcom/android/inputmethod/keyboard/PointerTrackerQueue;

    invoke-virtual {v2, p2}, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;->remove(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    :cond_2
    move v2, v1

    .line 1070
    goto :goto_0
.end method

.method private showKey(ILcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 938
    invoke-virtual {p2, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 942
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInForeground:Z

    if-nez v1, :cond_1

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    iget-object v1, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    .line 947
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 948
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->getPreviewText(Lcom/android/inputmethod/keyboard/Key;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/keyboard/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    iget-object v1, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 950
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyLetterSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 951
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 962
    :goto_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 964
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 966
    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewHeight:I

    .line 967
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 968
    if-eqz v3, :cond_2

    .line 969
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 970
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 973
    :cond_2
    iget v3, v0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget v4, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    sub-int v4, v1, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 974
    iget v4, v0, Lcom/android/inputmethod/keyboard/Key;->mY:I

    sub-int/2addr v4, v2

    iget v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewOffset:I

    add-int/2addr v4, v5

    .line 976
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->cancelDismissPreview()V

    .line 977
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOffsetInWindow:[I

    if-nez v5, :cond_3

    .line 978
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOffsetInWindow:[I

    .line 979
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOffsetInWindow:[I

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/keyboard/KeyboardView;->getLocationInWindow([I)V

    .line 980
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOffsetInWindow:[I

    const/4 v6, 0x0

    aget v7, v5, v6

    iget v8, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPopupPreviewOffsetX:I

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 981
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOffsetInWindow:[I

    const/4 v6, 0x1

    aget v7, v5, v6

    iget v8, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPopupPreviewOffsetY:I

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 982
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 983
    invoke-virtual {p0, v5}, Lcom/android/inputmethod/keyboard/KeyboardView;->getLocationOnScreen([I)V

    .line 984
    const/4 v6, 0x1

    aget v5, v5, v6

    iput v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mWindowY:I

    .line 987
    :cond_3
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, v0, Lcom/android/inputmethod/keyboard/Key;->mPopupCharacters:[Ljava/lang/CharSequence;

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/inputmethod/keyboard/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    :goto_2
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 989
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOffsetInWindow:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v3, v5

    .line 990
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOffsetInWindow:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/2addr v4, v5

    .line 993
    iget v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mWindowY:I

    add-int/2addr v5, v4

    if-gez v5, :cond_a

    .line 996
    iget v5, v0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget v6, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    if-gt v5, v6, :cond_8

    .line 997
    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    int-to-double v5, v0

    const-wide/high16 v7, 0x4004

    mul-double/2addr v5, v7

    double-to-int v0, v5

    add-int/2addr v0, v3

    .line 1001
    :goto_3
    add-int v3, v4, v2

    move v9, v3

    move v3, v0

    move v0, v9

    .line 1005
    :goto_4
    :try_start_0
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1006
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3, v0, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1018
    :goto_5
    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPopupPreviewDisplayedY:I

    .line 1019
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 953
    :cond_4
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewTextSizeLarge:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 954
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyLetterStyle:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1

    .line 957
    :cond_5
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Key;->getPreviewIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 958
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    :goto_6
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 960
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 958
    :cond_6
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_6

    .line 987
    :cond_7
    sget-object v6, Lcom/android/inputmethod/keyboard/KeyboardView;->EMPTY_STATE_SET:[I

    goto :goto_2

    .line 999
    :cond_8
    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    int-to-double v5, v0

    const-wide/high16 v7, 0x4004

    mul-double/2addr v5, v7

    double-to-int v0, v5

    sub-int v0, v3, v0

    goto :goto_3

    .line 1008
    :cond_9
    :try_start_1
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1009
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1010
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardParent:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 1013
    :catch_0
    move-exception v1

    .line 1015
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardView;->TAG:Ljava/lang/String;

    const-string v2, "LatinIME is already closed when tried showing key preview."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_a
    move v0, v4

    goto :goto_4
.end method


# virtual methods
.method protected adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "label"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Keyboard;->isShiftedOrShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 631
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public closing()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1355
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1356
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->cancelAllMessages()V

    .line 1358
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->dismissPopupKeyboard()V

    .line 1359
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1360
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 1361
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->requestLayout()V

    .line 1362
    return-void
.end method

.method public getColorScheme()I
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mColorScheme:I

    return v0
.end method

.method public getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    return-object v0
.end method

.method public getLabelSizeAndSetPaint(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I
    .locals 4
    .parameter "label"
    .parameter "keyLabelOption"
    .parameter "paint"

    .prologue
    .line 841
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 842
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mLabelTextSize:I

    .line 843
    .local v0, labelSize:I
    and-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_0

    .line 844
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 852
    .local v1, labelStyle:Landroid/graphics/Typeface;
    :goto_0
    int-to-float v2, v0

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 853
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 854
    return v0

    .line 846
    .end local v1           #labelStyle:Landroid/graphics/Typeface;
    :cond_0
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .restart local v1       #labelStyle:Landroid/graphics/Typeface;
    goto :goto_0

    .line 849
    .end local v0           #labelSize:I
    .end local v1           #labelStyle:Landroid/graphics/Typeface;
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyLetterSize:I

    .line 850
    .restart local v0       #labelSize:I
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyLetterStyle:Landroid/graphics/Typeface;

    .restart local v1       #labelStyle:Landroid/graphics/Typeface;
    goto :goto_0
.end method

.method protected getOnKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method public getPointerCount()I
    .locals 1

    .prologue
    .line 1235
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOldPointerCount:I

    return v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1387
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->dismissPopupKeyboard()V

    .line 1388
    const/4 v0, 0x1

    .line 1390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDistinctMultitouch()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mHasDistinctMultitouch:Z

    return v0
.end method

.method public invalidateAllKeys()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1029
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1030
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawPending:Z

    .line 1031
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->invalidate()V

    .line 1032
    return-void
.end method

.method public invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 1043
    if-nez p1, :cond_0

    .line 1051
    :goto_0
    return-void

    .line 1045
    :cond_0
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/android/inputmethod/keyboard/Key;

    .line 1046
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeyRect:Landroid/graphics/Rect;

    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    iget v2, p1, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1047
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeyRect:Landroid/graphics/Rect;

    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mX:I

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Lcom/android/inputmethod/keyboard/Key;->mY:I

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1048
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1049
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->onBufferDraw()V

    .line 1050
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mIsAccessibilityEnabled:Z

    return v0
.end method

.method public isInSlidingKeyInput()Z
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->isInSlidingKeyInput()Z

    move-result v0

    .line 1230
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPointerQueue:Lcom/android/inputmethod/keyboard/PointerTrackerQueue;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;->isInSlidingKeyInput()Z

    move-result v0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1371
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1372
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->closing()V

    .line 1373
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 652
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 653
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboardChanged:Z

    if-eqz v0, :cond_1

    .line 654
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->onBufferDraw()V

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 657
    return-void
.end method

.method protected onLongPress(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1149
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/Key;->mPopupCharacters:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    move v0, v1

    .line 1199
    :goto_0
    return v0

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1153
    if-nez v0, :cond_1

    .line 1154
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->inflateMiniKeyboardContainer(Lcom/android/inputmethod/keyboard/Key;)Landroid/view/View;

    move-result-object v0

    .line 1155
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v3, v0

    .line 1157
    const v0, 0x7f070026

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/KeyboardView;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    .line 1158
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/MiniKeyboard;

    .line 1160
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mWindowOffset:[I

    if-nez v2, :cond_2

    .line 1161
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mWindowOffset:[I

    .line 1162
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mWindowOffset:[I

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/keyboard/KeyboardView;->getLocationInWindow([I)V

    .line 1164
    :cond_2
    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mConfigShowMiniKeyboardAtTouchedPoint:Z

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v2

    .line 1166
    :goto_1
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MiniKeyboard;->getDefaultCoordX()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    .line 1167
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardParent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MiniKeyboard;->getMinWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mWindowOffset:[I

    aget v5, v5, v1

    add-int/2addr v4, v5

    .line 1170
    iget v5, p1, Lcom/android/inputmethod/keyboard/Key;->mY:I

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/Keyboard;->getVerticalGap()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mWindowOffset:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    .line 1173
    iget-boolean v6, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mShowPreview:Z

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MiniKeyboard;->isOneRowKeys()Z

    move-result v6

    if-eqz v6, :cond_3

    iget v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPopupPreviewDisplayedY:I

    .line 1176
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mWindowOffset:[I

    aget v7, v7, v1

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardOriginX:I

    .line 1177
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v5

    iget-object v7, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mWindowOffset:[I

    aget v7, v7, v8

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardOriginY:I

    .line 1178
    iget-object v6, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v6, v4, v5}, Lcom/android/inputmethod/keyboard/KeyboardView;->setPopupOffset(II)V

    .line 1179
    iget-object v6, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    if-nez v6, :cond_6

    move v6, v1

    :goto_2
    invoke-virtual {v0, v6}, Lcom/android/inputmethod/keyboard/MiniKeyboard;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1181
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->invalidateAllKeys()V

    .line 1184
    :cond_4
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->setPreviewEnabled(Z)V

    .line 1185
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1186
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1187
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1188
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0, v1, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1191
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1192
    iput-wide v4, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardPopupTime:J

    .line 1193
    iget v0, p1, Lcom/android/inputmethod/keyboard/Key;->mY:I

    iget v3, p1, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/KeyboardView;->generateMiniKeyboardMotionEvent(IIIJ)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1195
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1196
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1198
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->invalidateAllKeys()V

    move v0, v8

    .line 1199
    goto/16 :goto_0

    .line 1164
    :cond_5
    iget v2, p1, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget v4, p1, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 1179
    :cond_6
    iget-object v6, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/Keyboard;->isShiftedOrShiftLocked()Z

    move-result v6

    goto :goto_2
.end method

.method public onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 637
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    if-nez v1, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardView;->setMeasuredDimension(II)V

    .line 648
    :goto_0
    return-void

    .line 641
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/Keyboard;->getMinWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingRight()I

    move-result v2

    add-int v0, v1, v2

    .line 642
    .local v0, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_1

    .line 643
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 645
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/Keyboard;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method protected onSwipeDown()V
    .locals 1

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onSwipeDown()V

    .line 1352
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 1240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 1241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 1242
    iget v8, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOldPointerCount:I

    .line 1243
    iput v7, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOldPointerCount:I

    .line 1248
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mHasDistinctMultitouch:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mIsAccessibilityEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    if-le v7, v10, :cond_1

    if-le v8, v10, :cond_1

    move v0, v10

    .line 1347
    :goto_0
    return v0

    .line 1254
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mSwipeTracker:Lcom/android/inputmethod/keyboard/SwipeTracker;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1259
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mIsAccessibilityEnabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1261
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->dismissKeyPreview()V

    .line 1262
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->cancelKeyTimers()V

    move v0, v10

    .line 1263
    goto :goto_0

    .line 1266
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 1267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1268
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 1269
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    .line 1270
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v3, v0

    .line 1274
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    if-eqz v0, :cond_4

    .line 1275
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardTrackerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1276
    if-ltz v0, :cond_3

    if-ge v0, v7, :cond_3

    .line 1277
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    .line 1278
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v3, v0

    move-object v0, p0

    .line 1279
    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/KeyboardView;->generateMiniKeyboardMotionEvent(IIIJ)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1281
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1282
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_3
    move v0, v10

    .line 1284
    goto :goto_0

    .line 1287
    :cond_4
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->isInKeyRepeat()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1289
    if-ne v1, v11, :cond_5

    move v0, v10

    .line 1290
    goto :goto_0

    .line 1292
    :cond_5
    invoke-direct {p0, v9}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    .line 1295
    if-le v7, v10, :cond_6

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifier()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1296
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->cancelKeyRepeatTimer()V

    .line 1304
    :cond_6
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mHasDistinctMultitouch:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mIsAccessibilityEnabled:Z

    if-eqz v0, :cond_b

    .line 1306
    :cond_7
    invoke-direct {p0, v12}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    .line 1307
    if-ne v7, v10, :cond_8

    if-ne v8, v11, :cond_8

    move-object v1, v0

    .line 1310
    invoke-virtual/range {v1 .. v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEvent(IIJLcom/android/inputmethod/keyboard/PointerTrackerQueue;)V

    :goto_1
    move v0, v10

    .line 1321
    goto/16 :goto_0

    .line 1311
    :cond_8
    if-ne v7, v11, :cond_9

    if-ne v8, v10, :cond_9

    .line 1314
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastY()I

    move-result v3

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEvent(IIJLcom/android/inputmethod/keyboard/PointerTrackerQueue;)V

    goto :goto_1

    .line 1315
    :cond_9
    if-ne v7, v10, :cond_a

    if-ne v8, v10, :cond_a

    .line 1316
    invoke-virtual/range {v0 .. v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->onTouchEvent(IIIJLcom/android/inputmethod/keyboard/PointerTrackerQueue;)V

    goto :goto_1

    .line 1318
    :cond_a
    sget-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown touch panel behavior: pointer count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (old "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1324
    :cond_b
    iget-object v6, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPointerQueue:Lcom/android/inputmethod/keyboard/PointerTrackerQueue;

    .line 1325
    if-ne v1, v11, :cond_c

    move v0, v12

    .line 1326
    :goto_2
    if-ge v0, v7, :cond_d

    .line 1327
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v1

    .line 1328
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {v1 .. v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveEvent(IIJLcom/android/inputmethod/keyboard/PointerTrackerQueue;)V

    .line 1326
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1331
    :cond_c
    invoke-direct {p0, v9}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    .line 1332
    packed-switch v1, :pswitch_data_0

    :cond_d
    :goto_3
    :pswitch_0
    move v0, v10

    .line 1347
    goto/16 :goto_0

    :pswitch_1
    move-object v1, v0

    .line 1335
    invoke-virtual/range {v1 .. v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEvent(IIJLcom/android/inputmethod/keyboard/PointerTrackerQueue;)V

    goto :goto_3

    :pswitch_2
    move-object v1, v0

    .line 1339
    invoke-virtual/range {v1 .. v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEvent(IIJLcom/android/inputmethod/keyboard/PointerTrackerQueue;)V

    goto :goto_3

    :pswitch_3
    move-object v1, v0

    .line 1342
    invoke-virtual/range {v1 .. v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->onCancelEvent(IIJLcom/android/inputmethod/keyboard/PointerTrackerQueue;)V

    goto :goto_3

    .line 1332
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public purgeKeyboardAndClosing()V
    .locals 1

    .prologue
    .line 1365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    .line 1366
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->closing()V

    .line 1367
    return-void
.end method

.method public setAccessibilityEnabled(Z)V
    .locals 3
    .parameter "accessibilityEnabled"

    .prologue
    .line 563
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mIsAccessibilityEnabled:Z

    .line 566
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 567
    .local v1, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-virtual {v1, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->setAccessibilityEnabled(Z)V

    goto :goto_0

    .line 569
    .end local v1           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_0
    return-void
.end method

.method public setForeground(Z)V
    .locals 0
    .parameter "foreground"

    .prologue
    .line 904
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInForeground:Z

    .line 905
    return-void
.end method

.method public setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 6
    .parameter "keyboard"

    .prologue
    .line 520
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    if-eqz v2, :cond_0

    .line 521
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->dismissKeyPreview()V

    .line 524
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->cancelKeyTimers()V

    .line 525
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->cancelPopupPreview()V

    .line 526
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    .line 527
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinImeLogger;->onSetKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 528
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingLeft()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mVerticalCorrection:F

    add-float/2addr v4, v5

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/inputmethod/keyboard/KeyDetector;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;FF)[Lcom/android/inputmethod/keyboard/Key;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    .line 530
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 531
    .local v1, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyHysteresisDistance:F

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/inputmethod/keyboard/PointerTracker;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;[Lcom/android/inputmethod/keyboard/Key;F)V

    goto :goto_0

    .line 533
    .end local v1           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->requestLayout()V

    .line 534
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboardChanged:Z

    .line 535
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->invalidateAllKeys()V

    .line 536
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-static {p1}, Lcom/android/inputmethod/keyboard/KeyDetector;->getMostCommonKeyWidth(Lcom/android/inputmethod/keyboard/Keyboard;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/keyboard/KeyDetector;->setProximityThreshold(I)V

    .line 537
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V

    .line 538
    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 499
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 500
    .local v1, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-virtual {v1, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->setOnKeyboardActionListener(Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V

    goto :goto_0

    .line 502
    .end local v1           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_0
    return-void
.end method

.method public setPopupOffset(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 604
    iput p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPopupPreviewOffsetX:I

    .line 605
    iput p2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPopupPreviewOffsetY:I

    .line 606
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 607
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0
    .parameter "previewEnabled"

    .prologue
    .line 587
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mShowPreview:Z

    .line 588
    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/KeyDetector;->setProximityCorrectionEnabled(Z)V

    .line 617
    return-void
.end method

.method public showPreview(ILcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 5
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    .line 916
    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOldPreviewKeyIndex:I

    .line 917
    .local v1, oldKeyIndex:I
    iput p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOldPreviewKeyIndex:I

    .line 921
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->useSpacebarLanguageSwitcher()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->needsToDisplayLanguage()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->isSpaceKey(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->isSpaceKey(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const/4 v2, 0x1

    move v0, v2

    .line 926
    .local v0, hidePreviewOrShowSpaceKeyPreview:Z
    :goto_0
    if-eq v1, p1, :cond_2

    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mShowPreview:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    .line 927
    :cond_1
    const/4 v2, -0x1

    if-ne p1, v2, :cond_4

    .line 928
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->cancelPopupPreview()V

    .line 929
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDelayAfterPreview:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->dismissPreview(J)V

    .line 934
    :cond_2
    :goto_1
    return-void

    .line 921
    .end local v0           #hidePreviewOrShowSpaceKeyPreview:Z
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 930
    .restart local v0       #hidePreviewOrShowSpaceKeyPreview:Z
    :cond_4
    if-eqz p2, :cond_2

    .line 931
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDelayBeforePreview:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->popupPreview(JILcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_1
.end method

.method public startIgnoringDoubleTap()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->startIgnoringDoubleTap()V

    .line 495
    return-void
.end method
