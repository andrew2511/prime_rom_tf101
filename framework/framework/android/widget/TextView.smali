.class public Landroid/widget/TextView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$3;,
        Landroid/widget/TextView$SelectionModifierCursorController;,
        Landroid/widget/TextView$InsertionPointCursorController;,
        Landroid/widget/TextView$HandleView;,
        Landroid/widget/TextView$PastePopupMenu;,
        Landroid/widget/TextView$CursorController;,
        Landroid/widget/TextView$SelectionActionModeCallback;,
        Landroid/widget/TextView$DragLocalState;,
        Landroid/widget/TextView$MenuHandler;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$Blink;,
        Landroid/widget/TextView$ChangeWatcher;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$CorrectionHighlighter;,
        Landroid/widget/TextView$ErrorPopup;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$InputMethodState;,
        Landroid/widget/TextView$InputContentType;,
        Landroid/widget/TextView$Drawables;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final BLINK:I = 0x1f4

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field private static DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x0

.field private static final EMPTY_SPANNED:Landroid/text/Spanned; = null

.field private static final EMS:I = 0x1

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field private static final ID_COPY:I = 0x1020021

.field private static final ID_COPY_URL:I = 0x1020023

.field private static final ID_CUT:I = 0x1020020

.field private static final ID_PASTE:I = 0x1020022

.field private static final ID_SELECTION_MODE:I = 0x102002d

.field private static final ID_SELECT_ALL:I = 0x102001f

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MONOSPACE:I = 0x3

