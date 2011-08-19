.class public Lcom/nuance/xt9/input/KeyboardViewEx;
.super Landroid/view/View;
.source "KeyboardViewEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;,
        Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;
    }
.end annotation


# static fields
.field private static final DELAY_AFTER_PREVIEW:I = 0x3c

.field private static final DELAY_BEFORE_PREVIEW:I = 0x46

.field private static final FADING_DELAY:I = 0x19

.field private static final KEY_DELETE:[I = null

.field private static final LONGPRESS_TIMEOUT:I = 0x4b0

.field private static final LONG_PRESSABLE_STATE_SET:[I = null

.field private static MAX_NEARBY_KEYS:I = 0x0

.field private static final MSG_FADING:I = 0x401

.field private static final MSG_LONGPRESS:I = 0x3ec

.field private static final MSG_MULTITAP_TIMEOUT:I = 0x3ed

.field private static final MSG_REMOVE_PREVIEW:I = 0x3ea

.field private static final MSG_REPEAT:I = 0x3eb

.field private static final MSG_SHOW_PREVIEW:I = 0x3e9

.field private static final MSG_TRACE_COMPLETE:I = 0x400

.field private static final MULTITAP_INTERVAL:I = 0x4e2

.field protected static final NOT_A_KEY:I = -0x1

.field private static final REPEAT_INTERVAL:I = 0x32

.field private static final REPEAT_START_DELAY:I = 0x190

.field static final TAG:Ljava/lang/String; = "XT9IME.KeyboardViewEx"

.field private static final TRACE_DELAY:I = 0xa


# instance fields
.field private mAbortKey:Z

.field private mBackgroundDimAmount:F

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private final mClipRegion:Landroid/graphics/Rect;

.field protected mCurrentIndex:I

.field private mCurrentKey:I

.field private mCurrentKeyIndex:I

.field private mCurrentKeyTime:J

.field private final mDirtyRect:Landroid/graphics/Rect;

.field private final mDistances:[I

.field private mDownTime:J

.field private mDrawPending:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mIgnoreDraw:Z

.field private mInMultiTap:Z

.field protected mInvalidIndex:I

.field protected mInvalidKey:I

.field protected mInvalidTapCount:I

.field private mInvalidatedKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

.field private mIsTracing:Z

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private final mKeyIndices:[I

.field private mKeyPopupLabelTextColor:I

.field private mKeyPopupLabelTextSize:I

.field private mKeyRepeated:Z

.field private mKeyTextColor:I

.field private mKeyTextSize:I

.field private mKeyboard:Lcom/nuance/xt9/input/KeyboardEx;

.field private mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

.field private mKeyboardHasChanged:Z

.field private mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

.field private mLabelTextColor:I

.field private mLabelTextSize:I

.field private mLastCodeX:I

.field private mLastCodeY:I

.field private mLastKey:I

.field private mLastKeyTime:J

.field private mLastMoveTime:J

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field private mLastX:I

.field private mLastY:I

.field private mMiniKeyboard:Lcom/nuance/xt9/input/KeyboardViewEx;

.field private final mMiniKeyboardCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nuance/xt9/input/KeyboardEx$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniKeyboardContainer:Landroid/view/View;

.field private mMiniKeyboardOffsetX:I

.field private mMiniKeyboardOffsetY:I

.field private mMiniKeyboardOnScreen:Z

.field private mMiniKeyboardPopupTime:J

.field private mMiniKeyboardTrackerId:I

.field private mOffsetInWindow:[I

.field private final mPadding:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPopupKeyboard:Landroid/widget/PopupWindow;

.field private mPopupLayout:I

.field private mPopupParent:Landroid/view/View;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field private mPopupX:I

.field private mPopupY:I

.field private mPreviewHeight:I

.field private final mPreviewLabel:Ljava/lang/StringBuilder;

.field private mPreviewOffset:I

.field private final mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewTextSizeLarge:I

.field private mProximityCorrectOn:Z

.field private mProximityThreshold:I

.field private mRepeatKeyIndex:I

.field private mScrennHeight:I

.field private mScrennWidth:I

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mShowPreview:Z

.field private mStartX:I

.field private mStartY:I

.field protected mTapCount:I

.field private final mUnicaseLetters:Ljava/lang/String;

.field protected mVerticalCorrection:I

.field private mWindowOffset:[I

.field protected m_bRepaintTrace:Z

.field protected m_bmpTrace:Landroid/graphics/Bitmap;

.field protected m_cnvTrace:Landroid/graphics/Canvas;

.field protected m_hshPointers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;",
            ">;"
        }
    .end annotation
.end field

.field protected m_hshTraceXfermode:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Xfermode;",
            ">;"
        }
    .end annotation
.end field

.field protected m_iFading:I

.field protected m_iTraceColor:I

.field protected m_pntTrace:Landroid/graphics/Paint;

.field protected m_vctTrace:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    new-array v0, v3, [I

    const/4 v1, -0x5

    aput v1, v0, v2

    sput-object v0, Lcom/nuance/xt9/input/KeyboardViewEx;->KEY_DELETE:[I

    .line 153
    new-array v0, v3, [I

    const v1, 0x101023c

    aput v1, v0, v2

    sput-object v0, Lcom/nuance/xt9/input/KeyboardViewEx;->LONG_PRESSABLE_STATE_SET:[I

    .line 242
    const/16 v0, 0xc

    sput v0, Lcom/nuance/xt9/input/KeyboardViewEx;->MAX_NEARBY_KEYS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 357
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/xt9/input/KeyboardViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 358
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 361
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    const/4 v7, -0x1

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyIndex:I

    .line 200
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mShowPreview:Z

    .line 220
    const/4 v7, -0x1

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    .line 223
    const/16 v7, 0xc

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyIndices:[I

    .line 227
    const/4 v7, -0x1

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mRepeatKeyIndex:I

    .line 228
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyRepeated:Z

    .line 232
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mClipRegion:Landroid/graphics/Rect;

    .line 243
    sget v7, Lcom/nuance/xt9/input/KeyboardViewEx;->MAX_NEARBY_KEYS:I

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mDistances:[I

    .line 250
    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 251
    const/4 v7, -0x1

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mInvalidKey:I

    .line 252
    const/4 v7, -0x1

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentIndex:I

    .line 253
    const/4 v7, -0x1

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mInvalidIndex:I

    .line 254
    const/4 v7, -0x1

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mInvalidTapCount:I

    .line 259
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    .line 273
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    .line 274
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    iput-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshTraceXfermode:Ljava/util/Hashtable;

    .line 275
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    .line 276
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_cnvTrace:Landroid/graphics/Canvas;

    .line 277
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    .line 278
    const/16 v7, 0xff

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_iFading:I

    .line 279
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_bRepaintTrace:Z

    .line 280
    const v7, -0xffff01

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_iTraceColor:I

    .line 281
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    iput-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    .line 284
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mIsTracing:Z

    .line 292
    new-instance v7, Lcom/nuance/xt9/input/KeyboardViewEx$1;

    invoke-direct {v7, p0}, Lcom/nuance/xt9/input/KeyboardViewEx$1;-><init>(Lcom/nuance/xt9/input/KeyboardViewEx;)V

    iput-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    .line 1293
    const/4 v7, 0x0

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mScrennHeight:I

    .line 1294
    const/4 v7, 0x0

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mScrennWidth:I

    .line 364
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/nuance/xt9/input/KeyboardViewEx;->setPadding(IIII)V

    .line 366
    sget-object v7, Lcom/nuance/xt9/input/R$styleable;->KeyboardViewEx:[I

    const/high16 v8, 0x7f0e

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 370
    .local v0, a:Landroid/content/res/TypedArray;
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 374
    .local v3, inflate:Landroid/view/LayoutInflater;
    const/4 v6, 0x0

    .line 375
    .local v6, previewLayout:I
    const/4 v4, 0x0

    .line 377
    .local v4, keyTextSize:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 379
    .local v5, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 380
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 382
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 379
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 387
    :pswitch_2
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mVerticalCorrection:I

    goto :goto_1

    .line 390
    :pswitch_3
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 391
    goto :goto_1

    .line 393
    :pswitch_4
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewOffset:I

    goto :goto_1

    .line 396
    :pswitch_5
    const/16 v7, 0x50

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewHeight:I

    goto :goto_1

    .line 399
    :pswitch_6
    const/16 v7, 0x12

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyTextSize:I

    goto :goto_1

    .line 402
    :pswitch_7
    const/high16 v7, -0x100

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyTextColor:I

    goto :goto_1

    .line 405
    :pswitch_8
    const/high16 v7, -0x100

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLabelTextColor:I

    goto :goto_1

    .line 408
    :pswitch_9
    const/16 v7, 0xc

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLabelTextSize:I

    goto :goto_1

    .line 411
    :pswitch_a
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupLayout:I

    goto :goto_1

    .line 414
    :pswitch_b
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mShadowColor:I

    goto :goto_1

    .line 417
    :pswitch_c
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mShadowRadius:F

    goto :goto_1

    .line 420
    :pswitch_d
    const/16 v7, 0x8

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyPopupLabelTextSize:I

    goto :goto_1

    .line 424
    :pswitch_e
    const v7, -0xffc000

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyPopupLabelTextColor:I

    goto :goto_1

    .line 428
    :pswitch_f
    const/high16 v7, 0x3f00

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mBackgroundDimAmount:F

    goto :goto_1

    .line 432
    :pswitch_10
    const v7, -0xffff01

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_iTraceColor:I

    goto/16 :goto_1

    .line 438
    .end local v1           #attr:I
    :cond_0
    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 439
    if-eqz v6, :cond_1

    .line 440
    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    .line 441
    iget-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewTextSizeLarge:I

    .line 442
    iget-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 443
    iget-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 448
    :goto_2
    iget-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 450
    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 451
    iget-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 453
    iput-object p0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    .line 455
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPaint:Landroid/graphics/Paint;

    .line 456
    iget-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 457
    iget-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPaint:Landroid/graphics/Paint;

    int-to-float v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 458
    iget-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 460
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPadding:Landroid/graphics/Rect;

    .line 461
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardCache:Ljava/util/Map;

    .line 462
    iget-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 464
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08009a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mUnicaseLetters:Ljava/lang/String;

    .line 466
    invoke-direct {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->resetMultiTap()V

    .line 467
    invoke-direct {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->initGestureDetector()V

    .line 468
    return-void

    .line 445
    .restart local p2
    :cond_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mShowPreview:Z

    goto :goto_2

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_f
        :pswitch_d
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/nuance/xt9/input/KeyboardViewEx;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/KeyboardViewEx;->showKey(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/xt9/input/KeyboardViewEx;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/xt9/input/KeyboardViewEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->repeatKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/nuance/xt9/input/KeyboardViewEx;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/KeyboardViewEx;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/nuance/xt9/input/KeyboardViewEx;)Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/xt9/input/KeyboardViewEx;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->resetTrace()V

    return-void
.end method

.method private adjustCase(Lcom/nuance/xt9/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "key"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/xt9/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/KeyboardEx;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/KeyboardViewEx;->isActionKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/KeyboardViewEx;->upperCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 669
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "label"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/xt9/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/KeyboardEx;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/KeyboardViewEx;->upperCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 676
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private checkMultiTap(JI)V
    .locals 8
    .parameter "eventTime"
    .parameter "keyIndex"

    .prologue
    const/4 v3, 0x1

    const-wide/16 v6, 0x4e2

    const/16 v5, 0x3ed

    const/4 v4, -0x1

    .line 2179
    if-ne p3, v4, :cond_1

    .line 2225
    :cond_0
    :goto_0
    return-void

    .line 2180
    :cond_1
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    aget-object v0, v2, p3

    .line 2181
    .local v0, key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    .line 2183
    .local v1, pendingMultitapTimeoutMesg:Z
    if-eqz v1, :cond_2

    .line 2184
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2186
    :cond_2
    iget-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    array-length v2, v2

    if-le v2, v3, :cond_8

    .line 2187
    iput-boolean v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mInMultiTap:Z

    .line 2189
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->allowsMoreKey()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2190
    iput v4, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mTapCount:I

    goto :goto_0

    .line 2193
    :cond_3
    iput p3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentIndex:I

    .line 2195
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->multitapIsInvalid()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2196
    iget v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mInvalidIndex:I

    iget v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentIndex:I

    if-ne v2, v3, :cond_5

    .line 2197
    iget v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mInvalidTapCount:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mTapCount:I

    .line 2214
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2215
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2200
    :cond_5
    iput v4, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mTapCount:I

    goto :goto_1

    .line 2204
    :cond_6
    iget-wide v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastTapTime:J

    add-long/2addr v2, v6

    cmp-long v2, p1, v2

    if-gez v2, :cond_7

    iget v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastSentIndex:I

    if-ne p3, v2, :cond_7

    .line 2206
    iget v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mTapCount:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mTapCount:I

    goto :goto_1

    .line 2209
    :cond_7
    iput v4, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mTapCount:I

    .line 2210
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v2, :cond_4

    .line 2211
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v2}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onMultitapTimeout()V

    goto :goto_1

    .line 2219
    :cond_8
    iget-wide v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastTapTime:J

    add-long/2addr v2, v6

    cmp-long v2, p1, v2

    if-gtz v2, :cond_9

    iget v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastSentIndex:I

    if-eq p3, v2, :cond_0

    .line 2220
    :cond_9
    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v2, :cond_a

    .line 2221
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v2}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onMultitapTimeout()V

    .line 2223
    :cond_a
    invoke-direct {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->resetMultiTap()V

    goto/16 :goto_0
.end method

.method private computeProximityThreshold(Lcom/nuance/xt9/input/KeyboardEx;)V
    .locals 7
    .parameter "keyboard"

    .prologue
    .line 700
    if-nez p1, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    iget-object v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    .line 702
    .local v3, keys:[Lcom/nuance/xt9/input/KeyboardEx$Key;
    if-eqz v3, :cond_0

    .line 703
    array-length v4, v3

    .line 704
    .local v4, length:I
    const/4 v0, 0x0

    .line 705
    .local v0, dimensionSum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 706
    aget-object v2, v3, v1

    .line 707
    .local v2, key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    iget v5, v2, Lcom/nuance/xt9/input/KeyboardEx$Key;->width:I

    iget v6, v2, Lcom/nuance/xt9/input/KeyboardEx$Key;->height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v2, Lcom/nuance/xt9/input/KeyboardEx$Key;->gap:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 709
    .end local v2           #key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    :cond_2
    if-ltz v0, :cond_0

    if-eqz v4, :cond_0

    .line 710
    int-to-float v5, v0

    const v6, 0x3fb33333

    mul-float/2addr v5, v6

    int-to-float v6, v4

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mProximityThreshold:I

    .line 711
    iget v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mProximityThreshold:I

    iget v6, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mProximityThreshold:I

    mul-int/2addr v5, v6

    iput v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mProximityThreshold:I

    goto :goto_0
.end method

.method private detectAndSendKey(IIJ)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 1059
    iget-object v4, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    if-nez v4, :cond_1

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 1063
    :cond_1
    iget v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    .line 1064
    .local v2, index:I
    if-eq v2, v7, :cond_0

    iget-object v4, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 1065
    iget-object v4, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    aget-object v3, v4, v2

    .line 1066
    .local v3, key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    iget-object v4, v3, Lcom/nuance/xt9/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    .line 1067
    iget-object v4, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    iget-object v5, v3, Lcom/nuance/xt9/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 1068
    iget-object v4, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v4, v7}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onRelease(I)V

    .line 1092
    :goto_1
    iput v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastSentIndex:I

    .line 1093
    iput-wide p3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastTapTime:J

    goto :goto_0

    .line 1071
    :cond_2
    iget-object v4, v3, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    aget v0, v4, v5

    .line 1073
    .local v0, code:I
    sget v4, Lcom/nuance/xt9/input/KeyboardViewEx;->MAX_NEARBY_KEYS:I

    new-array v1, v4, [I

    .line 1074
    .local v1, codes:[I
    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([II)V

    .line 1075
    invoke-direct {p0, p1, p2, v1}, Lcom/nuance/xt9/input/KeyboardViewEx;->getKeyIndices(II[I)I

    .line 1077
    iget-boolean v4, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mInMultiTap:Z

    if-eqz v4, :cond_4

    .line 1078
    iget v4, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mTapCount:I

    if-eq v4, v7, :cond_5

    .line 1079
    iget-object v4, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    const/4 v5, -0x5

    sget-object v6, Lcom/nuance/xt9/input/KeyboardViewEx;->KEY_DELETE:[I

    invoke-interface {v4, v5, v6}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(I[I)V

    .line 1084
    :goto_2
    iget v4, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mTapCount:I

    if-ltz v4, :cond_3

    iget v4, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mTapCount:I

    iget-object v5, v3, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 1085
    iget-object v4, v3, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    iget v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mTapCount:I

    aget v0, v4, v5

    .line 1087
    :cond_3
    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([II)V

    .line 1089
    :cond_4
    iget-object v4, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v4, v0, v1}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(I[I)V

    .line 1090
    iget-object v4, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v4, v0}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_1

    .line 1081
    :cond_5
    iput v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mTapCount:I

    goto :goto_2
.end method

.method private generateMiniKeyboardMotionEvent(IIIJ)Landroid/view/MotionEvent;
    .locals 8
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 1471
    iget-wide v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardPopupTime:J

    int-to-float v5, p2

    int-to-float v6, p3

    const/4 v7, 0x0

    move-wide v2, p4

    move v4, p1

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private getKeyIndices(II[I)I
    .locals 22
    .parameter "x"
    .parameter "y"
    .parameter "allKeys"

    .prologue
    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    move-object v14, v0

    .line 1008
    .local v14, keys:[Lcom/nuance/xt9/input/KeyboardEx$Key;
    const/16 v17, -0x1

    .line 1009
    .local v17, primaryIndex:I
    const/4 v6, -0x1

    .line 1010
    .local v6, closestKey:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mProximityThreshold:I

    move/from16 v18, v0

    add-int/lit8 v7, v18, 0x1

    .line 1011
    .local v7, closestKeyDist:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mDistances:[I

    move-object/from16 v18, v0

    const v19, 0x7fffffff

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([II)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/xt9/input/KeyboardEx;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/xt9/input/KeyboardEx;->getNearestKeys(II)[I

    move-result-object v16

    .line 1013
    .local v16, nearestKeyIndices:[I
    move-object/from16 v0, v16

    array-length v0, v0

    move v13, v0

    .line 1014
    .local v13, keyCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v13, :cond_7

    .line 1015
    aget v18, v16, v9

    aget-object v12, v14, v18

    .line 1016
    .local v12, key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    const/4 v8, 0x0

    .line 1017
    .local v8, dist:I
    move-object v0, v12

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/xt9/input/KeyboardEx$Key;->isInside(II)Z

    move-result v10

    .line 1018
    .local v10, isInside:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mProximityCorrectOn:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object v0, v12

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/xt9/input/KeyboardEx$Key;->squaredDistanceFrom(II)I

    move-result v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mProximityThreshold:I

    move/from16 v18, v0

    move v0, v8

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    :cond_0
    if-eqz v10, :cond_6

    :cond_1
    move-object v0, v12

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 1023
    move-object v0, v12

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move v15, v0

    .line 1024
    .local v15, nCodes:I
    if-ge v8, v7, :cond_2

    .line 1025
    move v7, v8

    .line 1026
    aget v6, v16, v9

    .line 1029
    :cond_2
    if-nez p3, :cond_4

    .line 1014
    .end local v15           #nCodes:I
    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1031
    .restart local v15       #nCodes:I
    :cond_4
    const/4 v11, 0x0

    .local v11, j:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mDistances:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    sub-int v18, v18, v15

    move v0, v11

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mDistances:[I

    move-object/from16 v18, v0

    aget v18, v18, v11

    move/from16 v0, v18

    move v1, v8

    if-le v0, v1, :cond_5

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mDistances:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mDistances:[I

    move-object/from16 v19, v0

    add-int v20, v11, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mDistances:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    sub-int v21, v21, v11

    sub-int v21, v21, v15

    move-object/from16 v0, v18

    move v1, v11

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1036
    add-int v18, v11, v15

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    sub-int v19, v19, v11

    sub-int v19, v19, v15

    move-object/from16 v0, p3

    move v1, v11

    move-object/from16 v2, p3

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1038
    const/4 v5, 0x0

    .local v5, c:I
    :goto_3
    if-ge v5, v15, :cond_6

    .line 1039
    add-int v18, v11, v5

    move-object v0, v12

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    move-object/from16 v19, v0

    aget v19, v19, v5

    aput v19, p3, v18

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mDistances:[I

    move-object/from16 v18, v0

    add-int v19, v11, v5

    aput v8, v18, v19

    .line 1038
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1031
    .end local v5           #c:I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1047
    .end local v11           #j:I
    .end local v15           #nCodes:I
    :cond_6
    if-eqz v10, :cond_3

    .line 1048
    aget v17, v16, v9

    goto/16 :goto_1

    .line 1051
    .end local v8           #dist:I
    .end local v10           #isInside:Z
    .end local v12           #key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    :cond_7
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1052
    move/from16 v17, v6

    .line 1054
    :cond_8
    return v17
.end method

.method private getPreviewText(Lcom/nuance/xt9/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1101
    iget-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mInMultiTap:Z

    if-eqz v0, :cond_2

    .line 1103
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1104
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    iget v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mTapCount:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mTapCount:I

    iget-object v3, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    array-length v3, v3

    if-lt v2, v3, :cond_1

    :cond_0
    move v2, v4

    :goto_0
    aget v1, v1, v2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1105
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/KeyboardViewEx;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1107
    :goto_1
    return-object v0

    .line 1104
    :cond_1
    iget v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mTapCount:I

    goto :goto_0

    .line 1107
    :cond_2
    iget-object v0, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/KeyboardViewEx;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method private getScreenHeight()I
    .locals 1

    .prologue
    .line 1315
    iget v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mScrennWidth:I

    if-nez v0, :cond_0

    .line 1316
    invoke-direct {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getScreenMeasurement()V

    .line 1318
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mScrennHeight:I

    return v0
.end method

.method private getScreenMeasurement()V
    .locals 5

    .prologue
    .line 1297
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    move-object v0, v3

    check-cast v0, Landroid/view/WindowManager;

    move-object v2, v0

    .line 1298
    .local v2, mngr:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1300
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mScrennHeight:I

    .line 1301
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mScrennWidth:I

    .line 1303
    return-void
.end method

.method private getScreenWidth()I
    .locals 1

    .prologue
    .line 1307
    iget v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mScrennWidth:I

    if-nez v0, :cond_0

    .line 1308
    invoke-direct {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getScreenMeasurement()V

    .line 1310
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mScrennWidth:I

    return v0
.end method

.method private handleTouchAction(Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;I)Z
    .locals 12
    .parameter "pointer"
    .parameter "action"

    .prologue
    .line 1831
    const/4 v5, 0x0

    .line 1833
    .local v5, pid:I
    packed-switch p2, :pswitch_data_0

    .line 1845
    :goto_0
    iget-object v8, p1, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v6, v0, Landroid/graphics/Point;->x:I

    .line 1846
    .local v6, touchX:I
    iget-object v8, p1, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v7, v0, Landroid/graphics/Point;->y:I

    .line 1847
    .local v7, touchY:I
    iget-wide v1, p1, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->EventTime:J

    .line 1848
    .local v1, eventTime:J
    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/nuance/xt9/input/KeyboardViewEx;->getKeyIndices(II[I)I

    move-result v3

    .line 1851
    .local v3, keyIndex:I
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/xt9/input/KeyboardViewEx;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v8}, Lcom/nuance/xt9/input/KeyboardViewEx;->isShown()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1853
    const/4 v8, 0x1

    .line 2069
    :goto_1
    return v8

    .line 1836
    .end local v1           #eventTime:J
    .end local v3           #keyIndex:I
    .end local v6           #touchX:I
    .end local v7           #touchY:I
    :pswitch_0
    const/4 v5, 0x0

    .line 1837
    goto :goto_0

    .line 1841
    :pswitch_1
    iget-object v8, p1, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int v5, v8, v9

    goto :goto_0

    .line 1856
    .restart local v1       #eventTime:J
    .restart local v3       #keyIndex:I
    .restart local v6       #touchX:I
    .restart local v7       #touchY:I
    :cond_0
    packed-switch p2, :pswitch_data_1

    .line 2067
    :cond_1
    :goto_2
    iput v6, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastX:I

    .line 2068
    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastY:I

    .line 2069
    const/4 v8, 0x1

    goto :goto_1

    .line 1860
    :pswitch_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mAbortKey:Z

    .line 1861
    iput v6, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mStartX:I

    .line 1862
    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mStartY:I

    .line 1863
    iput v6, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastCodeX:I

    .line 1864
    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastCodeY:I

    .line 1865
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastKeyTime:J

    .line 1866
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyTime:J

    .line 1867
    const/4 v8, -0x1

    iput v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastKey:I

    .line 1868
    iput v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    .line 1869
    iput-wide v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mDownTime:J

    .line 1870
    iget-wide v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mDownTime:J

    iput-wide v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastMoveTime:J

    .line 1871
    invoke-direct {p0, v1, v2, v3}, Lcom/nuance/xt9/input/KeyboardViewEx;->checkMultiTap(JI)V

    .line 1872
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyRepeated:Z

    .line 1873
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v8, :cond_2

    .line 1874
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    const/4 v9, -0x1

    if-eq v3, v9, :cond_6

    iget-object v9, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    aget-object v9, v9, v3

    iget-object v9, v9, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    :goto_3
    invoke-interface {v8, v9}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onPress(I)V

    .line 1877
    :cond_2
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    if-ltz v8, :cond_3

    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget v9, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    aget-object v8, v8, v9

    iget-boolean v8, v8, Lcom/nuance/xt9/input/KeyboardEx$Key;->repeatable:Z

    if-eqz v8, :cond_3

    .line 1878
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    iput v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mRepeatKeyIndex:I

    .line 1880
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3eb

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1881
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3eb

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1882
    .local v4, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x190

    invoke-virtual {v8, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1885
    .end local v4           #msg:Landroid/os/Message;
    :cond_3
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    .line 1886
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3ec

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1887
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3ec

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1888
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x4b0

    invoke-virtual {v8, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1891
    .end local v4           #msg:Landroid/os/Message;
    :cond_4
    invoke-direct {p0, v3}, Lcom/nuance/xt9/input/KeyboardViewEx;->showPreview(I)V

    .line 1893
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x400

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1895
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x400

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1897
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v8, :cond_5

    .line 1898
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    iget-object v9, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-interface {v8, v9}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onTrace(Ljava/util/ArrayList;)V

    .line 1906
    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->resetTrace()V

    .line 1907
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->invalidate()V

    goto/16 :goto_2

    .line 1874
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 1901
    :cond_7
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x401

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1903
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x401

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_4

    .line 1912
    :pswitch_3
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->isTraceInputEnabled()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1915
    iget-boolean v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyRepeated:Z

    if-nez v8, :cond_e

    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_8

    iget v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mStartX:I

    sub-int/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x41c8

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_8

    iget v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mStartY:I

    sub-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x41c8

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_e

    .line 1918
    :cond_8
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_9

    iget v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    if-ltz v8, :cond_9

    iget v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    iget-object v9, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    array-length v9, v9

    if-ge v8, v9, :cond_9

    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget v9, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    array-length v8, v8

    if-lez v8, :cond_9

    iget v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    if-ne v3, v8, :cond_9

    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget v9, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    array-length v8, v8

    if-lez v8, :cond_9

    .line 1920
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget v9, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    sparse-switch v8, :sswitch_data_0

    .line 1940
    :cond_9
    iget-boolean v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mInMultiTap:Z

    if-eqz v8, :cond_a

    .line 1942
    invoke-direct {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->resetMultiTap()V

    .line 1945
    :cond_a
    const/4 v8, -0x1

    iput v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    .line 1946
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyTime:J

    .line 1948
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1950
    const/4 v8, -0x1

    invoke-direct {p0, v8}, Lcom/nuance/xt9/input/KeyboardViewEx;->showPreview(I)V

    .line 1953
    :cond_b
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3eb

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1955
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3eb

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1958
    :cond_c
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3eb

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1960
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3ec

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1963
    :cond_d
    iget-object v8, p1, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    iput-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    .line 1964
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_bRepaintTrace:Z

    .line 1965
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mIsTracing:Z

    .line 1967
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->invalidate()V

    goto/16 :goto_2

    .line 1934
    :sswitch_0
    iput v6, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastX:I

    .line 1935
    iput v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastY:I

    .line 1936
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1971
    :cond_e
    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    iget v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    if-ne v3, v8, :cond_1

    .line 1973
    iget-wide v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyTime:J

    iget-wide v10, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastMoveTime:J

    sub-long v10, v1, v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyTime:J

    goto/16 :goto_2

    .line 1979
    :cond_f
    const/4 v0, 0x0

    .line 1981
    .local v0, continueLongPress:Z
    iget-boolean v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mAbortKey:Z

    if-nez v8, :cond_1

    .line 1985
    const/4 v8, -0x1

    if-eq v3, v8, :cond_10

    .line 1986
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_12

    .line 1987
    iput v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    .line 1988
    iget-wide v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mDownTime:J

    sub-long v8, v1, v8

    iput-wide v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyTime:J

    .line 2004
    :goto_5
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mRepeatKeyIndex:I

    if-eq v3, v8, :cond_10

    .line 2005
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3eb

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2006
    const/4 v8, -0x1

    iput v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mRepeatKeyIndex:I

    .line 2009
    :cond_10
    if-nez v0, :cond_11

    .line 2011
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3ec

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2013
    const/4 v8, -0x1

    if-eq v3, v8, :cond_11

    .line 2014
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3ec

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_11

    .line 2015
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3ec

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2016
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x4b0

    invoke-virtual {v8, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2020
    .end local v4           #msg:Landroid/os/Message;
    :cond_11
    invoke-direct {p0, v3}, Lcom/nuance/xt9/input/KeyboardViewEx;->showPreview(I)V

    goto/16 :goto_2

    .line 1990
    :cond_12
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    if-ne v3, v8, :cond_13

    .line 1991
    iget-wide v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyTime:J

    iget-wide v10, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastMoveTime:J

    sub-long v10, v1, v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyTime:J

    .line 1992
    const/4 v0, 0x1

    goto :goto_5

    .line 1994
    :cond_13
    invoke-direct {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->resetMultiTap()V

    .line 1995
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    iput v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastKey:I

    .line 1996
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastX:I

    iput v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastCodeX:I

    .line 1997
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastY:I

    iput v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastCodeY:I

    .line 1998
    iget-wide v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyTime:J

    add-long/2addr v8, v1

    iget-wide v10, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastMoveTime:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastKeyTime:J

    .line 2000
    iput v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    .line 2001
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyTime:J

    goto :goto_5

    .line 2026
    .end local v0           #continueLongPress:Z
    :pswitch_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mIsTracing:Z

    .line 2027
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3e9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2028
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3eb

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2029
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3ec

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2031
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_14

    .line 2033
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    .line 2034
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    iget-object v9, p1, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2035
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_bRepaintTrace:Z

    .line 2037
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x400

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2038
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x400

    const-wide/16 v10, 0xa

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 2041
    :cond_14
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    if-ne v3, v8, :cond_17

    .line 2042
    iget-wide v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyTime:J

    iget-wide v10, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastMoveTime:J

    sub-long v10, v1, v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyTime:J

    .line 2050
    :goto_6
    iget-wide v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyTime:J

    iget-wide v10, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastKeyTime:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_15

    iget v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastKey:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_15

    .line 2051
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastKey:I

    iput v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    .line 2052
    iget v6, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastCodeX:I

    .line 2053
    iget v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastCodeY:I

    .line 2055
    :cond_15
    const/4 v8, -0x1

    invoke-direct {p0, v8}, Lcom/nuance/xt9/input/KeyboardViewEx;->showPreview(I)V

    .line 2056
    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyIndices:[I

    const/4 v9, -0x1

    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([II)V

    .line 2058
    iget-boolean v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyRepeated:Z

    if-nez v8, :cond_16

    iget-boolean v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    if-nez v8, :cond_16

    iget-boolean v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mAbortKey:Z

    if-nez v8, :cond_16

    .line 2059
    invoke-direct {p0, v6, v7, v1, v2}, Lcom/nuance/xt9/input/KeyboardViewEx;->detectAndSendKey(IIJ)V

    .line 2061
    :cond_16
    invoke-direct {p0, v3}, Lcom/nuance/xt9/input/KeyboardViewEx;->invalidateKeyByIndex(I)V

    .line 2062
    const/4 v8, -0x1

    iput v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mRepeatKeyIndex:I

    .line 2063
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyRepeated:Z

    goto/16 :goto_2

    .line 2044
    :cond_17
    invoke-direct {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->resetMultiTap()V

    .line 2045
    iget v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    iput v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastKey:I

    .line 2046
    iget-wide v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyTime:J

    add-long/2addr v8, v1

    iget-wide v10, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastMoveTime:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastKeyTime:J

    .line 2047
    iput v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    .line 2048
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyTime:J

    goto :goto_6

    .line 1833
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1856
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 1920
    :sswitch_data_0
    .sparse-switch
        -0x15 -> :sswitch_0
        -0x14 -> :sswitch_0
        -0x13 -> :sswitch_0
        -0x6 -> :sswitch_0
        -0x5 -> :sswitch_0
        -0x4 -> :sswitch_0
        -0x3 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private initGestureDetector()V
    .locals 3

    .prologue
    .line 471
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/nuance/xt9/input/KeyboardViewEx$2;

    invoke-direct {v2, p0}, Lcom/nuance/xt9/input/KeyboardViewEx$2;-><init>(Lcom/nuance/xt9/input/KeyboardViewEx;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mGestureDetector:Landroid/view/GestureDetector;

    .line 496
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 497
    return-void
.end method

.method private invalidateKeyByIndex(I)V
    .locals 1
    .parameter "keyIndex"

    .prologue
    .line 1253
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1257
    :cond_0
    :goto_0
    return-void

    .line 1256
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/KeyboardViewEx;->invalidateKey(Lcom/nuance/xt9/input/KeyboardEx$Key;)V

    goto :goto_0
.end method

.method private isActionKey(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 636
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    const/4 v0, -0x4

    if-eq p1, v0, :cond_0

    const/4 v0, -0x5

    if-eq p1, v0, :cond_0

    const/4 v0, -0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, -0x13

    if-eq p1, v0, :cond_0

    const/16 v0, -0xc

    if-eq p1, v0, :cond_0

    const/16 v0, -0xd

    if-eq p1, v0, :cond_0

    const/16 v0, -0x14

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onBufferDraw()V
    .locals 40

    .prologue
    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    move-object v6, v0

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardHasChanged:Z

    move v6, v0

    if-eqz v6, :cond_6

    .line 838
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    move-object v6, v0

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardHasChanged:Z

    move v6, v0

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_5

    .line 841
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getWidth()I

    move-result v37

    .line 842
    .local v37, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getHeight()I

    move-result v18

    .line 844
    .local v18, height:I
    if-lez v37, :cond_7

    if-lez v18, :cond_7

    .line 845
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardHasChanged:Z

    move v6, v0

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    move-object v6, v0

    if-eqz v6, :cond_2

    .line 852
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    move-object v6, v0

    if-eqz v6, :cond_3

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 854
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/xt9/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    .line 857
    :cond_3
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v37

    move/from16 v1, v18

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/xt9/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCanvas:Landroid/graphics/Canvas;

    move-object v6, v0

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/xt9/input/KeyboardViewEx;->mCanvas:Landroid/graphics/Canvas;

    .line 859
    :cond_4
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/xt9/input/KeyboardViewEx;->mCanvas:Landroid/graphics/Canvas;

    .line 866
    .end local v18           #height:I
    .end local v37           #width:I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->invalidateAll()V

    .line 867
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardHasChanged:Z

    .line 870
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCanvas:Landroid/graphics/Canvas;

    move-object v5, v0

    .line 871
    .local v5, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    move-object v6, v0

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/xt9/input/KeyboardEx;

    move-object v6, v0

    if-nez v6, :cond_8

    .line 1004
    .end local v5           #canvas:Landroid/graphics/Canvas;
    :cond_7
    :goto_0
    return-void

    .line 875
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    .line 877
    .local v24, keyBackground:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    .line 878
    .local v10, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mClipRegion:Landroid/graphics/Rect;

    move-object v12, v0

    .line 879
    .local v12, clipRegion:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    .line 880
    .local v33, padding:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v21

    .line 881
    .local v21, kbdPaddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingTop()I

    move-result v22

    .line 882
    .local v22, kbdPaddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    move-object/from16 v31, v0

    .line 883
    .local v31, keys:[Lcom/nuance/xt9/input/KeyboardEx$Key;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mInvalidatedKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    move-object/from16 v20, v0

    .line 885
    .local v20, invalidKey:Lcom/nuance/xt9/input/KeyboardEx$Key;
    const/16 v6, 0xff

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 886
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyTextColor:I

    move v6, v0

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 887
    const/4 v6, 0x1

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 888
    const/4 v14, 0x0

    .line 889
    .local v14, drawSingleKey:Z
    if-eqz v20, :cond_9

    invoke-virtual {v5, v12}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 891
    move-object/from16 v0, v20

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    move v6, v0

    add-int v6, v6, v21

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iget v7, v12, Landroid/graphics/Rect;->left:I

    if-gt v6, v7, :cond_9

    move-object/from16 v0, v20

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->y:I

    move v6, v0

    add-int v6, v6, v22

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iget v7, v12, Landroid/graphics/Rect;->top:I

    if-gt v6, v7, :cond_9

    move-object/from16 v0, v20

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    move v6, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->width:I

    move v7, v0

    add-int/2addr v6, v7

    add-int v6, v6, v21

    add-int/lit8 v6, v6, 0x1

    iget v7, v12, Landroid/graphics/Rect;->right:I

    if-lt v6, v7, :cond_9

    move-object/from16 v0, v20

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->y:I

    move v6, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->height:I

    move v7, v0

    add-int/2addr v6, v7

    add-int v6, v6, v22

    add-int/lit8 v6, v6, 0x1

    iget v7, v12, Landroid/graphics/Rect;->bottom:I

    if-lt v6, v7, :cond_9

    .line 895
    const/4 v14, 0x1

    .line 898
    :cond_9
    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 900
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v25, v0

    .line 901
    .local v25, keyCount:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_17

    .line 902
    aget-object v23, v31, v19

    .line 903
    .local v23, key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    if-eqz v14, :cond_a

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_a

    .line 901
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 907
    :cond_a
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_f

    .line 908
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    .line 914
    :goto_3
    invoke-virtual/range {v23 .. v23}, Lcom/nuance/xt9/input/KeyboardEx$Key;->getCurrentDrawableState()[I

    move-result-object v15

    .line 915
    .local v15, drawableState:[I
    move-object/from16 v0, v24

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 918
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    move-object v6, v0

    if-eqz v6, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/KeyboardViewEx;->adjustCase(Lcom/nuance/xt9/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v32, v6

    .line 920
    .local v32, label:Ljava/lang/String;
    :goto_4
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 921
    .local v11, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->width:I

    move v6, v0

    iget v7, v11, Landroid/graphics/Rect;->right:I

    if-ne v6, v7, :cond_b

    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->height:I

    move v6, v0

    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    if-eq v6, v7, :cond_c

    .line 923
    :cond_b
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->width:I

    move v8, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->height:I

    move v9, v0

    move-object/from16 v0, v24

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 925
    :cond_c
    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    move v6, v0

    add-int v6, v6, v21

    int-to-float v6, v6

    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->y:I

    move v7, v0

    add-int v7, v7, v22

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 926
    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 928
    if-eqz v32, :cond_16

    .line 931
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/KeyboardViewEx;->isActionKey(I)Z

    move-result v6

    if-nez v6, :cond_d

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    move-object v6, v0

    if-eqz v6, :cond_11

    .line 935
    :cond_d
    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mLabelTextColor:I

    move/from16 v26, v0

    .line 936
    .local v26, keyLabelTextColor:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLabelTextSize:I

    move/from16 v27, v0

    .line 938
    .local v27, keyLabelTextSize:I
    move-object v0, v10

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 939
    move/from16 v0, v27

    int-to-float v0, v0

    move v6, v0

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 940
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 951
    .end local v26           #keyLabelTextColor:I
    .end local v27           #keyLabelTextSize:I
    :goto_5
    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mShadowColor:I

    move v6, v0

    if-nez v6, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mShadowColor:I

    move v6, v0

    move/from16 v34, v6

    .line 952
    .local v34, shadowColor:I
    :goto_6
    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mShadowRadius:F

    move v6, v0

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mShadowRadius:F

    move v6, v0

    move/from16 v35, v6

    .line 953
    .local v35, shadowRadius:F
    :goto_7
    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mShadowX:I

    move/from16 v38, v0

    .line 954
    .local v38, x:I
    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mShadowY:I

    move/from16 v39, v0

    .line 956
    .local v39, y:I
    move/from16 v0, v38

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v39

    int-to-float v0, v0

    move v7, v0

    move-object v0, v10

    move/from16 v1, v35

    move v2, v6

    move v3, v7

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 959
    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->width:I

    move v6, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v7, v0

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    add-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->height:I

    move v7, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    sub-int/2addr v7, v8

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v8, v0

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v10}, Landroid/graphics/Paint;->getTextSize()F

    move-result v8

    invoke-virtual {v10}, Landroid/graphics/Paint;->descent()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    int-to-float v8, v8

    add-float/2addr v7, v8

    move-object v0, v5

    move-object/from16 v1, v32

    move v2, v6

    move v3, v7

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 966
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v10, v6, v7, v8, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 978
    .end local v11           #bounds:Landroid/graphics/Rect;
    .end local v34           #shadowColor:I
    .end local v35           #shadowRadius:F
    .end local v38           #x:I
    .end local v39           #y:I
    :cond_e
    :goto_8
    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    move v6, v0

    neg-int v6, v6

    sub-int v6, v6, v21

    int-to-float v6, v6

    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->y:I

    move v7, v0

    neg-int v7, v7

    sub-int v7, v7, v22

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_2

    .line 911
    .end local v15           #drawableState:[I
    .end local v32           #label:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    goto/16 :goto_3

    .line 918
    .restart local v15       #drawableState:[I
    :cond_10
    const/4 v6, 0x0

    move-object/from16 v32, v6

    goto/16 :goto_4

    .line 942
    .restart local v11       #bounds:Landroid/graphics/Rect;
    .restart local v32       #label:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mKeyTextColor:I

    move v6, v0

    if-eqz v6, :cond_12

    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mKeyTextColor:I

    move v6, v0

    move/from16 v28, v6

    .line 943
    .local v28, keyTextColor:I
    :goto_9
    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mKeyTextSize:I

    move v6, v0

    if-eqz v6, :cond_13

    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mKeyTextSize:I

    move v6, v0

    move/from16 v29, v6

    .line 944
    .local v29, keyTextSize:I
    :goto_a
    move-object v0, v10

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 945
    move/from16 v0, v29

    int-to-float v0, v0

    move v6, v0

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 946
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_5

    .line 942
    .end local v28           #keyTextColor:I
    .end local v29           #keyTextSize:I
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyTextColor:I

    move v6, v0

    move/from16 v28, v6

    goto :goto_9

    .line 943
    .restart local v28       #keyTextColor:I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyTextSize:I

    move v6, v0

    move/from16 v29, v6

    goto :goto_a

    .line 951
    .end local v28           #keyTextColor:I
    :cond_14
    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mShadowColor:I

    move v6, v0

    move/from16 v34, v6

    goto/16 :goto_6

    .line 952
    .restart local v34       #shadowColor:I
    :cond_15
    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mShadowRadius:F

    move v6, v0

    move/from16 v35, v6

    goto/16 :goto_7

    .line 967
    .end local v34           #shadowColor:I
    :cond_16
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_e

    .line 968
    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->width:I

    move v6, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    add-int v16, v6, v7

    .line 970
    .local v16, drawableX:I
    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->height:I

    move v6, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    add-int v17, v6, v7

    .line 972
    .local v17, drawableY:I
    move/from16 v0, v16

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 973
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v11, v0

    .end local v11           #bounds:Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v6, v7, v8, v9, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 975
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 976
    move/from16 v0, v16

    neg-int v0, v0

    move v6, v0

    int-to-float v6, v6

    move/from16 v0, v17

    neg-int v0, v0

    move v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_8

    .line 980
    .end local v15           #drawableState:[I
    .end local v16           #drawableX:I
    .end local v17           #drawableY:I
    .end local v23           #key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    .end local v32           #label:Ljava/lang/String;
    :cond_17
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/xt9/input/KeyboardViewEx;->mInvalidatedKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    .line 982
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    move v6, v0

    if-eqz v6, :cond_18

    .line 983
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mBackgroundDimAmount:F

    move v6, v0

    const/high16 v7, 0x437f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x18

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 984
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 988
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v30

    .line 989
    .local v30, keyboard:Lcom/nuance/xt9/input/KeyboardEx;
    move-object/from16 v0, v30

    instance-of v0, v0, Lcom/nuance/xt9/input/SymKeyboard;

    move v6, v0

    if-eqz v6, :cond_19

    .line 990
    move-object/from16 v0, v30

    check-cast v0, Lcom/nuance/xt9/input/SymKeyboard;

    move-object/from16 v36, v0

    .line 991
    .local v36, symKeyboard:Lcom/nuance/xt9/input/SymKeyboard;
    invoke-virtual/range {v36 .. v36}, Lcom/nuance/xt9/input/SymKeyboard;->getFocusedKey()Lcom/nuance/xt9/input/KeyboardEx$Key;

    move-result-object v23

    .line 992
    .restart local v23       #key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    if-eqz v23, :cond_19

    .line 993
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 994
    .local v13, d:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    move v6, v0

    add-int v6, v6, v21

    int-to-float v6, v6

    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->y:I

    move v7, v0

    add-int v7, v7, v22

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 995
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->width:I

    move v8, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->height:I

    move v9, v0

    invoke-virtual {v13, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 996
    invoke-virtual {v13, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 997
    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    move v6, v0

    neg-int v6, v6

    sub-int v6, v6, v21

    int-to-float v6, v6

    move-object/from16 v0, v23

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->y:I

    move v7, v0

    neg-int v7, v7

    sub-int v7, v7, v22

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1002
    .end local v13           #d:Landroid/graphics/drawable/Drawable;
    .end local v23           #key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    .end local v36           #symKeyboard:Lcom/nuance/xt9/input/SymKeyboard;
    :cond_19
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/xt9/input/KeyboardViewEx;->mDrawPending:Z

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_0
.end method

.method private openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "me"

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->popupMiniKeyboard()Z

    move-result v0

    return v0
.end method

.method private repeatKey()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2073
    iget v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mRepeatKeyIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mRepeatKeyIndex:I

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 2074
    :cond_0
    const/4 v1, 0x0

    .line 2079
    :goto_0
    return v1

    .line 2076
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mRepeatKeyIndex:I

    aget-object v0, v1, v2

    .line 2077
    .local v0, key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    iget v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    iget v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->y:I

    iget-wide v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastTapTime:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/nuance/xt9/input/KeyboardViewEx;->detectAndSendKey(IIJ)V

    .line 2078
    iput-boolean v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyRepeated:Z

    move v1, v5

    .line 2079
    goto :goto_0
.end method

.method private resetMultiTap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2164
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastSentIndex:I

    .line 2165
    iput v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mTapCount:I

    .line 2166
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mLastTapTime:J

    .line 2167
    iput-boolean v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mInMultiTap:Z

    .line 2170
    return-void
.end method

.method private resetTrace()V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 823
    :cond_1
    const/16 v0, 0xff

    iput v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_iFading:I

    .line 824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_bRepaintTrace:Z

    .line 825
    return-void
.end method

.method private showKey(I)V
    .locals 11
    .parameter "keyIndex"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 1167
    iget-object v4, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 1168
    .local v4, previewPopup:Landroid/widget/PopupWindow;
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    .line 1171
    .local v1, keys:[Lcom/nuance/xt9/input/KeyboardEx$Key;
    if-ltz p1, :cond_0

    iget-object v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    array-length v5, v5

    if-ge p1, v5, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 1235
    :cond_0
    :goto_0
    return-void

    .line 1175
    :cond_1
    iget-object v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1176
    const-string v5, "XT9IME.KeyboardViewEx"

    const-string v6, "showKey - trying to popup when parent has null window token"

    invoke-static {v5, v6}, Lcom/nuance/xt9/input/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1180
    :cond_2
    aget-object v0, v1, p1

    .line 1182
    .local v0, key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    iget-object v5, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 1183
    iget-object v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v5, v7, v7, v7, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1185
    iget-object v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1197
    :goto_2
    iget-object v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->measure(II)V

    .line 1199
    iget-object v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    iget v6, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->width:I

    iget-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1201
    .local v3, popupWidth:I
    iget v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewHeight:I

    .line 1203
    .local v2, popupHeight:I
    iget v5, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    iget-object v6, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupPreviewX:I

    .line 1204
    iget v5, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->y:I

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewOffset:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupPreviewY:I

    .line 1206
    iget-object v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1207
    iget-object v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mOffsetInWindow:[I

    if-nez v5, :cond_3

    .line 1208
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->recalculateOffsets()V

    .line 1212
    :cond_3
    iget-object v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v6, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupResId:I

    if-eqz v6, :cond_7

    sget-object v6, Lcom/nuance/xt9/input/KeyboardViewEx;->LONG_PRESSABLE_STATE_SET:[I

    :goto_3
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1216
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1217
    iget v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupPreviewX:I

    iget-object v6, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mOffsetInWindow:[I

    aget v6, v6, v9

    add-int/2addr v5, v6

    iget v6, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupPreviewY:I

    iget-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mOffsetInWindow:[I

    aget v7, v7, v10

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v6, v3, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0

    .line 1183
    .end local v2           #popupHeight:I
    .end local v3           #popupWidth:I
    :cond_4
    iget-object v6, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 1187
    :cond_5
    iget-object v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1188
    iget-object v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPreviewText(Lcom/nuance/xt9/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1189
    iget-object v5, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    aget v5, v5, v9

    invoke-direct {p0, v5}, Lcom/nuance/xt9/input/KeyboardViewEx;->isActionKey(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1190
    iget-object v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    iget v6, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyTextSize:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1191
    iget-object v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 1193
    :cond_6
    iget-object v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    iget v6, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewTextSizeLarge:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1194
    iget-object v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 1212
    .restart local v2       #popupHeight:I
    .restart local v3       #popupWidth:I
    :cond_7
    sget-object v6, Lcom/nuance/xt9/input/KeyboardViewEx;->EMPTY_STATE_SET:[I

    goto :goto_3

    .line 1224
    :cond_8
    invoke-virtual {v4, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1225
    invoke-virtual {v4, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1228
    iget-object v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    iget v6, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupPreviewX:I

    iget-object v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mOffsetInWindow:[I

    aget v7, v7, v9

    add-int/2addr v6, v7

    iget v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupPreviewY:I

    iget-object v8, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mOffsetInWindow:[I

    aget v8, v8, v10

    add-int/2addr v7, v8

    invoke-virtual {v4, v5, v9, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method

.method private showPreview(I)V
    .locals 10
    .parameter "keyIndex"

    .prologue
    const/16 v5, 0x3ea

    const/4 v9, 0x0

    const/16 v8, 0x3e9

    const/4 v7, -0x1

    .line 1112
    iget v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyIndex:I

    .line 1113
    .local v1, oldKeyIndex:I
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 1115
    .local v2, previewPopup:Landroid/widget/PopupWindow;
    iput p1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyIndex:I

    .line 1117
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    .line 1118
    .local v0, keys:[Lcom/nuance/xt9/input/KeyboardEx$Key;
    iget v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyIndex:I

    if-eq v1, v3, :cond_1

    .line 1119
    if-eq v1, v7, :cond_0

    array-length v3, v0

    if-le v3, v1, :cond_0

    .line 1120
    aget-object v3, v0, v1

    iget v4, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyIndex:I

    if-ne v4, v7, :cond_4

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Lcom/nuance/xt9/input/KeyboardEx$Key;->onReleased(Z)V

    .line 1121
    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/KeyboardViewEx;->invalidateKeyByIndex(I)V

    .line 1123
    :cond_0
    iget v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyIndex:I

    if-eq v3, v7, :cond_1

    array-length v3, v0

    iget v4, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyIndex:I

    if-le v3, v4, :cond_1

    .line 1124
    iget v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyIndex:I

    aget-object v3, v0, v3

    invoke-virtual {v3}, Lcom/nuance/xt9/input/KeyboardEx$Key;->onPressed()V

    .line 1125
    iget v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyIndex:I

    invoke-direct {p0, v3}, Lcom/nuance/xt9/input/KeyboardViewEx;->invalidateKeyByIndex(I)V

    .line 1129
    :cond_1
    iget v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKeyIndex:I

    if-eq v1, v3, :cond_3

    iget-boolean v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mShowPreview:Z

    if-eqz v3, :cond_3

    .line 1130
    iget-object v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1131
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1132
    if-ne p1, v7, :cond_2

    .line 1133
    iget-object v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1134
    iget-object v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x3c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1140
    :cond_2
    if-eq p1, v7, :cond_3

    .line 1141
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    .line 1144
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/KeyboardViewEx;->showKey(I)V

    .line 1155
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v4, v9

    .line 1120
    goto :goto_0

    .line 1147
    :cond_5
    iget-object v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1148
    iget-object v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, p1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x46

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private upperCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "text"

    .prologue
    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 654
    .local v2, upperCaseText:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 655
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 656
    .local v0, ch:C
    iget-object v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mUnicaseLetters:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 657
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 654
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 661
    .end local v0           #ch:C
    :cond_1
    return-object v2
.end method


# virtual methods
.method public abortKey()V
    .locals 1

    .prologue
    .line 831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mAbortKey:Z

    .line 832
    return-void
.end method

.method public allowsMoreKey()Z
    .locals 1

    .prologue
    .line 2175
    const/4 v0, 0x1

    return v0
.end method

.method public clearKeyOffsets()V
    .locals 1

    .prologue
    .line 2244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mOffsetInWindow:[I

    .line 2245
    return-void
.end method

.method protected clearPopupKeyCached(Lcom/nuance/xt9/input/KeyboardEx$Key;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardCache:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2264
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2266
    :cond_0
    return-void
.end method

.method public closing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2107
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2108
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2111
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mIgnoreDraw:Z

    .line 2113
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2114
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2115
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2116
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2117
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2119
    invoke-direct {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->resetMultiTap()V

    .line 2121
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 2122
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2124
    :cond_1
    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    .line 2125
    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_cnvTrace:Landroid/graphics/Canvas;

    .line 2126
    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    .line 2128
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->dismissPopupKeyboard()V

    .line 2129
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 2130
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2131
    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    .line 2133
    :cond_2
    iput-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCanvas:Landroid/graphics/Canvas;

    .line 2134
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2135
    return-void
.end method

.method protected dismissPopupKeyboard()V
    .locals 1

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2145
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    .line 2147
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->invalidateAll()V

    .line 2149
    :cond_0
    return-void
.end method

.method public getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/xt9/input/KeyboardEx;

    return-object v0
.end method

.method protected getOnKeyboardActionListener()Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2153
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->dismissPopupKeyboard()V

    .line 2154
    const/4 v0, 0x1

    .line 2156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected invalidateAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1238
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mDrawPending:Z

    .line 1240
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->invalidate()V

    .line 1241
    return-void
.end method

.method public invalidateKey(Lcom/nuance/xt9/input/KeyboardEx$Key;)V
    .locals 6
    .parameter "key"

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mInvalidatedKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    .line 1245
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    iget v1, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->y:I

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    iget v4, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->width:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->y:I

    iget v5, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->height:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1247
    invoke-direct {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->onBufferDraw()V

    .line 1248
    iget v0, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->y:I

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    iget v3, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->width:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->y:I

    iget v4, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->height:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nuance/xt9/input/KeyboardViewEx;->invalidate(IIII)V

    .line 1250
    return-void
.end method

.method public isMultitapping()Z
    .locals 1

    .prologue
    .line 2160
    iget-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mInMultiTap:Z

    return v0
.end method

.method public isPreviewEnabled()Z
    .locals 1

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mShowPreview:Z

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mProximityCorrectOn:Z

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/xt9/input/KeyboardEx;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/xt9/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/KeyboardEx;->isShifted()Z

    move-result v0

    .line 573
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTraceInputEnabled()Z
    .locals 1

    .prologue
    .line 2253
    const/4 v0, 0x0

    return v0
.end method

.method public isTracing()Z
    .locals 1

    .prologue
    .line 2257
    iget-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mIsTracing:Z

    return v0
.end method

.method protected movePointer(Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 1
    .parameter "ptr"
    .parameter "ptOld"
    .parameter "ptNew"

    .prologue
    .line 1507
    iget-object v0, p1, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1508
    const/4 v0, 0x1

    return v0
.end method

.method protected multitapClearInvalid()V
    .locals 1

    .prologue
    .line 2228
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mInvalidKey:I

    .line 2229
    return-void
.end method

.method protected multitapIsInvalid()Z
    .locals 2

    .prologue
    .line 2232
    const/4 v0, -0x1

    iget v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mInvalidKey:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected multitapTimeOut()V
    .locals 1

    .prologue
    .line 2237
    invoke-direct {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->resetMultiTap()V

    .line 2238
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 2239
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onMultitapTimeout()V

    .line 2241
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->dismissPopupKeyboard()V

    .line 633
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 2139
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2140
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->closing()V

    .line 2141
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 722
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 725
    iget-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mIgnoreDraw:Z

    if-eqz v0, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mDrawPending:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardHasChanged:Z

    if-eqz v0, :cond_3

    .line 730
    :cond_2
    invoke-direct {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->onBufferDraw()V

    .line 732
    :cond_3
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v10, v10, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 735
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->isTraceInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 746
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    .line 747
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_cnvTrace:Landroid/graphics/Canvas;

    .line 749
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    .line 750
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 751
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 752
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 753
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    const/high16 v1, 0x40c0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    const/16 v9, 0x32

    .line 771
    .local v9, iMinAlpha:I
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_iTraceColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 777
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    .line 779
    .local v8, iAlpha:I
    iget-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_bRepaintTrace:Z

    if-eqz v0, :cond_7

    .line 782
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v11}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 785
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v7, v0, v12

    .local v7, i:I
    :goto_2
    if-lez v7, :cond_6

    const/4 v0, 0x5

    sub-int v0, v8, v0

    if-le v0, v9, :cond_6

    .line 787
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_cnvTrace:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mVerticalCorrection:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    sub-int v4, v7, v12

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    sub-int v5, v7, v12

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mVerticalCorrection:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 790
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshTraceXfermode:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 792
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshTraceXfermode:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/graphics/AvoidXfermode;

    iget-object v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    sget-object v4, Landroid/graphics/AvoidXfermode$Mode;->AVOID:Landroid/graphics/AvoidXfermode$Mode;

    invoke-direct {v2, v3, v11, v4}, Landroid/graphics/AvoidXfermode;-><init>(IILandroid/graphics/AvoidXfermode$Mode;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    :cond_5
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshTraceXfermode:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Xfermode;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 799
    add-int/lit8 v8, v8, -0x5

    .line 800
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 785
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_2

    .line 755
    .end local v7           #i:I
    .end local v8           #iAlpha:I
    .end local v9           #iMinAlpha:I
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 757
    .local v6, ex:Ljava/lang/Throwable;
    const-string v0, "XT9IME.KeyboardViewEx"

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 803
    .end local v6           #ex:Ljava/lang/Throwable;
    .restart local v7       #i:I
    .restart local v8       #iAlpha:I
    .restart local v9       #iMinAlpha:I
    :cond_6
    iput-boolean v11, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_bRepaintTrace:Z

    .line 806
    .end local v7           #i:I
    :cond_7
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 807
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_iFading:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 808
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v10, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onLongPress(Lcom/nuance/xt9/input/KeyboardEx$Key;)Z
    .locals 14
    .parameter "popupKey"

    .prologue
    .line 1329
    iget v2, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupResId:I

    .line 1331
    .local v2, popupKeyboardId:I
    if-eqz v2, :cond_9

    .line 1333
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1335
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1336
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    if-nez v1, :cond_5

    .line 1337
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 1339
    .local v11, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupLayout:I

    const/4 v3, 0x0

    invoke-virtual {v11, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1340
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    const v3, 0x7f090004

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/KeyboardViewEx;

    iput-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/xt9/input/KeyboardViewEx;

    .line 1344
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/xt9/input/KeyboardViewEx;

    new-instance v3, Lcom/nuance/xt9/input/KeyboardViewEx$3;

    invoke-direct {v3, p0}, Lcom/nuance/xt9/input/KeyboardViewEx$3;-><init>(Lcom/nuance/xt9/input/KeyboardViewEx;)V

    invoke-virtual {v1, v3}, Lcom/nuance/xt9/input/KeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 1385
    iget-object v1, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 1387
    new-instance v0, Lcom/nuance/xt9/input/KeyboardEx;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/nuance/xt9/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 1392
    .local v0, keyboard:Lcom/nuance/xt9/input/KeyboardEx;
    :goto_0
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v1, v0}, Lcom/nuance/xt9/input/KeyboardViewEx;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 1393
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v1, p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->setPopupParent(Landroid/view/View;)V

    .line 1396
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .end local v2           #popupKeyboardId:I
    const v3, 0x7f02002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1398
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-direct {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getScreenWidth()I

    move-result v2

    const/high16 v3, -0x8000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-direct {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getScreenHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    const/high16 v4, -0x8000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1401
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    .end local v0           #keyboard:Lcom/nuance/xt9/input/KeyboardEx;
    .end local v11           #inflater:Landroid/view/LayoutInflater;
    :goto_1
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mWindowOffset:[I

    if-nez v1, :cond_0

    .line 1407
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mWindowOffset:[I

    .line 1408
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mWindowOffset:[I

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/KeyboardViewEx;->getLocationInWindow([I)V

    .line 1410
    :cond_0
    iget v1, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupX:I

    .line 1411
    iget v1, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->y:I

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupY:I

    .line 1412
    iget v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupX:I

    iget v2, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->width:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupX:I

    .line 1413
    iget v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupY:I

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupY:I

    .line 1417
    iget v1, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mScrennWidth:I

    if-ge v1, v2, :cond_6

    iget v1, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mWindowOffset:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v1, v2

    move v12, v1

    .line 1421
    .local v12, x:I
    :goto_2
    iget v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupY:I

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mWindowOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int v13, v1, v2

    .line 1424
    .local v13, y:I
    move v9, v12

    .line 1425
    .local v9, adjustedX:I
    if-gez v12, :cond_7

    .line 1426
    const/4 v9, 0x0

    .line 1433
    :cond_1
    :goto_3
    iget v1, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mScrennWidth:I

    if-ge v1, v2, :cond_2

    .line 1434
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1438
    :cond_2
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/xt9/input/KeyboardViewEx;

    if-gez v12, :cond_8

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v1, v2, v13}, Lcom/nuance/xt9/input/KeyboardViewEx;->setPopupOffset(II)V

    .line 1439
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->isShifted()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/KeyboardViewEx;->setShifted(Z)Z

    .line 1440
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1441
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1442
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1444
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/xt9/input/KeyboardViewEx;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/nuance/xt9/input/KeyboardViewEx;->mIgnoreDraw:Z

    .line 1445
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mIgnoreDraw:Z

    .line 1448
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1449
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v12, v13}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1452
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    .line 1456
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1457
    .local v7, eventTime:J
    iput-wide v7, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardPopupTime:J

    .line 1458
    const/4 v4, 0x0

    iget v1, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    iget v2, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int v5, v1, v2

    iget v1, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->y:I

    iget v2, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->height:I

    div-int/lit8 v2, v2, 0x2

    add-int v6, v1, v2

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/nuance/xt9/input/KeyboardViewEx;->generateMiniKeyboardMotionEvent(IIIJ)Landroid/view/MotionEvent;

    move-result-object v10

    .line 1459
    .local v10, downEvent:Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v1, v10}, Lcom/nuance/xt9/input/KeyboardViewEx;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1460
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 1463
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->invalidateAll()V

    .line 1464
    const/4 v1, 0x1

    .line 1466
    .end local v7           #eventTime:J
    .end local v9           #adjustedX:I
    .end local v10           #downEvent:Landroid/view/MotionEvent;
    .end local v12           #x:I
    .end local v13           #y:I
    :goto_5
    return v1

    .line 1390
    .restart local v2       #popupKeyboardId:I
    .restart local v11       #inflater:Landroid/view/LayoutInflater;
    :cond_4
    new-instance v0, Lcom/nuance/xt9/input/KeyboardEx;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/nuance/xt9/input/KeyboardEx;-><init>(Landroid/content/Context;I)V

    .restart local v0       #keyboard:Lcom/nuance/xt9/input/KeyboardEx;
    goto/16 :goto_0

    .line 1403
    .end local v0           #keyboard:Lcom/nuance/xt9/input/KeyboardEx;
    .end local v11           #inflater:Landroid/view/LayoutInflater;
    :cond_5
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    const v2, 0x7f090004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .end local v2           #popupKeyboardId:I
    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/KeyboardViewEx;

    iput-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/xt9/input/KeyboardViewEx;

    goto/16 :goto_1

    .line 1417
    :cond_6
    iget v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupX:I

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mWindowOffset:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v1, v2

    move v12, v1

    goto/16 :goto_2

    .line 1427
    .restart local v9       #adjustedX:I
    .restart local v12       #x:I
    .restart local v13       #y:I
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v12, v1, :cond_1

    .line 1428
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v9, v1, v2

    goto/16 :goto_3

    :cond_8
    move v2, v12

    .line 1438
    goto/16 :goto_4

    .line 1466
    .end local v9           #adjustedX:I
    .end local v12           #x:I
    .end local v13           #y:I
    .restart local v2       #popupKeyboardId:I
    :cond_9
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 682
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/xt9/input/KeyboardEx;

    if-nez v1, :cond_0

    .line 683
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/nuance/xt9/input/KeyboardViewEx;->setMeasuredDimension(II)V

    .line 691
    :goto_0
    return-void

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/xt9/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/KeyboardEx;->getMinWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingRight()I

    move-result v2

    add-int v0, v1, v2

    .line 686
    .local v0, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_1

    .line 687
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 689
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/xt9/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/KeyboardEx;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nuance/xt9/input/KeyboardViewEx;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 716
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardHasChanged:Z

    .line 718
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .parameter "me"

    .prologue
    .line 1515
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mIgnoreDraw:Z

    move v4, v0

    if-eqz v4, :cond_0

    .line 1516
    const/4 v4, 0x0

    .line 1826
    .end local p0
    .end local p1
    :goto_0
    return v4

    .line 1520
    .restart local p0
    .restart local p1
    :cond_0
    const/4 v15, 0x0

    .line 1521
    .local v15, iPointerID:I
    const/16 v16, 0x0

    .line 1522
    .local v16, iPointerIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v4

    neg-int v12, v4

    .line 1523
    .local v12, iOffsetX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mVerticalCorrection:I

    move v4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getPaddingTop()I

    move-result v5

    sub-int v13, v4, v5

    .line 1526
    .local v13, iOffsetY:I
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v5, "1.5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    sget v4, Lcom/nuance/xt9/input/AndroidVersionWrapper;->SDK_INT:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_17

    .line 1528
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/xt9/input/KeyboardViewEx;

    move-object v4, v0

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/xt9/input/KeyboardViewEx;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/nuance/xt9/input/KeyboardViewEx;->isShown()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1532
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1533
    const/4 v4, 0x2

    move v0, v4

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 1534
    .local v18, kbdLoc:[I
    const/4 v4, 0x2

    move v0, v4

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 1535
    .local v19, miniKbdLoc:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/KeyboardViewEx;->getLocationOnScreen([I)V

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/xt9/input/KeyboardViewEx;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/KeyboardViewEx;->getLocationOnScreen([I)V

    .line 1538
    const/4 v4, 0x0

    aget v4, v18, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v19, v5

    sub-int v6, v4, v5

    .line 1539
    .local v6, miniKbdX:I
    if-gez v6, :cond_4

    .line 1540
    const/4 v6, 0x0

    .line 1545
    :cond_1
    :goto_1
    const/4 v4, 0x1

    aget v4, v18, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v19, v5

    sub-int v7, v4, v5

    .line 1546
    .local v7, miniKbdY:I
    if-gez v7, :cond_5

    .line 1547
    const/4 v7, 0x0

    .line 1552
    :cond_2
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/nuance/xt9/input/KeyboardViewEx;->generateMiniKeyboardMotionEvent(IIIJ)Landroid/view/MotionEvent;

    move-result-object v23

    .line 1554
    .local v23, translated:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/xt9/input/KeyboardViewEx;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/KeyboardViewEx;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1555
    invoke-virtual/range {v23 .. v23}, Landroid/view/MotionEvent;->recycle()V

    .line 1557
    .end local v6           #miniKbdX:I
    .end local v7           #miniKbdY:I
    .end local v18           #kbdLoc:[I
    .end local v19           #miniKbdLoc:[I
    .end local v23           #translated:Landroid/view/MotionEvent;
    :cond_3
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1541
    .restart local v6       #miniKbdX:I
    .restart local v18       #kbdLoc:[I
    .restart local v19       #miniKbdLoc:[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/xt9/input/KeyboardViewEx;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/nuance/xt9/input/KeyboardViewEx;->getWidth()I

    move-result v4

    if-le v6, v4, :cond_1

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/xt9/input/KeyboardViewEx;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/nuance/xt9/input/KeyboardViewEx;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    sub-int v6, v4, v5

    goto :goto_1

    .line 1548
    .restart local v7       #miniKbdY:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/xt9/input/KeyboardViewEx;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/nuance/xt9/input/KeyboardViewEx;->getHeight()I

    move-result v4

    if-le v7, v4, :cond_2

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/xt9/input/KeyboardViewEx;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/nuance/xt9/input/KeyboardViewEx;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    sub-int v7, v4, v5

    goto :goto_2

    .line 1561
    .end local v6           #miniKbdX:I
    .end local v7           #miniKbdY:I
    .end local v18           #kbdLoc:[I
    .end local v19           #miniKbdLoc:[I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    .line 1826
    .end local p0
    .end local p1
    :cond_7
    :goto_3
    :pswitch_0
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1564
    .restart local p0
    .restart local p1
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v15, v4, 0x8

    .line 1566
    :pswitch_2
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/MotionEventWrapper;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v16

    .line 1569
    const/4 v4, -0x1

    move/from16 v0, v16

    move v1, v4

    if-eq v0, v1, :cond_7

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;-><init>(Lcom/nuance/xt9/input/KeyboardViewEx;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    .line 1582
    .local v20, pointer:Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Pressed:Z

    move v4, v0

    if-eqz v4, :cond_9

    .line 1589
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->EventTime:J

    .line 1590
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Pressed:Z

    .line 1591
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->RePress:Z

    .line 1592
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/nuance/xt9/input/KeyboardViewEx;->handleTouchAction(Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;I)Z

    .line 1593
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    .line 1597
    .end local v20           #pointer:Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    iget-object v4, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1600
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    if-lez v4, :cond_b

    .line 1603
    const/4 v10, 0x0

    .local v10, i:I
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    if-ge v10, v4, :cond_c

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    iget-object v4, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Point;

    move-object/from16 v0, p1

    move/from16 v1, v16

    move v2, v10

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/MotionEventWrapper;->getHistoricalX(Landroid/view/MotionEvent;II)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v12

    move-object/from16 v0, p1

    move/from16 v1, v16

    move v2, v10

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/MotionEventWrapper;->getHistoricalY(Landroid/view/MotionEvent;II)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v13

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1603
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1610
    .end local v10           #i:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    iget-object v4, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Point;

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v12

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v13

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1613
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Pressed:Z

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->RePress:Z

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->DownTime:J

    .line 1616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->EventTime:J

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/nuance/xt9/input/KeyboardViewEx;->handleTouchAction(Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;I)Z

    goto/16 :goto_3

    .line 1623
    .end local v11           #i$:Ljava/util/Iterator;
    .restart local p1
    :pswitch_3
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_6
    invoke-static/range {p1 .. p1}, Lcom/nuance/xt9/input/MotionEventWrapper;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v4

    if-ge v10, v4, :cond_7

    .line 1625
    const/16 v21, 0x0

    .line 1626
    .local v21, ptNew:Landroid/graphics/Point;
    const/16 v22, 0x0

    .line 1628
    .local v22, ptOld:Landroid/graphics/Point;
    move-object/from16 v0, p1

    move v1, v10

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_e

    .line 1623
    :cond_d
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 1632
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->EventTime:J

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    iget-object v4, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1639
    .local v14, iPathSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    iget-object v4, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_f

    .line 1641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    iget-object v5, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    iget-object v4, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #ptNew:Landroid/graphics/Point;
    check-cast v21, Landroid/graphics/Point;

    .line 1645
    .restart local v21       #ptNew:Landroid/graphics/Point;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    if-lez v4, :cond_10

    .line 1648
    const/16 v17, 0x0

    .local v17, j:I
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    move/from16 v0, v17

    move v1, v4

    if-ge v0, v1, :cond_11

    .line 1650
    move-object/from16 v22, v21

    .line 1651
    new-instance v21, Landroid/graphics/Point;

    .end local v21           #ptNew:Landroid/graphics/Point;
    move-object/from16 v0, p1

    move v1, v10

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/MotionEventWrapper;->getHistoricalX(Landroid/view/MotionEvent;II)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v12

    move-object/from16 v0, p1

    move v1, v10

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/MotionEventWrapper;->getHistoricalY(Landroid/view/MotionEvent;II)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v13

    move-object/from16 v0, v21

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 1653
    .restart local v21       #ptNew:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/xt9/input/KeyboardViewEx;->movePointer(Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    .line 1648
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 1658
    .end local v17           #j:I
    :cond_10
    move-object/from16 v22, v21

    .line 1659
    new-instance v21, Landroid/graphics/Point;

    .end local v21           #ptNew:Landroid/graphics/Point;
    move-object/from16 v0, p1

    move v1, v10

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v12

    move-object/from16 v0, p1

    move v1, v10

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v13

    move-object/from16 v0, v21

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 1661
    .restart local v21       #ptNew:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/xt9/input/KeyboardViewEx;->movePointer(Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    .line 1665
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    iget-object v4, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v14, :cond_d

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    iget-boolean v4, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Pressed:Z

    if-nez v4, :cond_14

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    iget-boolean v4, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->RePress:Z

    if-eqz v4, :cond_d

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_12
    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    .line 1681
    .restart local v20       #pointer:Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Pressed:Z

    move v4, v0

    if-eqz v4, :cond_12

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->RePress:Z

    goto :goto_9

    .line 1689
    .end local v20           #pointer:Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Pressed:Z

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->RePress:Z

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->DownTime:J

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->EventTime:J

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nuance/xt9/input/KeyboardViewEx;->handleTouchAction(Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;I)Z

    goto/16 :goto_7

    .line 1697
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nuance/xt9/input/KeyboardViewEx;->handleTouchAction(Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;I)Z

    goto/16 :goto_7

    .line 1704
    .end local v10           #i:I
    .end local v14           #iPathSize:I
    .end local v21           #ptNew:Landroid/graphics/Point;
    .end local v22           #ptOld:Landroid/graphics/Point;
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v15, v4, 0x8

    .line 1706
    :pswitch_5
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/MotionEventWrapper;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v16

    .line 1709
    const/4 v4, -0x1

    move/from16 v0, v16

    move v1, v4

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    iget-boolean v4, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Pressed:Z

    if-eqz v4, :cond_7

    .line 1720
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    if-lez v4, :cond_15

    .line 1723
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    if-ge v10, v4, :cond_16

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    iget-object v4, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Point;

    move-object/from16 v0, p1

    move/from16 v1, v16

    move v2, v10

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/MotionEventWrapper;->getHistoricalX(Landroid/view/MotionEvent;II)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v12

    move-object/from16 v0, p1

    move/from16 v1, v16

    move v2, v10

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/MotionEventWrapper;->getHistoricalY(Landroid/view/MotionEvent;II)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v13

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1723
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 1730
    .end local v10           #i:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    iget-object v4, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Point;

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v12

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v13

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1733
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->EventTime:J

    .line 1734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Pressed:Z

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->RePress:Z

    .line 1736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/nuance/xt9/input/KeyboardViewEx;->handleTouchAction(Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;I)Z

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 1743
    .restart local p0
    .restart local p1
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_3

    .line 1747
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;-><init>(Lcom/nuance/xt9/input/KeyboardViewEx;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    iget-object v4, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1756
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    if-lez v4, :cond_19

    .line 1759
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    if-ge v10, v4, :cond_1a

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    iget-object v4, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Point;

    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v12

    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v13

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1759
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 1766
    .end local v10           #i:I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    iget-object v4, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v13

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1769
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Pressed:Z

    .line 1770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->DownTime:J

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->EventTime:J

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/nuance/xt9/input/KeyboardViewEx;->handleTouchAction(Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;I)Z

    goto/16 :goto_3

    .line 1778
    .restart local p1
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    iget-object v4, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1780
    .restart local v14       #iPathSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->EventTime:J

    .line 1783
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    if-lez v4, :cond_1b

    .line 1786
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    if-ge v10, v4, :cond_1c

    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    iget-object v4, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Point;

    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v12

    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v13

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1786
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 1793
    .end local v10           #i:I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    iget-object v4, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v13

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1797
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v14, :cond_7

    .line 1799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/nuance/xt9/input/KeyboardViewEx;->handleTouchAction(Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;I)Z

    goto/16 :goto_3

    .line 1805
    .end local v14           #iPathSize:I
    .restart local p1
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    if-lez v4, :cond_1d

    .line 1808
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    if-ge v10, v4, :cond_1e

    .line 1810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    iget-object v4, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Point;

    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v12

    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v13

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1808
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 1815
    .end local v10           #i:I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    iget-object v4, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v13

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1818
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->EventTime:J

    .line 1819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Pressed:Z

    .line 1820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/nuance/xt9/input/KeyboardViewEx;->handleTouchAction(Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;I)Z

    .line 1821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 1561
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 1743
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected popupMiniKeyboard()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1265
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->isMultitapping()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1266
    iget v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mTapCount:I

    if-ltz v2, :cond_1

    .line 1267
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->multitapTimeOut()V

    .line 1277
    :cond_0
    :goto_0
    iget v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupLayout:I

    if-nez v2, :cond_2

    move v2, v4

    .line 1290
    :goto_1
    return v2

    .line 1270
    :cond_1
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ed

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1271
    invoke-direct {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->resetMultiTap()V

    goto :goto_0

    .line 1280
    :cond_2
    iget v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    iget-object v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    array-length v3, v3

    if-lt v2, v3, :cond_4

    :cond_3
    move v2, v4

    .line 1281
    goto :goto_1

    .line 1284
    :cond_4
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mCurrentKey:I

    aget-object v0, v2, v3

    .line 1285
    .local v0, popupKey:Lcom/nuance/xt9/input/KeyboardEx$Key;
    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/KeyboardViewEx;->onLongPress(Lcom/nuance/xt9/input/KeyboardEx$Key;)Z

    move-result v1

    .line 1286
    .local v1, result:Z
    if-eqz v1, :cond_5

    .line 1287
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->abortKey()V

    .line 1288
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/KeyboardViewEx;->showPreview(I)V

    :cond_5
    move v2, v1

    .line 1290
    goto :goto_1
.end method

.method protected recalculateOffsets()V
    .locals 4

    .prologue
    .line 1158
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mOffsetInWindow:[I

    .line 1159
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mOffsetInWindow:[I

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/KeyboardViewEx;->getLocationInWindow([I)V

    .line 1161
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mOffsetInWindow:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardOffsetX:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 1162
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mOffsetInWindow:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget v3, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardOffsetY:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 1163
    return-void
.end method

.method public setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V
    .locals 5
    .parameter "keyboard"

    .prologue
    .line 519
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/xt9/input/KeyboardEx;

    if-eqz v1, :cond_0

    .line 520
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/KeyboardViewEx;->showPreview(I)V

    .line 522
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mIgnoreDraw:Z

    .line 523
    iput-object p1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/xt9/input/KeyboardEx;

    .line 524
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/xt9/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 525
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/KeyboardEx$Key;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/nuance/xt9/input/KeyboardEx$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeys:[Lcom/nuance/xt9/input/KeyboardEx$Key;

    .line 526
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->requestLayout()V

    .line 527
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardHasChanged:Z

    .line 528
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->invalidateAll()V

    .line 529
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/KeyboardViewEx;->computeProximityThreshold(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 530
    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 533
    iget v1, p1, Lcom/nuance/xt9/input/KeyboardEx;->mPaddingLeft:I

    iget v2, p1, Lcom/nuance/xt9/input/KeyboardEx;->mPaddingTop:I

    iget v3, p1, Lcom/nuance/xt9/input/KeyboardEx;->mPaddingRight:I

    iget v4, p1, Lcom/nuance/xt9/input/KeyboardEx;->mPaddingBottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/nuance/xt9/input/KeyboardViewEx;->setPadding(IIII)V

    .line 535
    return-void
.end method

.method public setKeyboardHasChanged(Z)V
    .locals 0
    .parameter "changed"

    .prologue
    .line 2270
    iput-boolean p1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardHasChanged:Z

    .line 2271
    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 500
    iput-object p1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    .line 501
    return-void
.end method

.method public setPopupOffset(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 603
    iput p1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardOffsetX:I

    .line 604
    iput p2, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mMiniKeyboardOffsetY:I

    .line 605
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 608
    :cond_0
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    .line 600
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0
    .parameter "previewEnabled"

    .prologue
    .line 583
    iput-boolean p1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mShowPreview:Z

    .line 584
    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 617
    iput-boolean p1, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mProximityCorrectOn:Z

    .line 618
    return-void
.end method

.method public setShifted(Z)Z
    .locals 1
    .parameter "shifted"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/xt9/input/KeyboardEx;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/xt9/input/KeyboardEx;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/KeyboardEx;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KeyboardViewEx;->invalidateAll()V

    .line 557
    const/4 v0, 0x1

    .line 560
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVerticalCorrection(I)V
    .locals 0
    .parameter "verticalOffset"

    .prologue
    .line 597
    return-void
.end method

.method protected swipeDown()V
    .locals 1

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 2102
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->swipeDown()V

    .line 2104
    :cond_0
    return-void
.end method

.method protected swipeLeft()V
    .locals 1

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 2090
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->swipeLeft()V

    .line 2092
    :cond_0
    return-void
.end method

.method protected swipeRight()V
    .locals 1

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 2084
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->swipeRight()V

    .line 2086
    :cond_0
    return-void
.end method

.method protected swipeUp()V
    .locals 1

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 2096
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->swipeUp()V

    .line 2098
    :cond_0
    return-void
.end method