.field private static final MULTILINE_STATE_SET:[I = null

.field private static final NO_FILTERS:[Landroid/text/InputFilter; = null

.field private static final PIXELS:I = 0x2

.field private static final PREDRAW_DONE:I = 0x2

.field private static final PREDRAW_NOT_REGISTERED:I = 0x0

.field private static final PREDRAW_PENDING:I = 0x1

.field private static final PRIORITY:I = 0x64

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final SIGNED:I = 0x2

.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics; = null

.field private static final VERY_WIDE:I = 0x4000

.field private static sCursorControllerTempRect:Landroid/graphics/Rect;

.field private static sLastCutOrCopyTime:J

.field private static final sTempRect:Landroid/graphics/RectF;


# instance fields
.field private mAutoLinkMask:I

.field private mBlink:Landroid/widget/TextView$Blink;

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mContextMenuTriggeredByKey:Z

.field private mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

.field private mCreatedWithASelection:Z

.field private mCurHintTextColor:I

.field private mCurTextColor:I

.field private mCurrentAlpha:I

.field private mCursorCount:I

.field private final mCursorDrawable:[Landroid/graphics/drawable/Drawable;

.field private mCursorDrawableRes:I

.field private mCursorVisible:Z

.field private mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mDPadCenterIsDown:Z

.field private mDesiredHeightAtMeasure:I

.field private mDiscardNextActionUp:Z

.field private mDispatchTemporaryDetach:Z

.field private mDrawables:Landroid/widget/TextView$Drawables;

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mEnterKeyIsDown:Z

.field private mError:Ljava/lang/CharSequence;

.field private mErrorWasChanged:Z

.field private mFilters:[Landroid/text/InputFilter;

.field private mFreezesText:Z

.field private mFrozenWithFocus:Z

.field private mGravity:I

.field private mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHorizontallyScrolling:Z

.field private mIgnoreActionUpEvent:Z

.field private mInBatchEditControllers:Z

.field private mIncludePad:Z

.field private mInput:Landroid/text/method/KeyListener;

.field mInputContentType:Landroid/widget/TextView$InputContentType;

.field mInputMethodState:Landroid/widget/TextView$InputMethodState;

.field private mInputType:I

.field private mInsertionControllerEnabled:Z

.field private mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

.field private mLastDownPositionX:I

.field private mLastDownPositionY:I

.field private mLastScroll:J

.field protected mLayout:Landroid/text/Layout;

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeRepeatLimit:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mPopup:Landroid/widget/TextView$ErrorPopup;

.field private mPreDrawState:I

.field private mRestartMarquee:Z

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectAllOnFocus:Z

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectionActionMode:Landroid/view/ActionMode;

.field private mSelectionControllerEnabled:Z

.field private mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

.field private mSelectionMoved:Z

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mShowCursor:J

.field private mShowErrorAfterAttach:Z

.field private mSingleLine:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field private final mSquaredTouchSlopDistance:I

.field final mTempCoords:[I

.field mTempRect:Landroid/graphics/Rect;

.field private mTemporaryDetach:Z

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextEditNoPasteWindowLayout:I

.field private mTextEditPasteWindowLayout:I

.field private mTextEditSideNoPasteWindowLayout:I

.field private mTextEditSidePasteWindowLayout:I

.field private mTextIsSelectable:Z

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSelectHandleLeftRes:I

.field private mTextSelectHandleRes:I

.field private mTextSelectHandleRightRes:I

.field private mTouchFocusSelected:Z

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field private mUserSetTextScaleX:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 332
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 333
    .local v0, p:Landroid/graphics/Paint;
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 335
    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 5734
    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 9616
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Landroid/widget/TextView;->sCursorControllerTempRect:Landroid/graphics/Rect;

    .line 9651
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    .line 9667
    new-array v1, v3, [Landroid/text/InputFilter;

    sput-object v1, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 9669
    new-instance v1, Landroid/text/SpannedString;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v1, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    .line 9670
    const/16 v1, 0x14

    sput v1, Landroid/widget/TextView;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    .line 9676
    new-array v1, v4, [I

    const v2, 0x101034d

    aput v2, v1, v3

    sput-object v1, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 360
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 364
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 365
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 64
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 371
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 210
    const/16 v57, 0xff

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mCurrentAlpha:I

    .line 212
    const/16 v57, 0x2

    move/from16 v0, v57

    new-array v0, v0, [I

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTempCoords:[I

    .line 225
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    .line 226
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIgnoreActionUpEvent:Z

    .line 228
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 229
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 236
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mPreDrawState:I

    .line 238
    const/16 v57, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 271
    const/16 v57, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 273
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 274
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 279
    const/16 v57, 0x3

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 313
    const/16 v57, 0x2

    move/from16 v0, v57

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 325
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 9570
    sget-object v57, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 9572
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 9582
    const/16 v57, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 9588
    const v57, -0x33b8a6db

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHighlightColor:I

    .line 9599
    const/16 v57, 0x1

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCursorVisible:Z

    .line 9611
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 9612
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    .line 9613
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mContextMenuTriggeredByKey:Z

    .line 9618
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 9620
    const/16 v57, 0x33

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mGravity:I

    .line 9624
    const/16 v57, 0x1

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    .line 9626
    const/high16 v57, 0x3f80

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    .line 9627
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    .line 9628
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTextIsSelectable:Z

    .line 9634
    const v57, 0x7fffffff

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaximum:I

    .line 9635
    const/16 v57, 0x1

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxMode:I

    .line 9636
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinimum:I

    .line 9637
    const/16 v57, 0x1

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinMode:I

    .line 9639
    const v57, 0x7fffffff

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidth:I

    .line 9640
    const/16 v57, 0x2

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 9641
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidth:I

    .line 9642
    const/16 v57, 0x2

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidthMode:I

    .line 9645
    const/16 v57, -0x1

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 9646
    const/16 v57, 0x1

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIncludePad:Z

    .line 9650
    const/16 v57, 0x1

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 9660
    const/16 v57, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 9668
    sget-object v57, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 372
    const-string v57, ""

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 374
    new-instance v57, Landroid/text/TextPaint;

    const/16 v58, 0x1

    invoke-direct/range {v57 .. v58}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v57, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v58

    move-object/from16 v0, v58

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v58, v0

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v57, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v58

    move-object/from16 v0, v58

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 383
    new-instance v57, Landroid/graphics/Paint;

    const/16 v58, 0x1

    invoke-direct/range {v57 .. v58}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v57, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v58

    move-object/from16 v0, v58

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 387
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 388
    const/16 v57, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 390
    sget-object v57, Lcom/android/internal/R$styleable;->TextView:[I

    const/16 v58, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v57

    move/from16 v3, p3

    move/from16 v4, v58

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 394
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v48, 0x0

    .line 395
    .local v48, textColorHighlight:I
    const/16 v47, 0x0

    .line 396
    .local v47, textColor:Landroid/content/res/ColorStateList;
    const/16 v49, 0x0

    .line 397
    .local v49, textColorHint:Landroid/content/res/ColorStateList;
    const/16 v50, 0x0

    .line 398
    .local v50, textColorLink:Landroid/content/res/ColorStateList;
    const/16 v51, 0xf

    .line 399
    .local v51, textSize:I
    const/16 v53, -0x1

    .line 400
    .local v53, typefaceIndex:I
    const/16 v45, -0x1

    .line 408
    .local v45, styleIndex:I
    const/4 v7, 0x0

    .line 409
    .local v7, appearance:Landroid/content/res/TypedArray;
    const/16 v57, 0x1

    const/16 v58, -0x1

    move-object v0, v5

    move/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 410
    .local v6, ap:I
    const/16 v57, -0x1

    move v0, v6

    move/from16 v1, v57

    if-eq v0, v1, :cond_21a

    .line 411
    sget-object v57, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 415
    :cond_21a
    if-eqz v7, :cond_26f

    .line 416
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v35

    .line 417
    .local v35, n:I
    const/16 v30, 0x0

    .local v30, i:I
    :goto_222
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_26c

    .line 418
    move-object v0, v7

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 420
    .local v8, attr:I
    packed-switch v8, :pswitch_data_b28

    .line 417
    :goto_232
    add-int/lit8 v30, v30, 0x1

    goto :goto_222

    .line 422
    :pswitch_235
    move-object v0, v7

    move v1, v8

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v48

    .line 423
    goto :goto_232

    .line 426
    :pswitch_23e
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v47

    .line 427
    goto :goto_232

    .line 430
    :pswitch_243
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v49

    .line 431
    goto :goto_232

    .line 434
    :pswitch_248
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v50

    .line 435
    goto :goto_232

    .line 438
    :pswitch_24d
    move-object v0, v7

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    .line 439
    goto :goto_232

    .line 442
    :pswitch_256
    const/16 v57, -0x1

    move-object v0, v7

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v53

    .line 443
    goto :goto_232

    .line 446
    :pswitch_261
    const/16 v57, -0x1

    move-object v0, v7

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v45

    goto :goto_232

    .line 451
    .end local v8           #attr:I
    :cond_26c
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 454
    .end local v30           #i:I
    .end local v35           #n:I
    :cond_26f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v25

    .line 455
    .local v25, editable:Z
    const/16 v31, 0x0

    .line 456
    .local v31, inputMethod:Ljava/lang/CharSequence;
    const/16 v37, 0x0

    .line 457
    .local v37, numeric:I
    const/16 v16, 0x0

    .line 458
    .local v16, digits:Ljava/lang/CharSequence;
    const/16 v40, 0x0

    .line 459
    .local v40, phone:Z
    const/4 v10, 0x0

    .line 460
    .local v10, autotext:Z
    const/4 v9, -0x1

    .line 461
    .local v9, autocap:I
    const/4 v12, 0x0

    .line 462
    .local v12, buffertype:I
    const/16 v42, 0x0

    .line 463
    .local v42, selectallonfocus:Z
    const/16 v18, 0x0

    .local v18, drawableLeft:Landroid/graphics/drawable/Drawable;
    const/16 v21, 0x0

    .local v21, drawableTop:Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    .line 464
    .local v20, drawableRight:Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 465
    .local v17, drawableBottom:Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    .line 466
    .local v19, drawablePadding:I
    const/16 v26, -0x1

    .line 467
    .local v26, ellipsize:I
    const/16 v44, 0x0

    .line 468
    .local v44, singleLine:Z
    const/16 v34, -0x1

    .line 469
    .local v34, maxlength:I
    const-string v46, ""

    .line 470
    .local v46, text:Ljava/lang/CharSequence;
    const/16 v29, 0x0

    .line 471
    .local v29, hint:Ljava/lang/CharSequence;
    const/16 v43, 0x0

    .line 472
    .local v43, shadowcolor:I
    const/16 v22, 0x0

    .local v22, dx:F
    const/16 v23, 0x0

    .local v23, dy:F
    const/16 v41, 0x0

    .line 473
    .local v41, r:F
    const/16 v38, 0x0

    .line 474
    .local v38, password:Z
    const/16 v32, 0x0

    .line 476
    .local v32, inputType:I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v35

    .line 477
    .restart local v35       #n:I
    const/16 v30, 0x0

    .restart local v30       #i:I
    :goto_2a6
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_729

    .line 478
    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 480
    .restart local v8       #attr:I
    packed-switch v8, :pswitch_data_b3a

    .line 477
    :cond_2b6
    :goto_2b6
    :pswitch_2b6
    add-int/lit8 v30, v30, 0x1

    goto :goto_2a6

    .line 482
    :pswitch_2b9
    move-object v0, v5

    move v1, v8

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    .line 483
    goto :goto_2b6

    .line 486
    :pswitch_2c2
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v31

    .line 487
    goto :goto_2b6

    .line 490
    :pswitch_2c7
    move-object v0, v5

    move v1, v8

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v37

    .line 491
    goto :goto_2b6

    .line 494
    :pswitch_2d0
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 495
    goto :goto_2b6

    .line 498
    :pswitch_2d5
    move-object v0, v5

    move v1, v8

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v40

    .line 499
    goto :goto_2b6

    .line 502
    :pswitch_2de
    invoke-virtual {v5, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 503
    goto :goto_2b6

    .line 506
    :pswitch_2e3
    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 507
    goto :goto_2b6

    .line 510
    :pswitch_2e8
    invoke-virtual {v5, v8, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 511
    goto :goto_2b6

    .line 514
    :pswitch_2ed
    move-object v0, v5

    move v1, v8

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v42

    .line 515
    goto :goto_2b6

    .line 518
    :pswitch_2f6
    const/16 v57, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v57

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    goto :goto_2b6

    .line 522
    :pswitch_307
    const/16 v57, 0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v57

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    goto :goto_2b6

    .line 526
    :pswitch_318
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 527
    goto :goto_2b6

    .line 530
    :pswitch_31d
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 531
    goto :goto_2b6

    .line 534
    :pswitch_322
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 535
    goto :goto_2b6

    .line 538
    :pswitch_327
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 539
    goto :goto_2b6

    .line 542
    :pswitch_32c
    move-object v0, v5

    move v1, v8

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    .line 543
    goto :goto_2b6

    .line 546
    :pswitch_335
    const/16 v57, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v57

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_2b6

    .line 550
    :pswitch_348
    const/16 v57, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v57

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_2b6

    .line 554
    :pswitch_35b
    const/16 v57, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v57

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_2b6

    .line 558
    :pswitch_36e
    const/16 v57, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v57

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_2b6

    .line 562
    :pswitch_381
    const/16 v57, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v57

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_2b6

    .line 566
    :pswitch_394
    const/16 v57, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v57

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_2b6

    .line 570
    :pswitch_3a7
    const/16 v57, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v57

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_2b6

    .line 574
    :pswitch_3ba
    const/16 v57, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v57

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_2b6

    .line 578
    :pswitch_3cd
    const/16 v57, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v57

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_2b6

    .line 582
    :pswitch_3e0
    const/16 v57, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v57

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_2b6

    .line 586
    :pswitch_3f3
    const/16 v57, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v57

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinEms(I)V

    goto/16 :goto_2b6

    .line 590
    :pswitch_406
    const/16 v57, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v57

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    goto/16 :goto_2b6

    .line 594
    :pswitch_419
    const/16 v57, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v57

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_2b6

    .line 598
    :pswitch_42c
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v29

    .line 599
    goto/16 :goto_2b6

    .line 602
    :pswitch_432
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v46

    .line 603
    goto/16 :goto_2b6

    .line 606
    :pswitch_438
    const/16 v57, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v57

    if-eqz v57, :cond_2b6

    .line 607
    const/16 v57, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_2b6

    .line 612
    :pswitch_44f
    move-object v0, v5

    move v1, v8

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v44

    .line 613
    goto/16 :goto_2b6

    .line 616
    :pswitch_459
    move-object v0, v5

    move v1, v8

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v26

    .line 617
    goto/16 :goto_2b6

    .line 620
    :pswitch_463
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    move/from16 v57, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v57

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto/16 :goto_2b6

    .line 624
    :pswitch_47a
    const/16 v57, 0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v57

    if-nez v57, :cond_2b6

    .line 625
    const/16 v57, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto/16 :goto_2b6

    .line 630
    :pswitch_491
    const/16 v57, 0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v57

    if-nez v57, :cond_2b6

    .line 631
    const/16 v57, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_2b6

    .line 636
    :pswitch_4a8
    const/16 v57, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v34

    .line 637
    goto/16 :goto_2b6

    .line 640
    :pswitch_4b4
    const/high16 v57, 0x3f80

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v57

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_2b6

    .line 644
    :pswitch_4c7
    const/16 v57, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v57

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFreezesText:Z

    goto/16 :goto_2b6

    .line 648
    :pswitch_4d9
    const/16 v57, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v43

    .line 649
    goto/16 :goto_2b6

    .line 652
    :pswitch_4e5
    const/16 v57, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v22

    .line 653
    goto/16 :goto_2b6

    .line 656
    :pswitch_4f1
    const/16 v57, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v23

    .line 657
    goto/16 :goto_2b6

    .line 660
    :pswitch_4fd
    const/16 v57, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v41

    .line 661
    goto/16 :goto_2b6

    .line 664
    :pswitch_509
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v57

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v57

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_2b6

    .line 668
    :pswitch_51e
    move-object v0, v5

    move v1, v8

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v48

    .line 669
    goto/16 :goto_2b6

    .line 672
    :pswitch_528
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v47

    .line 673
    goto/16 :goto_2b6

    .line 676
    :pswitch_52e
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v49

    .line 677
    goto/16 :goto_2b6

    .line 680
    :pswitch_534
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v50

    .line 681
    goto/16 :goto_2b6

    .line 684
    :pswitch_53a
    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    .line 685
    goto/16 :goto_2b6

    .line 688
    :pswitch_544
    move-object v0, v5

    move v1, v8

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v53

    .line 689
    goto/16 :goto_2b6

    .line 692
    :pswitch_54e
    move-object v0, v5

    move v1, v8

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v45

    .line 693
    goto/16 :goto_2b6

    .line 696
    :pswitch_558
    move-object v0, v5

    move v1, v8

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    .line 697
    goto/16 :goto_2b6

    .line 700
    :pswitch_562
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v57, v0

    move/from16 v0, v57

    float-to-int v0, v0

    move/from16 v57, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v57

    move/from16 v0, v57

    int-to-float v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    goto/16 :goto_2b6

    .line 704
    :pswitch_582
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v57, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v57

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    goto/16 :goto_2b6

    .line 708
    :pswitch_598
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v57, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v32

    .line 709
    goto/16 :goto_2b6

    .line 712
    :pswitch_5a8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v57, v0

    if-nez v57, :cond_5bf

    .line 713
    new-instance v57, Landroid/widget/TextView$InputContentType;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 715
    :cond_5bf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    move/from16 v58, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Landroid/widget/TextView$InputContentType;->imeOptions:I

    goto/16 :goto_2b6

    .line 720
    :pswitch_5e1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v57, v0

    if-nez v57, :cond_5f8

    .line 721
    new-instance v57, Landroid/widget/TextView$InputContentType;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 723
    :cond_5f8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v57, v0

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto/16 :goto_2b6

    .line 727
    :pswitch_60a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v57, v0

    if-nez v57, :cond_621

    .line 728
    new-instance v57, Landroid/widget/TextView$InputContentType;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 730
    :cond_621
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    move/from16 v58, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Landroid/widget/TextView$InputContentType;->imeActionId:I

    goto/16 :goto_2b6

    .line 735
    :pswitch_643
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto/16 :goto_2b6

    .line 740
    :pswitch_650
    const/16 v57, 0x0

    :try_start_652
    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v57

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_661
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_652 .. :try_end_661} :catch_663
    .catch Ljava/io/IOException; {:try_start_652 .. :try_end_661} :catch_675

    goto/16 :goto_2b6

    .line 741
    :catch_663
    move-exception v57

    move-object/from16 v24, v57

    .line 742
    .local v24, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v57, "TextView"

    const-string v58, "Failure reading input extras"

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b6

    .line 743
    .end local v24           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_675
    move-exception v57

    move-object/from16 v24, v57

    .line 744
    .local v24, e:Ljava/io/IOException;
    const-string v57, "TextView"

    const-string v58, "Failure reading input extras"

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b6

    .line 749
    .end local v24           #e:Ljava/io/IOException;
    :pswitch_687
    const/16 v57, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v57

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mCursorDrawableRes:I

    goto/16 :goto_2b6

    .line 753
    :pswitch_699
    const/16 v57, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v57

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    goto/16 :goto_2b6

    .line 757
    :pswitch_6ab
    const/16 v57, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v57

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    goto/16 :goto_2b6

    .line 761
    :pswitch_6bd
    const/16 v57, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v57

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    goto/16 :goto_2b6

    .line 765
    :pswitch_6cf
    const/16 v57, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v57

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditPasteWindowLayout:I

    goto/16 :goto_2b6

    .line 769
    :pswitch_6e1
    const/16 v57, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v57

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditNoPasteWindowLayout:I

    goto/16 :goto_2b6

    .line 773
    :pswitch_6f3
    const/16 v57, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v57

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditSidePasteWindowLayout:I

    goto/16 :goto_2b6

    .line 777
    :pswitch_705
    const/16 v57, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v57

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditSideNoPasteWindowLayout:I

    goto/16 :goto_2b6

    .line 781
    :pswitch_717
    const/16 v57, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v57

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTextIsSelectable:Z

    goto/16 :goto_2b6

    .line 785
    .end local v8           #attr:I
    :cond_729
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 787
    sget-object v11, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 789
    .local v11, bufferType:Landroid/widget/TextView$BufferType;
    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xfff

    move/from16 v54, v0

    .line 791
    .local v54, variation:I
    const/16 v57, 0x81

    move/from16 v0, v54

    move/from16 v1, v57

    if-ne v0, v1, :cond_8d4

    const/16 v57, 0x1

    move/from16 v39, v57

    .line 793
    .local v39, passwordInputType:Z
    :goto_740
    const/16 v57, 0xe1

    move/from16 v0, v54

    move/from16 v1, v57

    if-ne v0, v1, :cond_8da

    const/16 v57, 0x1

    move/from16 v56, v57

    .line 795
    .local v56, webPasswordInputType:Z
    :goto_74c
    const/16 v57, 0x12

    move/from16 v0, v54

    move/from16 v1, v57

    if-ne v0, v1, :cond_8e0

    const/16 v57, 0x1

    move/from16 v36, v57

    .line 798
    .local v36, numberPasswordInputType:Z
    :goto_758
    if-eqz v31, :cond_926

    .line 802
    :try_start_75a
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_761
    .catch Ljava/lang/ClassNotFoundException; {:try_start_75a .. :try_end_761} :catch_8e6

    move-result-object v13

    .line 808
    .local v13, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_762
    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #a:Landroid/content/res/TypedArray;
    check-cast v5, Landroid/text/method/KeyListener;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;
    :try_end_76d
    .catch Ljava/lang/InstantiationException; {:try_start_762 .. :try_end_76d} :catch_8f3
    .catch Ljava/lang/IllegalAccessException; {:try_start_762 .. :try_end_76d} :catch_900

    .line 815
    if-eqz v32, :cond_90d

    move/from16 v57, v32

    :goto_771
    :try_start_771
    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I
    :try_end_777
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_771 .. :try_end_777} :catch_919

    .line 905
    .end local v13           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_777
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v57, v0

    and-int/lit8 v57, v57, 0xf

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_a55

    .line 906
    if-nez v38, :cond_78b

    if-eqz v39, :cond_7a3

    .line 907
    :cond_78b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v57, v0

    move/from16 v0, v57

    and-int/lit16 v0, v0, -0xff1

    move/from16 v57, v0

    move/from16 v0, v57

    or-int/lit16 v0, v0, 0x80

    move/from16 v57, v0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 910
    :cond_7a3
    if-eqz v56, :cond_7bd

    .line 911
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v57, v0

    move/from16 v0, v57

    and-int/lit16 v0, v0, -0xff1

    move/from16 v57, v0

    move/from16 v0, v57

    or-int/lit16 v0, v0, 0xe0

    move/from16 v57, v0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 921
    :cond_7bd
    :goto_7bd
    if-eqz v42, :cond_7d0

    .line 922
    const/16 v57, 0x1

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 924
    sget-object v57, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object v0, v11

    move-object/from16 v1, v57

    if-ne v0, v1, :cond_7d0

    .line 925
    sget-object v11, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 928
    :cond_7d0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 930
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 934
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 935
    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v44

    move/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 937
    if-eqz v44, :cond_804

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v57, v0

    if-nez v57, :cond_804

    if-gez v26, :cond_804

    .line 938
    const/16 v26, 0x3

    .line 941
    :cond_804
    packed-switch v26, :pswitch_data_bcc

    .line 957
    :goto_807
    if-eqz v47, :cond_ab2

    move-object/from16 v57, v47

    :goto_80b
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 958
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 959
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 960
    if-eqz v48, :cond_829

    .line 961
    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 963
    :cond_829
    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v57, v0

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 965
    if-nez v38, :cond_83d

    if-nez v39, :cond_83d

    if-nez v56, :cond_83d

    if-eqz v36, :cond_aba

    .line 966
    :cond_83d
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 967
    const/16 v53, 0x3

    .line 973
    :cond_84a
    :goto_84a
    move-object/from16 v0, p0

    move/from16 v1, v53

    move/from16 v2, v45

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 975
    if-eqz v43, :cond_862

    .line 976
    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 979
    :cond_862
    if-ltz v34, :cond_ad2

    .line 980
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    new-instance v59, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v59

    move/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v59, v57, v58

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 985
    :goto_880
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 986
    if-eqz v29, :cond_891

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 993
    :cond_891
    sget-object v57, Lcom/android/internal/R$styleable;->View:[I

    const/16 v58, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v57

    move/from16 v3, p3

    move/from16 v4, v58

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 997
    .restart local v5       #a:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v57, v0

    if-nez v57, :cond_8b3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v57, v0

    if-eqz v57, :cond_add

    :cond_8b3
    const/16 v57, 0x1

    move/from16 v28, v57

    .line 998
    .local v28, focusable:Z
    :goto_8b7
    move/from16 v15, v28

    .line 999
    .local v15, clickable:Z
    move/from16 v33, v28

    .line 1001
    .local v33, longClickable:Z
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v35

    .line 1002
    const/16 v30, 0x0

    :goto_8c1
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_afd

    .line 1003
    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 1005
    .restart local v8       #attr:I
    sparse-switch v8, :sswitch_data_bd8

    .line 1002
    :goto_8d1
    add-int/lit8 v30, v30, 0x1

    goto :goto_8c1

    .line 791
    .end local v8           #attr:I
    .end local v15           #clickable:Z
    .end local v28           #focusable:Z
    .end local v33           #longClickable:Z
    .end local v36           #numberPasswordInputType:Z
    .end local v39           #passwordInputType:Z
    .end local v56           #webPasswordInputType:Z
    :cond_8d4
    const/16 v57, 0x0

    move/from16 v39, v57

    goto/16 :goto_740

    .line 793
    .restart local v39       #passwordInputType:Z
    :cond_8da
    const/16 v57, 0x0

    move/from16 v56, v57

    goto/16 :goto_74c

    .line 795
    .restart local v56       #webPasswordInputType:Z
    :cond_8e0
    const/16 v57, 0x0

    move/from16 v36, v57

    goto/16 :goto_758

    .line 803
    .restart local v36       #numberPasswordInputType:Z
    :catch_8e6
    move-exception v57

    move-object/from16 v27, v57

    .line 804
    .local v27, ex:Ljava/lang/ClassNotFoundException;
    new-instance v57, Ljava/lang/RuntimeException;

    move-object/from16 v0, v57

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v57

    .line 809
    .end local v5           #a:Landroid/content/res/TypedArray;
    .end local v27           #ex:Ljava/lang/ClassNotFoundException;
    .restart local v13       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_8f3
    move-exception v57

    move-object/from16 v27, v57

    .line 810
    .local v27, ex:Ljava/lang/InstantiationException;
    new-instance v57, Ljava/lang/RuntimeException;

    move-object/from16 v0, v57

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v57

    .line 811
    .end local v27           #ex:Ljava/lang/InstantiationException;
    :catch_900
    move-exception v57

    move-object/from16 v27, v57

    .line 812
    .local v27, ex:Ljava/lang/IllegalAccessException;
    new-instance v57, Ljava/lang/RuntimeException;

    move-object/from16 v0, v57

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v57

    .line 815
    .end local v27           #ex:Ljava/lang/IllegalAccessException;
    :cond_90d
    :try_start_90d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v57, v0

    invoke-interface/range {v57 .. v57}, Landroid/text/method/KeyListener;->getInputType()I
    :try_end_916
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_90d .. :try_end_916} :catch_919

    move-result v57

    goto/16 :goto_771

    .line 818
    :catch_919
    move-exception v57

    move-object/from16 v24, v57

    .line 819
    .local v24, e:Ljava/lang/IncompatibleClassChangeError;
    const/16 v57, 0x1

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_777

    .line 821
    .end local v13           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v24           #e:Ljava/lang/IncompatibleClassChangeError;
    .restart local v5       #a:Landroid/content/res/TypedArray;
    :cond_926
    if-eqz v16, :cond_945

    .line 822
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v57 .. v57}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 826
    if-eqz v32, :cond_942

    move/from16 v57, v32

    :goto_93a
    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_777

    :cond_942
    const/16 v57, 0x1

    goto :goto_93a

    .line 828
    :cond_945
    if-eqz v32, :cond_967

    .line 829
    const/16 v57, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v57

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 831
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v57

    if-nez v57, :cond_962

    const/16 v57, 0x1

    move/from16 v44, v57

    :goto_960
    goto/16 :goto_777

    :cond_962
    const/16 v57, 0x0

    move/from16 v44, v57

    goto :goto_960

    .line 832
    :cond_967
    if-eqz v40, :cond_97d

    .line 833
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 834
    const/16 v32, 0x3

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_777

    .line 835
    :cond_97d
    if-eqz v37, :cond_9b9

    .line 836
    and-int/lit8 v57, v37, 0x2

    if-eqz v57, :cond_9b3

    const/16 v57, 0x1

    :goto_985
    and-int/lit8 v58, v37, 0x4

    if-eqz v58, :cond_9b6

    const/16 v58, 0x1

    :goto_98b
    invoke-static/range {v57 .. v58}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 838
    const/16 v32, 0x2

    .line 839
    and-int/lit8 v57, v37, 0x2

    if-eqz v57, :cond_9a1

    .line 840
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x1000

    move/from16 v32, v0

    .line 842
    :cond_9a1
    and-int/lit8 v57, v37, 0x4

    if-eqz v57, :cond_9ab

    .line 843
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x2000

    move/from16 v32, v0

    .line 845
    :cond_9ab
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_777

    .line 836
    :cond_9b3
    const/16 v57, 0x0

    goto :goto_985

    :cond_9b6
    const/16 v58, 0x0

    goto :goto_98b

    .line 846
    :cond_9b9
    if-nez v10, :cond_9c2

    const/16 v57, -0x1

    move v0, v9

    move/from16 v1, v57

    if-eq v0, v1, :cond_9f6

    .line 849
    :cond_9c2
    const/16 v32, 0x1

    .line 851
    packed-switch v9, :pswitch_data_be6

    .line 868
    sget-object v14, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 872
    .local v14, cap:Landroid/text/method/TextKeyListener$Capitalize;
    :goto_9c9
    invoke-static {v10, v14}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 873
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_777

    .line 853
    .end local v14           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_9db
    sget-object v14, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .line 854
    .restart local v14       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x4000

    move/from16 v32, v0

    .line 855
    goto :goto_9c9

    .line 858
    .end local v14           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_9e4
    sget-object v14, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 859
    .restart local v14       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x2000

    move/from16 v32, v0

    .line 860
    goto :goto_9c9

    .line 863
    .end local v14           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_9ed
    sget-object v14, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 864
    .restart local v14       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x1000

    move/from16 v32, v0

    .line 865
    goto :goto_9c9

    .line 874
    .end local v14           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_9f6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v57, v0

    if-eqz v57, :cond_a26

    .line 876
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 877
    const/16 v57, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 878
    sget-object v11, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 880
    const/16 v57, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 882
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_777

    .line 883
    :cond_a26
    if-eqz v25, :cond_a3c

    .line 884
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 885
    const/16 v57, 0x1

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_777

    .line 887
    :cond_a3c
    const/16 v57, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 889
    packed-switch v12, :pswitch_data_bf0

    goto/16 :goto_777

    .line 891
    :pswitch_a49
    sget-object v11, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    .line 892
    goto/16 :goto_777

    .line 894
    :pswitch_a4d
    sget-object v11, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 895
    goto/16 :goto_777

    .line 897
    :pswitch_a51
    sget-object v11, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_777

    .line 914
    .end local v5           #a:Landroid/content/res/TypedArray;
    :cond_a55
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v57, v0

    and-int/lit8 v57, v57, 0xf

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_7bd

    .line 915
    if-eqz v36, :cond_7bd

    .line 916
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v57, v0

    move/from16 v0, v57

    and-int/lit16 v0, v0, -0xff1

    move/from16 v57, v0

    or-int/lit8 v57, v57, 0x10

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_7bd

    .line 943
    :pswitch_a7d
    sget-object v57, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_807

    .line 946
    :pswitch_a88
    sget-object v57, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_807

    .line 949
    :pswitch_a93
    sget-object v57, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_807

    .line 952
    :pswitch_a9e
    const/16 v57, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 953
    sget-object v57, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_807

    .line 957
    :cond_ab2
    const/high16 v57, -0x100

    invoke-static/range {v57 .. v57}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v57

    goto/16 :goto_80b

    .line 968
    :cond_aba
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v57, v0

    move/from16 v0, v57

    and-int/lit16 v0, v0, 0xfff

    move/from16 v57, v0

    const/16 v58, 0x81

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_84a

    .line 970
    const/16 v53, 0x3

    goto/16 :goto_84a

    .line 982
    :cond_ad2
    sget-object v57, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_880

    .line 997
    .restart local v5       #a:Landroid/content/res/TypedArray;
    :cond_add
    const/16 v57, 0x0

    move/from16 v28, v57

    goto/16 :goto_8b7

    .line 1007
    .restart local v8       #attr:I
    .restart local v15       #clickable:Z
    .restart local v28       #focusable:Z
    .restart local v33       #longClickable:Z
    :sswitch_ae3
    move-object v0, v5

    move v1, v8

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    .line 1008
    goto/16 :goto_8d1

    .line 1011
    :sswitch_aed
    invoke-virtual {v5, v8, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 1012
    goto/16 :goto_8d1

    .line 1015
    :sswitch_af3
    move-object v0, v5

    move v1, v8

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    goto/16 :goto_8d1

    .line 1019
    .end local v8           #attr:I
    :cond_afd
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1021
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1022
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1023
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1025
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 1027
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v55

    .line 1028
    .local v55, viewConfiguration:Landroid/view/ViewConfiguration;
    invoke-virtual/range {v55 .. v55}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v52

    .line 1029
    .local v52, touchSlop:I
    mul-int v57, v52, v52

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSquaredTouchSlopDistance:I

    .line 1030
    return-void

    .line 420
    :pswitch_data_b28
    .packed-switch 0x0
        :pswitch_24d
        :pswitch_256
        :pswitch_261
        :pswitch_23e
        :pswitch_235
        :pswitch_243
        :pswitch_248
    .end packed-switch

    .line 480
    :pswitch_data_b3a
    .packed-switch 0x0
        :pswitch_509
        :pswitch_2b6
        :pswitch_53a
        :pswitch_544
        :pswitch_54e
        :pswitch_528
        :pswitch_51e
        :pswitch_52e
        :pswitch_534
        :pswitch_459
        :pswitch_419
        :pswitch_2f6
        :pswitch_307
        :pswitch_3ba
        :pswitch_348
        :pswitch_406
        :pswitch_394
        :pswitch_2e8
        :pswitch_432
        :pswitch_42c
        :pswitch_4b4
        :pswitch_491
        :pswitch_335
        :pswitch_35b
        :pswitch_36e
        :pswitch_381
        :pswitch_3a7
        :pswitch_3cd
        :pswitch_3e0
        :pswitch_3f3
        :pswitch_438
        :pswitch_558
        :pswitch_44f
        :pswitch_2ed
        :pswitch_47a
        :pswitch_4a8
        :pswitch_4d9
        :pswitch_4e5
        :pswitch_4f1
        :pswitch_4fd
        :pswitch_2c7
        :pswitch_2d0
        :pswitch_2d5
        :pswitch_2c2
        :pswitch_2e3
        :pswitch_2de
        :pswitch_2b9
        :pswitch_4c7
        :pswitch_31d
        :pswitch_327
        :pswitch_318
        :pswitch_322
        :pswitch_32c
        :pswitch_562
        :pswitch_582
        :pswitch_463
        :pswitch_598
        :pswitch_643
        :pswitch_650
        :pswitch_5a8
        :pswitch_5e1
        :pswitch_60a
        :pswitch_699
        :pswitch_6ab
        :pswitch_6bd
        :pswitch_6cf
        :pswitch_6e1
        :pswitch_717
        :pswitch_6f3
        :pswitch_705
        :pswitch_687
    .end packed-switch

    .line 941
    :pswitch_data_bcc
    .packed-switch 0x1
        :pswitch_a7d
        :pswitch_a88
        :pswitch_a93
        :pswitch_a9e
    .end packed-switch

    .line 1005
    :sswitch_data_bd8
    .sparse-switch
        0x12 -> :sswitch_ae3
        0x1d -> :sswitch_aed
        0x1e -> :sswitch_af3
    .end sparse-switch

    .line 851
    :pswitch_data_be6
    .packed-switch 0x1
        :pswitch_9db
        :pswitch_9e4
        :pswitch_9ed
    .end packed-switch

    .line 889
    :pswitch_data_bf0
    .packed-switch 0x0
        :pswitch_a49
        :pswitch_a4d
        :pswitch_a51
    .end packed-switch
.end method

.method static synthetic access$1000(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/TextView;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 205
    invoke-direct {p0, p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 205
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$1400(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    invoke-direct {p0}, Landroid/widget/TextView;->shouldBlink()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/TextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 205
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursorPath()V

    return-void
.end method

.method static synthetic access$1900(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/widget/TextView;)Landroid/widget/TextView$SelectionModifierCursorController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/widget/TextView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 205
    iput-object p1, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$2700(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget v0, p0, Landroid/widget/TextView;->mTextEditPasteWindowLayout:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget v0, p0, Landroid/widget/TextView;->mTextEditNoPasteWindowLayout:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget v0, p0, Landroid/widget/TextView;->mTextEditSidePasteWindowLayout:I

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget v0, p0, Landroid/widget/TextView;->mTextEditSideNoPasteWindowLayout:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/widget/TextView;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;->paste(II)V

    return-void
.end method

.method static synthetic access$3400()Landroid/graphics/Rect;
    .registers 1

    .prologue
    .line 205
    sget-object v0, Landroid/widget/TextView;->sCursorControllerTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/widget/TextView;Landroid/graphics/Rect;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 205
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$3600(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget v0, p0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    return v0
.end method

.method static synthetic access$4000(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4100(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4102(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 205
    iput-object p1, p0, Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$4200(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget v0, p0, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    return v0
.end method

.method static synthetic access$4300(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4302(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 205
    iput-object p1, p0, Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$4400(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget v0, p0, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    return v0
.end method

.method static synthetic access$4500(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4502(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 205
    iput-object p1, p0, Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$4600(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget v0, p0, Landroid/widget/TextView;->mScrollX:I

    return v0
.end method

.method static synthetic access$4700(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget v0, p0, Landroid/widget/TextView;->mScrollY:I

    return v0
.end method

.method static synthetic access$4800(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget v0, p0, Landroid/widget/TextView;->mSquaredTouchSlopDistance:I

    return v0
.end method

.method static synthetic access$4900(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget v0, p0, Landroid/widget/TextView;->mScrollX:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget v0, p0, Landroid/widget/TextView;->mScrollY:I

    return v0
.end method

.method static synthetic access$5100()J
    .registers 2

    .prologue
    .line 205
    sget-wide v0, Landroid/widget/TextView;->sLastCutOrCopyTime:J

    return-wide v0
.end method

.method static synthetic access$5300(Landroid/widget/TextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 205
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    return-void
.end method

.method static synthetic access$5400(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    return v0
.end method

.method static synthetic access$5600(Landroid/widget/TextView;II)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;->isPositionOnText(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5802(Landroid/widget/TextView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 205
    iput-boolean p1, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    return p1
.end method

.method static synthetic access$5900(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()Landroid/graphics/RectF;
    .registers 1

    .prologue
    .line 205
    sget-object v0, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/TextView;Z)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 205
    invoke-direct {p0, p1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$802(Landroid/widget/TextView;Landroid/widget/TextView$CorrectionHighlighter;)Landroid/widget/TextView$CorrectionHighlighter;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 205
    iput-object p1, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    return-object p1
.end method

.method static synthetic access$900(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private applySingleLine(ZZZ)V
    .registers 5
    .parameter "singleLine"
    .parameter "applyTransformation"
    .parameter "changeMaxLines"

    .prologue
    const/4 v0, 0x1

    .line 6493
    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    .line 6494
    if-eqz p1, :cond_15

    .line 6495
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 6496
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 6497
    if-eqz p2, :cond_14

    .line 6498
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 6509
    :cond_14
    :goto_14
    return-void

    .line 6501
    :cond_15
    if-eqz p3, :cond_1d

    .line 6502
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6504
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 6505
    if-eqz p2, :cond_14

    .line 6506
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_14
.end method

.method private assumeLayout()V
    .registers 8

    .prologue
    .line 5468
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v0, v3

    .line 5470
    .local v1, width:I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_14

    .line 5471
    const/4 v1, 0x0

    .line 5474
    :cond_14
    move v2, v1

    .line 5476
    .local v2, physicalWidth:I
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_1b

    .line 5477
    const/16 v1, 0x4000

    .line 5480
    :cond_1b
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 5482
    return-void
.end method

.method private bringTextIntoView()Z
    .registers 15

    .prologue
    const/16 v13, 0x50

    const/4 v12, 0x1

    .line 6061
    const/4 v5, 0x0

    .line 6062
    .local v5, line:I
    iget v10, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    if-ne v10, v13, :cond_12

    .line 6063
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getLineCount()I

    move-result v10

    sub-int v5, v10, v12

    .line 6066
    :cond_12
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 6067
    .local v0, a:Landroid/text/Layout$Alignment;
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 6068
    .local v1, dir:I
    iget v10, p0, Landroid/widget/TextView;->mRight:I

    iget v11, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v11

    sub-int v2, v10, v11

    .line 6069
    .local v2, hspace:I
    iget v10, p0, Landroid/widget/TextView;->mBottom:I

    iget v11, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v11

    sub-int v9, v10, v11

    .line 6070
    .local v9, vspace:I
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 6074
    .local v3, ht:I
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v10, :cond_81

    .line 6080
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->floor(F)F

    move-result v10

    float-to-int v4, v10

    .line 6081
    .local v4, left:I
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v6, v10

    .line 6083
    .local v6, right:I
    sub-int v10, v6, v4

    if-ge v10, v2, :cond_7a

    .line 6084
    add-int v10, v6, v4

    div-int/lit8 v10, v10, 0x2

    div-int/lit8 v11, v2, 0x2

    sub-int v7, v10, v11

    .line 6116
    .end local v4           #left:I
    .end local v6           #right:I
    .local v7, scrollx:I
    :goto_6a
    if-ge v3, v9, :cond_bd

    .line 6117
    const/4 v8, 0x0

    .line 6126
    .local v8, scrolly:I
    :goto_6d
    iget v10, p0, Landroid/widget/TextView;->mScrollX:I

    if-ne v7, v10, :cond_75

    iget v10, p0, Landroid/widget/TextView;->mScrollY:I

    if-eq v8, v10, :cond_c8

    .line 6127
    :cond_75
    invoke-virtual {p0, v7, v8}, Landroid/widget/TextView;->scrollTo(II)V

    move v10, v12

    .line 6130
    :goto_79
    return v10

    .line 6086
    .end local v7           #scrollx:I
    .end local v8           #scrolly:I
    .restart local v4       #left:I
    .restart local v6       #right:I
    :cond_7a
    if-gez v1, :cond_7f

    .line 6087
    sub-int v7, v6, v2

    .restart local v7       #scrollx:I
    goto :goto_6a

    .line 6089
    .end local v7           #scrollx:I
    :cond_7f
    move v7, v4

    .restart local v7       #scrollx:I
    goto :goto_6a

    .line 6092
    .end local v4           #left:I
    .end local v6           #right:I
    .end local v7           #scrollx:I
    :cond_81
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v10, :cond_a1

    .line 6097
    if-gez v1, :cond_95

    .line 6098
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v6, v10

    .line 6099
    .restart local v6       #right:I
    sub-int v7, v6, v2

    .line 6100
    .restart local v7       #scrollx:I
    goto :goto_6a

    .line 6101
    .end local v6           #right:I
    .end local v7           #scrollx:I
    :cond_95
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->floor(F)F

    move-result v10

    float-to-int v7, v10

    .restart local v7       #scrollx:I
    goto :goto_6a

    .line 6108
    .end local v7           #scrollx:I
    :cond_a1
    if-gez v1, :cond_af

    .line 6109
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->floor(F)F

    move-result v10

    float-to-int v7, v10

    .restart local v7       #scrollx:I
    goto :goto_6a

    .line 6111
    .end local v7           #scrollx:I
    :cond_af
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v6, v10

    .line 6112
    .restart local v6       #right:I
    sub-int v7, v6, v2

    .restart local v7       #scrollx:I
    goto :goto_6a

    .line 6119
    .end local v6           #right:I
    :cond_bd
    iget v10, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    if-ne v10, v13, :cond_c6

    .line 6120
    sub-int v8, v3, v9

    .restart local v8       #scrolly:I
    goto :goto_6d

    .line 6122
    .end local v8           #scrolly:I
    :cond_c6
    const/4 v8, 0x0

    .restart local v8       #scrolly:I
    goto :goto_6d

    .line 6130
    :cond_c8
    const/4 v10, 0x0

    goto :goto_79
.end method

.method private canCopy()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 7726
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 7734
    :goto_8
    return v0

    .line 7730
    :cond_9
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 7731
    const/4 v0, 0x1

    goto :goto_8

    :cond_19
    move v0, v1

    .line 7734
    goto :goto_8
.end method

.method private canCut()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 7714
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 7722
    :goto_8
    return v0

    .line 7718
    :cond_9
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_23

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_23

    .line 7719
    const/4 v0, 0x1

    goto :goto_8

    :cond_23
    move v0, v1

    .line 7722
    goto :goto_8
.end method

.method private canMarquee()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 6587
    iget v1, p0, Landroid/widget/TextView;->mRight:I

    iget v2, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int v0, v1, v2

    .line 6588
    .local v0, width:I
    if-lez v0, :cond_20

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_20

    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    move v1, v3

    goto :goto_1f
.end method

.method private canPaste()Z
    .registers 3

    .prologue
    .line 7738
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_2a

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_2a

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/ClipboardManager;

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private canSelectText()Z
    .registers 2

    .prologue
    .line 7697
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private checkForRelayout()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x2

    .line 6007
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v8, :cond_14

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v0, v3, :cond_94

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidth:I

    if-ne v0, v3, :cond_94

    :cond_14
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_94

    :cond_1c
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_94

    .line 6013
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v7

    .line 6014
    .local v7, oldht:I
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 6015
    .local v1, want:I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_6d

    move v2, v6

    .line 6022
    .local v2, hintWant:I
    :goto_3e
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 6026
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v3, :cond_8d

    .line 6028
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v8, :cond_75

    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_75

    .line 6030
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6055
    .end local v1           #want:I
    .end local v2           #hintWant:I
    .end local v7           #oldht:I
    :goto_6c
    return-void

    .line 6015
    .restart local v1       #want:I
    .restart local v7       #oldht:I
    :cond_6d
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    move v2, v0

    goto :goto_3e

    .line 6036
    .restart local v2       #hintWant:I
    :cond_75
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_8d

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_89

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_8d

    .line 6038
    :cond_89
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_6c

    .line 6045
    :cond_8d
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 6046
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_6c

    .line 6051
    .end local v1           #want:I
    .end local v2           #hintWant:I
    .end local v7           #oldht:I
    :cond_94
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 6052
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 6053
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_6c
.end method

.method private checkForResize()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    .line 5966
    const/4 v1, 0x0

    .line 5968
    .local v1, sizeChanged:Z
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_21

    .line 5970
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_10

    .line 5971
    const/4 v1, 0x1

    .line 5972
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 5976
    :cond_10
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_27

    .line 5977
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 5979
    .local v0, desiredHeight:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_21

    .line 5980
    const/4 v1, 0x1

    .line 5993
    .end local v0           #desiredHeight:I
    :cond_21
    :goto_21
    if-eqz v1, :cond_26

    .line 5994
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5997
    :cond_26
    return-void

    .line 5982
    :cond_27
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_21

    .line 5983
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-ltz v2, :cond_21

    .line 5984
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 5986
    .restart local v0       #desiredHeight:I
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-eq v0, v2, :cond_21

    .line 5987
    const/4 v1, 0x1

    goto :goto_21
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .registers 16
    .parameter "pop"
    .parameter "text"
    .parameter "tv"

    .prologue
    .line 3620
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 3621
    .local v11, wid:I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 3627
    .local v8, ht:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int v3, v1, v11

    .line 3628
    .local v3, cap:I
    if-gez v3, :cond_1e

    .line 3629
    const/16 v3, 0xc8

    .line 3632
    :cond_1e
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 3634
    .local v0, l:Landroid/text/Layout;
    const/4 v10, 0x0

    .line 3635
    .local v10, max:F
    const/4 v9, 0x0

    .local v9, i:I
    :goto_30
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-ge v9, v1, :cond_41

    .line 3636
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 3635
    add-int/lit8 v9, v9, 0x1

    goto :goto_30

    .line 3642
    :cond_41
    float-to-double v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, v11

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3643
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3644
    return-void
.end method

.method private compressText(F)Z
    .registers 9
    .parameter "width"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 5676
    invoke-virtual {p0}, Landroid/widget/TextView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v4

    .line 5694
    :goto_c
    return v2

    .line 5679
    :cond_d
    cmpl-float v2, p1, v5

    if-lez v2, :cond_53

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_53

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-ne v2, v6, :cond_53

    iget-boolean v2, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v2, :cond_53

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_53

    .line 5681
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .line 5682
    .local v1, textWidth:F
    add-float v2, v1, v3

    sub-float/2addr v2, p1

    div-float v0, v2, p1

    .line 5683
    .local v0, overflow:F
    cmpl-float v2, v0, v5

    if-lez v2, :cond_53

    const v2, 0x3d8f5c29

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_53

    .line 5684
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sub-float/2addr v3, v0

    const v4, 0x3ba3d70a

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 5685
    new-instance v2, Landroid/widget/TextView$2;

    invoke-direct {v2, p0}, Landroid/widget/TextView$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    move v2, v6

    .line 5690
    goto :goto_c

    .end local v0           #overflow:F
    .end local v1           #textWidth:F
    :cond_53
    move v2, v4

    .line 5694
    goto :goto_c
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "r"

    .prologue
    .line 6380
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    .line 6381
    .local v0, horizontalOffset:I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 6382
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 6384
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    .line 6385
    .local v1, verticalOffset:I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 6386
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 6387
    return-void
.end method

.method private convertToLocalHorizontalCoordinate(I)I
    .registers 4
    .parameter "x"

    .prologue
    .line 9394
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    .line 9396
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 9397
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 9398
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    add-int/2addr p1, v0

    .line 9399
    return p1
.end method

.method private static desired(Landroid/text/Layout;)I
    .registers 8
    .parameter "layout"

    .prologue
    const/4 v6, 0x1

    .line 5698
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 5699
    .local v2, n:I
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 5700
    .local v3, text:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 5705
    .local v1, max:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    sub-int v4, v2, v6

    if-ge v0, v4, :cond_21

    .line 5706
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    sub-int/2addr v4, v6

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1e

    .line 5707
    const/4 v4, -0x1

    .line 5714
    :goto_1d
    return v4

    .line 5705
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 5710
    :cond_21
    const/4 v0, 0x0

    :goto_22
    if-ge v0, v2, :cond_2f

    .line 5711
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 5710
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 5714
    :cond_2f
    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    goto :goto_1d
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .registers 11
    .parameter "keyCode"
    .parameter "event"
    .parameter "otherEvent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 4738
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v4

    .line 4855
    :goto_a
    return v2

    .line 4742
    :cond_b
    sparse-switch p1, :sswitch_data_ea

    .line 4801
    :cond_e
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_ba

    .line 4802
    invoke-virtual {p0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    .line 4804
    const/4 v0, 0x1

    .line 4805
    .local v0, doDown:Z
    if-eqz p3, :cond_a0

    .line 4807
    :try_start_18
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 4808
    iget-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v3, p0, v2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v1

    .line 4809
    .local v1, handled:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_97
    .catch Ljava/lang/AbstractMethodError; {:try_start_18 .. :try_end_28} :catch_9c

    .line 4810
    const/4 v0, 0x0

    .line 4811
    if-eqz v1, :cond_9d

    .line 4818
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    move v2, v5

    .line 4812
    goto :goto_a

    .line 4744
    .end local v0           #doDown:Z
    .end local v1           #handled:Z
    :sswitch_30
    iput-boolean v6, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    .line 4745
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4750
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v2, :cond_52

    .line 4753
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_52

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v4, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 4756
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-boolean v6, v2, Landroid/widget/TextView$InputContentType;->enterDown:Z

    move v2, v5

    .line 4758
    goto :goto_a

    .line 4765
    :cond_52
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_60

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4767
    :cond_60
    iget-object v2, p0, Landroid/widget/TextView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_66

    move v2, v4

    .line 4768
    goto :goto_a

    :cond_66
    move v2, v5

    .line 4770
    goto :goto_a

    .line 4776
    :sswitch_68
    iput-boolean v6, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 4777
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4778
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v4

    .line 4779
    goto :goto_a

    .line 4785
    :sswitch_78
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-nez v2, :cond_84

    invoke-virtual {p2, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4786
    :cond_84
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnTab()Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v4

    .line 4787
    goto/16 :goto_a

    .line 4794
    :sswitch_8d
    iget-object v2, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_e

    .line 4795
    invoke-direct {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    move v2, v5

    .line 4796
    goto/16 :goto_a

    .line 4818
    .restart local v0       #doDown:Z
    :catchall_97
    move-exception v2

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    throw v2

    .line 4814
    :catch_9c
    move-exception v2

    .line 4818
    :cond_9d
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 4822
    :cond_a0
    if-eqz v0, :cond_ba

    .line 4823
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 4824
    iget-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 4825
    .restart local v1       #handled:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 4826
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    .line 4827
    if-eqz v1, :cond_ba

    move v2, v6

    goto/16 :goto_a

    .line 4834
    .end local v0           #doDown:Z
    .end local v1           #handled:Z
    :cond_ba
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_e7

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_e7

    .line 4835
    const/4 v0, 0x1

    .line 4836
    .restart local v0       #doDown:Z
    if-eqz p3, :cond_d6

    .line 4838
    :try_start_c5
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v3, p0, v2, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    :try_end_ce
    .catch Ljava/lang/AbstractMethodError; {:try_start_c5 .. :try_end_ce} :catch_d5

    move-result v1

    .line 4840
    .restart local v1       #handled:Z
    const/4 v0, 0x0

    .line 4841
    if-eqz v1, :cond_d6

    move v2, v5

    .line 4842
    goto/16 :goto_a

    .line 4844
    .end local v1           #handled:Z
    :catch_d5
    move-exception v2

    .line 4849
    :cond_d6
    if-eqz v0, :cond_e7

    .line 4850
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 4851
    const/4 v2, 0x2

    goto/16 :goto_a

    .end local v0           #doDown:Z
    :cond_e7
    move v2, v4

    .line 4855
    goto/16 :goto_a

    .line 4742
    :sswitch_data_ea
    .sparse-switch
        0x4 -> :sswitch_8d
        0x17 -> :sswitch_68
        0x3d -> :sswitch_78
        0x42 -> :sswitch_30
    .end sparse-switch
.end method

.method private drawCursor(Landroid/graphics/Canvas;I)V
    .registers 7
    .parameter "canvas"
    .parameter "cursorOffsetVertical"

    .prologue
    const/4 v3, 0x0

    .line 4544
    if-eqz p2, :cond_1a

    const/4 v2, 0x1

    move v1, v2

    .line 4545
    .local v1, translate:Z
    :goto_5
    if-eqz v1, :cond_b

    int-to-float v2, p2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4546
    :cond_b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget v2, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ge v0, v2, :cond_1d

    .line 4547
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4546
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 4544
    .end local v0           #i:I
    .end local v1           #translate:Z
    :cond_1a
    const/4 v2, 0x0

    move v1, v2

    goto :goto_5

    .line 4549
    .restart local v0       #i:I
    .restart local v1       #translate:Z
    :cond_1d
    if-eqz v1, :cond_24

    neg-int v2, p2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4550
    :cond_24
    return-void
.end method

.method private static extractRangeEndFromLong(J)I
    .registers 4
    .parameter "range"

    .prologue
    .line 7837
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static extractRangeStartFromLong(J)I
    .registers 4
    .parameter "range"

    .prologue
    .line 7833
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private fixFocusableAndClickableSettings()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1251
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_14

    .line 1252
    :cond_a
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1253
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1254
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1260
    :goto_13
    return-void

    .line 1256
    :cond_14
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1257
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1258
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    goto :goto_13
.end method

.method private getBottomVerticalOffset(Z)I
    .registers 9
    .parameter "forceNormal"

    .prologue
    .line 3746
    const/4 v4, 0x0

    .line 3747
    .local v4, voffset:I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 3749
    .local v1, gravity:I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 3750
    .local v2, l:Landroid/text/Layout;
    if-nez p1, :cond_17

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_17

    .line 3751
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 3754
    :cond_17
    const/16 v5, 0x50

    if-eq v1, v5, :cond_3a

    .line 3757
    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne v2, v5, :cond_3b

    .line 3758
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 3764
    .local v0, boxht:I
    :goto_2e
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 3766
    .local v3, textht:I
    if-ge v3, v0, :cond_3a

    .line 3767
    const/16 v5, 0x30

    if-ne v1, v5, :cond_4b

    .line 3768
    sub-int v4, v0, v3

    .line 3773
    .end local v0           #boxht:I
    .end local v3           #textht:I
    :cond_3a
    :goto_3a
    return v4

    .line 3761
    :cond_3b
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .restart local v0       #boxht:I
    goto :goto_2e

    .line 3770
    .restart local v3       #textht:I
    :cond_4b
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_3a
.end method

.method private getDesiredHeight()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 5901
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-direct {p0, v0, v3}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v2, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_17

    move v2, v3

    :goto_e
    invoke-direct {p0, v1, v2}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_17
    const/4 v2, 0x0

    goto :goto_e
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .registers 11
    .parameter "layout"
    .parameter "cap"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5907
    if-nez p1, :cond_6

    move v4, v6

    .line 5958
    :goto_5
    return v4

    .line 5911
    :cond_6
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 5912
    .local v2, linecount:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 5913
    .local v3, pad:I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 5915
    .local v0, desired:I
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 5916
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_28

    .line 5917
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5918
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5921
    :cond_28
    add-int/2addr v0, v3

    .line 5922
    invoke-virtual {p1, v6}, Landroid/text/Layout;->setMaximumVisibleLineCount(I)V

    .line 5924
    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    if-ne v4, v7, :cond_6d

    .line 5929
    if-eqz p2, :cond_52

    .line 5930
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v4, :cond_52

    .line 5931
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {p1, v4}, Landroid/text/Layout;->setMaximumVisibleLineCount(I)V

    .line 5932
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 5934
    if-eqz v1, :cond_4f

    .line 5935
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5936
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5939
    :cond_4f
    add-int/2addr v0, v3

    .line 5940
    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    .line 5947
    :cond_52
    :goto_52
    iget v4, p0, Landroid/widget/TextView;->mMinMode:I

    if-ne v4, v7, :cond_74

    .line 5948
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    if-ge v2, v4, :cond_63

    .line 5949
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/TextView;->mMinimum:I

    sub-int/2addr v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 5956
    :cond_63
    :goto_63
    invoke-virtual {p0}, Landroid/widget/TextView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v4, v0

    .line 5958
    goto :goto_5

    .line 5944
    :cond_6d
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_52

    .line 5952
    :cond_74
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_63
.end method

.method private getErrorX()I
    .registers 6

    .prologue
    .line 3577
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 3579
    .local v1, scale:F
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3580
    .local v0, dr:Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v3}, Landroid/widget/TextView$ErrorPopup;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    if-eqz v0, :cond_2c

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :goto_20
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/high16 v3, 0x41c8

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    return v2

    :cond_2c
    const/4 v3, 0x0

    goto :goto_20
.end method

.method private getErrorY()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 3593
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 3594
    .local v0, compoundPaddingTop:I
    iget v5, p0, Landroid/widget/TextView;->mBottom:I

    iget v6, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v4, v5, v0

    .line 3596
    .local v4, vspace:I
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3597
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_3a

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :goto_17
    sub-int v5, v4, v5

    div-int/lit8 v5, v5, 0x2

    add-int v2, v0, v5

    .line 3604
    .local v2, icontop:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v3, v5, Landroid/util/DisplayMetrics;->density:F

    .line 3605
    .local v3, scale:F
    if-eqz v1, :cond_3c

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :goto_2b
    add-int/2addr v5, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    const/high16 v6, 0x4000

    mul-float/2addr v6, v3

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    return v5

    .end local v2           #icontop:I
    .end local v3           #scale:F
    :cond_3a
    move v5, v7

    .line 3597
    goto :goto_17

    .restart local v2       #icontop:I
    .restart local v3       #scale:F
    :cond_3c
    move v5, v7

    .line 3605
    goto :goto_2b
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .registers 5
    .parameter "r"
    .parameter "line"

    .prologue
    .line 6370
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    .line 6375
    if-nez p2, :cond_e

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 6376
    :cond_e
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_21

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 6377
    :cond_21
    return-void
.end method

.method private getLastTapPosition()I
    .registers 5

    .prologue
    .line 7216
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v1, :cond_4a

    .line 7217
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 7218
    .local v0, lastTapPosition:I
    if-ltz v0, :cond_4a

    .line 7220
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_48

    .line 7221
    const-string v1, "TextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid tap focus position ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7223
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_48
    move v1, v0

    .line 7229
    .end local v0           #lastTapPosition:I
    :goto_49
    return v1

    :cond_4a
    const/4 v1, -0x1

    goto :goto_49
.end method

.method private getLastTouchOffsets()J
    .registers 6

    .prologue
    .line 7891
    iget-boolean v3, p0, Landroid/widget/TextView;->mContextMenuTriggeredByKey:Z

    if-eqz v3, :cond_11

    .line 7892
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 7893
    .local v1, minOffset:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 7900
    .local v0, maxOffset:I
    :goto_c
    invoke-static {v1, v0}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3

    .line 7895
    .end local v0           #maxOffset:I
    .end local v1           #minOffset:I
    :cond_11
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v2

    .line 7896
    .local v2, selectionController:Landroid/widget/TextView$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 7897
    .restart local v1       #minOffset:I
    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .restart local v0       #maxOffset:I
    goto :goto_c
.end method

.method private getLineAtCoordinate(I)I
    .registers 4
    .parameter "y"

    .prologue
    .line 9403
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    .line 9405
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 9406
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 9407
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    add-int/2addr p1, v0

    .line 9408
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method private getOffsetAtCoordinate(II)I
    .registers 5
    .parameter "line"
    .parameter "x"

    .prologue
    .line 9412
    invoke-direct {p0, p2}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(I)I

    move-result p2

    .line 9413
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "def"

    .prologue
    .line 7652
    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 7654
    .local v0, colors:Landroid/content/res/ColorStateList;
    if-nez v0, :cond_8

    move v1, p2

    .line 7657
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    goto :goto_7
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    .line 7624
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 7627
    .local v2, colors:Landroid/content/res/ColorStateList;
    if-nez v2, :cond_1d

    .line 7628
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 7630
    .local v0, ap:I
    if-eq v0, v4, :cond_1d

    .line 7632
    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 7634
    .local v1, appearance:Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 7636
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7640
    .end local v0           #ap:I
    .end local v1           #appearance:Landroid/content/res/TypedArray;
    :cond_1d
    return-object v2
.end method

.method private getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;
    .registers 9
    .parameter "text"

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 8131
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const v3, 0x1090093

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/TextView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8134
    .local v0, shadowView:Landroid/widget/TextView;
    if-nez v0, :cond_18

    .line 8135
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to inflate text drag thumbnail"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8138
    :cond_18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sget v3, Landroid/widget/TextView;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    if-le v2, v3, :cond_26

    .line 8139
    sget v2, Landroid/widget/TextView;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    invoke-interface {p1, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 8141
    :cond_26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8142
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8144
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 8145
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 8147
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8150
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 8151
    .local v1, size:I
    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 8153
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 8154
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 8155
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method private getVerticalOffset(Z)I
    .registers 9
    .parameter "forceNormal"

    .prologue
    .line 3715
    const/4 v4, 0x0

    .line 3716
    .local v4, voffset:I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 3718
    .local v1, gravity:I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 3719
    .local v2, l:Landroid/text/Layout;
    if-nez p1, :cond_17

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_17

    .line 3720
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 3723
    :cond_17
    const/16 v5, 0x30

    if-eq v1, v5, :cond_3a

    .line 3726
    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne v2, v5, :cond_3b

    .line 3727
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 3733
    .local v0, boxht:I
    :goto_2e
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 3735
    .local v3, textht:I
    if-ge v3, v0, :cond_3a

    .line 3736
    const/16 v5, 0x50

    if-ne v1, v5, :cond_4b

    .line 3737
    sub-int v4, v0, v3

    .line 3742
    .end local v0           #boxht:I
    .end local v3           #textht:I
    :cond_3a
    :goto_3a
    return v4

    .line 3730
    :cond_3b
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .restart local v0       #boxht:I
    goto :goto_2e

    .line 3739
    .restart local v3       #textht:I
    :cond_4b
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_3a
.end method

.method private getWordLimitsAt(I)J
    .registers 16
    .parameter "offset"

    .prologue
    const/16 v13, 0x30

    const/4 v12, 0x1

    const-wide/16 v10, -0x1

    .line 7765
    iget v8, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v3, v8, 0xf

    .line 7766
    .local v3, klass:I
    iget v8, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v7, v8, 0xff0

    .line 7769
    .local v7, variation:I
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v8

    if-eqz v8, :cond_15

    move-wide v8, v10

    .line 7825
    :goto_14
    return-wide v8

    .line 7773
    :cond_15
    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 7776
    .local v4, len:I
    const/4 v8, 0x2

    if-eq v3, v8, :cond_34

    const/4 v8, 0x3

    if-eq v3, v8, :cond_34

    const/4 v8, 0x4

    if-eq v3, v8, :cond_34

    const/16 v8, 0x10

    if-eq v7, v8, :cond_34

    const/16 v8, 0x20

    if-eq v7, v8, :cond_34

    const/16 v8, 0xd0

    if-eq v7, v8, :cond_34

    const/16 v8, 0xb0

    if-ne v7, v8, :cond_3e

    .line 7783
    :cond_34
    if-lez v4, :cond_3c

    const/4 v8, 0x0

    invoke-static {v8, v4}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v8

    goto :goto_14

    :cond_3c
    move-wide v8, v10

    goto :goto_14

    .line 7786
    :cond_3e
    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7787
    .local v2, end:I
    if-gez v2, :cond_46

    move-wide v8, v10

    .line 7788
    goto :goto_14

    .line 7791
    :cond_46
    const/16 v0, 0x30

    .line 7792
    .local v0, MAX_LENGTH:I
    move v5, v2

    .line 7794
    .local v5, start:I
    :goto_49
    if-lez v5, :cond_6d

    .line 7795
    iget-object v8, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    sub-int v9, v5, v12

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 7796
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->getType(C)I

    move-result v6

    .line 7797
    .local v6, type:I
    if-ne v5, v2, :cond_60

    const/16 v8, 0x18

    if-ne v6, v8, :cond_60

    .line 7794
    :cond_5d
    :goto_5d
    add-int/lit8 v5, v5, -0x1

    goto :goto_49

    .line 7802
    :cond_60
    const/16 v8, 0x13

    if-ne v6, v8, :cond_67

    .line 7803
    sub-int v2, v5, v12

    .line 7804
    goto :goto_5d

    .line 7806
    :cond_67
    invoke-direct {p0, v1, v6}, Landroid/widget/TextView;->isWordCharacter(II)Z

    move-result v8

    if-nez v8, :cond_83

    .line 7810
    .end local v1           #c:C
    .end local v6           #type:I
    :cond_6d
    :goto_6d
    if-ge v2, v4, :cond_7f

    .line 7811
    iget-object v8, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-static {v8, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 7812
    .local v1, c:I
    invoke-static {v1}, Ljava/lang/Character;->getType(I)I

    move-result v6

    .line 7813
    .restart local v6       #type:I
    invoke-direct {p0, v1, v6}, Landroid/widget/TextView;->isWordCharacter(II)Z

    move-result v8

    if-nez v8, :cond_89

    .line 7820
    .end local v1           #c:I
    .end local v6           #type:I
    :cond_7f
    if-ne v5, v2, :cond_99

    move-wide v8, v10

    .line 7821
    goto :goto_14

    .line 7807
    .local v1, c:C
    .restart local v6       #type:I
    :cond_83
    sub-int v8, v2, v5

    if-le v8, v13, :cond_5d

    move-wide v8, v10

    goto :goto_14

    .line 7814
    .local v1, c:I
    :cond_89
    sub-int v8, v2, v5

    if-le v8, v13, :cond_8f

    move-wide v8, v10

    goto :goto_14

    .line 7815
    :cond_8f
    const v8, 0xffff

    if-le v1, v8, :cond_96

    .line 7816
    add-int/lit8 v2, v2, 0x1

    .line 7810
    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    .line 7825
    .end local v1           #c:I
    .end local v6           #type:I
    :cond_99
    invoke-static {v5, v2}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v8

    goto/16 :goto_14
.end method

.method private hasPasswordTransformationMethod()Z
    .registers 2

    .prologue
    .line 3106
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method private hideControllers()V
    .registers 1

    .prologue
    .line 9372
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 9373
    invoke-direct {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 9374
    return-void
.end method

.method private hideError()V
    .registers 2

    .prologue
    .line 3610
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v0, :cond_11

    .line 3611
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3612
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->dismiss()V

    .line 3616
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 3617
    return-void
.end method

.method private hideInsertionPointCursorController()V
    .registers 2

    .prologue
    .line 9363
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v0, :cond_9

    .line 9364
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    .line 9366
    :cond_9
    return-void
.end method

.method private invalidateCursor()V
    .registers 2

    .prologue
    .line 3819
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 3821
    .local v0, where:I
    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 3822
    return-void
.end method

.method private invalidateCursor(III)V
    .registers 23
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 3825
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v15, v0

    if-nez v15, :cond_b

    .line 3826
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    .line 3872
    :cond_a
    :goto_a
    return-void

    .line 3828
    :cond_b
    if-gez p1, :cond_11

    if-gez p2, :cond_11

    if-ltz p3, :cond_a

    .line 3829
    :cond_11
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->min(II)I

    move-result v15

    move v0, v15

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 3830
    .local v7, first:I
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->max(II)I

    move-result v15

    move v0, v15

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 3832
    .local v10, last:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v15, v0

    invoke-virtual {v15, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    .line 3833
    .local v11, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v15, v0

    invoke-virtual {v15, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v13

    .line 3841
    .local v13, top:I
    if-lez v11, :cond_49

    .line 3842
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v15, v0

    const/16 v16, 0x1

    sub-int v16, v11, v16

    invoke-virtual/range {v15 .. v16}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v15

    sub-int/2addr v13, v15

    .line 3847
    :cond_49
    if-ne v7, v10, :cond_8d

    .line 3848
    move v12, v11

    .line 3852
    .local v12, line2:I
    :goto_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v15, v0

    add-int/lit8 v16, v12, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    .line 3854
    .local v5, bottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v8

    .line 3855
    .local v8, horizontalPadding:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v15

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v16

    add-int v14, v15, v16

    .line 3859
    .local v14, verticalPadding:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_6c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCursorCount:I

    move v15, v0

    if-ge v9, v15, :cond_97

    .line 3860
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    move-object v15, v0

    aget-object v15, v15, v9

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 3861
    .local v6, bounds:Landroid/graphics/Rect;
    iget v15, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 3862
    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3859
    add-int/lit8 v9, v9, 0x1

    goto :goto_6c

    .line 3850
    .end local v5           #bottom:I
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v8           #horizontalPadding:I
    .end local v9           #i:I
    .end local v12           #line2:I
    .end local v14           #verticalPadding:I
    :cond_8d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v15, v0

    invoke-virtual {v15, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v12

    .restart local v12       #line2:I
    goto :goto_4c

    .line 3866
    .restart local v5       #bottom:I
    .restart local v8       #horizontalPadding:I
    .restart local v9       #i:I
    .restart local v14       #verticalPadding:I
    :cond_97
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move v15, v0

    add-int/2addr v15, v8

    add-int v16, v13, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v17, v0

    add-int v17, v17, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v18

    sub-int v17, v17, v18

    add-int v18, v5, v14

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->invalidate(IIII)V

    goto/16 :goto_a
.end method

.method private invalidateCursorPath()V
    .registers 12

    .prologue
    .line 3777
    iget-boolean v5, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v5, :cond_8

    .line 3778
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 3816
    :cond_7
    :goto_7
    return-void

    .line 3780
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 3781
    .local v1, horizontalPadding:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v6

    add-int v4, v5, v6

    .line 3783
    .local v4, verticalPadding:I
    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-nez v5, :cond_73

    .line 3784
    sget-object v5, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    monitor-enter v5

    .line 3794
    :try_start_1e
    iget-object v6, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v6

    invoke-static {v6}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    .line 3795
    .local v3, thick:F
    const/high16 v6, 0x3f80

    cmpg-float v6, v3, v6

    if-gez v6, :cond_30

    .line 3796
    const/high16 v3, 0x3f80

    .line 3799
    :cond_30
    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    .line 3801
    iget-object v6, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 3803
    int-to-float v6, v1

    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v7

    sub-float/2addr v6, v3

    invoke-static {v6}, Landroid/util/FloatMath;->floor(F)F

    move-result v6

    float-to-int v6, v6

    int-to-float v7, v4

    sget-object v8, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    sub-float/2addr v7, v3

    invoke-static {v7}, Landroid/util/FloatMath;->floor(F)F

    move-result v7

    float-to-int v7, v7

    int-to-float v8, v1

    sget-object v9, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    add-float/2addr v8, v3

    invoke-static {v8}, Landroid/util/FloatMath;->ceil(F)F

    move-result v8

    float-to-int v8, v8

    int-to-float v9, v4

    sget-object v10, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    add-float/2addr v9, v3

    invoke-static {v9}, Landroid/util/FloatMath;->ceil(F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p0, v6, v7, v8, v9}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 3807
    monitor-exit v5

    goto :goto_7

    .end local v3           #thick:F
    :catchall_70
    move-exception v6

    monitor-exit v5
    :try_end_72
    .catchall {:try_start_1e .. :try_end_72} :catchall_70

    throw v6

    .line 3809
    :cond_73
    const/4 v2, 0x0

    .local v2, i:I
    :goto_74
    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ge v2, v5, :cond_7

    .line 3810
    iget-object v5, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3811
    .local v0, bounds:Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v4

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 3809
    add-int/lit8 v2, v2, 0x1

    goto :goto_74
.end method

.method private isCursorVisible()Z
    .registers 2

    .prologue
    .line 6583
    iget-boolean v0, p0, Landroid/widget/TextView;->mCursorVisible:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isMultilineInputType(I)Z
    .registers 4
    .parameter "type"

    .prologue
    .line 3034
    const v0, 0x2000f

    and-int/2addr v0, p1

    const v1, 0x20001

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private isPasswordInputType(I)Z
    .registers 4
    .parameter "inputType"

    .prologue
    .line 3110
    and-int/lit16 v0, p1, 0xfff

    .line 3112
    .local v0, variation:I
    const/16 v1, 0x81

    if-eq v0, v1, :cond_e

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_e

    const/16 v1, 0x12

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private isPositionOnText(II)Z
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 9420
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v3

    .line 9427
    :goto_8
    return v1

    .line 9422
    :cond_9
    invoke-direct {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(I)I

    move-result v0

    .line 9423
    .local v0, line:I
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(I)I

    move-result p1

    .line 9425
    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_20

    move v1, v3

    goto :goto_8

    .line 9426
    :cond_20
    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2f

    move v1, v3

    goto :goto_8

    .line 9427
    :cond_2f
    const/4 v1, 0x1

    goto :goto_8
.end method

.method private isTextEditable()Z
    .registers 2

    .prologue
    .line 7434
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private isVisiblePasswordInputType(I)Z
    .registers 4
    .parameter "inputType"

    .prologue
    .line 3121
    and-int/lit16 v0, p1, 0xfff

    .line 3123
    .local v0, variation:I
    const/16 v1, 0x91

    if-ne v0, v1, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private isWordCharacter(II)Z
    .registers 5
    .parameter "c"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 7747
    const/16 v0, 0x27

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x22

    if-eq p1, v0, :cond_1b

    if-eq p2, v1, :cond_1b

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1b

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1b

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1b

    const/16 v0, 0x9

    if-ne p2, v0, :cond_1d

    :cond_1b
    move v0, v1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private makeBlink()V
    .registers 7

    .prologue
    .line 7523
    invoke-direct {p0}, Landroid/widget/TextView;->isCursorVisible()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 7524
    invoke-direct {p0}, Landroid/widget/TextView;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 7525
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 7526
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-nez v0, :cond_1d

    new-instance v0, Landroid/widget/TextView$Blink;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Blink;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    .line 7527
    :cond_1d
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7528
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-wide v2, p0, Landroid/widget/TextView;->mShowCursor:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 7533
    :cond_30
    :goto_30
    return-void

    .line 7531
    :cond_31
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_30
.end method

.method private nullLayouts()V
    .registers 2

    .prologue
    .line 5450
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_10

    .line 5451
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    .line 5453
    :cond_10
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_20

    .line 5454
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 5457
    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5460
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 5461
    return-void
.end method

.method private onDrop(Landroid/view/DragEvent;)V
    .registers 26
    .parameter "event"

    .prologue
    .line 9457
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v22, ""

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9458
    .local v5, content:Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    .line 9459
    .local v4, clipData:Landroid/content/ClipData;
    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v12

    .line 9460
    .local v12, itemCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_13
    if-ge v10, v12, :cond_2f

    .line 9461
    invoke-virtual {v4, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v11

    .line 9462
    .local v11, item:Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v22

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 9460
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 9465
    .end local v11           #item:Landroid/content/ClipData$Item;
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffset(II)I

    move-result v18

    .line 9467
    .local v18, offset:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v13

    .line 9468
    .local v13, localState:Ljava/lang/Object;
    const/4 v7, 0x0

    .line 9469
    .local v7, dragLocalState:Landroid/widget/TextView$DragLocalState;
    move-object v0, v13

    instance-of v0, v0, Landroid/widget/TextView$DragLocalState;

    move/from16 v22, v0

    if-eqz v22, :cond_5b

    .line 9470
    move-object v0, v13

    check-cast v0, Landroid/widget/TextView$DragLocalState;

    move-object v7, v0

    .line 9472
    :cond_5b
    if-eqz v7, :cond_85

    move-object v0, v7

    iget-object v0, v0, Landroid/widget/TextView$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_85

    const/16 v22, 0x1

    move/from16 v6, v22

    .line 9475
    .local v6, dragDropIntoItself:Z
    :goto_6c
    if-eqz v6, :cond_8a

    .line 9476
    move-object v0, v7

    iget v0, v0, Landroid/widget/TextView$DragLocalState;->start:I

    move/from16 v22, v0

    move/from16 v0, v18

    move/from16 v1, v22

    if-lt v0, v1, :cond_8a

    move-object v0, v7

    iget v0, v0, Landroid/widget/TextView$DragLocalState;->end:I

    move/from16 v22, v0

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_8a

    .line 9513
    .end local p0
    .end local p1
    :cond_84
    :goto_84
    return-void

    .line 9472
    .end local v6           #dragDropIntoItself:Z
    .restart local p0
    .restart local p1
    :cond_85
    const/16 v22, 0x0

    move/from16 v6, v22

    goto :goto_6c

    .line 9482
    .restart local v6       #dragDropIntoItself:Z
    :cond_8a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v19

    .line 9483
    .local v19, originalLength:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v18

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v16

    .line 9484
    .local v16, minMax:J
    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v15

    .line 9485
    .local v15, min:I
    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v14

    .line 9487
    .local v14, max:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/text/Spannable;

    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 9488
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 p1, v0

    check-cast p1, Landroid/text/Editable;

    move-object/from16 v0, p1

    move v1, v15

    move v2, v14

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 9490
    if-eqz v6, :cond_84

    .line 9491
    iget v9, v7, Landroid/widget/TextView$DragLocalState;->start:I

    .line 9492
    .local v9, dragSourceStart:I
    iget v8, v7, Landroid/widget/TextView$DragLocalState;->end:I

    .line 9493
    .local v8, dragSourceEnd:I
    if-gt v14, v9, :cond_dd

    .line 9495
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    sub-int v21, v22, v19

    .line 9496
    .local v21, shift:I
    add-int v9, v9, v21

    .line 9497
    add-int v8, v8, v21

    .line 9501
    .end local v21           #shift:I
    :cond_dd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 p1, v0

    check-cast p1, Landroid/text/Editable;

    move-object/from16 v0, p1

    move v1, v9

    move v2, v8

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 9504
    if-eqz v9, :cond_102

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    sub-int v23, v9, v23

    invoke-interface/range {v22 .. v23}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v22

    if-eqz v22, :cond_84

    :cond_102
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    move v0, v9

    move/from16 v1, v22

    if-eq v0, v1, :cond_124

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v22

    if-eqz v22, :cond_84

    .line 9508
    :cond_124
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    move v0, v9

    move/from16 v1, v22

    if-ne v0, v1, :cond_14e

    const/16 v22, 0x1

    sub-int v22, v9, v22

    move/from16 v20, v22

    .line 9510
    .local v20, pos:I
    :goto_139
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/text/Editable;

    add-int/lit8 v22, v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto/16 :goto_84

    .end local v20           #pos:I
    .restart local p0
    :cond_14e
    move/from16 v20, v9

    .line 9508
    goto :goto_139
.end method

.method private static packRangeInLong(II)J
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 7829
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private paste(II)V
    .registers 13
    .parameter "min"
    .parameter "max"

    .prologue
    .line 8329
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "clipboard"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 8331
    .local v1, clipboard:Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 8332
    .local v0, clip:Landroid/content/ClipData;
    if-eqz v0, :cond_67

    .line 8333
    const/4 v2, 0x0

    .line 8334
    .local v2, didfirst:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_14
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v7

    if-ge v3, v7, :cond_60

    .line 8335
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 8336
    .local v6, paste:Ljava/lang/CharSequence;
    if-eqz v6, :cond_44

    .line 8337
    if-nez v2, :cond_47

    .line 8338
    invoke-direct {p0, p1, p2, v6}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v4

    .line 8339
    .local v4, minMax:J
    invoke-static {v4, v5}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result p1

    .line 8340
    invoke-static {v4, v5}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result p2

    .line 8341
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8342
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Editable;

    invoke-interface {v7, p1, p2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 8334
    .end local v4           #minMax:J
    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 8344
    :cond_47
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    const-string v9, "\n"

    invoke-interface {v7, v8, v9}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 8345
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    invoke-interface {v7, v8, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_44

    .line 8349
    .end local v6           #paste:Ljava/lang/CharSequence;
    :cond_60
    invoke-direct {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 8350
    const-wide/16 v7, 0x0

    sput-wide v7, Landroid/widget/TextView;->sLastCutOrCopyTime:J

    .line 8352
    .end local v2           #didfirst:Z
    .end local v3           #i:I
    :cond_67
    return-void
.end method

.method private prepareCursorControllers()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7399
    const/4 v3, 0x0

    .line 7401
    .local v3, windowSupportsHandles:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 7402
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_21

    .line 7403
    move-object v0, v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    move-object v2, v0

    .line 7404
    .local v2, windowParams:Landroid/view/WindowManager$LayoutParams;
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_20

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7cf

    if-le v4, v5, :cond_64

    :cond_20
    move v3, v7

    .line 7408
    .end local v2           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_21
    :goto_21
    if-eqz v3, :cond_66

    invoke-direct {p0}, Landroid/widget/TextView;->isCursorVisible()Z

    move-result v4

    if-eqz v4, :cond_66

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_66

    move v4, v7

    :goto_2e
    iput-boolean v4, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    .line 7409
    if-eqz v3, :cond_68

    invoke-direct {p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v4

    if-eqz v4, :cond_68

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_68

    move v4, v7

    :goto_3d
    iput-boolean v4, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    .line 7412
    iget-boolean v4, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-nez v4, :cond_51

    .line 7413
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 7414
    iget-object v4, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v4, :cond_51

    .line 7415
    iget-object v4, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v4}, Landroid/widget/TextView$InsertionPointCursorController;->onDetached()V

    .line 7416
    iput-object v8, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    .line 7420
    :cond_51
    iget-boolean v4, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    if-nez v4, :cond_63

    .line 7421
    invoke-direct {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 7422
    iget-object v4, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v4, :cond_63

    .line 7423
    iget-object v4, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v4}, Landroid/widget/TextView$SelectionModifierCursorController;->onDetached()V

    .line 7424
    iput-object v8, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    .line 7427
    :cond_63
    return-void

    .restart local v2       #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_64
    move v3, v6

    .line 7404
    goto :goto_21

    .end local v2           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_66
    move v4, v6

    .line 7408
    goto :goto_2e

    :cond_68
    move v4, v6

    .line 7409
    goto :goto_3d
.end method

.method private prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J
    .registers 12
    .parameter "min"
    .parameter "max"
    .parameter "paste"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0xa

    .line 8086
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_69

    .line 8087
    if-lez p1, :cond_3d

    .line 8088
    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    sub-int v5, p1, v7

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 8089
    .local v1, charBefore:C
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 8091
    .local v0, charAfter:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 8093
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 8094
    .local v3, originalLength:I
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Editable;

    sub-int v5, p1, v7

    invoke-interface {v4, v5, p1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 8097
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v3

    .line 8098
    .local v2, delta:I
    add-int/2addr p1, v2

    .line 8099
    add-int/2addr p2, v2

    .line 8112
    .end local v0           #charAfter:C
    .end local v1           #charBefore:C
    .end local v2           #delta:I
    .end local v3           #originalLength:I
    :cond_3d
    :goto_3d
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge p2, v4, :cond_69

    .line 8113
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 8114
    .restart local v1       #charBefore:C
    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 8116
    .restart local v0       #charAfter:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_98

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 8118
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Editable;

    add-int/lit8 v4, p2, 0x1

    invoke-interface {p0, p2, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 8127
    .end local v0           #charAfter:C
    .end local v1           #charBefore:C
    :cond_69
    :goto_69
    invoke-static {p1, p2}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4

    .line 8100
    .restart local v0       #charAfter:C
    .restart local v1       #charBefore:C
    .restart local p0
    :cond_6e
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_3d

    if-eq v1, v6, :cond_3d

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_3d

    if-eq v0, v6, :cond_3d

    .line 8103
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 8104
    .restart local v3       #originalLength:I
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Editable;

    const-string v5, " "

    invoke-interface {v4, p1, p1, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 8106
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v3

    .line 8107
    .restart local v2       #delta:I
    add-int/2addr p1, v2

    .line 8108
    add-int/2addr p2, v2

    goto :goto_3d

    .line 8119
    .end local v2           #delta:I
    .end local v3           #originalLength:I
    :cond_98
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_69

    if-eq v1, v6, :cond_69

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_69

    if-eq v0, v6, :cond_69

    .line 8122
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Editable;

    const-string v4, " "

    invoke-interface {p0, p2, p2, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_69
.end method

.method private registerForPreDraw()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 3875
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3877
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-nez v1, :cond_f

    .line 3878
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3879
    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    .line 3885
    :cond_e
    :goto_e
    return-void

    .line 3880
    :cond_f
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 3881
    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    goto :goto_e
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .registers 6
    .parameter "spannable"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 5164
    const-class v2, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 5165
    .local v1, spans:[Ljava/lang/Object;
    array-length v0, v1

    .line 5166
    .local v0, i:I
    :goto_7
    if-lez v0, :cond_11

    .line 5167
    add-int/lit8 v0, v0, -0x1

    .line 5168
    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_7

    .line 5170
    :cond_11
    return-void
.end method

.method private restartMarqueeIfNeeded()V
    .registers 3

    .prologue
    .line 3664
    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_10

    .line 3665
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    .line 3666
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 3668
    :cond_10
    return-void
.end method

.method private selectAll()V
    .registers 4

    .prologue
    .line 7841
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 7842
    return-void
.end method

.method private selectCurrentWord()V
    .registers 16

    .prologue
    const-wide/16 v13, 0x0

    const/4 v12, 0x0

    .line 7845
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v10

    if-nez v10, :cond_a

    .line 7886
    .end local p0
    :goto_9
    return-void

    .line 7849
    .restart local p0
    :cond_a
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 7853
    invoke-direct {p0}, Landroid/widget/TextView;->selectAll()V

    goto :goto_9

    .line 7857
    :cond_14
    invoke-direct {p0}, Landroid/widget/TextView;->getLastTouchOffsets()J

    move-result-wide v0

    .line 7858
    .local v0, lastTouchOffsets:J
    invoke-static {v0, v1}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v3

    .line 7859
    .local v3, minOffset:I
    invoke-static {v0, v1}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v2

    .line 7864
    .local v2, maxOffset:I
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spanned;

    const-class v11, Landroid/text/style/URLSpan;

    invoke-interface {v10, v3, v2, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/URLSpan;

    .line 7865
    .local v7, urlSpans:[Landroid/text/style/URLSpan;
    array-length v10, v7

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4a

    .line 7866
    aget-object v6, v7, v12

    .line 7867
    .local v6, url:Landroid/text/style/URLSpan;
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spanned;

    invoke-interface {v10, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 7868
    .local v5, selectionStart:I
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spanned;

    invoke-interface {v10, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 7885
    .end local v6           #url:Landroid/text/style/URLSpan;
    .local v4, selectionEnd:I
    :goto_42
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0, v5, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_9

    .line 7870
    .end local v4           #selectionEnd:I
    .end local v5           #selectionStart:I
    .restart local p0
    :cond_4a
    invoke-direct {p0, v3}, Landroid/widget/TextView;->getWordLimitsAt(I)J

    move-result-wide v8

    .line 7871
    .local v8, wordLimits:J
    cmp-long v10, v8, v13

    if-ltz v10, :cond_63

    .line 7872
    invoke-static {v8, v9}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v5

    .line 7877
    .restart local v5       #selectionStart:I
    :goto_56
    invoke-direct {p0, v2}, Landroid/widget/TextView;->getWordLimitsAt(I)J

    move-result-wide v8

    .line 7878
    cmp-long v10, v8, v13

    if-ltz v10, :cond_6b

    .line 7879
    invoke-static {v8, v9}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v4

    .restart local v4       #selectionEnd:I
    goto :goto_42

    .line 7874
    .end local v4           #selectionEnd:I
    .end local v5           #selectionStart:I
    :cond_63
    const/4 v10, 0x5

    sub-int v10, v3, v10

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #selectionStart:I
    goto :goto_56

    .line 7881
    :cond_6b
    add-int/lit8 v10, v2, 0x5

    iget-object v11, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    .restart local v4       #selectionEnd:I
    goto :goto_42
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6825
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_19

    .line 6826
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 6827
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6828
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 6829
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextWatcher;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 6828
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 6832
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_19
    return-void
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .registers 6
    .parameter "e"
    .parameter "filters"

    .prologue
    const/4 v2, 0x0

    .line 3693
    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    instance-of v1, v1, Landroid/text/InputFilter;

    if-eqz v1, :cond_1b

    .line 3694
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 3696
    .local v0, nf:[Landroid/text/InputFilter;
    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3697
    array-length v1, p2

    iget-object p0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .end local p0
    check-cast p0, Landroid/text/InputFilter;

    aput-object p0, v0, v1

    .line 3699
    invoke-interface {p1, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 3703
    .end local v0           #nf:[Landroid/text/InputFilter;
    :goto_1a
    return-void

    .line 3701
    .restart local p0
    :cond_1b
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1a
.end method

.method private setInputType(IZ)V
    .registers 11
    .parameter "type"
    .parameter "direct"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3139
    and-int/lit8 v2, p1, 0xf

    .line 3141
    .local v2, cls:I
    if-ne v2, v6, :cond_32

    .line 3142
    const v4, 0x8000

    and-int/2addr v4, p1

    if-eqz v4, :cond_1f

    move v0, v6

    .line 3144
    .local v0, autotext:Z
    :goto_d
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_21

    .line 3145
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 3153
    .local v1, cap:Landroid/text/method/TextKeyListener$Capitalize;
    :goto_13
    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    .line 3175
    .end local v0           #autotext:Z
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    .local v3, input:Landroid/text/method/KeyListener;
    :goto_17
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 3176
    if-eqz p2, :cond_6c

    iput-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 3180
    :goto_1e
    return-void

    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_1f
    move v0, v7

    .line 3142
    goto :goto_d

    .line 3146
    .restart local v0       #autotext:Z
    :cond_21
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_28

    .line 3147
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_13

    .line 3148
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_28
    and-int/lit16 v4, p1, 0x4000

    if-eqz v4, :cond_2f

    .line 3149
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_13

    .line 3151
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_2f
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_13

    .line 3154
    .end local v0           #autotext:Z
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_32
    const/4 v4, 0x2

    if-ne v2, v4, :cond_48

    .line 3155
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_44

    move v4, v6

    :goto_3a
    and-int/lit16 v5, p1, 0x2000

    if-eqz v5, :cond_46

    move v5, v6

    :goto_3f
    invoke-static {v4, v5}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_44
    move v4, v7

    goto :goto_3a

    :cond_46
    move v5, v7

    goto :goto_3f

    .line 3158
    :cond_48
    const/4 v4, 0x4

    if-ne v2, v4, :cond_5f

    .line 3159
    and-int/lit16 v4, p1, 0xff0

    sparse-switch v4, :sswitch_data_70

    .line 3167
    invoke-static {}, Landroid/text/method/DateTimeKeyListener;->getInstance()Landroid/text/method/DateTimeKeyListener;

    move-result-object v3

    .line 3168
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .line 3161
    .end local v3           #input:Landroid/text/method/KeyListener;
    :sswitch_55
    invoke-static {}, Landroid/text/method/DateKeyListener;->getInstance()Landroid/text/method/DateKeyListener;

    move-result-object v3

    .line 3162
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .line 3164
    .end local v3           #input:Landroid/text/method/KeyListener;
    :sswitch_5a
    invoke-static {}, Landroid/text/method/TimeKeyListener;->getInstance()Landroid/text/method/TimeKeyListener;

    move-result-object v3

    .line 3165
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .line 3170
    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_5f
    const/4 v4, 0x3

    if-ne v2, v4, :cond_67

    .line 3171
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .line 3173
    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_67
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .line 3178
    :cond_6c
    invoke-direct {p0, v3}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    goto :goto_1e

    .line 3159
    :sswitch_data_70
    .sparse-switch
        0x10 -> :sswitch_55
        0x20 -> :sswitch_5a
    .end sparse-switch
.end method

.method private setInputTypeSingleLine(Z)V
    .registers 4
    .parameter "singleLine"

    .prologue
    .line 6482
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 6483
    if-eqz p1, :cond_12

    .line 6484
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView;->mInputType:I

    .line 6489
    :cond_11
    :goto_11
    return-void

    .line 6486
    :cond_12
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_11
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .registers 4
    .parameter "input"

    .prologue
    .line 1212
    iput-object p1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1213
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_11

    .line 1214
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1216
    :cond_11
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 1217
    return-void
.end method

.method private setPrimaryClip(Landroid/content/ClipData;)V
    .registers 5
    .parameter "clip"

    .prologue
    .line 8355
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 8357
    .local v0, clipboard:Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 8358
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Landroid/widget/TextView;->sLastCutOrCopyTime:J

    .line 8359
    return-void
.end method

.method private setRawTextSize(F)V
    .registers 3
    .parameter "size"

    .prologue
    .line 1783
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1c

    .line 1784
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1786
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1c

    .line 1787
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 1788
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1789
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1792
    :cond_1c
    return-void
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .registers 29
    .parameter "text"
    .parameter "type"
    .parameter "notifyBefore"
    .parameter "oldlen"

    .prologue
    .line 2700
    if-nez p1, :cond_4

    .line 2701
    const-string p1, ""

    .line 2704
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    move v5, v0

    if-nez v5, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 2706
    :cond_15
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_38

    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v5, v0

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_38

    .line 2708
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 2709
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2712
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    move-object v0, v5

    array-length v0, v0

    move/from16 v16, v0

    .line 2713
    .local v16, n:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_42
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_64

    .line 2714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    aget-object v5, v5, v14

    const/4 v7, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sget-object v9, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p1

    invoke-interface/range {v5 .. v11}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v18

    .line 2716
    .local v18, out:Ljava/lang/CharSequence;
    if-eqz v18, :cond_61

    .line 2717
    move-object/from16 p1, v18

    .line 2713
    :cond_61
    add-int/lit8 v14, v14, 0x1

    goto :goto_42

    .line 2721
    .end local v18           #out:Ljava/lang/CharSequence;
    :cond_64
    if-eqz p3, :cond_8a

    .line 2722
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    if-eqz v5, :cond_184

    .line 2723
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result p4

    .line 2724
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move/from16 v3, p4

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 2730
    :cond_8a
    :goto_8a
    const/16 v17, 0x0

    .line 2732
    .local v17, needEditableForNotification:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_a0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_a0

    .line 2733
    const/16 v17, 0x1

    .line 2736
    :cond_a0
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-eq v0, v1, :cond_b0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v5, v0

    if-nez v5, :cond_b0

    if-eqz v17, :cond_197

    .line 2738
    :cond_b0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v21

    .line 2739
    .local v21, t:Landroid/text/Editable;
    move-object/from16 p1, v21

    .line 2740
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 2741
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v15

    .line 2742
    .local v15, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v15, :cond_d7

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2749
    .end local v15           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v21           #t:Landroid/text/Editable;
    :cond_d7
    :goto_d7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move v5, v0

    if-eqz v5, :cond_136

    .line 2752
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-eq v0, v1, :cond_ec

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spannable;

    move v5, v0

    if-eqz v5, :cond_1c0

    .line 2753
    :cond_ec
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 v19, v0

    .line 2758
    .local v19, s2:Landroid/text/Spannable;
    :goto_f2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move v5, v0

    move-object/from16 v0, v19

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v5

    if-eqz v5, :cond_136

    .line 2759
    move-object/from16 p1, v19

    .line 2760
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-ne v0, v1, :cond_1ce

    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 p2, v5

    .line 2767
    :goto_10d
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2771
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/EditText;

    move v5, v0

    if-nez v5, :cond_121

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move v5, v0

    if-eqz v5, :cond_1d4

    :cond_121
    const/4 v5, 0x1

    move v13, v5

    .line 2772
    .local v13, hasTextSelection:Z
    :goto_123
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mLinksClickable:Z

    move v5, v0

    if-eqz v5, :cond_136

    if-nez v13, :cond_136

    .line 2773
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2778
    .end local v13           #hasTextSelection:Z
    .end local v19           #s2:Landroid/text/Spannable;
    :cond_136
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 2779
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2781
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    if-nez v5, :cond_1d8

    .line 2782
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 2786
    :goto_14f
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v22

    .line 2788
    .local v22, textLength:I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spannable;

    move v5, v0

    if-eqz v5, :cond_268

    .line 2789
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 v20, v0

    .line 2793
    .local v20, sp:Landroid/text/Spannable;
    const/4 v5, 0x0

    invoke-interface/range {v20 .. v20}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/widget/TextView$ChangeWatcher;

    move-object/from16 v0, v20

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Landroid/widget/TextView$ChangeWatcher;

    .line 2794
    .local v23, watchers:[Landroid/widget/TextView$ChangeWatcher;
    move-object/from16 v0, v23

    array-length v0, v0

    move v12, v0

    .line 2795
    .local v12, count:I
    const/4 v14, 0x0

    :goto_177
    if-ge v14, v12, :cond_1ed

    .line 2796
    aget-object v5, v23, v14

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2795
    add-int/lit8 v14, v14, 0x1

    goto :goto_177

    .line 2726
    .end local v12           #count:I
    .end local v17           #needEditableForNotification:Z
    .end local v20           #sp:Landroid/text/Spannable;
    .end local v22           #textLength:I
    .end local v23           #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_184
    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto/16 :goto_8a

    .line 2743
    .restart local v17       #needEditableForNotification:Z
    :cond_197
    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-eq v0, v1, :cond_1a5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v5, v0

    if-eqz v5, :cond_1b3

    .line 2744
    :cond_1a5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    goto/16 :goto_d7

    .line 2745
    :cond_1b3
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView$CharWrapper;

    move v5, v0

    if-nez v5, :cond_d7

    .line 2746
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto/16 :goto_d7

    .line 2755
    :cond_1c0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v19

    .restart local v19       #s2:Landroid/text/Spannable;
    goto/16 :goto_f2

    .line 2760
    :cond_1ce
    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 p2, v5

    goto/16 :goto_10d

    .line 2771
    :cond_1d4
    const/4 v5, 0x0

    move v13, v5

    goto/16 :goto_123

    .line 2784
    .end local v19           #s2:Landroid/text/Spannable;
    :cond_1d8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto/16 :goto_14f

    .line 2798
    .restart local v12       #count:I
    .restart local v20       #sp:Landroid/text/Spannable;
    .restart local v22       #textLength:I
    .restart local v23       #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_1ed
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    move-object v5, v0

    if-nez v5, :cond_203

    .line 2799
    new-instance v5, Landroid/widget/TextView$ChangeWatcher;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    .line 2801
    :cond_203
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    move-object v5, v0

    const/4 v6, 0x0

    const v7, 0x640012

    move-object/from16 v0, v20

    move-object v1, v5

    move v2, v6

    move/from16 v3, v22

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2804
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v5, v0

    if-eqz v5, :cond_22f

    .line 2805
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x12

    move-object/from16 v0, v20

    move-object v1, v5

    move v2, v6

    move/from16 v3, v22

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2808
    :cond_22f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    if-eqz v5, :cond_248

    .line 2809
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x12

    move-object/from16 v0, v20

    move-object v1, v5

    move v2, v6

    move/from16 v3, v22

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2813
    :cond_248
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v5, v0

    if-eqz v5, :cond_268

    .line 2814
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v5, v0

    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 p2, v0

    .end local p2
    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 2821
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 2825
    .end local v12           #count:I
    .end local v20           #sp:Landroid/text/Spannable;
    .end local v23           #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_268
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v5, v0

    if-eqz v5, :cond_272

    .line 2826
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 2829
    :cond_272
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, p4

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 2830
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, p4

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 2832
    if-eqz v17, :cond_293

    .line 2833
    check-cast p1, Landroid/text/Editable;

    .end local p1
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    .line 2837
    :cond_293
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 2838
    return-void
.end method

.method private setTypefaceByIndex(II)V
    .registers 4
    .parameter "typefaceIndex"
    .parameter "styleIndex"

    .prologue
    .line 1033
    const/4 v0, 0x0

    .line 1034
    .local v0, tf:Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_12

    .line 1048
    :goto_4
    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1049
    return-void

    .line 1036
    :pswitch_8
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 1037
    goto :goto_4

    .line 1040
    :pswitch_b
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 1041
    goto :goto_4

    .line 1044
    :pswitch_e
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_4

    .line 1034
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4701
    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v1, :cond_8

    move v1, v3

    .line 4717
    :goto_7
    return v1

    .line 4705
    :cond_8
    iget-boolean v1, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v1, :cond_e

    move v1, v2

    .line 4706
    goto :goto_7

    .line 4709
    :cond_e
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v2, :cond_22

    .line 4710
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v0, v1, 0xff0

    .line 4711
    .local v0, variation:I
    const/16 v1, 0x20

    if-eq v0, v1, :cond_20

    const/16 v1, 0x30

    if-ne v0, v1, :cond_22

    :cond_20
    move v1, v2

    .line 4713
    goto :goto_7

    .end local v0           #variation:I
    :cond_22
    move v1, v3

    .line 4717
    goto :goto_7
.end method

.method private shouldAdvanceFocusOnTab()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 4725
    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_1d

    iget-boolean v1, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v1, :cond_1d

    .line 4726
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v2, :cond_1d

    .line 4727
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v0, v1, 0xff0

    .line 4728
    .local v0, variation:I
    const/high16 v1, 0x4

    if-eq v0, v1, :cond_1b

    const/high16 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 4730
    :cond_1b
    const/4 v1, 0x0

    .line 4734
    .end local v0           #variation:I
    :goto_1c
    return v1

    :cond_1d
    move v1, v2

    goto :goto_1c
.end method

.method private shouldBlink()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 7511
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    .line 7519
    :goto_8
    return v2

    .line 7513
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 7514
    .local v1, start:I
    if-gez v1, :cond_11

    move v2, v3

    goto :goto_8

    .line 7516
    :cond_11
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 7517
    .local v0, end:I
    if-gez v0, :cond_19

    move v2, v3

    goto :goto_8

    .line 7519
    :cond_19
    if-ne v1, v0, :cond_1d

    const/4 v2, 0x1

    goto :goto_8

    :cond_1d
    move v2, v3

    goto :goto_8
.end method

.method private showError()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f00

    .line 3488
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_c

    .line 3489
    iput-boolean v8, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 3512
    :goto_b
    return-void

    .line 3493
    :cond_c
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-nez v4, :cond_48

    .line 3494
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 3495
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x1090098

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3498
    .local v0, err:Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 3499
    .local v2, scale:F
    new-instance v4, Landroid/widget/TextView$ErrorPopup;

    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v5, v5

    const/high16 v6, 0x4248

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/TextView$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    .line 3500
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView$ErrorPopup;->setFocusable(Z)V

    .line 3503
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v4, v8}, Landroid/widget/TextView$ErrorPopup;->setInputMethodMode(I)V

    .line 3506
    .end local v0           #err:Landroid/widget/TextView;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #scale:F
    :cond_48
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/TextView$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3507
    .local v3, tv:Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v5, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5, v3}, Landroid/widget/TextView;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 3508
    iget-object v4, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3510
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorX()I

    move-result v5

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorY()I

    move-result v6

    invoke-virtual {v4, p0, v5, v6}, Landroid/widget/TextView$ErrorPopup;->showAsDropDown(Landroid/view/View;II)V

    .line 3511
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v5, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/TextView$ErrorPopup;->isAboveAnchor()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView$ErrorPopup;->fixDirection(Z)V

    goto :goto_b
.end method

.method private startMarquee()V
    .registers 3

    .prologue
    .line 6593
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_5

    .line 6605
    :cond_4
    :goto_4
    return-void

    .line 6595
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->compressText(F)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6599
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_26
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_32
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6602
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v0, :cond_4a

    new-instance v0, Landroid/widget/TextView$Marquee;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 6603
    :cond_4a
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Marquee;->start(I)V

    goto :goto_4
.end method

.method private startSelectionActionMode()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 8290
    iget-object v3, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_8

    move v3, v5

    .line 8315
    :goto_7
    return v3

    .line 8295
    :cond_8
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 8296
    :cond_14
    const-string v3, "TextView"

    const-string v4, "TextView does not support text selection. Action mode cancelled."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 8297
    goto :goto_7

    .line 8300
    :cond_1d
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-nez v3, :cond_26

    .line 8302
    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()V

    .line 8305
    :cond_26
    new-instance v0, Landroid/widget/TextView$SelectionActionModeCallback;

    invoke-direct {v0, p0, v4}, Landroid/widget/TextView$SelectionActionModeCallback;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    .line 8306
    .local v0, actionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    .line 8307
    iget-object v3, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_48

    const/4 v3, 0x1

    move v2, v3

    .line 8309
    .local v2, selectionStarted:Z
    :goto_37
    if-eqz v2, :cond_46

    iget-boolean v3, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v3, :cond_46

    .line 8311
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 8312
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_46

    invoke-virtual {v1, p0, v5, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_46
    move v3, v2

    .line 8315
    goto :goto_7

    .end local v2           #selectionStarted:Z
    :cond_48
    move v2, v5

    .line 8307
    goto :goto_37
.end method

.method private startStopMarquee(Z)V
    .registers 4
    .parameter "start"

    .prologue
    .line 6614
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_b

    .line 6615
    if-eqz p1, :cond_c

    .line 6616
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 6621
    :cond_b
    :goto_b
    return-void

    .line 6618
    :cond_c
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_b
.end method

.method private stopMarquee()V
    .registers 2

    .prologue
    .line 6608
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-nez v0, :cond_11

    .line 6609
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->stop()V

    .line 6611
    :cond_11
    return-void
.end method

.method private stopSelectionActionMode()V
    .registers 2

    .prologue
    .line 8319
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    .line 8321
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 8323
    :cond_9
    return-void
.end method

.method private textCanBeSelected()Z
    .registers 2

    .prologue
    .line 7710
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    invoke-interface {v0}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private touchPositionIsInSelection()Z
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 8228
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 8229
    .local v4, selectionStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 8231
    .local v3, selectionEnd:I
    if-ne v4, v3, :cond_d

    move v6, v7

    .line 8246
    :goto_c
    return v6

    .line 8235
    :cond_d
    if-le v4, v3, :cond_19

    .line 8236
    move v5, v4

    .line 8237
    .local v5, tmp:I
    move v4, v3

    .line 8238
    move v3, v5

    .line 8239
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 8242
    .end local v5           #tmp:I
    :cond_19
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v2

    .line 8243
    .local v2, selectionController:Landroid/widget/TextView$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 8244
    .local v1, minOffset:I
    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 8246
    .local v0, maxOffset:I
    if-lt v1, v4, :cond_2b

    if-ge v0, v3, :cond_2b

    const/4 v6, 0x1

    goto :goto_c

    :cond_2b
    move v6, v7

    goto :goto_c
.end method

.method private updateCursorPosition(IIIF)V
    .registers 11
    .parameter "cursorIndex"
    .parameter "top"
    .parameter "bottom"
    .parameter "horizontal"

    .prologue
    const/high16 v5, 0x3f00

    .line 4530
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    if-nez v2, :cond_18

    .line 4531
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, p1

    .line 4533
    :cond_18
    iget-object v2, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    if-nez v2, :cond_23

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 4535
    :cond_23
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 4536
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 4537
    .local v1, width:I
    sub-float v2, p4, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 4538
    float-to-int v2, p4

    iget-object v3, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 4539
    .local v0, left:I
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, p2, v3

    add-int v4, v0, v1

    iget-object v5, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, p3

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4541
    return-void
.end method

.method private updateCursorsPositions()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 4504
    iget v5, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v5, :cond_a

    .line 4505
    iput v8, p0, Landroid/widget/TextView;->mCursorCount:I

    .line 4527
    :cond_9
    :goto_9
    return-void

    .line 4509
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 4510
    .local v3, offset:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 4511
    .local v1, line:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 4512
    .local v4, top:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 4514
    .local v0, bottom:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v5

    if-eqz v5, :cond_4d

    move v5, v7

    :goto_2b
    iput v5, p0, Landroid/widget/TextView;->mCursorCount:I

    .line 4516
    move v2, v0

    .line 4517
    .local v2, middle:I
    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ne v5, v7, :cond_36

    .line 4519
    add-int v5, v4, v0

    shr-int/lit8 v2, v5, 0x1

    .line 4522
    :cond_36
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    invoke-direct {p0, v8, v4, v2, v5}, Landroid/widget/TextView;->updateCursorPosition(IIIF)V

    .line 4524
    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ne v5, v7, :cond_9

    .line 4525
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v5

    invoke-direct {p0, v9, v2, v0, v5}, Landroid/widget/TextView;->updateCursorPosition(IIIF)V

    goto :goto_9

    .end local v2           #middle:I
    :cond_4d
    move v5, v9

    .line 4514
    goto :goto_2b
.end method

.method private updateSelectedRegion()V
    .registers 2

    .prologue
    .line 8222
    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()V

    .line 8224
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    .line 8225
    return-void
.end method

.method private updateTextColors()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2378
    const/4 v1, 0x0

    .line 2379
    .local v1, inval:Z
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2380
    .local v0, color:I
    iget v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    if-eq v0, v2, :cond_13

    .line 2381
    iput v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    .line 2382
    const/4 v1, 0x1

    .line 2384
    :cond_13
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2c

    .line 2385
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2386
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->linkColor:I

    if-eq v0, v2, :cond_2c

    .line 2387
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iput v0, v2, Landroid/text/TextPaint;->linkColor:I

    .line 2388
    const/4 v1, 0x1

    .line 2391
    :cond_2c
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_49

    .line 2392
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2393
    iget v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    if-eq v0, v2, :cond_49

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_49

    .line 2394
    iput v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 2395
    const/4 v1, 0x1

    .line 2398
    :cond_49
    if-eqz v1, :cond_4e

    .line 2399
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2401
    :cond_4e
    return-void
.end method

.method private viewportToContentHorizontalOffset()I
    .registers 3

    .prologue
    .line 6390
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private viewportToContentVerticalOffset()I
    .registers 4

    .prologue
    .line 6394
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    sub-int v0, v1, v2

    .line 6395
    .local v0, offset:I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_16

    .line 6396
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 6398
    :cond_16
    return v0
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 3
    .parameter "watcher"

    .prologue
    .line 6801
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 6802
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 6805
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6806
    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 2361
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    .line 2362
    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .registers 6
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2370
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_d

    .line 2371
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2374
    :cond_d
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Editable;

    invoke-interface {p0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 2375
    return-void
.end method

.method public beginBatchEdit()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 5352
    iput-boolean v5, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    .line 5353
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 5354
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_26

    .line 5355
    iget v2, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 5356
    .local v1, nesting:I
    if-ne v1, v5, :cond_26

    .line 5357
    iput-boolean v3, v0, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    .line 5358
    iput v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    .line 5359
    iget-boolean v2, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-eqz v2, :cond_27

    .line 5362
    iput v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 5363
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 5369
    :goto_23
    invoke-virtual {p0}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 5372
    .end local v1           #nesting:I
    :cond_26
    return-void

    .line 5365
    .restart local v1       #nesting:I
    :cond_27
    iput v4, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 5366
    iput v4, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 5367
    iput-boolean v3, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_23
.end method

.method public bringPointIntoView(I)Z
    .registers 31
    .parameter "offset"

    .prologue
    .line 6139
    const/4 v6, 0x0

    .line 6141
    .local v6, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v17

    .line 6144
    .local v17, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 6145
    .local v24, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v20

    .line 6146
    .local v20, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    add-int/lit8 v26, v17, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    .line 6148
    .local v5, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/util/FloatMath;->floor(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v16, v0

    .line 6149
    .local v16, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/util/FloatMath;->ceil(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v19, v0

    .line 6150
    .local v19, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/text/Layout;->getHeight()I

    move-result v15

    .line 6154
    .local v15, ht:I
    sget-object v25, Landroid/widget/TextView$3;->$SwitchMap$android$text$Layout$Alignment:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v26

    aget v25, v25, v26

    packed-switch v25, :pswitch_data_29e

    .line 6164
    const/4 v11, 0x0

    .line 6167
    .local v11, grav:I
    :goto_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v25

    mul-int v11, v11, v25

    .line 6169
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v26

    sub-int v14, v25, v26

    .line 6170
    .local v14, hspace:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v26

    sub-int v23, v25, v26

    .line 6172
    .local v23, vspace:I
    sub-int v25, v5, v20

    div-int/lit8 v13, v25, 0x2

    .line 6173
    .local v13, hslack:I
    move/from16 v22, v13

    .line 6175
    .local v22, vslack:I
    div-int/lit8 v25, v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v25

    if-le v0, v1, :cond_e2

    .line 6176
    div-int/lit8 v22, v23, 0x4

    .line 6177
    :cond_e2
    div-int/lit8 v25, v14, 0x4

    move v0, v13

    move/from16 v1, v25

    if-le v0, v1, :cond_eb

    .line 6178
    div-int/lit8 v13, v14, 0x4

    .line 6180
    :cond_eb
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move v12, v0

    .line 6181
    .local v12, hs:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v21, v0

    .line 6183
    .local v21, vs:I
    sub-int v25, v20, v21

    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_100

    .line 6184
    sub-int v21, v20, v22

    .line 6185
    :cond_100
    sub-int v25, v5, v21

    sub-int v26, v23, v22

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_10e

    .line 6186
    sub-int v25, v23, v22

    sub-int v21, v5, v25

    .line 6187
    :cond_10e
    sub-int v25, v15, v21

    move/from16 v0, v25

    move/from16 v1, v23

    if-ge v0, v1, :cond_118

    .line 6188
    sub-int v21, v15, v23

    .line 6189
    :cond_118
    const/16 v25, 0x0

    sub-int v25, v25, v21

    if-lez v25, :cond_120

    .line 6190
    const/16 v21, 0x0

    .line 6192
    :cond_120
    if-eqz v11, :cond_139

    .line 6193
    sub-int v25, v24, v12

    move/from16 v0, v25

    move v1, v13

    if-ge v0, v1, :cond_12b

    .line 6194
    sub-int v12, v24, v13

    .line 6196
    :cond_12b
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_139

    .line 6197
    sub-int v25, v14, v13

    sub-int v12, v24, v25

    .line 6201
    :cond_139
    if-gez v11, :cond_1b8

    .line 6202
    sub-int v25, v16, v12

    if-lez v25, :cond_141

    .line 6203
    move/from16 v12, v16

    .line 6204
    :cond_141
    sub-int v25, v19, v12

    move/from16 v0, v25

    move v1, v14

    if-ge v0, v1, :cond_14a

    .line 6205
    sub-int v12, v19, v14

    .line 6252
    :cond_14a
    :goto_14a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v25, v0

    move v0, v12

    move/from16 v1, v25

    if-ne v0, v1, :cond_161

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_172

    .line 6253
    :cond_161
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    if-nez v25, :cond_221

    .line 6254
    move-object/from16 v0, p0

    move v1, v12

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 6275
    :goto_171
    const/4 v6, 0x1

    .line 6278
    :cond_172
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v25

    if-eqz v25, :cond_1b1

    .line 6283
    new-instance v18, Landroid/graphics/Rect;

    add-int/lit8 v25, v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6284
    .local v18, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    .line 6285
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 6287
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v25

    if-eqz v25, :cond_1b1

    .line 6288
    const/4 v6, 0x1

    .line 6292
    .end local v18           #r:Landroid/graphics/Rect;
    :cond_1b1
    return v6

    .line 6156
    .end local v11           #grav:I
    .end local v12           #hs:I
    .end local v13           #hslack:I
    .end local v14           #hspace:I
    .end local v21           #vs:I
    .end local v22           #vslack:I
    .end local v23           #vspace:I
    :pswitch_1b2
    const/4 v11, 0x1

    .line 6157
    .restart local v11       #grav:I
    goto/16 :goto_8e

    .line 6160
    .end local v11           #grav:I
    :pswitch_1b5
    const/4 v11, -0x1

    .line 6161
    .restart local v11       #grav:I
    goto/16 :goto_8e

    .line 6206
    .restart local v12       #hs:I
    .restart local v13       #hslack:I
    .restart local v14       #hspace:I
    .restart local v21       #vs:I
    .restart local v22       #vslack:I
    .restart local v23       #vspace:I
    :cond_1b8
    if-lez v11, :cond_1ca

    .line 6207
    sub-int v25, v19, v12

    move/from16 v0, v25

    move v1, v14

    if-ge v0, v1, :cond_1c3

    .line 6208
    sub-int v12, v19, v14

    .line 6209
    :cond_1c3
    sub-int v25, v16, v12

    if-lez v25, :cond_14a

    .line 6210
    move/from16 v12, v16

    goto :goto_14a

    .line 6212
    :cond_1ca
    sub-int v25, v19, v16

    move/from16 v0, v25

    move v1, v14

    if-gt v0, v1, :cond_1db

    .line 6216
    sub-int v25, v19, v16

    sub-int v25, v14, v25

    div-int/lit8 v25, v25, 0x2

    sub-int v12, v16, v25

    goto/16 :goto_14a

    .line 6217
    :cond_1db
    sub-int v25, v19, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1e7

    .line 6222
    sub-int v12, v19, v14

    goto/16 :goto_14a

    .line 6223
    :cond_1e7
    add-int v25, v16, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1f3

    .line 6228
    move/from16 v12, v16

    goto/16 :goto_14a

    .line 6229
    :cond_1f3
    move/from16 v0, v16

    move v1, v12

    if-le v0, v1, :cond_1fc

    .line 6233
    move/from16 v12, v16

    goto/16 :goto_14a

    .line 6234
    :cond_1fc
    add-int v25, v12, v14

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_208

    .line 6238
    sub-int v12, v19, v14

    goto/16 :goto_14a

    .line 6243
    :cond_208
    sub-int v25, v24, v12

    move/from16 v0, v25

    move v1, v13

    if-ge v0, v1, :cond_211

    .line 6244
    sub-int v12, v24, v13

    .line 6246
    :cond_211
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_14a

    .line 6247
    sub-int v25, v14, v13

    sub-int v12, v24, v25

    goto/16 :goto_14a

    .line 6256
    :cond_221
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mLastScroll:J

    move-wide/from16 v27, v0

    sub-long v7, v25, v27

    .line 6257
    .local v7, duration:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v25, v0

    sub-int v9, v12, v25

    .line 6258
    .local v9, dx:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v25, v0

    sub-int v10, v21, v25

    .line 6260
    .local v10, dy:I
    const-wide/16 v25, 0xfa

    cmp-long v25, v7, v25

    if-lez v25, :cond_280

    .line 6261
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 6262
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->getDuration()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->awakenScrollBars(I)Z

    .line 6263
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    .line 6272
    :goto_274
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mLastScroll:J

    goto/16 :goto_171

    .line 6265
    :cond_280
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->isFinished()Z

    move-result v25

    if-nez v25, :cond_295

    .line 6266
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->abortAnimation()V

    .line 6269
    :cond_295
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->scrollBy(II)V

    goto :goto_274

    .line 6154
    nop

    :pswitch_data_29e
    .packed-switch 0x1
        :pswitch_1b2
        :pswitch_1b5
    .end packed-switch
.end method

.method public cancelLongPress()V
    .registers 2

    .prologue
    .line 7449
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    .line 7450
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mIgnoreActionUpEvent:Z

    .line 7451
    return-void
.end method

.method public clearComposingText()V
    .registers 2

    .prologue
    .line 7270
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_d

    .line 7271
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 7273
    :cond_d
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .registers 3

    .prologue
    .line 7591
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1f

    .line 7592
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-int v0, v0

    .line 7596
    :goto_17
    return v0

    .line 7592
    :cond_18
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    goto :goto_17

    .line 7596
    :cond_1f
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    goto :goto_17
.end method

.method public computeScroll()V
    .registers 2

    .prologue
    .line 6359
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_22

    .line 6360
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 6361
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollX:I

    .line 6362
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollY:I

    .line 6363
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateParentCaches()V

    .line 6364
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    .line 6367
    :cond_22
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 3

    .prologue
    .line 7609
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    .prologue
    .line 7601
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_b

    .line 7602
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 7604
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_a
.end method

.method public debug(I)V
    .registers 5
    .parameter "depth"

    .prologue
    .line 6403
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 6405
    invoke-static {p1}, Landroid/widget/TextView;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 6406
    .local v0, output:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "frame={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} scroll={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6410
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_be

    .line 6412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6413
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_b8

    .line 6414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mLayout width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6420
    :cond_b8
    :goto_b8
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6421
    return-void

    .line 6418
    :cond_be
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mText=NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b8
.end method

.method public didTouchFocusSelect()Z
    .registers 2

    .prologue
    .line 7444
    iget-boolean v0, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    return v0
.end method

.method public dispatchFinishTemporaryDetach()V
    .registers 2

    .prologue
    .line 7074
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 7075
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 7076
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 7077
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 7905
    invoke-virtual {p0}, Landroid/widget/TextView;->isShown()Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v4

    .line 7925
    :goto_8
    return v2

    .line 7909
    :cond_9
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 7911
    .local v0, isPassword:Z
    if-nez v0, :cond_3a

    .line 7912
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7913
    .local v1, text:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 7914
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7916
    :cond_1d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 7917
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_31

    .line 7918
    const/16 v2, 0x1f5

    invoke-interface {v1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 7920
    :cond_31
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_38
    :goto_38
    move v2, v4

    .line 7925
    goto :goto_8

    .line 7923
    :cond_3a
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    goto :goto_38
.end method

.method protected drawableStateChanged()V
    .registers 4

    .prologue
    .line 2405
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2406
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_27

    :cond_f
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_27

    :cond_1b
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2409
    :cond_27
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2412
    :cond_2a
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2413
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_76

    .line 2414
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    .line 2415
    .local v1, state:[I
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_43

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2416
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2418
    :cond_43
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_54

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 2419
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2421
    :cond_54
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_65

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 2422
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2424
    :cond_65
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_76

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 2425
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2428
    .end local v1           #state:[I
    :cond_76
    return-void
.end method

.method public endBatchEdit()V
    .registers 5

    .prologue
    .line 5375
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    .line 5376
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 5377
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_13

    .line 5378
    iget v2, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    const/4 v3, 0x1

    sub-int v1, v2, v3

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 5379
    .local v1, nesting:I
    if-nez v1, :cond_13

    .line 5380
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V

    .line 5383
    .end local v1           #nesting:I
    :cond_13
    return-void
.end method

.method ensureEndedBatchEdit()V
    .registers 3

    .prologue
    .line 5386
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 5387
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_e

    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_e

    .line 5388
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 5389
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V

    .line 5391
    :cond_e
    return-void
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .registers 9
    .parameter "request"
    .parameter "outText"

    .prologue
    const/4 v2, -0x1

    .line 5043
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .registers 16
    .parameter "request"
    .parameter "partialStartOffset"
    .parameter "partialEndOffset"
    .parameter "delta"
    .parameter "outText"

    .prologue
    const/4 v9, 0x0

    .line 5053
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 5054
    .local v2, content:Ljava/lang/CharSequence;
    if-eqz v2, :cond_99

    .line 5055
    const/4 v7, -0x2

    if-eq p2, v7, :cond_90

    .line 5056
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5057
    .local v1, N:I
    if-gez p2, :cond_4d

    .line 5058
    const/4 v7, -0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 5059
    const/4 p2, 0x0

    .line 5060
    move p3, v1

    .line 5093
    :cond_15
    :goto_15
    iget v7, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_89

    .line 5094
    invoke-interface {v2, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 5105
    .end local v1           #N:I
    :goto_21
    iput v9, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 5106
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/16 v8, 0x800

    invoke-static {v7, v8}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v7

    if-eqz v7, :cond_33

    .line 5107
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 5109
    :cond_33
    iget-boolean v7, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v7, :cond_3d

    .line 5110
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 5112
    :cond_3d
    iput v9, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 5113
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 5114
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 5115
    const/4 v7, 0x1

    .line 5117
    :goto_4c
    return v7

    .line 5064
    .restart local v1       #N:I
    :cond_4d
    add-int/2addr p3, p4

    .line 5066
    instance-of v7, v2, Landroid/text/Spanned;

    if-eqz v7, :cond_74

    .line 5067
    move-object v0, v2

    check-cast v0, Landroid/text/Spanned;

    move-object v5, v0

    .line 5068
    .local v5, spanned:Landroid/text/Spanned;
    const-class v7, Landroid/text/ParcelableSpan;

    invoke-interface {v5, p2, p3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .line 5070
    .local v6, spans:[Ljava/lang/Object;
    array-length v3, v6

    .line 5071
    .local v3, i:I
    :cond_5d
    :goto_5d
    if-lez v3, :cond_74

    .line 5072
    add-int/lit8 v3, v3, -0x1

    .line 5073
    aget-object v7, v6, v3

    invoke-interface {v5, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 5074
    .local v4, j:I
    if-ge v4, p2, :cond_6a

    move p2, v4

    .line 5075
    :cond_6a
    aget-object v7, v6, v3

    invoke-interface {v5, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 5076
    if-le v4, p3, :cond_5d

    move p3, v4

    goto :goto_5d

    .line 5079
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v5           #spanned:Landroid/text/Spanned;
    .end local v6           #spans:[Ljava/lang/Object;
    :cond_74
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 5080
    sub-int v7, p3, p4

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 5082
    if-le p2, v1, :cond_81

    .line 5083
    move p2, v1

    .line 5087
    :cond_7d
    :goto_7d
    if-le p3, v1, :cond_85

    .line 5088
    move p3, v1

    goto :goto_15

    .line 5084
    :cond_81
    if-gez p2, :cond_7d

    .line 5085
    const/4 p2, 0x0

    goto :goto_7d

    .line 5089
    :cond_85
    if-gez p3, :cond_15

    .line 5090
    const/4 p3, 0x0

    goto :goto_15

    .line 5097
    :cond_89
    invoke-static {v2, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_21

    .line 5101
    .end local v1           #N:I
    :cond_90
    iput v9, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 5102
    iput v9, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 5103
    const-string v7, ""

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_21

    :cond_99
    move v7, v9

    .line 5117
    goto :goto_4c
.end method

.method finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V
    .registers 3
    .parameter "ims"

    .prologue
    .line 5394
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 5396
    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_b

    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_12

    .line 5397
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 5398
    invoke-virtual {p0}, Landroid/widget/TextView;->reportExtractedText()Z

    .line 5403
    :cond_11
    :goto_11
    return-void

    .line 5399
    :cond_12
    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_11

    .line 5401
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_11
.end method

.method public final getAutoLinkMask()I
    .registers 2

    .prologue
    .line 1682
    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return v0
.end method

.method public getBaseline()I
    .registers 5

    .prologue
    .line 4630
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_9

    .line 4631
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 4639
    :goto_8
    return v1

    .line 4634
    :cond_9
    const/4 v0, 0x0

    .line 4635
    .local v0, voffset:I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_17

    .line 4636
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    .line 4639
    :cond_17
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_8
.end method

.method protected getBottomPaddingOffset()I
    .registers 4

    .prologue
    .line 4025
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getCompoundDrawablePadding()I
    .registers 3

    .prologue
    .line 1656
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1657
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_7

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :goto_6
    return v1

    :cond_7
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1619
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1620
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_1d

    .line 1621
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    .line 1625
    :goto_1c
    return-object v1

    :cond_1d
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    aput-object v2, v1, v5

    aput-object v2, v1, v6

    goto :goto_1c
.end method

.method public getCompoundPaddingBottom()I
    .registers 4

    .prologue
    .line 1313
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1314
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_b

    .line 1315
    :cond_8
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    .line 1317
    :goto_a
    return v1

    :cond_b
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    add-int/2addr v1, v2

    goto :goto_a
.end method

.method public getCompoundPaddingLeft()I
    .registers 4

    .prologue
    .line 1326
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1327
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_b

    .line 1328
    :cond_8
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    .line 1330
    :goto_a
    return v1

    :cond_b
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    add-int/2addr v1, v2

    goto :goto_a
.end method

.method public getCompoundPaddingRight()I
    .registers 4

    .prologue
    .line 1339
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1340
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_b

    .line 1341
    :cond_8
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    .line 1343
    :goto_a
    return v1

    :cond_b
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    add-int/2addr v1, v2

    goto :goto_a
.end method

.method public getCompoundPaddingTop()I
    .registers 4

    .prologue
    .line 1300
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1301
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_b

    .line 1302
    :cond_8
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    .line 1304
    :goto_a
    return v1

    :cond_b
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    add-int/2addr v1, v2

    goto :goto_a
.end method

.method public final getCurrentHintTextColor()I
    .registers 2

    .prologue
    .line 2023
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    goto :goto_6
.end method

.method public final getCurrentTextColor()I
    .registers 2

    .prologue
    .line 1892
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    return v0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .registers 2

    .prologue
    .line 8282
    iget-object v0, p0, Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-object v0
.end method

.method protected getDefaultEditable()Z
    .registers 2

    .prologue
    .line 1102
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .registers 2

    .prologue
    .line 1109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .registers 2

    .prologue
    .line 1139
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_c

    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Editable;

    move-object v0, p0

    :goto_b
    return-object v0

    .restart local p0
    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 6546
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 3427
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtendedPaddingBottom()I
    .registers 8

    .prologue
    .line 1386
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    .line 1387
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    .line 1409
    :goto_9
    return v5

    .line 1390
    :cond_a
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_19

    .line 1391
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    goto :goto_9

    .line 1394
    :cond_19
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 1395
    .local v3, top:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 1396
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 1397
    .local v4, viewht:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 1399
    .local v2, layoutht:I
    if-lt v2, v4, :cond_34

    move v5, v0

    .line 1400
    goto :goto_9

    .line 1403
    :cond_34
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 1404
    .local v1, gravity:I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_40

    .line 1405
    add-int v5, v0, v4

    sub-int/2addr v5, v2

    goto :goto_9

    .line 1406
    :cond_40
    const/16 v5, 0x50

    if-ne v1, v5, :cond_46

    move v5, v0

    .line 1407
    goto :goto_9

    .line 1409
    :cond_46
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    goto :goto_9
.end method

.method public getExtendedPaddingTop()I
    .registers 8

    .prologue
    .line 1353
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    .line 1354
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    .line 1376
    :goto_9
    return v5

    .line 1357
    :cond_a
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_19

    .line 1358
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    goto :goto_9

    .line 1361
    :cond_19
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 1362
    .local v3, top:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 1363
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 1364
    .local v4, viewht:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 1366
    .local v2, layoutht:I
    if-lt v2, v4, :cond_34

    move v5, v3

    .line 1367
    goto :goto_9

    .line 1370
    :cond_34
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 1371
    .local v1, gravity:I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_3e

    move v5, v3

    .line 1372
    goto :goto_9

    .line 1373
    :cond_3e
    const/16 v5, 0x50

    if-ne v1, v5, :cond_46

    .line 1374
    add-int v5, v3, v4

    sub-int/2addr v5, v2

    goto :goto_9

    .line 1376
    :cond_46
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    goto :goto_9
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .registers 2

    .prologue
    .line 3709
    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 8
    .parameter "r"

    .prologue
    .line 4563
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v4, :cond_8

    .line 4564
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 4588
    :goto_7
    return-void

    .line 4568
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 4569
    .local v3, sel:I
    if-gez v3, :cond_12

    .line 4570
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_7

    .line 4574
    :cond_12
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 4575
    .local v0, line:I
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 4576
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 4578
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 4579
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 4582
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4583
    .local v1, paddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v2

    .line 4584
    .local v2, paddingTop:I
    iget v4, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v4, v4, 0x70

    const/16 v5, 0x30

    if-eq v4, v5, :cond_4d

    .line 4585
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 4587
    :cond_4d
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_7
.end method

.method public getFreezesText()Z
    .registers 2

    .prologue
    .line 2632
    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    return v0
.end method

.method public getGravity()I
    .registers 2

    .prologue
    .line 2103
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 3030
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 2014
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getImeActionId()I
    .registers 2

    .prologue
    .line 3254
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 3243
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getImeOptions()I
    .registers 2

    .prologue
    .line 3214
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .registers 4
    .parameter "create"

    .prologue
    const/4 v1, 0x0

    .line 3410
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_10

    .line 3411
    if-nez p1, :cond_9

    move-object v0, v1

    .line 3418
    :goto_8
    return-object v0

    .line 3412
    :cond_9
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3414
    :cond_10
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_23

    .line 3415
    if-nez p1, :cond_1a

    move-object v0, v1

    goto :goto_8

    .line 3416
    :cond_1a
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    .line 3418
    :cond_23
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    goto :goto_8
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 3189
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    return v0
.end method

.method getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 9530
    iget-boolean v1, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-nez v1, :cond_7

    move-object v1, v2

    .line 9541
    :goto_6
    return-object v1

    .line 9534
    :cond_7
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-nez v1, :cond_1b

    .line 9535
    new-instance v1, Landroid/widget/TextView$InsertionPointCursorController;

    invoke-direct {v1, p0, v2}, Landroid/widget/TextView$InsertionPointCursorController;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    .line 9537
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 9538
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 9541
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1b
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    goto :goto_6
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .registers 2

    .prologue
    .line 1165
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    return-object v0
.end method

.method public final getLayout()Landroid/text/Layout;
    .registers 2

    .prologue
    .line 1157
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 7537
    iget v1, p0, Landroid/widget/TextView;->mCurrentAlpha:I

    int-to-float v1, v1

    const v2, 0x40a95555

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_e

    move v1, v3

    .line 7559
    :goto_d
    return v1

    .line 7538
    :cond_e
    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_41

    .line 7539
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-nez v1, :cond_33

    .line 7540
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 7541
    .local v0, marquee:Landroid/widget/TextView$Marquee;
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 7542
    iget v1, v0, Landroid/widget/TextView$Marquee;->mScroll:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_d

    :cond_31
    move v1, v3

    .line 7544
    goto :goto_d

    .line 7546
    .end local v0           #marquee:Landroid/widget/TextView$Marquee;
    :cond_33
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_41

    .line 7547
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x7

    packed-switch v1, :pswitch_data_72

    .line 7559
    :cond_41
    :pswitch_41
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v1

    goto :goto_d

    :pswitch_46
    move v1, v3

    .line 7549
    goto :goto_d

    .line 7551
    :pswitch_48
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v1

    iget v2, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_d

    :pswitch_6f
    move v1, v3

    .line 7555
    goto :goto_d

    .line 7547
    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_41
        :pswitch_46
        :pswitch_41
        :pswitch_48
    .end packed-switch
.end method

.method protected getLeftPaddingOffset()I
    .registers 5

    .prologue
    .line 4014
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .registers 7
    .parameter "line"
    .parameter "bounds"

    .prologue
    const/4 v3, 0x0

    .line 4608
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_c

    .line 4609
    if-eqz p2, :cond_a

    .line 4610
    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_a
    move v2, v3

    .line 4624
    :goto_b
    return v2

    .line 4615
    :cond_c
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    .line 4617
    .local v0, baseline:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    .line 4618
    .local v1, voffset:I
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_24

    .line 4619
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 4621
    :cond_24
    if-eqz p2, :cond_2d

    .line 4622
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 4624
    :cond_2d
    add-int v2, v0, v1

    goto :goto_b
.end method

.method public getLineCount()I
    .registers 2

    .prologue
    .line 4595
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getLineHeight()I
    .registers 3

    .prologue
    .line 1149
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 2053
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getLinksClickable()Z
    .registers 2

    .prologue
    .line 1969
    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return v0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .registers 2

    .prologue
    .line 1224
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method public getOffset(II)I
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 9387
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_8

    const/4 v2, -0x1

    .line 9390
    :goto_7
    return v2

    .line 9388
    :cond_8
    invoke-direct {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(I)I

    move-result v0

    .line 9389
    .local v0, line:I
    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(II)I

    move-result v1

    .local v1, offset:I
    move v2, v1

    .line 9390
    goto :goto_7
.end method

.method public getPaint()Landroid/text/TextPaint;
    .registers 2

    .prologue
    .line 1932
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintFlags()I
    .registers 2

    .prologue
    .line 2111
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3376
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 7564
    iget v3, p0, Landroid/widget/TextView;->mCurrentAlpha:I

    int-to-float v3, v3

    const v4, 0x40a95555

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_e

    move v3, v5

    .line 7586
    :goto_d
    return v3

    .line 7565
    :cond_e
    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v4, :cond_3c

    .line 7566
    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 7567
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 7568
    .local v1, marquee:Landroid/widget/TextView$Marquee;
    iget v3, v1, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    iget v4, v1, Landroid/widget/TextView$Marquee;->mScroll:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_d

    .line 7569
    .end local v1           #marquee:Landroid/widget/TextView$Marquee;
    :cond_2e
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3c

    .line 7570
    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v3, v3, 0x7

    packed-switch v3, :pswitch_data_82

    .line 7586
    :cond_3c
    :pswitch_3c
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v3

    goto :goto_d

    .line 7572
    :pswitch_41
    iget v3, p0, Landroid/widget/TextView;->mRight:I

    iget v4, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v2, v3, v4

    .line 7574
    .local v2, textWidth:I
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    .line 7575
    .local v0, lineWidth:F
    int-to-float v3, v2

    sub-float v3, v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_d

    .end local v0           #lineWidth:F
    .end local v2           #textWidth:I
    :pswitch_61
    move v3, v5

    .line 7577
    goto :goto_d

    .line 7580
    :pswitch_63
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    iget v4, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_d

    .line 7570
    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_63
        :pswitch_3c
        :pswitch_41
        :pswitch_3c
        :pswitch_61
        :pswitch_3c
        :pswitch_63
    .end packed-switch
.end method

.method protected getRightPaddingOffset()I
    .registers 5

    .prologue
    .line 4030
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;
    .registers 3

    .prologue
    .line 9545
    iget-boolean v1, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_6

    .line 9546
    const/4 v1, 0x0

    .line 9556
    :goto_5
    return-object v1

    .line 9549
    :cond_6
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-nez v1, :cond_1a

    .line 9550
    new-instance v1, Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-direct {v1, p0}, Landroid/widget/TextView$SelectionModifierCursorController;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    .line 9552
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 9553
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 9556
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1a
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    goto :goto_5
.end method

.method public getSelectionEnd()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 6436
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 6428
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 1122
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 1883
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextScaleX()F
    .registers 2

    .prologue
    .line 1799
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .registers 2

    .prologue
    .line 1743
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getTopPaddingOffset()I
    .registers 4

    .prologue
    .line 4020
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getTotalPaddingBottom()I
    .registers 3

    .prologue
    .line 1444
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBottomVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingLeft()I
    .registers 2

    .prologue
    .line 1418
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .registers 2

    .prologue
    .line 1426
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .registers 3

    .prologue
    .line 1435
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .registers 2

    .prologue
    .line 1268
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 1848
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1980
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1b

    .line 1981
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/text/style/URLSpan;

    move-object v0, p0

    .line 1983
    :goto_1a
    return-object v0

    .restart local p0
    :cond_1b
    new-array v0, v3, [Landroid/text/style/URLSpan;

    goto :goto_1a
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6868
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 6869
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_8

    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_b

    .line 6870
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 6872
    :cond_b
    if-eqz v0, :cond_21

    .line 6873
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 6874
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-gez v1, :cond_2d

    .line 6875
    iput p2, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6876
    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 6881
    :goto_1a
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    .line 6884
    :cond_21
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 6885
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 6888
    if-eq p3, p4, :cond_2c

    .line 6889
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 6891
    :cond_2c
    return-void

    .line 6878
    :cond_2d
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6879
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    add-int v2, p2, p3

    iget v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    goto :goto_1a
.end method

.method hasInsertionController()Z
    .registers 2

    .prologue
    .line 9519
    iget-boolean v0, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    return v0
.end method

.method public hasSelection()Z
    .registers 4

    .prologue
    .line 6443
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 6444
    .local v1, selectionStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 6446
    .local v0, selectionEnd:I
    if-ltz v1, :cond_e

    if-eq v1, v0, :cond_e

    const/4 v2, 0x1

    :goto_d
    return v2

    :cond_e
    const/4 v2, 0x0

    goto :goto_d
.end method

.method hasSelectionController()Z
    .registers 2

    .prologue
    .line 9526
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    return v0
.end method

.method public hideErrorIfUnchanged()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4877
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v0, :cond_c

    .line 4878
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 4880
    :cond_c
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 16
    .parameter "drawable"

    .prologue
    .line 4065
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v10

    if-eqz v10, :cond_40

    .line 4066
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 4067
    .local v4, dirty:Landroid/graphics/Rect;
    iget v7, p0, Landroid/widget/TextView;->mScrollX:I

    .line 4068
    .local v7, scrollX:I
    iget v8, p0, Landroid/widget/TextView;->mScrollY:I

    .line 4073
    .local v8, scrollY:I
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4074
    .local v5, drawables:Landroid/widget/TextView$Drawables;
    if-eqz v5, :cond_31

    .line 4075
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_41

    .line 4076
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 4077
    .local v3, compoundPaddingTop:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 4078
    .local v0, compoundPaddingBottom:I
    iget v10, p0, Landroid/widget/TextView;->mBottom:I

    iget v11, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    .line 4080
    .local v9, vspace:I
    iget v10, p0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int/2addr v7, v10

    .line 4081
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 4106
    .end local v0           #compoundPaddingBottom:I
    .end local v3           #compoundPaddingTop:I
    .end local v9           #vspace:I
    :cond_31
    :goto_31
    iget v10, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v7

    iget v11, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v8

    iget v12, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v7

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v8

    invoke-virtual {p0, v10, v11, v12, v13}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 4109
    .end local v4           #dirty:Landroid/graphics/Rect;
    .end local v5           #drawables:Landroid/widget/TextView$Drawables;
    .end local v7           #scrollX:I
    .end local v8           #scrollY:I
    :cond_40
    return-void

    .line 4082
    .restart local v4       #dirty:Landroid/graphics/Rect;
    .restart local v5       #drawables:Landroid/widget/TextView$Drawables;
    .restart local v7       #scrollX:I
    .restart local v8       #scrollY:I
    :cond_41
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_6a

    .line 4083
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 4084
    .restart local v3       #compoundPaddingTop:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 4085
    .restart local v0       #compoundPaddingBottom:I
    iget v10, p0, Landroid/widget/TextView;->mBottom:I

    iget v11, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    .line 4087
    .restart local v9       #vspace:I
    iget v10, p0, Landroid/widget/TextView;->mRight:I

    iget v11, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v10, v11

    add-int/2addr v7, v10

    .line 4088
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 4089
    goto :goto_31

    .end local v0           #compoundPaddingBottom:I
    .end local v3           #compoundPaddingTop:I
    .end local v9           #vspace:I
    :cond_6a
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_8a

    .line 4090
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4091
    .local v1, compoundPaddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    .line 4092
    .local v2, compoundPaddingRight:I
    iget v10, p0, Landroid/widget/TextView;->mRight:I

    iget v11, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    .line 4094
    .local v6, hspace:I
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    .line 4095
    iget v10, p0, Landroid/widget/TextView;->mPaddingTop:I

    add-int/2addr v8, v10

    .line 4096
    goto :goto_31

    .end local v1           #compoundPaddingLeft:I
    .end local v2           #compoundPaddingRight:I
    .end local v6           #hspace:I
    :cond_8a
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_31

    .line 4097
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4098
    .restart local v1       #compoundPaddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    .line 4099
    .restart local v2       #compoundPaddingRight:I
    iget v10, p0, Landroid/widget/TextView;->mRight:I

    iget v11, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    .line 4101
    .restart local v6       #hspace:I
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    .line 4102
    iget v10, p0, Landroid/widget/TextView;->mBottom:I

    iget v11, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v10, v11

    add-int/2addr v8, v10

    goto/16 :goto_31
.end method

.method isInBatchEditMode()Z
    .registers 3

    .prologue
    .line 9560
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 9561
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_c

    .line 9562
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-lez v1, :cond_a

    const/4 v1, 0x1

    .line 9564
    :goto_9
    return v1

    .line 9562
    :cond_a
    const/4 v1, 0x0

    goto :goto_9

    .line 9564
    :cond_c
    iget-boolean v1, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    goto :goto_9
.end method

.method public isInputMethodTarget()Z
    .registers 3

    .prologue
    .line 7989
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 7990
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method protected isPaddingOffsetRequired()Z
    .registers 3

    .prologue
    .line 4009
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isTextSelectable()Z
    .registers 2

    .prologue
    .line 4147
    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 4046
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 4047
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_3b

    .line 4048
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    .line 4049
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4051
    :cond_14
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_21

    .line 4052
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4054
    :cond_21
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2e

    .line 4055
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4057
    :cond_2e
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    .line 4058
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4061
    :cond_3b
    return-void
.end method

.method public length()I
    .registers 2

    .prologue
    .line 1129
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .registers 29
    .parameter "w"
    .parameter "hintWidth"
    .parameter "boring"
    .parameter "hintBoring"
    .parameter "ellipsisWidth"
    .parameter "bringIntoView"

    .prologue
    .line 5493
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    .line 5495
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5497
    if-gez p1, :cond_d

    .line 5498
    const/16 p1, 0x0

    .line 5500
    :cond_d
    if-gez p2, :cond_11

    .line 5501
    const/16 p2, 0x0

    .line 5505
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mGravity:I

    move v2, v0

    and-int/lit8 v2, v2, 0x7

    sparse-switch v2, :sswitch_data_4aa

    .line 5517
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 5520
    .local v7, alignment:Landroid/text/Layout$Alignment;
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v2, v0

    if-eqz v2, :cond_145

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v2, v0

    if-nez v2, :cond_145

    const/4 v2, 0x1

    move/from16 v21, v2

    .line 5522
    .local v21, shouldEllipsize:Z
    :goto_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v2, v0

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_14e

    .line 5523
    new-instance v2, Landroid/text/DynamicLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v6, v0

    if-nez v6, :cond_14a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v6, v0

    move-object v11, v6

    :goto_64
    move/from16 v6, p1

    move/from16 v12, p5

    invoke-direct/range {v2 .. v12}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5587
    :goto_70
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v2, v0

    if-eqz v2, :cond_334

    const/4 v2, 0x1

    move/from16 v21, v2

    .line 5588
    :goto_7a
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 5590
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v2, v0

    if-eqz v2, :cond_105

    .line 5591
    if-eqz v21, :cond_8b

    move/from16 p2, p1

    .line 5593
    :cond_8b
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p4

    move-object v1, v2

    if-ne v0, v1, :cond_ad

    .line 5594
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object v4, v0

    invoke-static {v2, v3, v4}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p4

    .line 5596
    if-eqz p4, :cond_ad

    .line 5597
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 5601
    :cond_ad
    if-eqz p4, :cond_43c

    .line 5602
    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p2

    if-gt v0, v1, :cond_361

    if-eqz v21, :cond_c5

    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p5

    if-gt v0, v1, :cond_361

    .line 5604
    :cond_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object v2, v0

    if-eqz v2, :cond_339

    .line 5605
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move/from16 v6, p2

    move-object/from16 v10, p4

    invoke-virtual/range {v3 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 5615
    :goto_f7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/text/BoringLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 5653
    :cond_105
    :goto_105
    if-eqz p6, :cond_10a

    .line 5654
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 5657
    :cond_10a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v2, v0

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_139

    .line 5658
    move/from16 v0, p5

    int-to-float v0, v0

    move v2, v0

    move-object/from16 v0, p0

    move v1, v2

    invoke-direct {v0, v1}, Landroid/widget/TextView;->compressText(F)Z

    move-result v2

    if-nez v2, :cond_139

    .line 5659
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object v2, v0

    move-object v0, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    .line 5662
    .local v20, height:I
    const/4 v2, -0x2

    move/from16 v0, v20

    move v1, v2

    if-eq v0, v1, :cond_4a1

    const/4 v2, -0x1

    move/from16 v0, v20

    move v1, v2

    if-eq v0, v1, :cond_4a1

    .line 5663
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    .line 5672
    .end local v20           #height:I
    :cond_139
    :goto_139
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 5673
    return-void

    .line 5507
    .end local v7           #alignment:Landroid/text/Layout$Alignment;
    .end local v21           #shouldEllipsize:Z
    .restart local p1
    :sswitch_13d
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 5508
    .restart local v7       #alignment:Landroid/text/Layout$Alignment;
    goto/16 :goto_1d

    .line 5513
    .end local v7           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_141
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 5514
    .restart local v7       #alignment:Landroid/text/Layout$Alignment;
    goto/16 :goto_1d

    .line 5520
    :cond_145
    const/4 v2, 0x0

    move/from16 v21, v2

    goto/16 :goto_2e

    .line 5523
    .restart local v21       #shouldEllipsize:Z
    :cond_14a
    const/4 v6, 0x0

    move-object v11, v6

    goto/16 :goto_64

    .line 5528
    :cond_14e
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p3

    move-object v1, v2

    if-ne v0, v1, :cond_170

    .line 5529
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object v4, v0

    invoke-static {v2, v3, v4}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p3

    .line 5530
    if-eqz p3, :cond_170

    .line 5531
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 5535
    :cond_170
    if-eqz p3, :cond_2cf

    .line 5536
    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p1

    if-gt v0, v1, :cond_1f4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v2, v0

    if-eqz v2, :cond_18d

    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p5

    if-gt v0, v1, :cond_1f4

    .line 5538
    :cond_18d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object v2, v0

    if-eqz v2, :cond_1cd

    .line 5539
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move/from16 v6, p1

    move-object/from16 v10, p3

    invoke-virtual/range {v3 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5549
    :goto_1bf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v2, v0

    check-cast v2, Landroid/text/BoringLayout;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    goto/16 :goto_70

    .line 5544
    :cond_1cd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move/from16 v6, p1

    move-object/from16 v10, p3

    invoke-static/range {v4 .. v11}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto :goto_1bf

    .line 5550
    :cond_1f4
    if-eqz v21, :cond_26a

    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p1

    if-gt v0, v1, :cond_26a

    .line 5551
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object v2, v0

    if-eqz v2, :cond_23b

    .line 5552
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v12, v0

    move/from16 v6, p1

    move-object/from16 v10, p3

    move/from16 v13, p5

    invoke-virtual/range {v3 .. v13}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_70

    .line 5558
    :cond_23b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v12, v0

    move/from16 v6, p1

    move-object/from16 v10, p3

    move/from16 v13, p5

    invoke-static/range {v4 .. v13}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_70

    .line 5563
    :cond_26a
    if-eqz v21, :cond_2a8

    .line 5564
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v18, v0

    move/from16 v13, p1

    move-object v14, v7

    move/from16 v19, p5

    invoke-direct/range {v8 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_70

    .line 5570
    :cond_2a8
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move/from16 v6, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_70

    .line 5574
    :cond_2cf
    if-eqz v21, :cond_30d

    .line 5575
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v18, v0

    move/from16 v13, p1

    move-object v14, v7

    move/from16 v19, p5

    invoke-direct/range {v8 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_70

    .line 5581
    :cond_30d
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move/from16 v6, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_70

    .line 5587
    :cond_334
    const/4 v2, 0x0

    move/from16 v21, v2

    goto/16 :goto_7a

    .line 5610
    :cond_339
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move/from16 v6, p2

    move-object/from16 v10, p4

    invoke-static/range {v4 .. v11}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_f7

    .line 5616
    :cond_361
    if-eqz v21, :cond_3d7

    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p2

    if-gt v0, v1, :cond_3d7

    .line 5617
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object v2, v0

    if-eqz v2, :cond_3a8

    .line 5618
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v12, v0

    move/from16 v6, p2

    move-object/from16 v10, p4

    move/from16 v13, p5

    invoke-virtual/range {v3 .. v13}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_105

    .line 5624
    :cond_3a8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v12, v0

    move/from16 v6, p2

    move-object/from16 v10, p4

    move/from16 v13, p5

    invoke-static/range {v4 .. v13}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_105

    .line 5629
    :cond_3d7
    if-eqz v21, :cond_415

    .line 5630
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v18, v0

    move/from16 v13, p2

    move-object v14, v7

    move/from16 v19, p5

    invoke-direct/range {v8 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_105

    .line 5636
    :cond_415
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move/from16 v6, p2

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_105

    .line 5640
    :cond_43c
    if-eqz v21, :cond_47a

    .line 5641
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v18, v0

    move/from16 v13, p2

    move-object v14, v7

    move/from16 v19, p5

    invoke-direct/range {v8 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_105

    .line 5647
    :cond_47a
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move/from16 v6, p2

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_105

    .line 5666
    .end local p1
    .restart local v20       #height:I
    :cond_4a1
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mRestartMarquee:Z

    goto/16 :goto_139

    .line 5505
    nop

    :sswitch_data_4aa
    .sparse-switch
        0x1 -> :sswitch_13d
        0x5 -> :sswitch_141
    .end sparse-switch
.end method

.method public moveCursorToVisibleOffset()Z
    .registers 22

    .prologue
    .line 6304
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v18, v0

    if-nez v18, :cond_11

    .line 6305
    const/16 v18, 0x0

    .line 6354
    .end local p0
    :goto_10
    return v18

    .line 6307
    .restart local p0
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v13

    .line 6308
    .local v13, start:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 6309
    .local v4, end:I
    if-eq v13, v4, :cond_1e

    .line 6310
    const/16 v18, 0x0

    goto :goto_10

    .line 6315
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    .line 6317
    .local v9, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v14

    .line 6318
    .local v14, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v18, v0

    add-int/lit8 v19, v9, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 6319
    .local v3, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v19

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v19

    sub-int v17, v18, v19

    .line 6320
    .local v17, vspace:I
    sub-int v18, v3, v14

    div-int/lit8 v16, v18, 0x2

    .line 6321
    .local v16, vslack:I
    div-int/lit8 v18, v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_6c

    .line 6322
    div-int/lit8 v16, v17, 0x4

    .line 6323
    :cond_6c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move v15, v0

    .line 6325
    .local v15, vs:I
    add-int v18, v15, v16

    move v0, v14

    move/from16 v1, v18

    if-ge v0, v1, :cond_ee

    .line 6326
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v18, v0

    add-int v19, v15, v16

    sub-int v20, v3, v14

    add-int v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v9

    .line 6333
    :cond_88
    :goto_88
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v19

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v19

    sub-int v7, v18, v19

    .line 6334
    .local v7, hspace:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move v6, v0

    .line 6335
    .local v6, hs:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v18, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v18

    move v1, v9

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v8

    .line 6336
    .local v8, leftChar:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v18, v0

    add-int v19, v7, v6

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v18

    move v1, v9

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v12

    .line 6339
    .local v12, rightChar:I
    if-ge v8, v12, :cond_10b

    move v10, v8

    .line 6340
    .local v10, lowChar:I
    :goto_d3
    if-le v8, v12, :cond_10d

    move v5, v8

    .line 6342
    .local v5, highChar:I
    :goto_d6
    move v11, v13

    .line 6343
    .local v11, newStart:I
    if-ge v11, v10, :cond_10f

    .line 6344
    move v11, v10

    .line 6349
    :cond_da
    :goto_da
    if-eq v11, v13, :cond_113

    .line 6350
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    move-object/from16 v0, p0

    move v1, v11

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 6351
    const/16 v18, 0x1

    goto/16 :goto_10

    .line 6327
    .end local v5           #highChar:I
    .end local v6           #hs:I
    .end local v7           #hspace:I
    .end local v8           #leftChar:I
    .end local v10           #lowChar:I
    .end local v11           #newStart:I
    .end local v12           #rightChar:I
    .restart local p0
    :cond_ee
    add-int v18, v17, v15

    sub-int v18, v18, v16

    move v0, v3

    move/from16 v1, v18

    if-le v0, v1, :cond_88

    .line 6328
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v18, v0

    add-int v19, v17, v15

    sub-int v19, v19, v16

    sub-int v20, v3, v14

    sub-int v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v9

    goto/16 :goto_88

    .restart local v6       #hs:I
    .restart local v7       #hspace:I
    .restart local v8       #leftChar:I
    .restart local v12       #rightChar:I
    :cond_10b
    move v10, v12

    .line 6339
    goto :goto_d3

    .restart local v10       #lowChar:I
    :cond_10d
    move v5, v12

    .line 6340
    goto :goto_d6

    .line 6345
    .restart local v5       #highChar:I
    .restart local v11       #newStart:I
    :cond_10f
    if-le v11, v5, :cond_da

    .line 6346
    move v11, v5

    goto :goto_da

    .line 6354
    :cond_113
    const/16 v18, 0x0

    goto/16 :goto_10
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3951
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 3953
    iput-boolean v2, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 3955
    iget-boolean v1, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    if-eqz v1, :cond_f

    .line 3956
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    .line 3957
    iput-boolean v2, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 3960
    :cond_f
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3963
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v1, :cond_1c

    .line 3964
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3966
    :cond_1c
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v1, :cond_25

    .line 3967
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3969
    :cond_25
    return-void
.end method

.method public onBeginBatchEdit()V
    .registers 1

    .prologue
    .line 5426
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    .prologue
    .line 4981
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 5240
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 5251
    iget-object v0, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    if-nez v0, :cond_11

    .line 5252
    new-instance v0, Landroid/widget/TextView$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/TextView$CorrectionHighlighter;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    .line 5257
    :goto_b
    iget-object v0, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/TextView$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 5258
    return-void

    .line 5254
    :cond_11
    iget-object v0, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    const/4 v1, 0x0

    #calls: Landroid/widget/TextView$CorrectionHighlighter;->invalidate(Z)V
    invoke-static {v0, v1}, Landroid/widget/TextView$CorrectionHighlighter;->access$300(Landroid/widget/TextView$CorrectionHighlighter;Z)V

    goto :goto_b
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 12
    .parameter "menu"

    .prologue
    const/4 v9, 0x0

    .line 7941
    invoke-super {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 7942
    const/4 v0, 0x0

    .line 7943
    .local v0, added:Z
    iget-boolean v7, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    if-nez v7, :cond_d

    iget-boolean v7, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    if-eqz v7, :cond_6c

    :cond_d
    const/4 v7, 0x1

    :goto_e
    iput-boolean v7, p0, Landroid/widget/TextView;->mContextMenuTriggeredByKey:Z

    .line 7951
    iput-boolean v9, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    iput-boolean v9, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 7953
    new-instance v1, Landroid/widget/TextView$MenuHandler;

    const/4 v7, 0x0

    invoke-direct {v1, p0, v7}, Landroid/widget/TextView$MenuHandler;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    .line 7955
    .local v1, handler:Landroid/widget/TextView$MenuHandler;
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v7, v7, Landroid/text/Spanned;

    if-eqz v7, :cond_4f

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 7956
    invoke-direct {p0}, Landroid/widget/TextView;->getLastTouchOffsets()J

    move-result-wide v2

    .line 7957
    .local v2, lastTouchOffset:J
    invoke-static {v2, v3}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v5

    .line 7958
    .local v5, selStart:I
    invoke-static {v2, v3}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v4

    .line 7960
    .local v4, selEnd:I
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Spanned;

    const-class v7, Landroid/text/style/URLSpan;

    invoke-interface {p0, v5, v4, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/URLSpan;

    .line 7961
    .local v6, urls:[Landroid/text/style/URLSpan;
    array-length v7, v6

    if-lez v7, :cond_4f

    .line 7962
    const v7, 0x1020023

    const v8, 0x1040002

    invoke-interface {p1, v9, v7, v9, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7965
    const/4 v0, 0x1

    .line 7973
    .end local v2           #lastTouchOffset:J
    .end local v4           #selEnd:I
    .end local v5           #selStart:I
    .end local v6           #urls:[Landroid/text/style/URLSpan;
    :cond_4f
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v7

    if-lez v7, :cond_63

    .line 7974
    const v7, 0x102002d

    const v8, 0x1040016

    invoke-interface {p1, v9, v7, v9, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7976
    const/4 v0, 0x1

    .line 7979
    :cond_63
    if-eqz v0, :cond_6b

    .line 7980
    const v7, 0x1040337

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 7982
    :cond_6b
    return-void

    .end local v1           #handler:Landroid/widget/TextView$MenuHandler;
    .restart local p0
    :cond_6c
    move v7, v9

    .line 7943
    goto :goto_e
.end method

.method protected onCreateDrawableState(I)[I
    .registers 10
    .parameter "extraSpace"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4185
    iget-boolean v4, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v4, :cond_2a

    .line 4186
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 4192
    .local v0, drawableState:[I
    :goto_a
    iget-boolean v4, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v4, :cond_39

    .line 4197
    array-length v2, v0

    .line 4198
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    if-ge v1, v2, :cond_39

    .line 4199
    aget v4, v0, v1

    const v5, 0x10100a7

    if-ne v4, v5, :cond_36

    .line 4200
    sub-int v4, v2, v7

    new-array v3, v4, [I

    .line 4201
    .local v3, nonPressedState:[I
    invoke-static {v0, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4202
    add-int/lit8 v4, v1, 0x1

    sub-int v5, v2, v1

    sub-int/2addr v5, v7

    invoke-static {v0, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v3

    .line 4208
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #nonPressedState:[I
    :goto_29
    return-object v4

    .line 4188
    .end local v0           #drawableState:[I
    :cond_2a
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 4189
    .restart local v0       #drawableState:[I
    sget-object v4, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    invoke-static {v0, v4}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    goto :goto_a

    .line 4198
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .end local v1           #i:I
    .end local v2           #length:I
    :cond_39
    move-object v4, v0

    .line 4208
    goto :goto_29
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 7
    .parameter "outAttrs"

    .prologue
    const/high16 v4, 0x4000

    const/high16 v3, 0x800

    .line 4985
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_b6

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 4986
    iget-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-nez v1, :cond_1b

    .line 4987
    new-instance v1, Landroid/widget/TextView$InputMethodState;

    invoke-direct {v1, p0}, Landroid/widget/TextView$InputMethodState;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 4989
    :cond_1b
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 4990
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v1, :cond_ab

    .line 4991
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v1, v1, Landroid/widget/TextView$InputContentType;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4992
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 4993
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 4994
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v1, v1, Landroid/widget/TextView$InputContentType;->imeActionId:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 4995
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 4999
    :goto_41
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 5000
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v3

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5002
    :cond_4e
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 5003
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x400

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5005
    :cond_5d
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_79

    .line 5007
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_af

    .line 5010
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5016
    :goto_6e
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v1

    if-nez v1, :cond_79

    .line 5017
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5020
    :cond_79
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-direct {p0, v1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 5022
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5024
    :cond_86
    iget-object v1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 5025
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_b6

    .line 5026
    new-instance v0, Lcom/android/internal/widget/EditableInputConnection;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    .line 5027
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 5028
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 5029
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    move-object v1, v0

    .line 5033
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :goto_aa
    return-object v1

    .line 4997
    :cond_ab
    const/4 v1, 0x0

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_41

    .line 5014
    :cond_af
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x6

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_6e

    .line 5033
    :cond_b6
    const/4 v1, 0x0

    goto :goto_aa
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 3973
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 3975
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3976
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-eqz v1, :cond_11

    .line 3977
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3978
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    .line 3981
    :cond_11
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v1, :cond_1a

    .line 3982
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3984
    :cond_1a
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v1, :cond_23

    .line 3985
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3988
    :cond_23
    iget-object v1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2a

    .line 3989
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    .line 3992
    :cond_2a
    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v1, :cond_35

    .line 3993
    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v2, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v1, v2}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3996
    :cond_35
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v1, :cond_3e

    .line 3997
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v1}, Landroid/widget/TextView$InsertionPointCursorController;->onDetached()V

    .line 4000
    :cond_3e
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v1, :cond_47

    .line 4001
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionModifierCursorController;->onDetached()V

    .line 4004
    :cond_47
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 4005
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 9432
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_30

    :pswitch_8
    move v1, v3

    .line 9452
    .end local p0
    :goto_9
    return v1

    .line 9434
    .restart local p0
    :pswitch_a
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v1

    goto :goto_9

    .line 9437
    :pswitch_f
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    move v1, v3

    .line 9438
    goto :goto_9

    .line 9441
    :pswitch_14
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->getOffset(II)I

    move-result v0

    .line 9442
    .local v0, offset:I
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v1, v3

    .line 9443
    goto :goto_9

    .line 9446
    .end local v0           #offset:I
    .restart local p0
    :pswitch_2b
    invoke-direct {p0, p1}, Landroid/widget/TextView;->onDrop(Landroid/view/DragEvent;)V

    move v1, v3

    .line 9447
    goto :goto_9

    .line 9432
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_a
        :pswitch_14
        :pswitch_2b
        :pswitch_8
        :pswitch_f
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 50
    .parameter "canvas"

    .prologue
    .line 4213
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    move v6, v0

    int-to-float v6, v6

    const v7, 0x40a95555

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_e

    .line 4501
    :goto_d
    return-void

    .line 4215
    :cond_e
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 4218
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4220
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v24

    .line 4221
    .local v24, compoundPaddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v26

    .line 4222
    .local v26, compoundPaddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v25

    .line 4223
    .local v25, compoundPaddingRight:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v23

    .line 4224
    .local v23, compoundPaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v41, v0

    .line 4225
    .local v41, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v42, v0

    .line 4226
    .local v42, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v40, v0

    .line 4227
    .local v40, right:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v37, v0

    .line 4228
    .local v37, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v17, v0

    .line 4229
    .local v17, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v44, v0

    .line 4231
    .local v44, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v29, v0

    .line 4232
    .local v29, dr:Landroid/widget/TextView$Drawables;
    if-eqz v29, :cond_13e

    .line 4238
    sub-int v6, v17, v44

    sub-int v6, v6, v23

    sub-int v47, v6, v26

    .line 4239
    .local v47, vspace:I
    sub-int v6, v40, v37

    sub-int v6, v6, v25

    sub-int v34, v6, v24

    .line 4243
    .local v34, hspace:I
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_90

    .line 4244
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4245
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPaddingLeft:I

    move v6, v0

    add-int v6, v6, v41

    int-to-float v6, v6

    add-int v7, v42, v26

    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    move v8, v0

    sub-int v8, v47, v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4248
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4249
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4254
    :cond_90
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_cd

    .line 4255
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4256
    add-int v6, v41, v40

    sub-int v6, v6, v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPaddingRight:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    move v7, v0

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-int v7, v42, v26

    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    move v8, v0

    sub-int v8, v47, v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4258
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4259
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4264
    :cond_cd
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_101

    .line 4265
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4266
    add-int v6, v41, v24

    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move v7, v0

    sub-int v7, v34, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPaddingTop:I

    move v7, v0

    add-int v7, v7, v42

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4268
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4269
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4274
    :cond_101
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_13e

    .line 4275
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4276
    add-int v6, v41, v24

    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move v7, v0

    sub-int v7, v34, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    add-int v7, v42, v17

    sub-int v7, v7, v44

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPaddingBottom:I

    move v8, v0

    sub-int/2addr v7, v8

    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    move v8, v0

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4279
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4280
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4284
    .end local v34           #hspace:I
    .end local v47           #vspace:I
    :cond_13e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPreDrawState:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_157

    .line 4285
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v38

    .line 4286
    .local v38, observer:Landroid/view/ViewTreeObserver;
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4287
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mPreDrawState:I

    .line 4290
    .end local v38           #observer:Landroid/view/ViewTreeObserver;
    :cond_157
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurTextColor:I

    move/from16 v22, v0

    .line 4292
    .local v22, color:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v6, v0

    if-nez v6, :cond_167

    .line 4293
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 4296
    :cond_167
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v36, v0

    .line 4297
    .local v36, layout:Landroid/text/Layout;
    move/from16 v28, v22

    .line 4299
    .local v28, cursorcolor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v6, v0

    if-eqz v6, :cond_194

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v6, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_194

    .line 4300
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    move-object v6, v0

    if-eqz v6, :cond_18e

    .line 4301
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    move/from16 v22, v0

    .line 4304
    :cond_18e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v36, v0

    .line 4307
    :cond_194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 4308
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    move v6, v0

    const/16 v7, 0xff

    if-eq v6, v7, :cond_1bc

    .line 4310
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    move v7, v0

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    mul-int/2addr v7, v8

    div-int/lit16 v7, v7, 0xff

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 4312
    :cond_1bc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v6, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v7

    iput-object v7, v6, Landroid/text/TextPaint;->drawableState:[I

    .line 4314
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4319
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v32

    .line 4320
    .local v32, extendedPaddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v31

    .line 4322
    .local v31, extendedPaddingBottom:I
    add-int v6, v24, v41

    move v0, v6

    int-to-float v0, v0

    move/from16 v19, v0

    .line 4323
    .local v19, clipLeft:F
    add-int v6, v32, v42

    move v0, v6

    int-to-float v0, v0

    move/from16 v21, v0

    .line 4324
    .local v21, clipTop:F
    sub-int v6, v40, v37

    sub-int v6, v6, v25

    add-int v6, v6, v41

    move v0, v6

    int-to-float v0, v0

    move/from16 v20, v0

    .line 4325
    .local v20, clipRight:F
    sub-int v6, v17, v44

    sub-int v6, v6, v31

    add-int v6, v6, v42

    move v0, v6

    int-to-float v0, v0

    move/from16 v18, v0

    .line 4327
    .local v18, clipBottom:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v6, v0

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_244

    .line 4328
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowDx:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v8, v0

    sub-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v19, v19, v6

    .line 4329
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowDx:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v8, v0

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v20, v20, v6

    .line 4331
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowDy:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v8, v0

    sub-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v21, v21, v6

    .line 4332
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowDy:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v8, v0

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v18, v18, v6

    .line 4335
    :cond_244
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 4337
    const/16 v46, 0x0

    .line 4338
    .local v46, voffsetText:I
    const/16 v45, 0x0

    .line 4343
    .local v45, voffsetCursor:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mGravity:I

    move v6, v0

    and-int/lit8 v6, v6, 0x70

    const/16 v7, 0x30

    if-eq v6, v7, :cond_270

    .line 4344
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v46

    .line 4345
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v45

    .line 4347
    :cond_270
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    add-int v7, v32, v46

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4350
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v6, v0

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v7, :cond_2f0

    .line 4351
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mSingleLine:Z

    move v6, v0

    if-nez v6, :cond_2ce

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2ce

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v6

    if-eqz v6, :cond_2ce

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mGravity:I

    move v6, v0

    and-int/lit8 v6, v6, 0x7

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2ce

    .line 4353
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move v8, v0

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4357
    :cond_2ce
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    if-eqz v6, :cond_2f0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_2f0

    .line 4358
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    iget v6, v6, Landroid/widget/TextView$Marquee;->mScroll:F

    neg-float v6, v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4362
    :cond_2f0
    const/16 v33, 0x0

    .line 4363
    .local v33, highlight:Landroid/graphics/Path;
    const/4 v7, -0x1

    .local v7, selStart:I
    const/4 v8, -0x1

    .line 4364
    .local v8, selEnd:I
    const/16 v30, 0x0

    .line 4371
    .local v30, drawCursor:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v6, v0

    if-eqz v6, :cond_3bf

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-nez v6, :cond_309

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v6

    if-eqz v6, :cond_3bf

    .line 4372
    :cond_309
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 4373
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 4375
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isCursorVisible()Z

    move-result v6

    if-nez v6, :cond_31e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move v6, v0

    if-eqz v6, :cond_3bf

    :cond_31e
    if-ltz v7, :cond_3bf

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3bf

    .line 4376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v6, v0

    if-nez v6, :cond_337

    .line 4377
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 4379
    :cond_337
    if-ne v7, v8, :cond_540

    .line 4380
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move v6, v0

    if-nez v6, :cond_3bf

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mShowCursor:J

    move-wide v13, v0

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    rem-long/2addr v11, v13

    const-wide/16 v13, 0x1f4

    cmp-long v6, v11, v13

    if-gez v6, :cond_3bf

    .line 4382
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    move v6, v0

    if-eqz v6, :cond_37d

    .line 4383
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 4384
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v10, v0

    invoke-virtual {v6, v7, v9, v10}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 4385
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->updateCursorsPositions()V

    .line 4386
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 4390
    :cond_37d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4391
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    move v6, v0

    const/16 v9, 0xff

    if-eq v6, v9, :cond_3a5

    .line 4392
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    move v9, v0

    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    mul-int/2addr v9, v10

    div-int/lit16 v9, v9, 0xff

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4395
    :cond_3a5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4396
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v33, v0

    .line 4397
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCursorCount:I

    move v6, v0

    if-lez v6, :cond_53b

    const/4 v6, 0x1

    move/from16 v30, v6

    .line 4430
    :cond_3bf
    :goto_3bf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    move-object/from16 v35, v0

    .line 4431
    .local v35, ims:Landroid/widget/TextView$InputMethodState;
    sub-int v27, v45, v46

    .line 4432
    .local v27, cursorOffsetVertical:I
    if-eqz v35, :cond_4ce

    move-object/from16 v0, v35

    iget v0, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    move v6, v0

    if-nez v6, :cond_4ce

    .line 4433
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 4434
    .local v5, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_4ce

    .line 4435
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_417

    .line 4436
    const/16 v39, 0x0

    .line 4437
    .local v39, reported:Z
    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    move v6, v0

    if-nez v6, :cond_3ef

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    move v6, v0

    if-eqz v6, :cond_3f3

    .line 4441
    :cond_3ef
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->reportExtractedText()Z

    move-result v39

    .line 4443
    :cond_3f3
    if-nez v39, :cond_417

    if-eqz v33, :cond_417

    .line 4444
    const/4 v9, -0x1

    .line 4445
    .local v9, candStart:I
    const/4 v10, -0x1

    .line 4446
    .local v10, candEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v6, v0

    instance-of v6, v6, Landroid/text/Spannable;

    if-eqz v6, :cond_412

    .line 4447
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v43, v0

    check-cast v43, Landroid/text/Spannable;

    .line 4448
    .local v43, sp:Landroid/text/Spannable;
    invoke-static/range {v43 .. v43}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v9

    .line 4449
    invoke-static/range {v43 .. v43}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v10

    .end local v43           #sp:Landroid/text/Spannable;
    :cond_412
    move-object/from16 v6, p0

    .line 4451
    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 4455
    .end local v9           #candStart:I
    .end local v10           #candEnd:I
    .end local v39           #reported:Z
    :cond_417
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4ce

    if-eqz v33, :cond_4ce

    .line 4456
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v6, v0

    const/4 v7, 0x1

    move-object/from16 v0, v33

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 4457
    .end local v7           #selStart:I
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v8, v0

    .end local v8           #selEnd:I
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    aput v10, v6, v7

    .line 4459
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4460
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v6, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v8, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 4462
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v6, v0

    const/4 v7, 0x0

    move/from16 v0, v27

    int-to-float v0, v0

    move v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 4464
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-double v11, v7

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v7, v11

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v8, v0

    iget v8, v8, Landroid/graphics/RectF;->top:F

    float-to-double v11, v8

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v8, v11

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/RectF;->right:F

    float-to-double v11, v9

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v9, v11

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v10, v0

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-double v11, v10

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 4469
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    iget v13, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    iget v14, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    iget v15, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object v11, v5

    move-object/from16 v12, p0

    invoke-virtual/range {v11 .. v16}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .line 4476
    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_4ce
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    move-object v6, v0

    if-eqz v6, :cond_4e2

    .line 4477
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    .line 4480
    :cond_4e2
    if-eqz v30, :cond_4ef

    .line 4481
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->drawCursor(Landroid/graphics/Canvas;I)V

    .line 4484
    const/16 v33, 0x0

    .line 4487
    :cond_4ef
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object v3, v6

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 4489
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    if-eqz v6, :cond_536

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    move-result v6

    if-eqz v6, :cond_536

    .line 4490
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4491
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object v3, v6

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 4500
    :cond_536
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_d

    .line 4397
    .end local v27           #cursorOffsetVertical:I
    .end local v35           #ims:Landroid/widget/TextView$InputMethodState;
    .restart local v7       #selStart:I
    .restart local v8       #selEnd:I
    :cond_53b
    const/4 v6, 0x0

    move/from16 v30, v6

    goto/16 :goto_3bf

    .line 4400
    :cond_540
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    move v6, v0

    if-eqz v6, :cond_562

    .line 4401
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 4402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v9, v0

    invoke-virtual {v6, v7, v8, v9}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 4403
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 4407
    :cond_562
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mHighlightColor:I

    move v9, v0

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 4408
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    move v6, v0

    const/16 v9, 0xff

    if-eq v6, v9, :cond_591

    .line 4409
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mHighlightColor:I

    move v10, v0

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    mul-int/2addr v9, v10

    div-int/lit16 v9, v9, 0xff

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4412
    :cond_591
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4414
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v33, v0

    goto/16 :goto_3bf
.end method

.method public onEditorAction(I)V
    .registers 25
    .parameter "actionCode"

    .prologue
    .line 3294
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v20, v0

    .line 3295
    .local v20, ict:Landroid/widget/TextView$InputContentType;
    if-eqz v20, :cond_8d

    .line 3296
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    move-object v4, v0

    if-eqz v4, :cond_22

    .line 3297
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3353
    :cond_21
    :goto_21
    return-void

    .line 3308
    :cond_22
    const/4 v4, 0x5

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_46

    .line 3309
    const/16 v4, 0x82

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v22

    .line 3310
    .local v22, v:Landroid/view/View;
    if-eqz v22, :cond_21

    .line 3311
    const/16 v4, 0x82

    move-object/from16 v0, v22

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-nez v4, :cond_21

    .line 3312
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3318
    .end local v22           #v:Landroid/view/View;
    :cond_46
    const/4 v4, 0x7

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_6a

    .line 3319
    const/16 v4, 0x21

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v22

    .line 3320
    .restart local v22       #v:Landroid/view/View;
    if-eqz v22, :cond_21

    .line 3321
    const/16 v4, 0x21

    move-object/from16 v0, v22

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-nez v4, :cond_21

    .line 3322
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3328
    .end local v22           #v:Landroid/view/View;
    :cond_6a
    const/4 v4, 0x6

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_8d

    .line 3329
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v21

    .line 3330
    .local v21, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v21, :cond_21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 3331
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_21

    .line 3337
    .end local v21           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_8d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v19

    .line 3338
    .local v19, h:Landroid/os/Handler;
    if-eqz v19, :cond_21

    .line 3339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 3340
    .local v5, eventTime:J
    const/16 v16, 0x3f3

    new-instance v4, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x42

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v15, 0x16

    move-wide v7, v5

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v19

    move/from16 v1, v16

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3346
    const/16 v4, 0x3f3

    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x1

    const/16 v13, 0x42

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x16

    move-wide v10, v5

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v19

    move v1, v4

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_21
.end method

.method public onEndBatchEdit()V
    .registers 1

    .prologue
    .line 5433
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 2

    .prologue
    .line 7094
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 7097
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 7098
    :cond_a
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 16
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 7102
    iget-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    if-eqz v0, :cond_8

    .line 7104
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 7212
    :cond_7
    :goto_7
    return-void

    .line 7108
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 7110
    invoke-virtual {p0}, Landroid/widget/TextView;->ensureEndedBatchEdit()V

    .line 7112
    if-eqz p1, :cond_c6

    .line 7113
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v10

    .line 7114
    .local v10, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v9

    .line 7118
    .local v9, selEnd:I
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v0, :cond_bf

    if-nez v10, :cond_bf

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v9, v0, :cond_bf

    const/4 v0, 0x1

    move v7, v0

    .line 7120
    .local v7, isFocusHighlighted:Z
    :goto_2b
    iget-boolean v0, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    if-eqz v0, :cond_c3

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_c3

    if-nez v7, :cond_c3

    const/4 v0, 0x1

    :goto_38
    iput-boolean v0, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 7122
    iget-boolean v0, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    if-eqz v0, :cond_42

    if-ltz v10, :cond_42

    if-gez v9, :cond_79

    .line 7125
    :cond_42
    invoke-direct {p0}, Landroid/widget/TextView;->getLastTapPosition()I

    move-result v8

    .line 7126
    .local v8, lastTapPosition:I
    if-ltz v8, :cond_4f

    .line 7127
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 7130
    :cond_4f
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_5c

    .line 7131
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 7139
    :cond_5c
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_64

    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    if-eqz v0, :cond_6f

    :cond_64
    if-ltz v10, :cond_6f

    if-ltz v9, :cond_6f

    .line 7150
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v10, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 7153
    :cond_6f
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v0, :cond_76

    .line 7154
    invoke-direct {p0}, Landroid/widget/TextView;->selectAll()V

    .line 7157
    :cond_76
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 7160
    .end local v8           #lastTapPosition:I
    :cond_79
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    .line 7161
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 7163
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_8c

    .line 7164
    iget-object v11, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spannable;

    .line 7165
    .local v11, sp:Landroid/text/Spannable;
    invoke-static {v11}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 7168
    .end local v11           #sp:Landroid/text/Spannable;
    :cond_8c
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 7170
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_96

    .line 7171
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    .line 7197
    .end local v7           #isFocusHighlighted:Z
    .end local v9           #selEnd:I
    .end local v10           #selStart:I
    :cond_96
    :goto_96
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 7199
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_a8

    .line 7200
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    .line 7203
    :cond_a8
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 7208
    if-eqz p1, :cond_7

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7209
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    .line 7210
    .local v6, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v6, :cond_7

    const/4 v0, 0x0

    invoke-virtual {v6, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto/16 :goto_7

    .line 7118
    .end local v6           #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v9       #selEnd:I
    .restart local v10       #selStart:I
    :cond_bf
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_2b

    .line 7120
    .restart local v7       #isFocusHighlighted:Z
    :cond_c3
    const/4 v0, 0x0

    goto/16 :goto_38

    .line 7174
    .end local v7           #isFocusHighlighted:Z
    .end local v9           #selEnd:I
    .end local v10           #selStart:I
    :cond_c6
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_cd

    .line 7175
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    .line 7178
    :cond_cd
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 7180
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_f0

    .line 7183
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v10

    .line 7184
    .restart local v10       #selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v9

    .line 7185
    .restart local v9       #selEnd:I
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 7186
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v10, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 7192
    .end local v9           #selEnd:I
    .end local v10           #selStart:I
    :goto_e6
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v0, :cond_96

    .line 7193
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->resetTouchOffsets()V

    goto :goto_96

    .line 7188
    :cond_f0
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    goto :goto_e6
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 7384
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1d

    .line 7386
    :try_start_e
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    :try_end_17
    .catch Ljava/lang/AbstractMethodError; {:try_start_e .. :try_end_17} :catch_1c

    move-result v0

    if-eqz v0, :cond_1d

    .line 7387
    const/4 v0, 0x1

    .line 7395
    :goto_1b
    return v0

    .line 7389
    :catch_1c
    move-exception v0

    .line 7395
    :cond_1d
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1b
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4644
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v0

    .line 4645
    .local v0, which:I
    if-nez v0, :cond_c

    .line 4647
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 4650
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x1

    goto :goto_b
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 4655
    const/4 v3, 0x0

    invoke-static {p3, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4657
    .local v0, down:Landroid/view/KeyEvent;
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v2

    .line 4658
    .local v2, which:I
    if-nez v2, :cond_11

    .line 4660
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    .line 4691
    :goto_10
    return v3

    .line 4662
    :cond_11
    const/4 v3, -0x1

    if-ne v2, v3, :cond_16

    move v3, v5

    .line 4664
    goto :goto_10

    .line 4667
    :cond_16
    add-int/lit8 p2, p2, -0x1

    .line 4674
    invoke-static {p3, v5}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 4675
    .local v1, up:Landroid/view/KeyEvent;
    if-ne v2, v5, :cond_43

    .line 4676
    iget-object v4, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 4677
    :goto_27
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_3e

    .line 4678
    iget-object v4, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v4, p0, v3, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 4679
    iget-object v4, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_27

    .line 4681
    :cond_3e
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    :cond_41
    move v3, v5

    .line 4691
    goto :goto_10

    .line 4683
    :cond_43
    const/4 v3, 0x2

    if-ne v2, v3, :cond_41

    .line 4684
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 4685
    :goto_4f
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_41

    .line 4686
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, p0, v3, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 4687
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_4f
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 7663
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v0, v1, -0x7001

    .line 7664
    .local v0, filteredMetaState:I
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 7665
    sparse-switch p1, :sswitch_data_4c

    .line 7688
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_13
    return v1

    .line 7667
    :sswitch_14
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 7668
    const v1, 0x102001f

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_13

    .line 7672
    :sswitch_22
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 7673
    const v1, 0x1020020

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_13

    .line 7677
    :sswitch_30
    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 7678
    const v1, 0x1020021

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_13

    .line 7682
    :sswitch_3e
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 7683
    const v1, 0x1020022

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_13

    .line 7665
    :sswitch_data_4c
    .sparse-switch
        0x1d -> :sswitch_14
        0x1f -> :sswitch_30
        0x32 -> :sswitch_3e
        0x34 -> :sswitch_22
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v5, 0x82

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4884
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_f

    .line 4885
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 4977
    :goto_e
    return v2

    .line 4888
    :cond_f
    sparse-switch p1, :sswitch_data_e4

    .line 4969
    :cond_12
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_c7

    .line 4970
    iget-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_c7

    move v2, v4

    .line 4971
    goto :goto_e

    .line 4890
    :sswitch_24
    iput-boolean v3, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 4891
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 4901
    iget-object v2, p0, Landroid/widget/TextView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_4d

    .line 4902
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Editable;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_4d

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 4904
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4905
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_4d

    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 4909
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_4d
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_e

    .line 4912
    :sswitch_52
    iput-boolean v3, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    .line 4913
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 4914
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v2, :cond_7a

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_7a

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-boolean v2, v2, Landroid/widget/TextView$InputContentType;->enterDown:Z

    if-eqz v2, :cond_7a

    .line 4917
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-boolean v3, v2, Landroid/widget/TextView$InputContentType;->enterDown:Z

    .line 4918
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v3, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_7a

    move v2, v4

    .line 4920
    goto :goto_e

    .line 4924
    :cond_7a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_88

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 4936
    :cond_88
    iget-object v2, p0, Landroid/widget/TextView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_c1

    .line 4937
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 4939
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_a6

    .line 4940
    invoke-virtual {v1, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_a0

    .line 4941
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4951
    :cond_a0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v2, v4

    .line 4952
    goto/16 :goto_e

    .line 4953
    :cond_a6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_c1

    .line 4957
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4958
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_c1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 4959
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4964
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #v:Landroid/view/View;
    :cond_c1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_e

    .line 4973
    :cond_c7
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_de

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_de

    .line 4974
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_de

    move v2, v4

    .line 4975
    goto/16 :goto_e

    .line 4977
    :cond_de
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_e

    .line 4888
    :sswitch_data_e4
    .sparse-switch
        0x17 -> :sswitch_24
        0x42 -> :sswitch_52
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 27
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 5738
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 5739
    .local v22, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 5740
    .local v15, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v23

    .line 5741
    .local v23, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 5746
    .local v16, heightSize:I
    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 5747
    .local v6, boring:Landroid/text/BoringLayout$Metrics;
    sget-object v7, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 5749
    .local v7, hintBoring:Landroid/text/BoringLayout$Metrics;
    const/4 v10, -0x1

    .line 5750
    .local v10, des:I
    const/4 v13, 0x0

    .line 5752
    .local v13, fromexisting:Z
    const/high16 v3, 0x4000

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_cd

    .line 5754
    move/from16 v21, v23

    .line 5838
    .local v21, width:I
    :cond_1f
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int v3, v21, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v4, v3, v4

    .line 5839
    .local v4, want:I
    move/from16 v20, v4

    .line 5841
    .local v20, unpaddedWidth:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    move v3, v0

    if-eqz v3, :cond_36

    const/16 v4, 0x4000

    .line 5843
    :cond_36
    move v5, v4

    .line 5844
    .local v5, hintWant:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object v3, v0

    if-nez v3, :cond_21d

    move/from16 v18, v5

    .line 5846
    .local v18, hintWidth:I
    :goto_40
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    if-nez v3, :cond_22a

    .line 5847
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int v3, v21, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int v8, v3, v8

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 5865
    :cond_59
    :goto_59
    const/high16 v3, 0x4000

    if-ne v15, v3, :cond_296

    .line 5867
    move/from16 v14, v16

    .line 5868
    .local v14, height:I
    const/4 v3, -0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 5880
    :cond_65
    :goto_65
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int v3, v14, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v4

    .end local v4           #want:I
    sub-int v19, v3, v4

    .line 5881
    .local v19, unpaddedHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxMode:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move v4, v0

    if-le v3, v4, :cond_9e

    .line 5882
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move v4, v0

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    move/from16 v0, v19

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 5889
    :cond_9e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v3, v0

    if-nez v3, :cond_c1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    move v0, v3

    move/from16 v1, v20

    if-gt v0, v1, :cond_c1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    move v0, v3

    move/from16 v1, v19

    if-le v0, v1, :cond_2ad

    .line 5892
    :cond_c1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 5897
    :goto_c4
    move-object/from16 v0, p0

    move/from16 v1, v21

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    .line 5898
    return-void

    .line 5756
    .end local v5           #hintWant:I
    .end local v14           #height:I
    .end local v18           #hintWidth:I
    .end local v19           #unpaddedHeight:I
    .end local v20           #unpaddedWidth:I
    .end local v21           #width:I
    :cond_cd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    if-eqz v3, :cond_e4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v3, v0

    if-nez v3, :cond_e4

    .line 5757
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-static {v3}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v10

    .line 5760
    :cond_e4
    if-gez v10, :cond_1f3

    .line 5761
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object v5, v0

    invoke-static {v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v6

    .line 5762
    if-eqz v6, :cond_100

    .line 5763
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 5769
    :cond_100
    :goto_100
    if-eqz v6, :cond_106

    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v6, v3, :cond_1f6

    .line 5770
    :cond_106
    if-gez v10, :cond_11b

    .line 5771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    invoke-static {v3, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v10, v3

    .line 5774
    :cond_11b
    move/from16 v21, v10

    .line 5779
    .restart local v21       #width:I
    :goto_11d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object v12, v0

    .line 5780
    .local v12, dr:Landroid/widget/TextView$Drawables;
    if-eqz v12, :cond_136

    .line 5781
    iget v3, v12, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 5782
    iget v3, v12, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 5785
    :cond_136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v3, v0

    if-eqz v3, :cond_19a

    .line 5786
    const/16 v17, -0x1

    .line 5789
    .local v17, hintDes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object v3, v0

    if-eqz v3, :cond_156

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v3, v0

    if-nez v3, :cond_156

    .line 5790
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-static {v3}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v17

    .line 5793
    :cond_156
    if-gez v17, :cond_172

    .line 5794
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object v5, v0

    invoke-static {v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v7

    .line 5795
    if-eqz v7, :cond_172

    .line 5796
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 5800
    :cond_172
    if-eqz v7, :cond_178

    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v7, v3, :cond_1fd

    .line 5801
    :cond_178
    if-gez v17, :cond_190

    .line 5802
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    invoke-static {v3, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v17, v0

    .line 5806
    :cond_190
    move/from16 v18, v17

    .line 5811
    .restart local v18       #hintWidth:I
    :goto_192
    move/from16 v0, v18

    move/from16 v1, v21

    if-le v0, v1, :cond_19a

    .line 5812
    move/from16 v21, v18

    .line 5816
    .end local v17           #hintDes:I
    .end local v18           #hintWidth:I
    :cond_19a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int v21, v21, v3

    .line 5818
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxWidthMode:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_203

    .line 5819
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxWidth:I

    move v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    mul-int/2addr v3, v4

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 5824
    :goto_1be
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMinWidthMode:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_210

    .line 5825
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMinWidth:I

    move v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    mul-int/2addr v3, v4

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 5831
    :goto_1d7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 5833
    const/high16 v3, -0x8000

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_1f

    .line 5834
    move/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    goto/16 :goto_1f

    .line 5766
    .end local v12           #dr:Landroid/widget/TextView$Drawables;
    .end local v21           #width:I
    :cond_1f3
    const/4 v13, 0x1

    goto/16 :goto_100

    .line 5776
    :cond_1f6
    move-object v0, v6

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v21, v0

    .restart local v21       #width:I
    goto/16 :goto_11d

    .line 5808
    .restart local v12       #dr:Landroid/widget/TextView$Drawables;
    .restart local v17       #hintDes:I
    :cond_1fd
    move-object v0, v7

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v18, v0

    .restart local v18       #hintWidth:I
    goto :goto_192

    .line 5821
    .end local v17           #hintDes:I
    .end local v18           #hintWidth:I
    :cond_203
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxWidth:I

    move v3, v0

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    goto :goto_1be

    .line 5827
    :cond_210
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMinWidth:I

    move v3, v0

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    goto :goto_1d7

    .line 5844
    .end local v12           #dr:Landroid/widget/TextView$Drawables;
    .restart local v4       #want:I
    .restart local v5       #hintWant:I
    .restart local v20       #unpaddedWidth:I
    :cond_21d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    move/from16 v18, v3

    goto/16 :goto_40

    .line 5849
    .restart local v18       #hintWidth:I
    :cond_22a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    if-ne v3, v4, :cond_250

    move/from16 v0, v18

    move v1, v5

    if-ne v0, v1, :cond_250

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v8

    sub-int v8, v21, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    if-eq v3, v8, :cond_59

    .line 5852
    :cond_250
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v3, v0

    if-nez v3, :cond_282

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v3, v0

    if-nez v3, :cond_282

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    if-le v4, v3, :cond_282

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    instance-of v3, v3, Landroid/text/BoringLayout;

    if-nez v3, :cond_278

    if-eqz v13, :cond_282

    if-ltz v10, :cond_282

    if-gt v10, v4, :cond_282

    .line 5856
    :cond_278
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3, v4}, Landroid/text/Layout;->increaseWidthTo(I)V

    goto/16 :goto_59

    .line 5858
    :cond_282
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int v3, v21, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int v8, v3, v8

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    goto/16 :goto_59

    .line 5870
    :cond_296
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v11

    .line 5872
    .local v11, desired:I
    move v14, v11

    .line 5873
    .restart local v14       #height:I
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 5875
    const/high16 v3, -0x8000

    if-ne v15, v3, :cond_65

    .line 5876
    move v0, v11

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto/16 :goto_65

    .line 5894
    .end local v4           #want:I
    .end local v11           #desired:I
    .restart local v19       #unpaddedHeight:I
    :cond_2ad
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    goto/16 :goto_c4
.end method

.method public onPreDraw()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3891
    iget v2, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-eq v2, v4, :cond_8

    move v2, v4

    .line 3946
    :goto_7
    return v2

    .line 3895
    :cond_8
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_f

    .line 3896
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 3899
    :cond_f
    const/4 v0, 0x0

    .line 3901
    .local v0, changed:Z
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_5b

    .line 3906
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 3908
    .local v1, curs:I
    iget-object v2, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v2, :cond_28

    iget-object v2, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 3910
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 3918
    :cond_28
    if-gez v1, :cond_38

    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x50

    if-ne v2, v3, :cond_38

    .line 3920
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3923
    :cond_38
    if-ltz v1, :cond_3e

    .line 3924
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    move-result v0

    .line 3933
    .end local v1           #curs:I
    :cond_3e
    :goto_3e
    iget-boolean v2, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    if-eqz v2, :cond_47

    .line 3934
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    .line 3935
    iput-boolean v5, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 3941
    :cond_47
    instance-of v2, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v2, :cond_54

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 3942
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    .line 3945
    :cond_54
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/TextView;->mPreDrawState:I

    .line 3946
    if-nez v0, :cond_60

    move v2, v4

    goto :goto_7

    .line 3927
    :cond_5b
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    move-result v0

    goto :goto_3e

    :cond_60
    move v2, v5

    .line 3946
    goto :goto_7
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .parameter "action"
    .parameter "data"

    .prologue
    .line 5446
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 10
    .parameter "state"

    .prologue
    .line 2556
    instance-of v5, p1, Landroid/widget/TextView$SavedState;

    if-nez v5, :cond_8

    .line 2557
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2603
    :cond_7
    :goto_7
    return-void

    .line 2561
    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView$SavedState;

    move-object v4, v0

    .line 2562
    .local v4, ss:Landroid/widget/TextView$SavedState;
    invoke-virtual {v4}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v5

    invoke-super {p0, v5}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2565
    iget-object v5, v4, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1c

    .line 2566
    iget-object v5, v4, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2569
    :cond_1c
    iget v5, v4, Landroid/widget/TextView$SavedState;->selStart:I

    if-ltz v5, :cond_7d

    iget v5, v4, Landroid/widget/TextView$SavedState;->selEnd:I

    if-ltz v5, :cond_7d

    .line 2570
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spannable;

    if-eqz v5, :cond_7d

    .line 2571
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2573
    .local v2, len:I
    iget v5, v4, Landroid/widget/TextView$SavedState;->selStart:I

    if-gt v5, v2, :cond_38

    iget v5, v4, Landroid/widget/TextView$SavedState;->selEnd:I

    if-le v5, v2, :cond_8d

    .line 2574
    :cond_38
    const-string v3, ""

    .line 2576
    .local v3, restored:Ljava/lang/String;
    iget-object v5, v4, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_40

    .line 2577
    const-string v3, "(restored) "

    .line 2580
    :cond_40
    const-string v5, "TextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Saved cursor position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " out of range for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "text "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    .end local v2           #len:I
    .end local v3           #restored:Ljava/lang/String;
    :cond_7d
    :goto_7d
    iget-object v5, v4, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    if-eqz v5, :cond_7

    .line 2595
    iget-object v1, v4, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 2597
    .local v1, error:Ljava/lang/CharSequence;
    new-instance v5, Landroid/widget/TextView$1;

    invoke-direct {v5, p0, v1}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7

    .line 2584
    .end local v1           #error:Ljava/lang/CharSequence;
    .restart local v2       #len:I
    :cond_8d
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spannable;

    iget v6, v4, Landroid/widget/TextView$SavedState;->selStart:I

    iget v7, v4, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-static {v5, v6, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 2587
    iget-boolean v5, v4, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    if-eqz v5, :cond_7d

    .line 2588
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    goto :goto_7d
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 14

    .prologue
    .line 2499
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 2502
    .local v9, superState:Landroid/os/Parcelable;
    iget-boolean v5, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 2503
    .local v5, save:Z
    const/4 v8, 0x0

    .line 2504
    .local v8, start:I
    const/4 v2, 0x0

    .line 2506
    .local v2, end:I
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v10, :cond_19

    .line 2507
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 2508
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 2509
    if-gez v8, :cond_18

    if-ltz v2, :cond_19

    .line 2511
    :cond_18
    const/4 v5, 0x1

    .line 2515
    :cond_19
    if-eqz v5, :cond_68

    .line 2516
    new-instance v7, Landroid/widget/TextView$SavedState;

    invoke-direct {v7, v9}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2518
    .local v7, ss:Landroid/widget/TextView$SavedState;
    iput v8, v7, Landroid/widget/TextView$SavedState;->selStart:I

    .line 2519
    iput v2, v7, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 2521
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v10, v10, Landroid/text/Spanned;

    if-eqz v10, :cond_5f

    .line 2530
    new-instance v6, Landroid/text/SpannableString;

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v6, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2533
    .local v6, sp:Landroid/text/Spannable;
    const/4 v10, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v11

    const-class v12, Landroid/widget/TextView$ChangeWatcher;

    invoke-interface {v6, v10, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TextView$ChangeWatcher;

    .local v0, arr$:[Landroid/widget/TextView$ChangeWatcher;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_40
    if-ge v3, v4, :cond_4a

    aget-object v1, v0, v3

    .line 2534
    .local v1, cw:Landroid/widget/TextView$ChangeWatcher;
    invoke-interface {v6, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2533
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 2537
    .end local v1           #cw:Landroid/widget/TextView$ChangeWatcher;
    :cond_4a
    iput-object v6, v7, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .line 2542
    .end local v0           #arr$:[Landroid/widget/TextView$ChangeWatcher;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #sp:Landroid/text/Spannable;
    :goto_4c
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_59

    if-ltz v8, :cond_59

    if-ltz v2, :cond_59

    .line 2543
    const/4 v10, 0x1

    iput-boolean v10, v7, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    .line 2546
    :cond_59
    iget-object v10, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    iput-object v10, v7, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    move-object v10, v7

    .line 2551
    .end local v7           #ss:Landroid/widget/TextView$SavedState;
    :goto_5e
    return-object v10

    .line 2539
    .restart local v7       #ss:Landroid/widget/TextView$SavedState;
    :cond_5f
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_4c

    .end local v7           #ss:Landroid/widget/TextView$SavedState;
    :cond_68
    move-object v10, v9

    .line 2551
    goto :goto_5e
.end method

.method protected onSelectionChanged(II)V
    .registers 3
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 6789
    return-void
.end method

.method protected onSetAlpha(I)Z
    .registers 4
    .parameter "alpha"

    .prologue
    .line 4115
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_42

    .line 4116
    iput p1, p0, Landroid/widget/TextView;->mCurrentAlpha:I

    .line 4117
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4118
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_40

    .line 4119
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4120
    :cond_19
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_26

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4121
    :cond_26
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_33

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4122
    :cond_33
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_40

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4124
    :cond_40
    const/4 v1, 0x1

    .line 4128
    .end local v0           #dr:Landroid/widget/TextView$Drawables;
    :goto_41
    return v1

    .line 4127
    :cond_42
    const/16 v1, 0xff

    iput v1, p0, Landroid/widget/TextView;->mCurrentAlpha:I

    .line 4128
    const/4 v1, 0x0

    goto :goto_41
.end method

.method public onStartTemporaryDetach()V
    .registers 2

    .prologue
    .line 7081
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 7084
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 7089
    :cond_a
    invoke-direct {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 7090
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6779
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .registers 15
    .parameter "id"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 8015
    const/4 v3, 0x0

    .line 8016
    .local v3, min:I
    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 8018
    .local v2, max:I
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_28

    .line 8019
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 8020
    .local v5, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 8022
    .local v4, selEnd:I
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 8023
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8026
    .end local v4           #selEnd:I
    .end local v5           #selStart:I
    :cond_28
    sparse-switch p1, :sswitch_data_aa

    move v8, v11

    .line 8076
    :goto_2c
    return v8

    .line 8028
    :sswitch_2d
    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v8, Landroid/text/Spanned;

    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {v8, v3, v2, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/URLSpan;

    .line 8029
    .local v7, urls:[Landroid/text/style/URLSpan;
    array-length v8, v7

    if-lt v8, v10, :cond_62

    .line 8030
    const/4 v0, 0x0

    .line 8031
    .local v0, clip:Landroid/content/ClipData;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3e
    array-length v8, v7

    if-ge v1, v8, :cond_5d

    .line 8032
    aget-object v8, v7, v11

    invoke-virtual {v8}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 8033
    .local v6, uri:Landroid/net/Uri;
    if-nez v0, :cond_54

    .line 8034
    invoke-static {v12, v6}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    .line 8031
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 8036
    :cond_54
    new-instance v8, Landroid/content/ClipData$Item;

    invoke-direct {v8, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v8}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_51

    .line 8039
    .end local v6           #uri:Landroid/net/Uri;
    :cond_5d
    if-eqz v0, :cond_62

    .line 8040
    invoke-direct {p0, v0}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 8043
    .end local v0           #clip:Landroid/content/ClipData;
    .end local v1           #i:I
    :cond_62
    invoke-direct {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    move v8, v10

    .line 8044
    goto :goto_2c

    .line 8047
    .end local v7           #urls:[Landroid/text/style/URLSpan;
    :sswitch_67
    iget-object v8, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v8, :cond_70

    .line 8049
    invoke-direct {p0}, Landroid/widget/TextView;->updateSelectedRegion()V

    :goto_6e
    move v8, v10

    .line 8053
    goto :goto_2c

    .line 8051
    :cond_70
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    goto :goto_6e

    .line 8058
    :sswitch_74
    invoke-direct {p0}, Landroid/widget/TextView;->selectAll()V

    move v8, v10

    .line 8059
    goto :goto_2c

    .line 8062
    :sswitch_79
    invoke-direct {p0, v3, v2}, Landroid/widget/TextView;->paste(II)V

    move v8, v10

    .line 8063
    goto :goto_2c

    .line 8066
    :sswitch_7e
    iget-object v8, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v8, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 8067
    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v8, Landroid/text/Editable;

    invoke-interface {v8, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 8068
    invoke-direct {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    move v8, v10

    .line 8069
    goto :goto_2c

    .line 8072
    :sswitch_97
    iget-object v8, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v8, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 8073
    invoke-direct {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    move v8, v10

    .line 8074
    goto :goto_2c

    .line 8026
    nop

    :sswitch_data_aa
    .sparse-switch
        0x102001f -> :sswitch_74
        0x1020020 -> :sswitch_7e
        0x1020021 -> :sswitch_97
        0x1020022 -> :sswitch_79
        0x1020023 -> :sswitch_2d
        0x102002d -> :sswitch_67
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "event"

    .prologue
    .line 7292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 7294
    .local v0, action:I
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 7295
    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/widget/TextView$InsertionPointCursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 7297
    :cond_11
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 7298
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/widget/TextView$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 7301
    :cond_1e
    if-nez v0, :cond_34

    .line 7302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/TextView;->mLastDownPositionX:I

    .line 7303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/TextView;->mLastDownPositionY:I

    .line 7307
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 7308
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/TextView;->mIgnoreActionUpEvent:Z

    .line 7311
    :cond_34
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 7318
    .local v7, superResult:Z
    iget-boolean v9, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    if-eqz v9, :cond_44

    const/4 v9, 0x1

    if-ne v0, v9, :cond_44

    .line 7319
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    move v9, v7

    .line 7379
    .end local v0           #action:I
    .end local p1
    :goto_43
    return v9

    .line 7323
    .restart local v0       #action:I
    .restart local p1
    :cond_44
    const/4 v9, 0x1

    if-ne v0, v9, :cond_f3

    iget-boolean v9, p0, Landroid/widget/TextView;->mIgnoreActionUpEvent:Z

    if-nez v9, :cond_f3

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_f3

    const/4 v9, 0x1

    move v8, v9

    .line 7326
    .local v8, touchIsFinished:Z
    :goto_53
    iget-object v9, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v9, :cond_5d

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v9

    if-eqz v9, :cond_117

    :cond_5d
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_117

    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v9, v9, Landroid/text/Spannable;

    if-eqz v9, :cond_117

    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v9, :cond_117

    .line 7328
    const/4 v1, 0x0

    .line 7330
    .local v1, handled:Z
    iget v4, p0, Landroid/widget/TextView;->mScrollX:I

    .line 7331
    .local v4, oldScrollX:I
    iget v5, p0, Landroid/widget/TextView;->mScrollY:I

    .line 7333
    .local v5, oldScrollY:I
    iget-object v9, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v9, :cond_81

    .line 7334
    iget-object v9, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local v0           #action:I
    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v9, p0, v0, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v9

    or-int/2addr v1, v9

    .line 7337
    :cond_81
    iget-boolean v9, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v9, :cond_ad

    iget v9, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v9, :cond_ad

    iget-boolean v9, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v9, :cond_ad

    if-eqz v8, :cond_ad

    .line 7340
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p1
    check-cast p1, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v10

    const-class v11, Landroid/text/style/ClickableSpan;

    invoke-interface {p1, v9, v10, v11}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    .line 7343
    .local v3, links:[Landroid/text/style/ClickableSpan;
    array-length v9, v3

    if-eqz v9, :cond_ad

    .line 7344
    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v9, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 7345
    const/4 v1, 0x1

    .line 7349
    .end local v3           #links:[Landroid/text/style/ClickableSpan;
    :cond_ad
    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v9

    if-nez v9, :cond_b7

    iget-boolean v9, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v9, :cond_ee

    .line 7350
    :cond_b7
    iget v9, p0, Landroid/widget/TextView;->mScrollX:I

    if-ne v9, v4, :cond_bf

    iget v9, p0, Landroid/widget/TextView;->mScrollY:I

    if-eq v9, v5, :cond_c2

    .line 7352
    :cond_bf
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 7355
    :cond_c2
    if-eqz v8, :cond_ee

    .line 7357
    iget-boolean v9, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v9, :cond_d7

    .line 7358
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 7359
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_f7

    const/4 v9, 0x0

    invoke-virtual {v2, p0, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_f7

    const/4 v9, 0x1

    :goto_d6
    or-int/2addr v1, v9

    .line 7362
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_d7
    iget-boolean v9, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v9, :cond_f9

    invoke-virtual {p0}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v9

    if-eqz v9, :cond_f9

    const/4 v9, 0x1

    move v6, v9

    .line 7363
    .local v6, selectAllGotFocus:Z
    :goto_e3
    if-nez v6, :cond_fc

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v9

    if-eqz v9, :cond_fc

    .line 7364
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    .line 7374
    .end local v6           #selectAllGotFocus:Z
    :cond_ee
    :goto_ee
    if-eqz v1, :cond_117

    .line 7375
    const/4 v9, 0x1

    goto/16 :goto_43

    .line 7323
    .end local v1           #handled:Z
    .end local v4           #oldScrollX:I
    .end local v5           #oldScrollY:I
    .end local v8           #touchIsFinished:Z
    .restart local v0       #action:I
    .restart local p1
    :cond_f3
    const/4 v9, 0x0

    move v8, v9

    goto/16 :goto_53

    .line 7359
    .end local v0           #action:I
    .end local p1
    .restart local v1       #handled:Z
    .restart local v2       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v4       #oldScrollX:I
    .restart local v5       #oldScrollY:I
    .restart local v8       #touchIsFinished:Z
    :cond_f7
    const/4 v9, 0x0

    goto :goto_d6

    .line 7362
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_f9
    const/4 v9, 0x0

    move v6, v9

    goto :goto_e3

    .line 7366
    .restart local v6       #selectAllGotFocus:Z
    :cond_fc
    invoke-direct {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 7367
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v9

    if-eqz v9, :cond_ee

    if-nez v6, :cond_ee

    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_ee

    .line 7368
    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView$InsertionPointCursorController;->show()V

    goto :goto_ee

    .end local v1           #handled:Z
    .end local v4           #oldScrollX:I
    .end local v5           #oldScrollY:I
    .end local v6           #selectAllGotFocus:Z
    :cond_117
    move v9, v7

    .line 7379
    goto/16 :goto_43
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 7455
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1c

    .line 7457
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 7458
    const/4 v0, 0x1

    .line 7462
    :goto_1b
    return v0

    :cond_1c
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1b
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 7258
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 7259
    if-eqz p2, :cond_8

    .line 7260
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 7262
    :cond_8
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasWindowFocus"

    .prologue
    .line 7234
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 7236
    if-eqz p1, :cond_15

    .line 7237
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_11

    .line 7238
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0}, Landroid/widget/TextView$Blink;->uncancel()V

    .line 7239
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 7253
    :cond_11
    :goto_11
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 7254
    return-void

    .line 7242
    :cond_15
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_1e

    .line 7243
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0}, Landroid/widget/TextView$Blink;->cancel()V

    .line 7246
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 7247
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_2a

    .line 7248
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/TextView$InputContentType;->enterDown:Z

    .line 7250
    :cond_2a
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    goto :goto_11
.end method

.method public performLongClick()Z
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 8171
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 8172
    iput-boolean v10, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    move v7, v10

    .line 8213
    :goto_b
    return v7

    .line 8176
    :cond_c
    const/4 v2, 0x0

    .line 8179
    .local v2, handled:Z
    iget v7, p0, Landroid/widget/TextView;->mLastDownPositionX:I

    iget v8, p0, Landroid/widget/TextView;->mLastDownPositionY:I

    invoke-direct {p0, v7, v8}, Landroid/widget/TextView;->isPositionOnText(II)Z

    move-result v7

    if-nez v7, :cond_35

    iget-boolean v7, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-eqz v7, :cond_35

    .line 8181
    iget v7, p0, Landroid/widget/TextView;->mLastDownPositionX:I

    iget v8, p0, Landroid/widget/TextView;->mLastDownPositionY:I

    invoke-virtual {p0, v7, v8}, Landroid/widget/TextView;->getOffset(II)I

    move-result v4

    .line 8182
    .local v4, offset:I
    invoke-direct {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 8183
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8184
    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/TextView$InsertionPointCursorController;->show(I)V

    .line 8185
    const/4 v2, 0x1

    .line 8188
    .end local v4           #offset:I
    :cond_35
    if-nez v2, :cond_64

    iget-object v7, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v7, :cond_64

    .line 8189
    invoke-direct {p0}, Landroid/widget/TextView;->touchPositionIsInSelection()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 8191
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 8192
    .local v6, start:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 8193
    .local v1, end:I
    iget-object v7, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v7, v6, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 8194
    .local v5, selectedText:Ljava/lang/CharSequence;
    const/4 v7, 0x0

    invoke-static {v7, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 8195
    .local v0, data:Landroid/content/ClipData;
    new-instance v3, Landroid/widget/TextView$DragLocalState;

    invoke-direct {v3, p0, v6, v1}, Landroid/widget/TextView$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    .line 8196
    .local v3, localState:Landroid/widget/TextView$DragLocalState;
    invoke-direct {p0, v5}, Landroid/widget/TextView;->getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;

    move-result-object v7

    invoke-virtual {p0, v0, v7, v3, v9}, Landroid/widget/TextView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 8197
    invoke-direct {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 8202
    .end local v0           #data:Landroid/content/ClipData;
    .end local v1           #end:I
    .end local v3           #localState:Landroid/widget/TextView$DragLocalState;
    .end local v5           #selectedText:Ljava/lang/CharSequence;
    .end local v6           #start:I
    :goto_63
    const/4 v2, 0x1

    .line 8206
    :cond_64
    if-nez v2, :cond_7b

    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    move-result v7

    if-eqz v7, :cond_7b

    move v7, v10

    :goto_6d
    or-int/2addr v2, v7

    .line 8208
    if-eqz v2, :cond_75

    .line 8209
    invoke-virtual {p0, v9}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 8210
    iput-boolean v10, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    :cond_75
    move v7, v2

    .line 8213
    goto :goto_b

    .line 8200
    :cond_77
    invoke-direct {p0}, Landroid/widget/TextView;->updateSelectedRegion()V

    goto :goto_63

    :cond_7b
    move v7, v9

    .line 8206
    goto :goto_6d
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 4
    .parameter "watcher"

    .prologue
    .line 6814
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    .line 6815
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 6817
    .local v0, i:I
    if-ltz v0, :cond_11

    .line 6818
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6821
    .end local v0           #i:I
    :cond_11
    return-void
.end method

.method reportExtractedText()Z
    .registers 12

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 5121
    iget-object v8, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 5122
    .local v8, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v8, :cond_49

    .line 5123
    iget-boolean v6, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 5124
    .local v6, contentChanged:Z
    if-nez v6, :cond_e

    iget-boolean v0, v8, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_49

    .line 5125
    :cond_e
    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 5126
    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    .line 5127
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v1, v0, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 5128
    .local v1, req:Landroid/view/inputmethod/ExtractedTextRequest;
    if-eqz v1, :cond_49

    .line 5129
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 5130
    .local v7, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_49

    .line 5134
    iget v0, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-gez v0, :cond_27

    if-nez v6, :cond_27

    .line 5135
    const/4 v0, -0x2

    iput v0, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 5137
    :cond_27
    iget v2, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    iget v3, v8, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    iget v4, v8, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    iget-object v5, v8, Landroid/widget/TextView$InputMethodState;->mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 5143
    iget v0, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v2, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v2, v2, Landroid/widget/TextView$InputMethodState;->mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v7, p0, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 5145
    iput v10, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 5146
    iput v10, v8, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 5147
    iput v9, v8, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    .line 5148
    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 5149
    const/4 v0, 0x1

    .line 5155
    .end local v1           #req:Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v6           #contentChanged:Z
    .end local v7           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_48
    return v0

    :cond_49
    move v0, v9

    goto :goto_48
.end method

.method public resetErrorChangedFlag()V
    .registers 2

    .prologue
    .line 4870
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 4871
    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter "beforeText"
    .parameter "fromIndex"
    .parameter "removedCount"
    .parameter "addedCount"

    .prologue
    .line 7930
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 7932
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 7933
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 7934
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 7935
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 7936
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7937
    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .parameter "text"

    .prologue
    .line 6854
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_19

    .line 6855
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 6856
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6857
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 6858
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextWatcher;

    invoke-interface {p0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 6857
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 6861
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_19
    return-void
.end method

.method sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6840
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_19

    .line 6841
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 6842
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6843
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 6844
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextWatcher;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 6843
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 6847
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_19
    return-void
.end method

.method public final setAutoLinkMask(I)V
    .registers 2
    .parameter "mask"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1944
    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    .line 1945
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .registers 3
    .parameter "pad"

    .prologue
    .line 1636
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1637
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_f

    .line 1638
    if-eqz v0, :cond_8

    .line 1639
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 1648
    :cond_8
    :goto_8
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1649
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1650
    return-void

    .line 1642
    :cond_f
    if-nez v0, :cond_18

    .line 1643
    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v0, p0}, Landroid/widget/TextView$Drawables;-><init>(Landroid/widget/TextView;)V

    .restart local v0       #dr:Landroid/widget/TextView$Drawables;
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1645
    :cond_18
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_8
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 12
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1460
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1462
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_c

    if-nez p2, :cond_c

    if-nez p3, :cond_c

    if-eqz p4, :cond_1f

    :cond_c
    const/4 v4, 0x1

    move v2, v4

    .line 1465
    .local v2, drawables:Z
    :goto_e
    if-nez v2, :cond_5e

    .line 1467
    if-eqz v1, :cond_18

    .line 1468
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v4, :cond_21

    .line 1469
    iput-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1558
    :cond_18
    :goto_18
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1559
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1560
    return-void

    .end local v2           #drawables:Z
    :cond_1f
    move v2, v6

    .line 1462
    goto :goto_e

    .line 1473
    .restart local v2       #drawables:Z
    :cond_21
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2a

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1474
    :cond_2a
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1475
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_35

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1476
    :cond_35
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 1477
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_40

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1478
    :cond_40
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1479
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4b

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1480
    :cond_4b
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 1481
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 1482
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 1483
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 1484
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_18

    .line 1488
    :cond_5e
    if-nez v1, :cond_67

    .line 1489
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v1, p0}, Landroid/widget/TextView$Drawables;-><init>(Landroid/widget/TextView;)V

    .restart local v1       #dr:Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1492
    :cond_67
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq v4, p1, :cond_74

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_74

    .line 1493
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1495
    :cond_74
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1497
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq v4, p2, :cond_83

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_83

    .line 1498
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1500
    :cond_83
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 1502
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq v4, p3, :cond_92

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_92

    .line 1503
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1505
    :cond_92
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1507
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq v4, p4, :cond_a1

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_a1

    .line 1508
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1510
    :cond_a1
    iput-object p4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 1512
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 1515
    .local v0, compoundRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 1517
    .local v3, state:[I
    if-eqz p1, :cond_107

    .line 1518
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1519
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1520
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1521
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 1522
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 1527
    :goto_c0
    if-eqz p3, :cond_10c

    .line 1528
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1529
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1530
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1531
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 1532
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 1537
    :goto_d7
    if-eqz p2, :cond_111

    .line 1538
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1539
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1540
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1541
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 1542
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 1547
    :goto_ee
    if-eqz p4, :cond_116

    .line 1548
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1549
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1550
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1551
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 1552
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_18

    .line 1524
    :cond_107
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    goto :goto_c0

    .line 1534
    :cond_10c
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_d7

    .line 1544
    :cond_111
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_ee

    .line 1554
    :cond_116
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_18
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .registers 10
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 1579
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1580
    .local v0, resources:Landroid/content/res/Resources;
    if-eqz p1, :cond_25

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_f
    if-eqz p2, :cond_27

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_15
    if-eqz p3, :cond_29

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1b
    if-eqz p4, :cond_21

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_21
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1584
    return-void

    :cond_25
    move-object v1, v4

    .line 1580
    goto :goto_f

    :cond_27
    move-object v2, v4

    goto :goto_15

    :cond_29
    move-object v3, v4

    goto :goto_1b
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 1600
    if-eqz p1, :cond_e

    .line 1601
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1603
    :cond_e
    if-eqz p3, :cond_1b

    .line 1604
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1606
    :cond_1b
    if-eqz p2, :cond_28

    .line 1607
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1609
    :cond_28
    if-eqz p4, :cond_35

    .line 1610
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1612
    :cond_35
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1613
    return-void
.end method

.method public setCursorVisible(Z)V
    .registers 3
    .parameter "visible"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 6571
    iget-boolean v0, p0, Landroid/widget/TextView;->mCursorVisible:Z

    if-eq v0, p1, :cond_f

    .line 6572
    iput-boolean p1, p0, Landroid/widget/TextView;->mCursorVisible:Z

    .line 6573
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6575
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 6578
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 6580
    :cond_f
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .registers 2
    .parameter "actionModeCallback"

    .prologue
    .line 8273
    iput-object p1, p0, Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 8274
    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .registers 3
    .parameter "factory"

    .prologue
    .line 2641
    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 2642
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2643
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 3
    .parameter "where"

    .prologue
    .line 6521
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 6523
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_f

    .line 6524
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 6525
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 6526
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6528
    :cond_f
    return-void
.end method

.method public setEms(I)V
    .registers 3
    .parameter "ems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2313
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2314
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2316
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2317
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2318
    return-void
.end method

.method public setEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 1053
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-ne p1, v1, :cond_7

    .line 1065
    :goto_6
    return-void

    .line 1057
    :cond_7
    if-nez p1, :cond_1d

    .line 1059
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1060
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1d

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1061
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1064
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1d
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_6
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "error"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3440
    if-nez p1, :cond_8

    .line 3441
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 3449
    :goto_7
    return-void

    .line 3443
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080328

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3446
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3447
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .parameter "error"
    .parameter "icon"

    .prologue
    const/4 v4, 0x0

    .line 3461
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3463
    iput-object p1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    .line 3464
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 3465
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3466
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_2d

    .line 3467
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v2, p2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3472
    :goto_17
    if-nez p1, :cond_31

    .line 3473
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v1, :cond_2c

    .line 3474
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3475
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->dismiss()V

    .line 3478
    :cond_2a
    iput-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    .line 3485
    :cond_2c
    :goto_2c
    return-void

    .line 3469
    :cond_2d
    invoke-virtual {p0, v4, v4, p2, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 3481
    :cond_31
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 3482
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    goto :goto_2c
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .registers 10
    .parameter "text"

    .prologue
    const/4 v7, 0x0

    .line 5177
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 5178
    .local v1, content:Landroid/text/Editable;
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_12

    .line 5179
    if-nez v1, :cond_33

    .line 5180
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v6, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 5199
    :cond_12
    :goto_12
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .line 5200
    .local v3, sp:Landroid/text/Spannable;
    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 5201
    .local v0, N:I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 5202
    .local v4, start:I
    if-gez v4, :cond_5f

    const/4 v4, 0x0

    .line 5204
    :cond_21
    :goto_21
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 5205
    .local v2, end:I
    if-gez v2, :cond_63

    const/4 v2, 0x0

    .line 5207
    :cond_26
    :goto_26
    invoke-static {v3, v4, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5210
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_67

    .line 5211
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 5215
    :goto_32
    return-void

    .line 5181
    .end local v0           #N:I
    .end local v2           #end:I
    .end local v3           #sp:Landroid/text/Spannable;
    .end local v4           #start:I
    :cond_33
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-gez v5, :cond_48

    .line 5182
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v1, v7, v5}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 5183
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    iget-object v6, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_12

    .line 5185
    :cond_48
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 5186
    .restart local v0       #N:I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 5187
    .restart local v4       #start:I
    if-le v4, v0, :cond_51

    move v4, v0

    .line 5188
    :cond_51
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 5189
    .restart local v2       #end:I
    if-le v2, v0, :cond_56

    move v2, v0

    .line 5190
    :cond_56
    invoke-static {v1, v4, v2}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 5191
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v4, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_12

    .line 5203
    .end local v2           #end:I
    .restart local v3       #sp:Landroid/text/Spannable;
    :cond_5f
    if-le v4, v0, :cond_21

    move v4, v0

    goto :goto_21

    .line 5206
    .restart local v2       #end:I
    :cond_63
    if-le v2, v0, :cond_26

    move v2, v0

    goto :goto_26

    .line 5213
    :cond_67
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_32
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .registers 3
    .parameter "req"

    .prologue
    .line 5221
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-eqz v0, :cond_8

    .line 5222
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iput-object p1, v0, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 5225
    :cond_8
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 5226
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .registers 3
    .parameter "filters"

    .prologue
    .line 3677
    if-nez p1, :cond_8

    .line 3678
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3681
    :cond_8
    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 3683
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_17

    .line 3684
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 3686
    :cond_17
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 13
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3649
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v6

    .line 3651
    .local v6, result:Z
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v0, :cond_31

    .line 3652
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 3653
    .local v7, tv:Landroid/widget/TextView;
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v7}, Landroid/widget/TextView;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 3654
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorX()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorY()I

    move-result v3

    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->getWidth()I

    move-result v4

    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->getHeight()I

    move-result v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView$ErrorPopup;->update(Landroid/view/View;IIII)V

    .line 3658
    .end local v7           #tv:Landroid/widget/TextView;
    :cond_31
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 3660
    return v6
.end method

.method public setFreezesText(Z)V
    .registers 2
    .parameter "freezesText"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2620
    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 2621
    return-void
.end method

.method public setGravity(I)V
    .registers 10
    .parameter "gravity"

    .prologue
    .line 2065
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_6

    .line 2066
    or-int/lit8 p1, p1, 0x3

    .line 2068
    :cond_6
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_c

    .line 2069
    or-int/lit8 p1, p1, 0x30

    .line 2072
    :cond_c
    const/4 v7, 0x0

    .line 2074
    .local v7, newLayout:Z
    and-int/lit8 v0, p1, 0x7

    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v3, v3, 0x7

    if-eq v0, v3, :cond_16

    .line 2076
    const/4 v7, 0x1

    .line 2079
    :cond_16
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    if-eq p1, v0, :cond_1d

    .line 2080
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2083
    :cond_1d
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    .line 2085
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4a

    if-eqz v7, :cond_4a

    .line 2087
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 2088
    .local v1, want:I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_4b

    const/4 v0, 0x0

    move v2, v0

    .line 2090
    .local v2, hintWant:I
    :goto_31
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 2094
    .end local v1           #want:I
    .end local v2           #hintWant:I
    :cond_4a
    return-void

    .line 2088
    .restart local v1       #want:I
    :cond_4b
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    move v2, v0

    goto :goto_31
.end method

.method public setHeight(I)V
    .registers 3
    .parameter "pixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2243
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2244
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2246
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2247
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2248
    return-void
.end method

.method public setHighlightColor(I)V
    .registers 3
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1902
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    if-eq v0, p1, :cond_9

    .line 1903
    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    .line 1904
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1906
    :cond_9
    return-void
.end method

.method public final setHint(I)V
    .registers 3
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3019
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 3020
    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "hint"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3000
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 3002
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_d

    .line 3003
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 3006
    :cond_d
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_18

    .line 3007
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3009
    :cond_18
    return-void
.end method

.method public final setHintTextColor(I)V
    .registers 3
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1994
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 1995
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 1996
    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2
    .parameter "colors"

    .prologue
    .line 2004
    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 2005
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2006
    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .registers 3
    .parameter "whether"

    .prologue
    .line 2139
    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    .line 2141
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_f

    .line 2142
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2143
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2144
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2146
    :cond_f
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "label"
    .parameter "actionId"

    .prologue
    .line 3229
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_b

    .line 3230
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3232
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    .line 3233
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput p2, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    .line 3234
    return-void
.end method

.method public setImeOptions(I)V
    .registers 3
    .parameter "imeOptions"

    .prologue
    .line 3201
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_b

    .line 3202
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3204
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput p1, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    .line 3205
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .registers 3
    .parameter "includepad"

    .prologue
    .line 5725
    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    .line 5727
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_f

    .line 5728
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 5729
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5730
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 5732
    :cond_f
    return-void
.end method

.method public setInputExtras(I)V
    .registers 5
    .parameter "xmlResId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3393
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 3394
    .local v0, parser:Landroid/content/res/XmlResourceParser;
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v1, :cond_13

    new-instance v1, Landroid/widget/TextView$InputContentType;

    invoke-direct {v1, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3395
    :cond_13
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    .line 3396
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    .line 3397
    return-void
.end method

.method public setInputType(I)V
    .registers 14
    .parameter "type"

    .prologue
    const/4 v11, 0x3

    const/4 v8, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3054
    iget v7, p0, Landroid/widget/TextView;->mInputType:I

    invoke-direct {p0, v7}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v5

    .line 3055
    .local v5, wasPassword:Z
    iget v7, p0, Landroid/widget/TextView;->mInputType:I

    invoke-direct {p0, v7}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v6

    .line 3056
    .local v6, wasVisiblePassword:Z
    invoke-direct {p0, p1, v9}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 3057
    invoke-direct {p0, p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v2

    .line 3058
    .local v2, isPassword:Z
    invoke-direct {p0, p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v3

    .line 3059
    .local v3, isVisiblePassword:Z
    const/4 v0, 0x0

    .line 3060
    .local v0, forceUpdate:Z
    if-eqz v2, :cond_45

    .line 3061
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 3062
    invoke-direct {p0, v11, v9}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 3076
    :cond_28
    :goto_28
    invoke-direct {p0, p1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v7

    if-nez v7, :cond_65

    move v4, v10

    .line 3080
    .local v4, singleLine:Z
    :goto_2f
    iget-boolean v7, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-ne v7, v4, :cond_35

    if-eqz v0, :cond_3b

    .line 3083
    :cond_35
    if-nez v2, :cond_67

    move v7, v10

    :goto_38
    invoke-direct {p0, v4, v7, v10}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 3086
    :cond_3b
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 3087
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_44

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3088
    :cond_44
    return-void

    .line 3063
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v4           #singleLine:Z
    :cond_45
    if-eqz v3, :cond_54

    .line 3064
    iget-object v7, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v8

    if-ne v7, v8, :cond_50

    .line 3065
    const/4 v0, 0x1

    .line 3067
    :cond_50
    invoke-direct {p0, v11, v9}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    goto :goto_28

    .line 3068
    :cond_54
    if-nez v5, :cond_58

    if-eqz v6, :cond_28

    .line 3070
    :cond_58
    invoke-direct {p0, v8, v8}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 3071
    iget-object v7, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v8

    if-ne v7, v8, :cond_28

    .line 3072
    const/4 v0, 0x1

    goto :goto_28

    :cond_65
    move v4, v9

    .line 3076
    goto :goto_2f

    .restart local v4       #singleLine:Z
    :cond_67
    move v7, v9

    .line 3083
    goto :goto_38
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .registers 5
    .parameter "input"

    .prologue
    .line 1191
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    .line 1192
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 1194
    if-eqz p1, :cond_25

    .line 1196
    :try_start_8
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    invoke-interface {v2}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView;->mInputType:I
    :try_end_10
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_8 .. :try_end_10} :catch_1f

    .line 1202
    :goto_10
    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 1207
    :goto_15
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1208
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1e

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1209
    :cond_1e
    return-void

    .line 1197
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :catch_1f
    move-exception v2

    move-object v0, v2

    .line 1198
    .local v0, e:Ljava/lang/IncompatibleClassChangeError;
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_10

    .line 1204
    .end local v0           #e:Ljava/lang/IncompatibleClassChangeError;
    :cond_25
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_15
.end method

.method public setLineSpacing(FF)V
    .registers 4
    .parameter "add"
    .parameter "mult"

    .prologue
    .line 2345
    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    .line 2346
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 2348
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_11

    .line 2349
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2350
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2351
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2353
    :cond_11
    return-void
.end method

.method public setLines(I)V
    .registers 3
    .parameter "lines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2224
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2225
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2227
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2228
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2229
    return-void
.end method

.method public final setLinkTextColor(I)V
    .registers 3
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2033
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 2034
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2035
    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2
    .parameter "colors"

    .prologue
    .line 2043
    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 2044
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2045
    return-void
.end method

.method public final setLinksClickable(Z)V
    .registers 2
    .parameter "whether"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1957
    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    .line 1958
    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .registers 2
    .parameter "marqueeLimit"

    .prologue
    .line 6537
    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 6538
    return-void
.end method

.method public setMaxEms(I)V
    .registers 3
    .parameter "maxems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2285
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2286
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2288
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2289
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2290
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 3
    .parameter "maxHeight"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2207
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2208
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2210
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2211
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2212
    return-void
.end method

.method public setMaxLines(I)V
    .registers 3
    .parameter "maxlines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2190
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2191
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2193
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2194
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2195
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 3
    .parameter "maxpixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2299
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2300
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2302
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2303
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2304
    return-void
.end method

.method public setMinEms(I)V
    .registers 3
    .parameter "minems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2257
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 2258
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 2260
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2261
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2262
    return-void
.end method

.method public setMinHeight(I)V
    .registers 3
    .parameter "minHeight"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2174
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 2175
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 2177
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2178
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2179
    return-void
.end method

.method public setMinLines(I)V
    .registers 3
    .parameter "minlines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2158
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 2159
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 2161
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2162
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2163
    return-void
.end method

.method public setMinWidth(I)V
    .registers 3
    .parameter "minpixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2271
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 2272
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 2274
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2275
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2276
    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .registers 3
    .parameter "movement"

    .prologue
    .line 1239
    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 1241
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_11

    .line 1242
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1244
    :cond_11
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 1247
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 1248
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 3267
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_b

    .line 3268
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3270
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 3271
    return-void
.end method

.method public setPadding(IIII)V
    .registers 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1662
    iget v0, p0, Landroid/widget/TextView;->mPaddingLeft:I

    if-ne p1, v0, :cond_10

    iget v0, p0, Landroid/widget/TextView;->mPaddingRight:I

    if-ne p3, v0, :cond_10

    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    if-ne p2, v0, :cond_10

    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    if-eq p4, v0, :cond_13

    .line 1666
    :cond_10
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 1670
    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 1671
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1672
    return-void
.end method

.method public setPaintFlags(I)V
    .registers 3
    .parameter "flags"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2121
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_1a

    .line 2122
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 2124
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1a

    .line 2125
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2126
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2127
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2130
    :cond_1a
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 3365
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_b

    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3366
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    .line 3367
    return-void
.end method

.method public setRawInputType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 3135
    iput p1, p0, Landroid/widget/TextView;->mInputType:I

    .line 3136
    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 7466
    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 7467
    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .registers 4
    .parameter "selectAllOnFocus"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 6557
    iput-boolean p1, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 6559
    if-eqz p1, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_11

    .line 6560
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 6562
    :cond_11
    return-void
.end method

.method public setSelected(Z)V
    .registers 5
    .parameter "selected"

    .prologue
    .line 7277
    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    .line 7279
    .local v0, wasSelected:Z
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 7281
    if-eq p1, v0, :cond_14

    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_14

    .line 7282
    if-eqz p1, :cond_15

    .line 7283
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 7288
    :cond_14
    :goto_14
    return-void

    .line 7285
    :cond_15
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_14
.end method

.method public setShadowLayer(FFFI)V
    .registers 6
    .parameter "radius"
    .parameter "dx"
    .parameter "dy"
    .parameter "color"

    .prologue
    .line 1918
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 1920
    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    .line 1921
    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    .line 1922
    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    .line 1924
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1925
    return-void
.end method

.method public setSingleLine()V
    .registers 2

    .prologue
    .line 6456
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 6457
    return-void
.end method

.method public setSingleLine(Z)V
    .registers 3
    .parameter "singleLine"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 6473
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 6474
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 6475
    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .registers 3
    .parameter "factory"

    .prologue
    .line 2649
    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 2650
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2651
    return-void
.end method

.method public final setText(I)V
    .registers 3
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2984
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2985
    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .registers 4
    .parameter "resid"
    .parameter "type"

    .prologue
    .line 2988
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2989
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2666
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2667
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 5
    .parameter "text"
    .parameter "type"

    .prologue
    .line 2691
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 2693
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz v0, :cond_f

    .line 2694
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TextView$CharWrapper;->mChars:[C
    invoke-static {v0, v1}, Landroid/widget/TextView$CharWrapper;->access$102(Landroid/widget/TextView$CharWrapper;[C)[C

    .line 2696
    :cond_f
    return-void
.end method

.method public final setText([CII)V
    .registers 8
    .parameter "text"
    .parameter "start"
    .parameter "len"

    .prologue
    const/4 v3, 0x0

    .line 2848
    const/4 v0, 0x0

    .line 2850
    .local v0, oldlen:I
    if-ltz p2, :cond_b

    if-ltz p3, :cond_b

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_28

    .line 2851
    :cond_b
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2859
    :cond_28
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4a

    .line 2860
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2861
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v3, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 2866
    :goto_37
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v1, :cond_50

    .line 2867
    new-instance v1, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 2872
    :goto_42
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 2873
    return-void

    .line 2863
    :cond_4a
    const-string v1, ""

    invoke-direct {p0, v1, v3, v3, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_37

    .line 2869
    :cond_50
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    goto :goto_42
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 12
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1690
    sget-object v6, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1698
    .local v0, appearance:Landroid/content/res/TypedArray;
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 1699
    .local v1, color:I
    if-eqz v1, :cond_12

    .line 1700
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1703
    :cond_12
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1705
    .local v2, colors:Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1c

    .line 1706
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1709
    :cond_1c
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 1711
    .local v4, ts:I
    if-eqz v4, :cond_26

    .line 1712
    int-to-float v6, v4

    invoke-direct {p0, v6}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 1715
    :cond_26
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1717
    if-eqz v2, :cond_30

    .line 1718
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 1721
    :cond_30
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1723
    if-eqz v2, :cond_3a

    .line 1724
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 1729
    :cond_3a
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 1731
    .local v5, typefaceIndex:I
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 1734
    .local v3, styleIndex:I
    invoke-direct {p0, v5, v3}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 1736
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1737
    return-void
.end method

.method public setTextColor(I)V
    .registers 3
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1859
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 1860
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 1861
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .parameter "colors"

    .prologue
    .line 1869
    if-nez p1, :cond_8

    .line 1870
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1873
    :cond_8
    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 1874
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 1875
    return-void
.end method

.method public setTextIsSelectable(Z)V
    .registers 4
    .parameter "selectable"

    .prologue
    .line 4163
    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-ne v0, p1, :cond_5

    .line 4179
    :goto_4
    return-void

    .line 4165
    :cond_5
    iput-boolean p1, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    .line 4167
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 4168
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 4169
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 4170
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 4174
    if-eqz p1, :cond_2b

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    :goto_19
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 4175
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p1, :cond_2d

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    :goto_24
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4178
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    goto :goto_4

    .line 4174
    :cond_2b
    const/4 v0, 0x0

    goto :goto_19

    .line 4175
    :cond_2d
    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_24
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2679
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2680
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 9
    .parameter "text"
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    .line 2967
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 2968
    .local v2, start:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 2969
    .local v0, end:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2971
    .local v1, len:I
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2973
    if-gez v2, :cond_14

    if-ltz v0, :cond_31

    .line 2974
    :cond_14
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_31

    .line 2975
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {p0, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 2980
    :cond_31
    return-void
.end method

.method public setTextScaleX(F)V
    .registers 3
    .parameter "size"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1809
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1f

    .line 1810
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    .line 1811
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 1813
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1f

    .line 1814
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 1815
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1816
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1819
    :cond_1f
    return-void
.end method

.method public setTextSize(F)V
    .registers 3
    .parameter "size"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1757
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1758
    return-void
.end method

.method public setTextSize(IF)V
    .registers 6
    .parameter "unit"
    .parameter "size"

    .prologue
    .line 1770
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1773
    .local v0, c:Landroid/content/Context;
    if-nez v0, :cond_16

    .line 1774
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1778
    .local v1, r:Landroid/content/res/Resources;
    :goto_a
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 1780
    return-void

    .line 1776
    .end local v1           #r:Landroid/content/res/Resources;
    :cond_16
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1       #r:Landroid/content/res/Resources;
    goto :goto_a
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .registers 4
    .parameter "method"

    .prologue
    .line 1279
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-ne p1, v0, :cond_5

    .line 1293
    :goto_4
    return-void

    .line 1284
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_18

    .line 1285
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_18

    .line 1286
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1290
    :cond_18
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 1292
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .parameter "tf"

    .prologue
    .line 1832
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_1a

    .line 1833
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1835
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1a

    .line 1836
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 1837
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1838
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1841
    :cond_1a
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .registers 9
    .parameter "tf"
    .parameter "style"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1077
    if-lez p2, :cond_39

    .line 1078
    if-nez p1, :cond_2e

    .line 1079
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 1084
    :goto_a
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1086
    if-eqz p1, :cond_33

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    move v1, v2

    .line 1087
    .local v1, typefaceStyle:I
    :goto_14
    xor-int/lit8 v2, v1, -0x1

    and-int v0, p2, v2

    .line 1088
    .local v0, need:I
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_35

    const/4 v3, 0x1

    :goto_1f
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1089
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_37

    const/high16 v3, -0x4180

    :goto_2a
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1095
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :goto_2d
    return-void

    .line 1081
    :cond_2e
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_a

    :cond_33
    move v1, v4

    .line 1086
    goto :goto_14

    .restart local v0       #need:I
    .restart local v1       #typefaceStyle:I
    :cond_35
    move v3, v4

    .line 1088
    goto :goto_1f

    :cond_37
    move v3, v5

    .line 1089
    goto :goto_2a

    .line 1091
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_39
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1092
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1093
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2d
.end method

.method public setWidth(I)V
    .registers 3
    .parameter "pixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2329
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2330
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2332
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2333
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2334
    return-void
.end method

.method spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .registers 14
    .parameter "buf"
    .parameter "what"
    .parameter "oldStart"
    .parameter "newStart"
    .parameter "oldEnd"
    .parameter "newEnd"

    .prologue
    const/4 v6, 0x1

    .line 6901
    const/4 v4, 0x0

    .line 6902
    .local v4, selChanged:Z
    const/4 v3, -0x1

    .local v3, newSelStart:I
    const/4 v2, -0x1

    .line 6904
    .local v2, newSelEnd:I
    iget-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 6906
    .local v1, ims:Landroid/widget/TextView$InputMethodState;
    sget-object v5, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v5, :cond_27

    .line 6907
    iput-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6908
    const/4 v4, 0x1

    .line 6909
    move v2, p4

    .line 6911
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_16

    .line 6912
    iput-boolean v6, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 6915
    :cond_16
    if-gez p3, :cond_1a

    if-ltz p4, :cond_27

    .line 6916
    :cond_1a
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-direct {p0, v5, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 6917
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 6918
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 6922
    :cond_27
    sget-object v5, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v5, :cond_42

    .line 6923
    iput-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6924
    const/4 v4, 0x1

    .line 6925
    move v3, p4

    .line 6927
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_37

    .line 6928
    iput-boolean v6, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 6931
    :cond_37
    if-gez p3, :cond_3b

    if-ltz p4, :cond_42

    .line 6932
    :cond_3b
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 6933
    .local v0, end:I
    invoke-direct {p0, v0, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 6937
    .end local v0           #end:I
    :cond_42
    if-eqz v4, :cond_5b

    .line 6938
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_5b

    .line 6939
    if-gez v3, :cond_52

    .line 6940
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 6942
    :cond_52
    if-gez v2, :cond_58

    .line 6943
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 6945
    :cond_58
    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    .line 6949
    :cond_5b
    instance-of v5, p2, Landroid/text/style/UpdateAppearance;

    if-nez v5, :cond_63

    instance-of v5, p2, Landroid/text/style/ParagraphStyle;

    if-eqz v5, :cond_71

    .line 6951
    :cond_63
    if-eqz v1, :cond_69

    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_bd

    .line 6952
    :cond_69
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6953
    iput-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6954
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 6960
    :cond_71
    :goto_71
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 6961
    iput-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6962
    if-eqz v1, :cond_83

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 6963
    iput-boolean v6, v1, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    .line 6966
    :cond_83
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    if-ltz v5, :cond_92

    .line 6967
    if-eqz v1, :cond_8f

    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_c0

    .line 6968
    :cond_8f
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 6975
    :cond_92
    :goto_92
    instance-of v5, p2, Landroid/text/ParcelableSpan;

    if-eqz v5, :cond_bc

    .line 6978
    if-eqz v1, :cond_bc

    iget-object v5, v1, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v5, :cond_bc

    .line 6979
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-eqz v5, :cond_c3

    .line 6980
    if-ltz p3, :cond_ae

    .line 6981
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p3, :cond_a8

    .line 6982
    iput p3, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6984
    :cond_a8
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p5, :cond_ae

    .line 6985
    iput p5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6988
    :cond_ae
    if-ltz p4, :cond_bc

    .line 6989
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p4, :cond_b6

    .line 6990
    iput p4, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6992
    :cond_b6
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p6, :cond_bc

    .line 6993
    iput p6, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 7004
    :cond_bc
    :goto_bc
    return-void

    .line 6956
    :cond_bd
    iput-boolean v6, v1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_71

    .line 6970
    :cond_c0
    iput-boolean v6, v1, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    goto :goto_92

    .line 7000
    :cond_c3
    iput-boolean v6, v1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_bc
.end method

.method updateAfterEdit()V
    .registers 4

    .prologue
    .line 5406
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 5407
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 5409
    .local v0, curs:I
    if-gez v0, :cond_11

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_14

    .line 5410
    :cond_11
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 5413
    :cond_14
    if-ltz v0, :cond_1c

    .line 5414
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5415
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 5418
    :cond_1c
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 5419
    return-void
.end method

.method protected updateCursorControllerPositions()V
    .registers 1

    .prologue
    .line 4559
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 4
    .parameter "who"

    .prologue
    .line 4036
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 4037
    .local v0, verified:Z
    if-nez v0, :cond_26

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_26

    .line 4038
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_22

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_22

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_22

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_24

    :cond_22
    const/4 v1, 0x1

    .line 4041
    :goto_23
    return v1

    .line 4038
    :cond_24
    const/4 v1, 0x0

    goto :goto_23

    :cond_26
    move v1, v0

    .line 4041
    goto :goto_23
.end method
