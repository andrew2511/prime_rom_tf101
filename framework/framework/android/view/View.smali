.class public Landroid/view/View;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/accessibility/AccessibilityEventSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$ScrollabilityCache;,
        Landroid/view/View$AttachInfo;,
        Landroid/view/View$BaseSavedState;,
        Landroid/view/View$UnsetPressedState;,
        Landroid/view/View$OnAttachStateChangeListener;,
        Landroid/view/View$OnSystemUiVisibilityChangeListener;,
        Landroid/view/View$OnCreateContextMenuListener;,
        Landroid/view/View$OnClickListener;,
        Landroid/view/View$OnFocusChangeListener;,
        Landroid/view/View$OnDragListener;,
        Landroid/view/View$OnLongClickListener;,
        Landroid/view/View$OnGenericMotionListener;,
        Landroid/view/View$OnTouchListener;,
        Landroid/view/View$OnKeyListener;,
        Landroid/view/View$PerformClick;,
        Landroid/view/View$CheckForTap;,
        Landroid/view/View$CheckForLongPress;,
        Landroid/view/View$MeasureSpec;,
        Landroid/view/View$DragShadowBuilder;,
        Landroid/view/View$OnLayoutChangeListener;
    }
.end annotation


# static fields
.field static final ACTIVATED:I = 0x40000000

.field static final ALPHA_SET:I = 0x40000

.field static final ANIMATION_STARTED:I = 0x10000

.field private static final AWAKEN_SCROLL_BARS_ON_ATTACH:I = 0x8000000

.field static final CANCEL_NEXT_UP_EVENT:I = 0x4000000

.field static final CLICKABLE:I = 0x4000

.field private static final DBG:Z = false

.field static final DIRTY:I = 0x200000

.field static final DIRTY_MASK:I = 0x600000

.field static final DIRTY_OPAQUE:I = 0x400000

.field static final DISABLED:I = 0x20

.field public static final DRAG_FLAG_GLOBAL:I = 0x1

.field static final DRAWABLE_STATE_DIRTY:I = 0x400

.field static final DRAWING_CACHE_ENABLED:I = 0x8000

.field public static final DRAWING_CACHE_QUALITY_AUTO:I = 0x0

.field private static final DRAWING_CACHE_QUALITY_FLAGS:[I = null

.field public static final DRAWING_CACHE_QUALITY_HIGH:I = 0x100000

.field public static final DRAWING_CACHE_QUALITY_LOW:I = 0x80000

.field static final DRAWING_CACHE_QUALITY_MASK:I = 0x180000

.field static final DRAWING_CACHE_VALID:I = 0x8000

.field static final DRAWN:I = 0x20

.field static final DRAW_ANIMATION:I = 0x40

.field static final DRAW_MASK:I = 0x80

.field static final DUPLICATE_PARENT_STATE:I = 0x400000

.field protected static final EMPTY_STATE_SET:[I = null

.field static final ENABLED:I = 0x0

.field protected static final ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final ENABLED_MASK:I = 0x20

.field protected static final ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_STATE_SET:[I = null

.field protected static final ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final FADING_EDGE_HORIZONTAL:I = 0x1000

.field static final FADING_EDGE_MASK:I = 0x3000

.field static final FADING_EDGE_NONE:I = 0x0

.field static final FADING_EDGE_VERTICAL:I = 0x2000

.field static final FILTER_TOUCHES_WHEN_OBSCURED:I = 0x400

.field private static final FITS_SYSTEM_WINDOWS:I = 0x2

.field private static final FOCUSABLE:I = 0x1

.field public static final FOCUSABLES_ALL:I = 0x0

.field public static final FOCUSABLES_TOUCH_MODE:I = 0x1

.field static final FOCUSABLE_IN_TOUCH_MODE:I = 0x40000

.field private static final FOCUSABLE_MASK:I = 0x1

.field static final FOCUSED:I = 0x2

.field protected static final FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field static final FORCE_LAYOUT:I = 0x1000

.field public static final GONE:I = 0x8

.field public static final HAPTIC_FEEDBACK_ENABLED:I = 0x10000000

.field static final HAS_BOUNDS:I = 0x10

.field static final INVALIDATED:I = -0x80000000

.field public static final INVISIBLE:I = 0x4

.field static final IS_ROOT_NAMESPACE:I = 0x8

.field public static final KEEP_SCREEN_ON:I = 0x4000000

.field public static final LAYER_TYPE_HARDWARE:I = 0x2

.field public static final LAYER_TYPE_NONE:I = 0x0

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1

.field static final LAYOUT_REQUIRED:I = 0x2000

.field static final LONG_CLICKABLE:I = 0x200000

.field static final MEASURED_DIMENSION_SET:I = 0x800

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10

.field public static final MEASURED_SIZE_MASK:I = 0xffffff

.field public static final MEASURED_STATE_MASK:I = -0x1000000

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000

.field private static final NONZERO_EPSILON:F = 0.001f

.field private static final NOT_FOCUSABLE:I = 0x0

.field public static final NO_ID:I = -0x1

.field static final ONLY_DRAWS_BACKGROUND:I = 0x100

.field static final OPAQUE_BACKGROUND:I = 0x800000

.field static final OPAQUE_MASK:I = 0x1800000

.field static final OPAQUE_SCROLLBARS:I = 0x1000000

.field public static final OVER_SCROLL_ALWAYS:I = 0x0

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1

.field public static final OVER_SCROLL_NEVER:I = 0x2

.field static final PARENT_SAVE_DISABLED:I = 0x20000000

.field static final PARENT_SAVE_DISABLED_MASK:I = 0x20000000

.field private static final PIVOT_EXPLICITLY_SET:I = 0x20000000

.field private static final PREPRESSED:I = 0x2000000

.field private static final PRESSED:I = 0x4000

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_STATE_SET:[I = null

.field protected static final PRESSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field public static final PUBLIC_STATUS_BAR_VISIBILITY_MASK:I = 0x1

.field static final REQUEST_TRANSPARENT_REGIONS:I = 0x200

.field static final SAVE_DISABLED:I = 0x10000

.field static final SAVE_DISABLED_MASK:I = 0x10000

.field private static final SAVE_STATE_CALLED:I = 0x20000

.field static final SCROLLBARS_HORIZONTAL:I = 0x100

.field static final SCROLLBARS_INSET_MASK:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_INSET:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_OVERLAY:I = 0x0

.field static final SCROLLBARS_MASK:I = 0x300

.field static final SCROLLBARS_NONE:I = 0x0

.field public static final SCROLLBARS_OUTSIDE_INSET:I = 0x3000000

.field static final SCROLLBARS_OUTSIDE_MASK:I = 0x2000000

.field public static final SCROLLBARS_OUTSIDE_OVERLAY:I = 0x2000000

.field static final SCROLLBARS_STYLE_MASK:I = 0x3000000

.field static final SCROLLBARS_VERTICAL:I = 0x200

.field public static final SCROLLBAR_POSITION_DEFAULT:I = 0x0

.field public static final SCROLLBAR_POSITION_LEFT:I = 0x1

.field public static final SCROLLBAR_POSITION_RIGHT:I = 0x2

.field static final SCROLL_CONTAINER:I = 0x80000

.field static final SCROLL_CONTAINER_ADDED:I = 0x100000

.field static final SELECTED:I = 0x4

.field protected static final SELECTED_STATE_SET:[I = null

.field protected static final SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final SKIP_DRAW:I = 0x80

.field public static final SOUND_EFFECTS_ENABLED:I = 0x8000000

.field public static final STATUS_BAR_DISABLE_BACK:I = 0x400000

.field public static final STATUS_BAR_DISABLE_CLOCK:I = 0x800000

.field public static final STATUS_BAR_DISABLE_EXPAND:I = 0x10000

.field public static final STATUS_BAR_DISABLE_NAVIGATION:I = 0x200000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_ICONS_FOR_ASUSSETUPWIZARD:I = 0x1000000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_TICKER:I = 0x80000

.field public static final STATUS_BAR_DISABLE_SYSTEM_INFO:I = 0x100000

.field public static final STATUS_BAR_HIDDEN:I = 0x1

.field public static final STATUS_BAR_VISIBLE:I = 0x0

.field protected static final VIEW_LOG_TAG:Ljava/lang/String; = "View"

.field static final VIEW_STATE_ACCELERATED:I = 0x40

.field static final VIEW_STATE_ACTIVATED:I = 0x20

.field static final VIEW_STATE_ENABLED:I = 0x8

.field static final VIEW_STATE_FOCUSED:I = 0x4

.field static final VIEW_STATE_IDS:[I = null

.field static final VIEW_STATE_PRESSED:I = 0x10

.field static final VIEW_STATE_SELECTED:I = 0x2

.field private static final VIEW_STATE_SETS:[[I = null

.field static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field private static final VISIBILITY_FLAGS:[I = null

.field static final VISIBILITY_MASK:I = 0xc

.field public static final VISIBLE:I = 0x0

.field static final WANTS_FOCUS:I = 0x1

.field static final WILL_NOT_CACHE_DRAWING:I = 0x20000

.field static final WILL_NOT_DRAW:I = 0x80

.field protected static final WINDOW_FOCUSED_STATE_SET:[I

.field private static sTags:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sTagsLock:Ljava/lang/Object;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mAnimator:Landroid/view/ViewPropertyAnimator;

.field mAttachInfo:Landroid/view/View$AttachInfo;

.field private mBGDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field private mBackgroundSizeChanged:Z

.field protected mBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public mCachingFailed:Z

.field private mCamera:Landroid/graphics/Camera;

.field mCanAcceptDrop:Z

.field private mContentDescription:Ljava/lang/CharSequence;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentAnimation:Landroid/view/animation/Animation;

.field private mDisplayList:Landroid/view/DisplayList;

.field private mDrawableState:[I

.field private mDrawingCache:Landroid/graphics/Bitmap;

.field private mDrawingCacheBackgroundColor:I

.field private mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

.field private mHardwareLayer:Landroid/view/HardwareLayer;

.field private mHasPerformedLongPress:Z

.field mID:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        resolveId = true
    .end annotation
.end field

.field private mInverseMatrix:Landroid/graphics/Matrix;

.field private mInverseMatrixDirty:Z

.field private mLastIsOpaque:Z

.field mLayerPaint:Landroid/graphics/Paint;

.field mLayerType:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "SOFTWARE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "HARDWARE"
            .end subannotation
        }
    .end annotation
.end field

.field protected mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field protected mLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field mLocalDirtyRect:Landroid/graphics/Rect;

.field private final mMatrix:Landroid/graphics/Matrix;

.field mMatrixDirty:Z

.field private mMatrixIsIdentity:Z

.field mMeasuredHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field mMeasuredWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mNextFocusDownId:I

.field mNextFocusForwardId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field mOldHeightMeasureSpec:I

.field mOldWidthMeasureSpec:I

.field private mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/View$OnAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mOnDragListener:Landroid/view/View$OnDragListener;

.field protected mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

.field private mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mOnLayoutChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View$OnLayoutChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOverScrollMode:I

.field protected mPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mParent:Landroid/view/ViewParent;

.field private mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/view/View$CheckForTap;

.field private mPerformClick:Landroid/view/View$PerformClick;

.field mPivotX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mPivotY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mPrevHeight:I

.field private mPrevWidth:I

.field mPrivateFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FORCE_LAYOUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "LAYOUT_REQUIRED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "DRAWING_CACHE_INVALID"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "DRAWN"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NOT_DRAWN"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x600000
                name = "DIRTY_OPAQUE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x600000
                name = "DIRTY"
            .end subannotation
        }
    .end annotation
.end field

.field mRecreateDisplayList:Z

.field private mResources:Landroid/content/res/Resources;

.field protected mRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field mRotation:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mRotationX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mRotationY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mScaleX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mScaleY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mScrollCache:Landroid/view/View$ScrollabilityCache;

.field protected mScrollX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field protected mScrollY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mSystemUiVisibility:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field protected mTag:Ljava/lang/Object;

.field protected mTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mTouchDelegate:Landroid/view/TouchDelegate;

.field private mTouchSlop:I

.field mTranslationX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mTranslationY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mUnscaledDrawingCache:Landroid/graphics/Bitmap;

.field private mUnsetPressedState:Landroid/view/View$UnsetPressedState;

.field mUserPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mVerticalScrollFactor:F

.field private mVerticalScrollbarPosition:I

.field mViewFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mWindowAttachCount:I

.field private matrix3D:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .prologue
    const/16 v14, 0xe

    const/4 v13, 0x1

    const/4 v12, 0x3

    .line 693
    new-array v9, v12, [I

    fill-array-data v9, :array_194

    sput-object v9, Landroid/view/View;->VISIBILITY_FLAGS:[I

    .line 844
    new-array v9, v12, [I

    fill-array-data v9, :array_19e

    sput-object v9, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    .line 1308
    new-array v9, v14, [I

    fill-array-data v9, :array_1a8

    sput-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    .line 1319
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v9, v9, 0x2

    sget-object v10, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v10, v10

    if-eq v9, v10, :cond_2b

    .line 1320
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "VIEW_STATE_IDs array length does not match ViewDrawableStates style array"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1323
    :cond_2b
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    new-array v4, v9, [I

    .line 1324
    .local v4, orderedIds:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_31
    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v9, v9

    if-ge v1, v9, :cond_5c

    .line 1325
    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    aget v8, v9, v1

    .line 1326
    .local v8, viewState:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3b
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    if-ge v2, v9, :cond_59

    .line 1327
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    aget v9, v9, v2

    if-ne v9, v8, :cond_56

    .line 1328
    mul-int/lit8 v9, v1, 0x2

    aput v8, v4, v9

    .line 1329
    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    sget-object v10, Landroid/view/View;->VIEW_STATE_IDS:[I

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    aput v10, v4, v9

    .line 1326
    :cond_56
    add-int/lit8 v2, v2, 0x2

    goto :goto_3b

    .line 1324
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1333
    .end local v2           #j:I
    .end local v8           #viewState:I
    :cond_5c
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v0, v9, 0x2

    .line 1334
    .local v0, NUM_BITS:I
    shl-int v9, v13, v0

    new-array v9, v9, [[I

    sput-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    .line 1335
    const/4 v1, 0x0

    :goto_68
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    array-length v9, v9

    if-ge v1, v9, :cond_90

    .line 1336
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    .line 1337
    .local v3, numBits:I
    new-array v7, v3, [I

    .line 1338
    .local v7, set:[I
    const/4 v5, 0x0

    .line 1339
    .local v5, pos:I
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_75
    array-length v9, v4

    if-ge v2, v9, :cond_89

    .line 1340
    add-int/lit8 v9, v2, 0x1

    aget v9, v4, v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_86

    .line 1341
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pos:I
    .local v6, pos:I
    aget v9, v4, v2

    aput v9, v7, v5

    move v5, v6

    .line 1339
    .end local v6           #pos:I
    .restart local v5       #pos:I
    :cond_86
    add-int/lit8 v2, v2, 0x2

    goto :goto_75

    .line 1344
    :cond_89
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aput-object v7, v9, v1

    .line 1335
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 1347
    .end local v2           #j:I
    .end local v3           #numBits:I
    .end local v5           #pos:I
    .end local v7           #set:[I
    :cond_90
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->EMPTY_STATE_SET:[I

    .line 1348
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aget-object v9, v9, v13

    sput-object v9, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    .line 1349
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x2

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->SELECTED_STATE_SET:[I

    .line 1350
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aget-object v9, v9, v12

    sput-object v9, Landroid/view/View;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1352
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x4

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_STATE_SET:[I

    .line 1353
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x5

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1355
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x6

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_SELECTED_STATE_SET:[I

    .line 1357
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x7

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1360
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x8

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_STATE_SET:[I

    .line 1361
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x9

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1363
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xa

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_SELECTED_STATE_SET:[I

    .line 1365
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xb

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1368
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xc

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    .line 1370
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xd

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1373
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aget-object v9, v9, v14

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1376
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xf

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1380
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x10

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_STATE_SET:[I

    .line 1381
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x11

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1383
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x12

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    .line 1385
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x13

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1388
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x14

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    .line 1390
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x15

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1393
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x16

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1396
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x17

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1399
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x18

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    .line 1401
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x19

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1404
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1a

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    .line 1407
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1b

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1410
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1c

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    .line 1413
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1d

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1416
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1e

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1419
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1f

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1430
    new-instance v9, Ljava/lang/ThreadLocal;

    invoke-direct {v9}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v9, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    .line 1440
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    sput-object v9, Landroid/view/View;->sTagsLock:Ljava/lang/Object;

    return-void

    .line 693
    nop

    :array_194
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 844
    :array_19e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x8t 0x0t
        0x0t 0x0t 0x10t 0x0t
    .end array-data

    .line 1308
    :array_1a8
    .array-data 0x4
        0x9dt 0x0t 0x1t 0x1t
        0x1t 0x0t 0x0t 0x0t
        0xa1t 0x0t 0x1t 0x1t
        0x2t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x1t 0x1t
        0x4t 0x0t 0x0t 0x0t
        0x9et 0x0t 0x1t 0x1t
        0x8t 0x0t 0x0t 0x0t
        0xa7t 0x0t 0x1t 0x1t
        0x10t 0x0t 0x0t 0x0t
        0xfet 0x2t 0x1t 0x1t
        0x20t 0x0t 0x0t 0x0t
        0x1bt 0x3t 0x1t 0x1t
        0x40t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .registers 7

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1446
    iput-object v2, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1471
    iput-boolean v4, p0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1480
    iput v1, p0, Landroid/view/View;->mID:I

    .line 1859
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mMatrix:Landroid/graphics/Matrix;

    .line 1875
    iput-boolean v4, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 1882
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mInverseMatrixDirty:Z

    .line 1891
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mMatrixIsIdentity:Z

    .line 1896
    iput-object v2, p0, Landroid/view/View;->mCamera:Landroid/graphics/Camera;

    .line 1901
    iput-object v2, p0, Landroid/view/View;->matrix3D:Landroid/graphics/Matrix;

    .line 1908
    iput v1, p0, Landroid/view/View;->mPrevWidth:I

    .line 1909
    iput v1, p0, Landroid/view/View;->mPrevHeight:I

    .line 1922
    iput v3, p0, Landroid/view/View;->mRotationY:F

    .line 1928
    iput v3, p0, Landroid/view/View;->mRotationX:F

    .line 1934
    iput v3, p0, Landroid/view/View;->mRotation:F

    .line 1940
    iput v3, p0, Landroid/view/View;->mTranslationX:F

    .line 1946
    iput v3, p0, Landroid/view/View;->mTranslationY:F

    .line 1953
    iput v5, p0, Landroid/view/View;->mScaleX:F

    .line 1960
    iput v5, p0, Landroid/view/View;->mScaleY:F

    .line 1967
    iput v3, p0, Landroid/view/View;->mPivotX:F

    .line 1974
    iput v3, p0, Landroid/view/View;->mPivotY:F

    .line 1981
    iput v5, p0, Landroid/view/View;->mAlpha:F

    .line 2083
    const/high16 v0, -0x8000

    iput v0, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 2087
    const/high16 v0, -0x8000

    iput v0, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 2089
    iput-object v2, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 2153
    iput-object v2, p0, Landroid/view/View;->mDrawableState:[I

    .line 2171
    iput v1, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 2177
    iput v1, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 2183
    iput v1, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 2189
    iput v1, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 2195
    iput v1, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 2198
    iput-object v2, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 2229
    iput-object v2, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 2235
    iput v4, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 2250
    iput-object v2, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 2356
    iput v4, p0, Landroid/view/View;->mLayerType:I

    .line 2767
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 2371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1446
    iput-object v1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1471
    iput-boolean v4, p0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1480
    iput v2, p0, Landroid/view/View;->mID:I

    .line 1859
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mMatrix:Landroid/graphics/Matrix;

    .line 1875
    iput-boolean v4, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 1882
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mInverseMatrixDirty:Z

    .line 1891
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mMatrixIsIdentity:Z

    .line 1896
    iput-object v1, p0, Landroid/view/View;->mCamera:Landroid/graphics/Camera;

    .line 1901
    iput-object v1, p0, Landroid/view/View;->matrix3D:Landroid/graphics/Matrix;

    .line 1908
    iput v2, p0, Landroid/view/View;->mPrevWidth:I

    .line 1909
    iput v2, p0, Landroid/view/View;->mPrevHeight:I

    .line 1922
    iput v3, p0, Landroid/view/View;->mRotationY:F

    .line 1928
    iput v3, p0, Landroid/view/View;->mRotationX:F

    .line 1934
    iput v3, p0, Landroid/view/View;->mRotation:F

    .line 1940
    iput v3, p0, Landroid/view/View;->mTranslationX:F

    .line 1946
    iput v3, p0, Landroid/view/View;->mTranslationY:F

    .line 1953
    iput v5, p0, Landroid/view/View;->mScaleX:F

    .line 1960
    iput v5, p0, Landroid/view/View;->mScaleY:F

    .line 1967
    iput v3, p0, Landroid/view/View;->mPivotX:F

    .line 1974
    iput v3, p0, Landroid/view/View;->mPivotY:F

    .line 1981
    iput v5, p0, Landroid/view/View;->mAlpha:F

    .line 2083
    const/high16 v0, -0x8000

    iput v0, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 2087
    const/high16 v0, -0x8000

    iput v0, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 2089
    iput-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 2153
    iput-object v1, p0, Landroid/view/View;->mDrawableState:[I

    .line 2171
    iput v2, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 2177
    iput v2, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 2183
    iput v2, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 2189
    iput v2, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 2195
    iput v2, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 2198
    iput-object v1, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 2229
    iput-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 2235
    iput v4, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 2250
    iput-object v1, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 2356
    iput v4, p0, Landroid/view/View;->mLayerType:I

    .line 2372
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 2373
    if-eqz p1, :cond_77

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_62
    iput-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 2374
    const/high16 v0, 0x1800

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 2375
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mTouchSlop:I

    .line 2376
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 2377
    return-void

    :cond_77
    move-object v0, v1

    .line 2373
    goto :goto_62
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 2396
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2397
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 43
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 2418
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2420
    sget-object v35, Lcom/android/internal/R$styleable;->View:[I

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v35

    move/from16 v3, p3

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 2423
    .local v6, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    .line 2425
    .local v8, background:Landroid/graphics/drawable/Drawable;
    const/4 v14, -0x1

    .line 2426
    .local v14, leftPadding:I
    const/16 v26, -0x1

    .line 2427
    .local v26, topPadding:I
    const/16 v17, -0x1

    .line 2428
    .local v17, rightPadding:I
    const/4 v9, -0x1

    .line 2430
    .local v9, bottomPadding:I
    const/16 v16, -0x1

    .line 2432
    .local v16, padding:I
    const/16 v31, 0x0

    .line 2433
    .local v31, viewFlagValues:I
    const/16 v30, 0x0

    .line 2435
    .local v30, viewFlagMasks:I
    const/16 v23, 0x0

    .line 2437
    .local v23, setScrollContainer:Z
    const/16 v33, 0x0

    .line 2438
    .local v33, x:I
    const/16 v34, 0x0

    .line 2440
    .local v34, y:I
    const/16 v28, 0x0

    .line 2441
    .local v28, tx:F
    const/16 v29, 0x0

    .line 2442
    .local v29, ty:F
    const/16 v18, 0x0

    .line 2443
    .local v18, rotation:F
    const/16 v19, 0x0

    .line 2444
    .local v19, rotationX:F
    const/16 v20, 0x0

    .line 2445
    .local v20, rotationY:F
    const/high16 v24, 0x3f80

    .line 2446
    .local v24, sx:F
    const/high16 v25, 0x3f80

    .line 2447
    .local v25, sy:F
    const/16 v27, 0x0

    .line 2449
    .local v27, transformSet:Z
    const/16 v21, 0x0

    .line 2451
    .local v21, scrollbarStyle:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mOverScrollMode:I

    move v15, v0

    .line 2452
    .local v15, overScrollMode:I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 2453
    .local v5, N:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_44
    if-ge v13, v5, :cond_3e0

    .line 2454
    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 2455
    .local v7, attr:I
    packed-switch v7, :pswitch_data_4a0

    .line 2453
    :cond_4d
    :goto_4d
    :pswitch_4d
    add-int/lit8 v13, v13, 0x1

    goto :goto_44

    .line 2457
    :pswitch_50
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2458
    goto :goto_4d

    .line 2460
    :pswitch_55
    const/16 v35, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    .line 2461
    goto :goto_4d

    .line 2463
    :pswitch_60
    const/16 v35, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    .line 2464
    goto :goto_4d

    .line 2466
    :pswitch_6b
    const/16 v35, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v26

    .line 2467
    goto :goto_4d

    .line 2469
    :pswitch_76
    const/16 v35, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    .line 2470
    goto :goto_4d

    .line 2472
    :pswitch_81
    const/16 v35, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 2473
    goto :goto_4d

    .line 2475
    :pswitch_8c
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v33

    .line 2476
    goto :goto_4d

    .line 2478
    :pswitch_97
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v34

    .line 2479
    goto :goto_4d

    .line 2481
    :pswitch_a2
    const/high16 v35, 0x3f80

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4d

    .line 2484
    :pswitch_b4
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    goto :goto_4d

    .line 2487
    :pswitch_cb
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_4d

    .line 2490
    :pswitch_e3
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v28, v0

    .line 2491
    const/16 v27, 0x1

    .line 2492
    goto/16 :goto_4d

    .line 2494
    :pswitch_f6
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v29, v0

    .line 2495
    const/16 v27, 0x1

    .line 2496
    goto/16 :goto_4d

    .line 2498
    :pswitch_109
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    .line 2499
    const/16 v27, 0x1

    .line 2500
    goto/16 :goto_4d

    .line 2502
    :pswitch_117
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v19

    .line 2503
    const/16 v27, 0x1

    .line 2504
    goto/16 :goto_4d

    .line 2506
    :pswitch_125
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    .line 2507
    const/16 v27, 0x1

    .line 2508
    goto/16 :goto_4d

    .line 2510
    :pswitch_133
    const/high16 v35, 0x3f80

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v24

    .line 2511
    const/16 v27, 0x1

    .line 2512
    goto/16 :goto_4d

    .line 2514
    :pswitch_141
    const/high16 v35, 0x3f80

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v25

    .line 2515
    const/16 v27, 0x1

    .line 2516
    goto/16 :goto_4d

    .line 2518
    :pswitch_14f
    const/16 v35, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mID:I

    goto/16 :goto_4d

    .line 2521
    :pswitch_161
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mTag:Ljava/lang/Object;

    goto/16 :goto_4d

    .line 2524
    :pswitch_16d
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v35

    if-eqz v35, :cond_4d

    .line 2525
    or-int/lit8 v31, v31, 0x2

    .line 2526
    or-int/lit8 v30, v30, 0x2

    goto/16 :goto_4d

    .line 2530
    :pswitch_17f
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v35

    if-eqz v35, :cond_4d

    .line 2531
    or-int/lit8 v31, v31, 0x1

    .line 2532
    or-int/lit8 v30, v30, 0x1

    goto/16 :goto_4d

    .line 2536
    :pswitch_191
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v35

    if-eqz v35, :cond_4d

    .line 2537
    const v35, 0x40001

    or-int v31, v31, v35

    .line 2538
    const v35, 0x40001

    or-int v30, v30, v35

    goto/16 :goto_4d

    .line 2542
    :pswitch_1a9
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v35

    if-eqz v35, :cond_4d

    .line 2543
    move/from16 v0, v31

    or-int/lit16 v0, v0, 0x4000

    move/from16 v31, v0

    .line 2544
    move/from16 v0, v30

    or-int/lit16 v0, v0, 0x4000

    move/from16 v30, v0

    goto/16 :goto_4d

    .line 2548
    :pswitch_1c3
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v35

    if-eqz v35, :cond_4d

    .line 2549
    const/high16 v35, 0x20

    or-int v31, v31, v35

    .line 2550
    const/high16 v35, 0x20

    or-int v30, v30, v35

    goto/16 :goto_4d

    .line 2554
    :pswitch_1d9
    const/16 v35, 0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v35

    if-nez v35, :cond_4d

    .line 2555
    const/high16 v35, 0x1

    or-int v31, v31, v35

    .line 2556
    const/high16 v35, 0x1

    or-int v30, v30, v35

    goto/16 :goto_4d

    .line 2560
    :pswitch_1ef
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v35

    if-eqz v35, :cond_4d

    .line 2561
    const/high16 v35, 0x40

    or-int v31, v31, v35

    .line 2562
    const/high16 v35, 0x40

    or-int v30, v30, v35

    goto/16 :goto_4d

    .line 2566
    :pswitch_205
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v32

    .line 2567
    .local v32, visibility:I
    if-eqz v32, :cond_4d

    .line 2568
    sget-object v35, Landroid/view/View;->VISIBILITY_FLAGS:[I

    aget v35, v35, v32

    or-int v31, v31, v35

    .line 2569
    or-int/lit8 v30, v30, 0xc

    goto/16 :goto_4d

    .line 2573
    .end local v32           #visibility:I
    :pswitch_21b
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 2574
    .local v10, cacheQuality:I
    if-eqz v10, :cond_4d

    .line 2575
    sget-object v35, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    aget v35, v35, v10

    or-int v31, v31, v35

    .line 2576
    const/high16 v35, 0x18

    or-int v30, v30, v35

    goto/16 :goto_4d

    .line 2580
    .end local v10           #cacheQuality:I
    :pswitch_233
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_4d

    .line 2583
    :pswitch_23f
    const/16 v35, 0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v35

    if-nez v35, :cond_4d

    .line 2584
    const v35, -0x8000001

    and-int v31, v31, v35

    .line 2585
    const/high16 v35, 0x800

    or-int v30, v30, v35

    goto/16 :goto_4d

    .line 2589
    :pswitch_256
    const/16 v35, 0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v35

    if-nez v35, :cond_4d

    .line 2590
    const v35, -0x10000001

    and-int v31, v31, v35

    .line 2591
    const/high16 v35, 0x1000

    or-int v30, v30, v35

    goto/16 :goto_4d

    .line 2595
    :pswitch_26d
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    .line 2596
    .local v22, scrollbars:I
    if-eqz v22, :cond_4d

    .line 2597
    or-int v31, v31, v22

    .line 2598
    move/from16 v0, v30

    or-int/lit16 v0, v0, 0x300

    move/from16 v30, v0

    .line 2599
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    goto/16 :goto_4d

    .line 2603
    .end local v22           #scrollbars:I
    :pswitch_289
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 2604
    .local v11, fadingEdge:I
    if-eqz v11, :cond_4d

    .line 2605
    or-int v31, v31, v11

    .line 2606
    move/from16 v0, v30

    or-int/lit16 v0, v0, 0x3000

    move/from16 v30, v0

    .line 2607
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->initializeFadingEdge(Landroid/content/res/TypedArray;)V

    goto/16 :goto_4d

    .line 2611
    .end local v11           #fadingEdge:I
    :pswitch_2a5
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    .line 2612
    if-eqz v21, :cond_4d

    .line 2613
    const/high16 v35, 0x300

    and-int v35, v35, v21

    or-int v31, v31, v35

    .line 2614
    const/high16 v35, 0x300

    or-int v30, v30, v35

    goto/16 :goto_4d

    .line 2618
    :pswitch_2bd
    const/16 v23, 0x1

    .line 2619
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v35

    if-eqz v35, :cond_4d

    .line 2620
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    goto/16 :goto_4d

    .line 2624
    :pswitch_2d6
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v35

    if-eqz v35, :cond_4d

    .line 2625
    const/high16 v35, 0x400

    or-int v31, v31, v35

    .line 2626
    const/high16 v35, 0x400

    or-int v30, v30, v35

    goto/16 :goto_4d

    .line 2630
    :pswitch_2ec
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v35

    if-eqz v35, :cond_4d

    .line 2631
    move/from16 v0, v31

    or-int/lit16 v0, v0, 0x400

    move/from16 v31, v0

    .line 2632
    move/from16 v0, v30

    or-int/lit16 v0, v0, 0x400

    move/from16 v30, v0

    goto/16 :goto_4d

    .line 2636
    :pswitch_306
    const/16 v35, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusLeftId:I

    goto/16 :goto_4d

    .line 2639
    :pswitch_318
    const/16 v35, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusRightId:I

    goto/16 :goto_4d

    .line 2642
    :pswitch_32a
    const/16 v35, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusUpId:I

    goto/16 :goto_4d

    .line 2645
    :pswitch_33c
    const/16 v35, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusDownId:I

    goto/16 :goto_4d

    .line 2648
    :pswitch_34e
    const/16 v35, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusForwardId:I

    goto/16 :goto_4d

    .line 2651
    :pswitch_360
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinWidth:I

    goto/16 :goto_4d

    .line 2654
    :pswitch_372
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinHeight:I

    goto/16 :goto_4d

    .line 2657
    :pswitch_384
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRestricted()Z

    move-result v35

    if-eqz v35, :cond_392

    .line 2658
    new-instance v35, Ljava/lang/IllegalStateException;

    const-string v36, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct/range {v35 .. v36}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 2662
    :cond_392
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2663
    .local v12, handlerName:Ljava/lang/String;
    if-eqz v12, :cond_4d

    .line 2664
    new-instance v35, Landroid/view/View$1;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Landroid/view/View$1;-><init>(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4d

    .line 2698
    .end local v12           #handlerName:Ljava/lang/String;
    :pswitch_3ab
    const/16 v35, 0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 2699
    goto/16 :goto_4d

    .line 2701
    :pswitch_3b7
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mVerticalScrollbarPosition:I

    goto/16 :goto_4d

    .line 2704
    :pswitch_3c9
    const/16 v35, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v35

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_4d

    .line 2709
    .end local v7           #attr:I
    :cond_3e0
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 2711
    if-eqz v8, :cond_3ee

    .line 2712
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2715
    :cond_3ee
    if-ltz v16, :cond_3f8

    .line 2716
    move/from16 v14, v16

    .line 2717
    move/from16 v26, v16

    .line 2718
    move/from16 v17, v16

    .line 2719
    move/from16 v9, v16

    .line 2726
    :cond_3f8
    if-ltz v14, :cond_47f

    move/from16 v35, v14

    :goto_3fc
    if-ltz v26, :cond_487

    move/from16 v36, v26

    :goto_400
    if-ltz v17, :cond_48f

    move/from16 v37, v17

    :goto_404
    if-ltz v9, :cond_497

    move/from16 v38, v9

    :goto_408
    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2731
    if-eqz v30, :cond_420

    .line 2732
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setFlags(II)V

    .line 2736
    :cond_420
    if-eqz v21, :cond_425

    .line 2737
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->recomputePadding()V

    .line 2740
    :cond_425
    if-nez v33, :cond_429

    if-eqz v34, :cond_432

    .line 2741
    :cond_429
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 2744
    :cond_432
    if-eqz v27, :cond_465

    .line 2745
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 2746
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2747
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 2748
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationX(F)V

    .line 2749
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    .line 2750
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2751
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2754
    :cond_465
    if-nez v23, :cond_478

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0x200

    move/from16 v35, v0

    if-eqz v35, :cond_478

    .line 2755
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    .line 2758
    :cond_478
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 2760
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2761
    return-void

    .line 2726
    :cond_47f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v35, v0

    goto/16 :goto_3fc

    :cond_487
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v36, v0

    goto/16 :goto_400

    :cond_48f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v37, v0

    goto/16 :goto_404

    :cond_497
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v38, v0

    goto/16 :goto_408

    .line 2455
    nop

    :pswitch_data_4a0
    .packed-switch 0x7
        :pswitch_2a5
        :pswitch_14f
        :pswitch_161
        :pswitch_8c
        :pswitch_97
        :pswitch_50
        :pswitch_55
        :pswitch_60
        :pswitch_6b
        :pswitch_76
        :pswitch_81
        :pswitch_17f
        :pswitch_191
        :pswitch_205
        :pswitch_16d
        :pswitch_26d
        :pswitch_289
        :pswitch_4d
        :pswitch_306
        :pswitch_318
        :pswitch_32a
        :pswitch_33c
        :pswitch_1a9
        :pswitch_1c3
        :pswitch_1d9
        :pswitch_21b
        :pswitch_1ef
        :pswitch_360
        :pswitch_372
        :pswitch_23f
        :pswitch_2d6
        :pswitch_2bd
        :pswitch_256
        :pswitch_384
        :pswitch_233
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_3ab
        :pswitch_2ec
        :pswitch_a2
        :pswitch_b4
        :pswitch_cb
        :pswitch_e3
        :pswitch_f6
        :pswitch_133
        :pswitch_141
        :pswitch_109
        :pswitch_117
        :pswitch_125
        :pswitch_3b7
        :pswitch_34e
        :pswitch_3c9
    .end packed-switch
.end method

.method static synthetic access$302(Landroid/view/View;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 635
    iput-boolean p1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$400(Landroid/view/View;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 635
    invoke-direct {p0, p1}, Landroid/view/View;->postCheckForLongClick(I)V

    return-void
.end method

.method private static captureViewInfo(Ljava/lang/String;Landroid/view/View;)V
    .registers 4
    .parameter "subTag"
    .parameter "v"

    .prologue
    .line 4531
    if-eqz p1, :cond_b

    const-string v0, "debug.captureview"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c

    .line 4535
    :cond_b
    :goto_b
    return-void

    .line 4534
    :cond_c
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->dumpCapturedView(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public static combineMeasuredStates(II)I
    .registers 3
    .parameter "curState"
    .parameter "newState"

    .prologue
    .line 10931
    or-int v0, p0, p1

    return v0
.end method

.method protected static debugIndent(I)Ljava/lang/String;
    .registers 5
    .parameter "depth"

    .prologue
    const/16 v3, 0x20

    .line 10754
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10755
    .local v1, spaces:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_1e

    .line 10756
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10755
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 10758
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static findViewShouldExist(Landroid/view/View;I)Landroid/view/View;
    .registers 6
    .parameter "root"
    .parameter "childViewId"

    .prologue
    .line 4267
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4268
    .local v0, result:Landroid/view/View;
    if-nez v0, :cond_1e

    .line 4269
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find next focus view specified by user for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    :cond_1e
    return-object v0
.end method

.method public static getDefaultSize(II)I
    .registers 5
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 10987
    move v0, p0

    .line 10988
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 10989
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 10991
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_12

    .line 11000
    :goto_c
    return v0

    .line 10993
    :sswitch_d
    move v0, p0

    .line 10994
    goto :goto_c

    .line 10997
    :sswitch_f
    move v0, v2

    goto :goto_c

    .line 10991
    nop

    :sswitch_data_12
    .sparse-switch
        -0x80000000 -> :sswitch_f
        0x0 -> :sswitch_d
        0x40000000 -> :sswitch_f
    .end sparse-switch
.end method

.method private hasAncestorThatBlocksDescendantFocus()Z
    .registers 6

    .prologue
    .line 4481
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4482
    .local v1, ancestor:Landroid/view/ViewParent;
    :goto_2
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_19

    .line 4483
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 4484
    .local v2, vgAncestor:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x6

    if-ne v3, v4, :cond_14

    .line 4485
    const/4 v3, 0x1

    .line 4490
    .end local v2           #vgAncestor:Landroid/view/ViewGroup;
    :goto_13
    return v3

    .line 4487
    .restart local v2       #vgAncestor:Landroid/view/ViewGroup;
    :cond_14
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 4489
    goto :goto_2

    .line 4490
    .end local v2           #vgAncestor:Landroid/view/ViewGroup;
    :cond_19
    const/4 v3, 0x0

    goto :goto_13
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "context"
    .parameter "resource"
    .parameter "root"

    .prologue
    .line 11635
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 11636
    .local v0, factory:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private initScrollCache()V
    .registers 3

    .prologue
    .line 2960
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_11

    .line 2961
    new-instance v0, Landroid/view/View$ScrollabilityCache;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/View$ScrollabilityCache;-><init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2963
    :cond_11
    return-void
.end method

.method private initialAwakenScrollBars()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 6946
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected static mergeDrawableStates([I[I)[I
    .registers 7
    .parameter "baseState"
    .parameter "additionalState"

    .prologue
    .line 9931
    array-length v0, p0

    .line 9932
    .local v0, N:I
    const/4 v2, 0x1

    sub-int v1, v0, v2

    .line 9933
    .local v1, i:I
    :goto_4
    if-ltz v1, :cond_d

    aget v2, p0, v1

    if-nez v2, :cond_d

    .line 9934
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 9936
    :cond_d
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    array-length v4, p1

    invoke-static {p1, v2, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9937
    return-object p0
.end method

.method private static nonzero(F)Z
    .registers 2
    .parameter "value"

    .prologue
    .line 5781
    const v0, -0x457ced91

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_e

    const v0, 0x3a83126f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private pointInView(FFF)Z
    .registers 6
    .parameter "localX"
    .parameter "localY"
    .parameter "slop"

    .prologue
    .line 6695
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_22

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_22

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_22

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private postCheckForLongClick(I)V
    .registers 5
    .parameter "delayOffset"

    .prologue
    .line 11614
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 11616
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-nez v0, :cond_e

    .line 11617
    new-instance v0, Landroid/view/View$CheckForLongPress;

    invoke-direct {v0, p0}, Landroid/view/View$CheckForLongPress;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    .line 11619
    :cond_e
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {v0}, Landroid/view/View$CheckForLongPress;->rememberWindowAttachCount()V

    .line 11620
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11622
    return-void
.end method

.method private static printFlags(I)Ljava/lang/String;
    .registers 5
    .parameter "flags"

    .prologue
    .line 9460
    const-string v1, ""

    .line 9461
    .local v1, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 9462
    .local v0, numFlags:I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 9463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TAKES_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9464
    add-int/lit8 v0, v0, 0x1

    .line 9467
    :cond_1d
    and-int/lit8 v2, p0, 0xc

    sparse-switch v2, :sswitch_data_76

    .line 9485
    :goto_22
    return-object v1

    .line 9469
    :sswitch_23
    if-lez v0, :cond_38

    .line 9470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9472
    :cond_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "INVISIBLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9474
    goto :goto_22

    .line 9476
    :sswitch_4c
    if-lez v0, :cond_61

    .line 9477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9479
    :cond_61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9481
    goto :goto_22

    .line 9467
    nop

    :sswitch_data_76
    .sparse-switch
        0x4 -> :sswitch_23
        0x8 -> :sswitch_4c
    .end sparse-switch
.end method

.method private static printPrivateFlags(I)Ljava/lang/String;
    .registers 5
    .parameter "privateFlags"

    .prologue
    .line 9496
    const-string v1, ""

    .line 9497
    .local v1, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 9499
    .local v0, numFlags:I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 9500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WANTS_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9501
    add-int/lit8 v0, v0, 0x1

    .line 9504
    :cond_1d
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4c

    .line 9505
    if-lez v0, :cond_37

    .line 9506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9508
    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FOCUSED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9509
    add-int/lit8 v0, v0, 0x1

    .line 9512
    :cond_4c
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7b

    .line 9513
    if-lez v0, :cond_66

    .line 9514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9516
    :cond_66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9517
    add-int/lit8 v0, v0, 0x1

    .line 9520
    :cond_7b
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_ab

    .line 9521
    if-lez v0, :cond_96

    .line 9522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9524
    :cond_96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IS_ROOT_NAMESPACE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9525
    add-int/lit8 v0, v0, 0x1

    .line 9528
    :cond_ab
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_db

    .line 9529
    if-lez v0, :cond_c6

    .line 9530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9532
    :cond_c6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HAS_BOUNDS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9533
    add-int/lit8 v0, v0, 0x1

    .line 9536
    :cond_db
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_109

    .line 9537
    if-lez v0, :cond_f6

    .line 9538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9540
    :cond_f6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DRAWN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9543
    :cond_109
    return-object v1
.end method

.method private removeLongPressCallback()V
    .registers 2

    .prologue
    .line 5362
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-eqz v0, :cond_9

    .line 5363
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5365
    :cond_9
    return-void
.end method

.method private removePerformClickCallback()V
    .registers 2

    .prologue
    .line 5371
    iget-object v0, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-eqz v0, :cond_9

    .line 5372
    iget-object v0, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5374
    :cond_9
    return-void
.end method

.method private removeTapCallback()V
    .registers 3

    .prologue
    .line 5390
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-eqz v0, :cond_11

    .line 5391
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5392
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5394
    :cond_11
    return-void
.end method

.method private removeUnsetPressCallback()V
    .registers 2

    .prologue
    .line 5380
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-eqz v0, :cond_13

    .line 5381
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5382
    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5384
    :cond_13
    return-void
.end method

.method private resetPressedState()V
    .registers 3

    .prologue
    .line 3507
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_9

    .line 3518
    :cond_8
    :goto_8
    return-void

    .line 3511
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3512
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3514
    iget-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v0, :cond_8

    .line 3515
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    goto :goto_8
.end method

.method public static resolveSize(II)I
    .registers 4
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 10939
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static resolveSizeAndState(III)I
    .registers 7
    .parameter "size"
    .parameter "measureSpec"
    .parameter "childMeasuredState"

    .prologue
    .line 10956
    move v0, p0

    .line 10957
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 10958
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 10959
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_1e

    .line 10974
    :goto_c
    const/high16 v3, -0x100

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .line 10961
    :sswitch_11
    move v0, p0

    .line 10962
    goto :goto_c

    .line 10964
    :sswitch_13
    if-ge v2, p0, :cond_1a

    .line 10965
    const/high16 v3, 0x100

    or-int v0, v2, v3

    goto :goto_c

    .line 10967
    :cond_1a
    move v0, p0

    .line 10969
    goto :goto_c

    .line 10971
    :sswitch_1c
    move v0, v2

    goto :goto_c

    .line 10959
    :sswitch_data_1e
    .sparse-switch
        -0x80000000 -> :sswitch_13
        0x0 -> :sswitch_11
        0x40000000 -> :sswitch_1c
    .end sparse-switch
.end method

.method private static setTagInternal(Landroid/view/View;ILjava/lang/Object;)V
    .registers 7
    .parameter "view"
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 10594
    const/4 v1, 0x0

    .line 10595
    .local v1, tags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    sget-object v3, Landroid/view/View;->sTagsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 10596
    :try_start_4
    sget-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    if-nez v2, :cond_25

    .line 10597
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    .line 10601
    :goto_f
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_30

    .line 10603
    if-nez v1, :cond_21

    .line 10604
    new-instance v1, Landroid/util/SparseArray;

    .end local v1           #tags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 10605
    .restart local v1       #tags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    sget-object v2, Landroid/view/View;->sTagsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 10606
    :try_start_1b
    sget-object v3, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10607
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_33

    .line 10610
    :cond_21
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10611
    return-void

    .line 10599
    :cond_25
    :try_start_25
    sget-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/SparseArray;

    move-object v1, v0

    goto :goto_f

    .line 10601
    :catchall_30
    move-exception v2

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_30

    throw v2

    .line 10607
    :catchall_33
    move-exception v3

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v3
.end method

.method private updateMatrix()V
    .registers 6

    .prologue
    const/high16 v2, 0x4000

    .line 5799
    iget-boolean v0, p0, Landroid/view/View;->mMatrixDirty:Z

    if-eqz v0, :cond_7d

    .line 5804
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-nez v0, :cond_39

    .line 5805
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPrevWidth:I

    if-ne v0, v1, :cond_1f

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPrevHeight:I

    if-eq v0, v1, :cond_39

    .line 5806
    :cond_1f
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrevWidth:I

    .line 5807
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrevHeight:I

    .line 5808
    iget v0, p0, Landroid/view/View;->mPrevWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Landroid/view/View;->mPivotX:F

    .line 5809
    iget v0, p0, Landroid/view/View;->mPrevHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Landroid/view/View;->mPivotY:F

    .line 5812
    :cond_39
    iget-object v0, p0, Landroid/view/View;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 5813
    iget v0, p0, Landroid/view/View;->mRotationX:F

    invoke-static {v0}, Landroid/view/View;->nonzero(F)Z

    move-result v0

    if-nez v0, :cond_7e

    iget v0, p0, Landroid/view/View;->mRotationY:F

    invoke-static {v0}, Landroid/view/View;->nonzero(F)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 5814
    iget-object v0, p0, Landroid/view/View;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/view/View;->mTranslationX:F

    iget v2, p0, Landroid/view/View;->mTranslationY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 5815
    iget-object v0, p0, Landroid/view/View;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/view/View;->mRotation:F

    iget v2, p0, Landroid/view/View;->mPivotX:F

    iget v3, p0, Landroid/view/View;->mPivotY:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 5816
    iget-object v0, p0, Landroid/view/View;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/view/View;->mScaleX:F

    iget v2, p0, Landroid/view/View;->mScaleY:F

    iget v3, p0, Landroid/view/View;->mPivotX:F

    iget v4, p0, Landroid/view/View;->mPivotY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 5831
    :goto_6f
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 5832
    iget-object v0, p0, Landroid/view/View;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/View;->mMatrixIsIdentity:Z

    .line 5833
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mInverseMatrixDirty:Z

    .line 5835
    :cond_7d
    return-void

    .line 5818
    :cond_7e
    iget-object v0, p0, Landroid/view/View;->mCamera:Landroid/graphics/Camera;

    if-nez v0, :cond_90

    .line 5819
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mCamera:Landroid/graphics/Camera;

    .line 5820
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/View;->matrix3D:Landroid/graphics/Matrix;

    .line 5822
    :cond_90
    iget-object v0, p0, Landroid/view/View;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 5823
    iget-object v0, p0, Landroid/view/View;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/view/View;->mScaleX:F

    iget v2, p0, Landroid/view/View;->mScaleY:F

    iget v3, p0, Landroid/view/View;->mPivotX:F

    iget v4, p0, Landroid/view/View;->mPivotY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 5824
    iget-object v0, p0, Landroid/view/View;->mCamera:Landroid/graphics/Camera;

    iget v1, p0, Landroid/view/View;->mRotationX:F

    iget v2, p0, Landroid/view/View;->mRotationY:F

    iget v3, p0, Landroid/view/View;->mRotation:F

    neg-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Camera;->rotate(FFF)V

    .line 5825
    iget-object v0, p0, Landroid/view/View;->mCamera:Landroid/graphics/Camera;

    iget-object v1, p0, Landroid/view/View;->matrix3D:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 5826
    iget-object v0, p0, Landroid/view/View;->matrix3D:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/view/View;->mPivotX:F

    neg-float v1, v1

    iget v2, p0, Landroid/view/View;->mPivotY:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 5827
    iget-object v0, p0, Landroid/view/View;->matrix3D:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/view/View;->mPivotX:F

    iget v2, p0, Landroid/view/View;->mTranslationX:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPivotY:F

    iget v3, p0, Landroid/view/View;->mTranslationY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 5828
    iget-object v0, p0, Landroid/view/View;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/View;->matrix3D:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 5829
    iget-object v0, p0, Landroid/view/View;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    goto :goto_6f
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;I)V
    .registers 4
    .parameter
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 4297
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 4298
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 6
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 4316
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4328
    :cond_6
    :goto_6
    return-void

    .line 4320
    :cond_7
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4325
    :cond_18
    if-eqz p1, :cond_6

    .line 4326
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 3033
    iget-object v0, p0, Landroid/view/View;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_b

    .line 3034
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3036
    :cond_b
    iget-object v0, p0, Landroid/view/View;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3037
    return-void
.end method

.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 3004
    iget-object v0, p0, Landroid/view/View;->mOnLayoutChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 3005
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mOnLayoutChangeListeners:Ljava/util/ArrayList;

    .line 3007
    :cond_b
    iget-object v0, p0, Landroid/view/View;->mOnLayoutChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3008
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/high16 v3, 0x20

    .line 4349
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 4351
    .local v0, viewFlags:I
    and-int/lit16 v1, v0, 0x4000

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_e

    and-int v1, v0, v3

    if-ne v1, v3, :cond_15

    :cond_e
    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_15

    .line 4353
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4355
    :cond_15
    return-void
.end method

.method public animate()Landroid/view/ViewPropertyAnimator;
    .registers 2

    .prologue
    .line 11957
    iget-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_b

    .line 11958
    new-instance v0, Landroid/view/ViewPropertyAnimator;

    invoke-direct {v0, p0}, Landroid/view/ViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 11960
    :cond_b
    iget-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method public applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V
    .registers 20
    .parameter "dr"
    .parameter "region"

    .prologue
    .line 11582
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v3

    .line 11583
    .local v3, r:Landroid/graphics/Region;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 11584
    .local v15, db:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v14, v0

    .line 11585
    .local v14, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v3, :cond_79

    if-eqz v14, :cond_79

    .line 11586
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v11, v4, v5

    .line 11587
    .local v11, w:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v7, v4, v5

    .line 11588
    .local v7, h:I
    iget v4, v15, Landroid/graphics/Rect;->left:I

    if-lez v4, :cond_32

    .line 11590
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v15, Landroid/graphics/Rect;->left:I

    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 11592
    :cond_32
    iget v4, v15, Landroid/graphics/Rect;->right:I

    if-ge v4, v11, :cond_3f

    .line 11594
    iget v4, v15, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x0

    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v6, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 11596
    :cond_3f
    iget v4, v15, Landroid/graphics/Rect;->top:I

    if-lez v4, :cond_4d

    .line 11598
    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v12, v15, Landroid/graphics/Rect;->top:I

    sget-object v13, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 11600
    :cond_4d
    iget v4, v15, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v7, :cond_5a

    .line 11602
    const/4 v4, 0x0

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v6, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 11604
    :cond_5a
    move-object v0, v14

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    move-object/from16 v16, v0

    .line 11605
    .local v16, location:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 11606
    const/4 v4, 0x0

    aget v4, v16, v4

    const/4 v5, 0x1

    aget v5, v16, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->translate(II)V

    .line 11607
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 11611
    .end local v7           #h:I
    .end local v11           #w:I
    .end local v16           #location:[I
    :goto_78
    return-void

    .line 11609
    :cond_79
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    move-object v1, v15

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_78
.end method

.method assignParent(Landroid/view/ViewParent;)V
    .registers 5
    .parameter "parent"

    .prologue
    .line 8043
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_7

    .line 8044
    iput-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8051
    :goto_6
    return-void

    .line 8045
    :cond_7
    if-nez p1, :cond_d

    .line 8046
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_6

    .line 8048
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " being added, but"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " it already has a parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected awakenScrollBars()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 6933
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected awakenScrollBars(I)Z
    .registers 3
    .parameter "startDelay"

    .prologue
    .line 6985
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method protected awakenScrollBars(IZ)Z
    .registers 12
    .parameter "startDelay"
    .parameter "invalidate"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 7027
    iget-object v3, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 7029
    .local v3, scrollCache:Landroid/view/View$ScrollabilityCache;
    if-eqz v3, :cond_a

    iget-boolean v4, v3, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-nez v4, :cond_c

    :cond_a
    move v4, v5

    .line 7067
    :goto_b
    return v4

    .line 7033
    :cond_c
    iget-object v4, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v4, :cond_17

    .line 7034
    new-instance v4, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v4}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v4, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 7037
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 7039
    :cond_23
    if-eqz p2, :cond_28

    .line 7041
    invoke-virtual {p0, v8}, Landroid/view/View;->invalidate(Z)V

    .line 7044
    :cond_28
    iget v4, v3, Landroid/view/View$ScrollabilityCache;->state:I

    if-nez v4, :cond_34

    .line 7048
    const/16 v0, 0x2ee

    .line 7049
    .local v0, KEY_REPEAT_FIRST_DELAY:I
    const/16 v4, 0x2ee

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 7054
    .end local v0           #KEY_REPEAT_FIRST_DELAY:I
    :cond_34
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    int-to-long v6, p1

    add-long v1, v4, v6

    .line 7055
    .local v1, fadeStartTime:J
    iput-wide v1, v3, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    .line 7056
    iput v8, v3, Landroid/view/View$ScrollabilityCache;->state:I

    .line 7059
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_51

    .line 7060
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7061
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_51
    move v4, v8

    .line 7064
    goto :goto_b

    .end local v1           #fadeStartTime:J
    :cond_53
    move v4, v5

    .line 7067
    goto :goto_b
.end method

.method public bringToFront()V
    .registers 2

    .prologue
    .line 5561
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_9

    .line 5562
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    .line 5564
    :cond_9
    return-void
.end method

.method public buildDrawingCache()V
    .registers 2

    .prologue
    .line 8868
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 8869
    return-void
.end method

.method public buildDrawingCache(Z)V
    .registers 21
    .parameter "autoScale"

    .prologue
    .line 8895
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    const v18, 0x8000

    and-int v17, v17, v18

    if-eqz v17, :cond_17

    if-eqz p1, :cond_c5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-nez v17, :cond_c4

    .line 8897
    :cond_17
    :goto_17
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mCachingFailed:Z

    .line 8903
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v18, v0

    sub-int v16, v17, v18

    .line 8904
    .local v16, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v18, v0

    sub-int v9, v17, v18

    .line 8906
    .local v9, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    .line 8907
    .local v3, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v3, :cond_cf

    move-object v0, v3

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v17, v0

    if-eqz v17, :cond_cf

    const/16 v17, 0x1

    move/from16 v14, v17

    .line 8909
    .local v14, scalingRequired:Z
    :goto_4d
    if-eqz p1, :cond_79

    if-eqz v14, :cond_79

    .line 8910
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move-object v0, v3

    iget v0, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x3f00

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 8911
    move v0, v9

    int-to-float v0, v0

    move/from16 v17, v0

    move-object v0, v3

    iget v0, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x3f00

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move v9, v0

    .line 8914
    :cond_79
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    move v7, v0

    .line 8915
    .local v7, drawingCacheBackgroundColor:I
    if-nez v7, :cond_86

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isOpaque()Z

    move-result v17

    if-eqz v17, :cond_d5

    :cond_86
    const/16 v17, 0x1

    move/from16 v10, v17

    .line 8916
    .local v10, opaque:Z
    :goto_8a
    if-eqz v3, :cond_da

    move-object v0, v3

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    move/from16 v17, v0

    if-eqz v17, :cond_da

    const/16 v17, 0x1

    move/from16 v15, v17

    .line 8918
    .local v15, use32BitCache:Z
    :goto_97
    if-lez v16, :cond_b9

    if-lez v9, :cond_b9

    mul-int v17, v16, v9

    if-eqz v10, :cond_df

    if-nez v15, :cond_df

    const/16 v18, 0x2

    :goto_a3
    mul-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewConfiguration;->getScaledMaximumDrawingCacheSize()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_e2

    .line 8922
    :cond_b9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 8923
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mCachingFailed:Z

    .line 9038
    .end local v3           #attachInfo:Landroid/view/View$AttachInfo;
    .end local v7           #drawingCacheBackgroundColor:I
    .end local v9           #height:I
    .end local v10           #opaque:Z
    .end local v14           #scalingRequired:Z
    .end local v15           #use32BitCache:Z
    .end local v16           #width:I
    :cond_c4
    :goto_c4
    return-void

    .line 8895
    :cond_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-nez v17, :cond_c4

    goto/16 :goto_17

    .line 8907
    .restart local v3       #attachInfo:Landroid/view/View$AttachInfo;
    .restart local v9       #height:I
    .restart local v16       #width:I
    :cond_cf
    const/16 v17, 0x0

    move/from16 v14, v17

    goto/16 :goto_4d

    .line 8915
    .restart local v7       #drawingCacheBackgroundColor:I
    .restart local v14       #scalingRequired:Z
    :cond_d5
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_8a

    .line 8916
    .restart local v10       #opaque:Z
    :cond_da
    const/16 v17, 0x0

    move/from16 v15, v17

    goto :goto_97

    .line 8918
    .restart local v15       #use32BitCache:Z
    :cond_df
    const/16 v18, 0x4

    goto :goto_a3

    .line 8927
    :cond_e2
    const/4 v6, 0x1

    .line 8928
    .local v6, clear:Z
    if-eqz p1, :cond_210

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v4, v17

    .line 8930
    .local v4, bitmap:Landroid/graphics/Bitmap;
    :goto_ed
    if-eqz v4, :cond_102

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_102

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    move v1, v9

    if-eq v0, v1, :cond_14d

    .line 8932
    :cond_102
    if-nez v10, :cond_226

    .line 8935
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v17, v0

    const/high16 v18, 0x18

    and-int v17, v17, v18

    sparse-switch v17, :sswitch_data_26e

    .line 8946
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 8956
    .local v11, quality:Landroid/graphics/Bitmap$Config;
    :goto_113
    if-eqz v4, :cond_118

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 8959
    :cond_118
    :try_start_118
    move/from16 v0, v16

    move v1, v9

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 8960
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v17, v0

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 8961
    if-eqz p1, :cond_233

    .line 8962
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 8966
    :goto_13b
    if-eqz v10, :cond_147

    if-eqz v15, :cond_147

    const/16 v17, 0x0

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_147
    .catch Ljava/lang/OutOfMemoryError; {:try_start_118 .. :try_end_147} :catch_23a

    .line 8980
    :cond_147
    if-eqz v7, :cond_25a

    const/16 v17, 0x1

    move/from16 v6, v17

    .line 8984
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :cond_14d
    :goto_14d
    if-eqz v3, :cond_260

    .line 8985
    iget-object v5, v3, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 8986
    .local v5, canvas:Landroid/graphics/Canvas;
    if-nez v5, :cond_158

    .line 8987
    new-instance v5, Landroid/graphics/Canvas;

    .end local v5           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    .line 8989
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    :cond_158
    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 8994
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object v1, v3

    iput-object v0, v1, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 9000
    :goto_162
    if-eqz v6, :cond_167

    .line 9001
    invoke-virtual {v4, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 9004
    :cond_167
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeScroll()V

    .line 9005
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 9007
    .local v12, restoreCount:I
    if-eqz p1, :cond_177

    if-eqz v14, :cond_177

    .line 9008
    iget v13, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 9009
    .local v13, scale:F
    invoke-virtual {v5, v13, v13}, Landroid/graphics/Canvas;->scale(FF)V

    .line 9012
    .end local v13           #scale:F
    :cond_177
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v5

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9014
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x20

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 9015
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1cb

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1cb

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLayerType:I

    move/from16 v17, v0

    if-eqz v17, :cond_1dc

    .line 9017
    :cond_1cb
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    const v18, 0x8000

    or-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 9021
    :cond_1dc
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    const/16 v18, 0x80

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_267

    .line 9025
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    const v18, -0x600001

    and-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 9026
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 9031
    :goto_207
    invoke-virtual {v5, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 9033
    if-eqz v3, :cond_c4

    .line 9035
    iput-object v5, v3, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    goto/16 :goto_c4

    .line 8928
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v12           #restoreCount:I
    :cond_210
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v4, v17

    goto/16 :goto_ed

    .line 8937
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    :sswitch_21a
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 8938
    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_113

    .line 8940
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :sswitch_21e
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 8941
    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_113

    .line 8943
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :sswitch_222
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 8944
    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_113

    .line 8952
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :cond_226
    if-eqz v15, :cond_22e

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v11, v17

    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    :goto_22c
    goto/16 :goto_113

    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :cond_22e
    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v11, v17

    goto :goto_22c

    .line 8964
    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    :cond_233
    :try_start_233
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;
    :try_end_238
    .catch Ljava/lang/OutOfMemoryError; {:try_start_233 .. :try_end_238} :catch_23a

    goto/16 :goto_13b

    .line 8967
    :catch_23a
    move-exception v17

    move-object/from16 v8, v17

    .line 8971
    .local v8, e:Ljava/lang/OutOfMemoryError;
    if-eqz p1, :cond_251

    .line 8972
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 8976
    :goto_247
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mCachingFailed:Z

    goto/16 :goto_c4

    .line 8974
    :cond_251
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_247

    .line 8980
    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    :cond_25a
    const/16 v17, 0x0

    move/from16 v6, v17

    goto/16 :goto_14d

    .line 8997
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :cond_260
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v5       #canvas:Landroid/graphics/Canvas;
    goto/16 :goto_162

    .line 9028
    .restart local v12       #restoreCount:I
    :cond_267
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_207

    .line 8935
    :sswitch_data_26e
    .sparse-switch
        0x0 -> :sswitch_21a
        0x80000 -> :sswitch_21e
        0x100000 -> :sswitch_222
    .end sparse-switch
.end method

.method public buildLayer()V
    .registers 3

    .prologue
    .line 8521
    iget v0, p0, Landroid/view/View;->mLayerType:I

    if-nez v0, :cond_5

    .line 8535
    :goto_4
    return-void

    .line 8523
    :cond_5
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_11

    .line 8524
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This view must be attached to a window first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8527
    :cond_11
    iget v0, p0, Landroid/view/View;->mLayerType:I

    packed-switch v0, :pswitch_data_20

    goto :goto_4

    .line 8532
    :pswitch_17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    goto :goto_4

    .line 8529
    :pswitch_1c
    invoke-virtual {p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    goto :goto_4

    .line 8527
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1c
    .end packed-switch
.end method

.method public canHaveDisplayList()Z
    .registers 2

    .prologue
    .line 8688
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public cancelLongPress()V
    .registers 1

    .prologue
    .line 5403
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 5410
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 5411
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .registers 3
    .parameter "view"

    .prologue
    .line 5123
    const/4 v0, 0x0

    return v0
.end method

.method public clearAnimation()V
    .registers 2

    .prologue
    .line 11099
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_9

    .line 11100
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->detach()V

    .line 11102
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 11103
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 11104
    return-void
.end method

.method public clearFocus()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3295
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1d

    .line 3296
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3298
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_16

    .line 3299
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 3302
    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3303
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3305
    :cond_1d
    return-void
.end method

.method clearFocusForRemoval()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3313
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_14

    .line 3314
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3316
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3317
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3319
    :cond_14
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .registers 2

    .prologue
    .line 7796
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 2

    .prologue
    .line 7775
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 7754
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected computeOpaqueFlags()V
    .registers 4

    .prologue
    .line 7284
    iget-object v1, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2b

    .line 7285
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x80

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7290
    :goto_14
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 7291
    .local v0, flags:I
    and-int/lit16 v1, v0, 0x200

    if-nez v1, :cond_1e

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_23

    :cond_1e
    const/high16 v1, 0x300

    and-int/2addr v1, v0

    if-nez v1, :cond_34

    .line 7293
    :cond_23
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7297
    :goto_2a
    return-void

    .line 7287
    .end local v0           #flags:I
    :cond_2b
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x800001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_14

    .line 7295
    .restart local v0       #flags:I
    :cond_34
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_2a
.end method

.method public computeScroll()V
    .registers 1

    .prologue
    .line 7475
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 2

    .prologue
    .line 7857
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .registers 2

    .prologue
    .line 7836
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    .prologue
    .line 7815
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .registers 6
    .parameter "menu"

    .prologue
    .line 5137
    invoke-virtual {p0}, Landroid/view/View;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .line 5141
    .local v1, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    move-object v2, v0

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 5143
    invoke-virtual {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 5144
    iget-object v2, p0, Landroid/view/View;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v2, :cond_17

    .line 5145
    iget-object v2, p0, Landroid/view/View;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v2, p1, p0, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 5150
    :cond_17
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 5152
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_28

    .line 5153
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p1}, Landroid/view/ViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 5155
    :cond_28
    return-void
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "quality"
    .parameter "backgroundColor"
    .parameter "skipChildren"

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f00

    .line 9045
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int v7, v8, v9

    .line 9046
    .local v7, width:I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int v4, v8, v9

    .line 9048
    .local v4, height:I
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 9049
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_30

    iget v8, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move v6, v8

    .line 9050
    .local v6, scale:F
    :goto_16
    int-to-float v8, v7

    mul-float/2addr v8, v6

    add-float/2addr v8, v10

    float-to-int v7, v8

    .line 9051
    int-to-float v8, v4

    mul-float/2addr v8, v6

    add-float/2addr v8, v10

    float-to-int v4, v8

    .line 9053
    if-lez v7, :cond_34

    move v8, v7

    :goto_21
    if-lez v4, :cond_36

    move v9, v4

    :goto_24
    invoke-static {v8, v9, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 9054
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_38

    .line 9055
    new-instance v8, Ljava/lang/OutOfMemoryError;

    invoke-direct {v8}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v8

    .line 9049
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #scale:F
    :cond_30
    const/high16 v8, 0x3f80

    move v6, v8

    goto :goto_16

    .restart local v6       #scale:F
    :cond_34
    move v8, v11

    .line 9053
    goto :goto_21

    :cond_36
    move v9, v11

    goto :goto_24

    .line 9058
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 9061
    if-eqz v0, :cond_92

    .line 9062
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 9063
    .local v2, canvas:Landroid/graphics/Canvas;
    if-nez v2, :cond_50

    .line 9064
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 9066
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    :cond_50
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 9071
    const/4 v8, 0x0

    iput-object v8, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 9077
    :goto_56
    const/high16 v8, -0x100

    and-int/2addr v8, p2

    if-eqz v8, :cond_5e

    .line 9078
    invoke-virtual {v1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 9081
    :cond_5e
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 9082
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 9083
    .local v5, restoreCount:I
    invoke-virtual {v2, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 9084
    iget v8, p0, Landroid/view/View;->mScrollX:I

    neg-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/view/View;->mScrollY:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9087
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9088
    .local v3, flags:I
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    const v9, -0x600001

    and-int/2addr v8, v9

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9091
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x80

    const/16 v9, 0x80

    if-ne v8, v9, :cond_98

    .line 9092
    invoke-virtual {p0, v2}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 9097
    :goto_88
    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9099
    invoke-virtual {v2, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 9101
    if-eqz v0, :cond_91

    .line 9103
    iput-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 9106
    :cond_91
    return-object v1

    .line 9074
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #flags:I
    .end local v5           #restoreCount:I
    :cond_92
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v2       #canvas:Landroid/graphics/Canvas;
    goto :goto_56

    .line 9094
    .restart local v3       #flags:I
    .restart local v5       #restoreCount:I
    :cond_98
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_88
.end method

.method public debug()V
    .registers 2

    .prologue
    .line 10674
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->debug(I)V

    .line 10675
    return-void
.end method

.method protected debug(I)V
    .registers 7
    .parameter "depth"

    .prologue
    .line 10687
    const/4 v3, 0x1

    sub-int v3, p1, v3

    invoke-static {v3}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 10689
    .local v1, output:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10690
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 10691
    .local v0, id:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_42

    .line 10692
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10694
    :cond_42
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 10695
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_65

    .line 10696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10698
    :cond_65
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10700
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8c

    .line 10701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FOCUSED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10702
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10705
    :cond_8c
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 10706
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "frame={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} scroll={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10709
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10711
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-nez v3, :cond_102

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-nez v3, :cond_102

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    if-nez v3, :cond_102

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    if-eqz v3, :cond_14f

    .line 10713
    :cond_102
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 10714
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "padding={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10716
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10719
    :cond_14f
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 10720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mMeasureWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMeasureHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10722
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10724
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 10725
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v3, :cond_22d

    .line 10726
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BAD! no layout params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10730
    :goto_198
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10732
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 10733
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "flags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10734
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mViewFlags:I

    invoke-static {v4}, Landroid/view/View;->printFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10736
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10738
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 10739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "privateFlags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10740
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-static {v4}, Landroid/view/View;->printPrivateFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10741
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10742
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10743
    return-void

    .line 10728
    :cond_22d
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_198
.end method

.method public destroyDrawingCache()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 8825
    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 8826
    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 8827
    iput-object v1, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 8829
    :cond_c
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_17

    .line 8830
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 8831
    iput-object v1, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    .line 8833
    :cond_17
    return-void
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .registers 9
    .parameter "info"
    .parameter "visibility"

    .prologue
    .line 8158
    iput-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8159
    iget v4, p0, Landroid/view/View;->mWindowAttachCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/view/View;->mWindowAttachCount:I

    .line 8161
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8162
    iget-object v4, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v4, :cond_1c

    .line 8163
    iget-object v4, p1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v5, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->merge(Landroid/view/ViewTreeObserver;)V

    .line 8164
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 8166
    :cond_1c
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v5, 0x8

    and-int/2addr v4, v5

    if-eqz v4, :cond_31

    .line 8167
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8168
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v5, 0x10

    or-int/2addr v4, v5

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8170
    :cond_31
    invoke-virtual {p0, p2}, Landroid/view/View;->performCollectViewAttributes(I)V

    .line 8171
    invoke-virtual {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 8173
    iget-object v2, p0, Landroid/view/View;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8175
    .local v2, listeners:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    if-eqz v2, :cond_55

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-lez v4, :cond_55

    .line 8180
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnAttachStateChangeListener;

    .line 8181
    .local v1, listener:Landroid/view/View$OnAttachStateChangeListener;
    invoke-interface {v1, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    goto :goto_45

    .line 8185
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Landroid/view/View$OnAttachStateChangeListener;
    :cond_55
    iget v3, p1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 8186
    .local v3, vis:I
    const/16 v4, 0x8

    if-eq v3, v4, :cond_5e

    .line 8187
    invoke-virtual {p0, v3}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 8189
    :cond_5e
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_67

    .line 8191
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 8193
    :cond_67
    return-void
.end method

.method dispatchCollectViewAttributes(I)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 4899
    invoke-virtual {p0, p1}, Landroid/view/View;->performCollectViewAttributes(I)V

    .line 4900
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 4878
    invoke-virtual {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4879
    return-void
.end method

.method protected dispatchConsistencyCheck(I)Z
    .registers 3
    .parameter "consistency"

    .prologue
    .line 10619
    invoke-virtual {p0, p1}, Landroid/view/View;->onConsistencyCheck(I)Z

    move-result v0

    return v0
.end method

.method dispatchDetachedFromWindow()V
    .registers 8

    .prologue
    const/16 v5, 0x8

    .line 8196
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8197
    .local v1, info:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_d

    .line 8198
    iget v4, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 8199
    .local v4, vis:I
    if-eq v4, v5, :cond_d

    .line 8200
    invoke-virtual {p0, v5}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 8204
    .end local v4           #vis:I
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 8206
    iget-object v3, p0, Landroid/view/View;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8208
    .local v3, listeners:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2e

    .line 8213
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnAttachStateChangeListener;

    .line 8214
    .local v2, listener:Landroid/view/View$OnAttachStateChangeListener;
    invoke-interface {v2, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    goto :goto_1e

    .line 8218
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Landroid/view/View$OnAttachStateChangeListener;
    :cond_2e
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x10

    and-int/2addr v5, v6

    if-eqz v5, :cond_44

    .line 8219
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8220
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x100001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8223
    :cond_44
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8224
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .registers 2
    .parameter "hint"

    .prologue
    .line 4778
    invoke-virtual {p0, p1}, Landroid/view/View;->onDisplayHint(I)V

    .line 4779
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 11549
    iget-object v0, p0, Landroid/view/View;->mOnDragListener:Landroid/view/View$OnDragListener;

    if-eqz v0, :cond_14

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/view/View;->mOnDragListener:Landroid/view/View$OnDragListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 11551
    const/4 v0, 0x1

    .line 11553
    :goto_13
    return v0

    :cond_14
    invoke-virtual {p0, p1}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 5628
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .registers 1

    .prologue
    .line 4515
    invoke-virtual {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 4516
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 4661
    iget-object v0, p0, Landroid/view/View;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    if-eqz v0, :cond_14

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/view/View;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4663
    const/4 v0, 0x1

    .line 4666
    :goto_13
    return v0

    :cond_14
    invoke-virtual {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method protected dispatchGetDisplayList()V
    .registers 1

    .prologue
    .line 8677
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 4580
    iget-object v0, p0, Landroid/view/View;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/view/View;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4582
    const/4 v0, 0x1

    .line 4585
    :goto_17
    return v0

    :cond_18
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_20
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_17

    :cond_25
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 4558
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 4596
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final dispatchPointerEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 4683
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4684
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 4686
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 3456
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8317
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 8318
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 8319
    .local v0, state:Landroid/os/Parcelable;
    if-eqz v0, :cond_29

    .line 8322
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8323
    invoke-virtual {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8324
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_29

    .line 8325
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8330
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_29
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8251
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_2e

    .line 8252
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8253
    invoke-virtual {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 8254
    .local v0, state:Landroid/os/Parcelable;
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_27

    .line 8255
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8258
    :cond_27
    if-eqz v0, :cond_2e

    .line 8261
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8264
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_2e
    return-void
.end method

.method protected dispatchSetActivated(Z)V
    .registers 2
    .parameter "activated"

    .prologue
    .line 10261
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .registers 2
    .parameter "pressed"

    .prologue
    .line 4060
    return-void
.end method

.method protected dispatchSetSelected(Z)V
    .registers 2
    .parameter "selected"

    .prologue
    .line 10219
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .registers 1

    .prologue
    .line 4497
    invoke-virtual {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 4498
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .registers 4
    .parameter "visibility"

    .prologue
    .line 11294
    iget-object v0, p0, Landroid/view/View;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    if-eqz v0, :cond_b

    .line 11295
    iget-object v0, p0, Landroid/view/View;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    and-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Landroid/view/View$OnSystemUiVisibilityChangeListener;->onSystemUiVisibilityChange(I)V

    .line 11298
    :cond_b
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 4607
    invoke-virtual {p0, p1}, Landroid/view/View;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 4608
    const/4 v0, 0x0

    .line 4616
    :goto_7
    return v0

    .line 4612
    :cond_8
    iget-object v0, p0, Landroid/view/View;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_1c

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/view/View;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4614
    const/4 v0, 0x1

    goto :goto_7

    .line 4616
    :cond_1c
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 4645
    invoke-virtual {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 4225
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 4748
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 4749
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 4698
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 4699
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 4802
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 4803
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 43
    .parameter "canvas"

    .prologue
    .line 9239
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v29, v0

    .line 9240
    .local v29, privateFlags:I
    const/high16 v3, 0x60

    and-int v3, v3, v29

    const/high16 v4, 0x40

    if-ne v3, v4, :cond_9d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    if-nez v3, :cond_9d

    :cond_1e
    const/4 v3, 0x1

    move v13, v3

    .line 9242
    .local v13, dirtyOpaque:Z
    :goto_20
    const v3, -0x600001

    and-int v3, v3, v29

    or-int/lit8 v3, v3, 0x20

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 9259
    if-nez v13, :cond_73

    .line 9260
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    .line 9261
    .local v10, background:Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_73

    .line 9262
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v33, v0

    .line 9263
    .local v33, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v34, v0

    .line 9265
    .local v34, scrollY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/View;->mBackgroundSizeChanged:Z

    move v3, v0

    if-eqz v3, :cond_69

    .line 9266
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v6, v0

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move v7, v0

    sub-int/2addr v6, v7

    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9267
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 9270
    :cond_69
    or-int v3, v33, v34

    if-nez v3, :cond_a0

    .line 9271
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9281
    .end local v10           #background:Landroid/graphics/drawable/Drawable;
    .end local v33           #scrollX:I
    .end local v34           #scrollY:I
    :cond_73
    :goto_73
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v40, v0

    .line 9282
    .local v40, viewFlags:I
    move/from16 v0, v40

    and-int/lit16 v0, v0, 0x1000

    move v3, v0

    if-eqz v3, :cond_c7

    const/4 v3, 0x1

    move/from16 v21, v3

    .line 9283
    .local v21, horizontalEdges:Z
    :goto_83
    move/from16 v0, v40

    and-int/lit16 v0, v0, 0x2000

    move v3, v0

    if-eqz v3, :cond_cb

    const/4 v3, 0x1

    move/from16 v39, v3

    .line 9284
    .local v39, verticalEdges:Z
    :goto_8d
    if-nez v39, :cond_cf

    if-nez v21, :cond_cf

    .line 9286
    if-nez v13, :cond_96

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 9289
    :cond_96
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 9292
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    .line 9435
    :goto_9c
    return-void

    .line 9240
    .end local v13           #dirtyOpaque:Z
    .end local v21           #horizontalEdges:Z
    .end local v39           #verticalEdges:Z
    .end local v40           #viewFlags:I
    :cond_9d
    const/4 v3, 0x0

    move v13, v3

    goto :goto_20

    .line 9273
    .restart local v10       #background:Landroid/graphics/drawable/Drawable;
    .restart local v13       #dirtyOpaque:Z
    .restart local v33       #scrollX:I
    .restart local v34       #scrollY:I
    :cond_a0
    move/from16 v0, v33

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9274
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9275
    move/from16 v0, v33

    neg-int v0, v0

    move v3, v0

    int-to-float v3, v3

    move/from16 v0, v34

    neg-int v0, v0

    move v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_73

    .line 9282
    .end local v10           #background:Landroid/graphics/drawable/Drawable;
    .end local v33           #scrollX:I
    .end local v34           #scrollY:I
    .restart local v40       #viewFlags:I
    :cond_c7
    const/4 v3, 0x0

    move/from16 v21, v3

    goto :goto_83

    .line 9283
    .restart local v21       #horizontalEdges:Z
    :cond_cb
    const/4 v3, 0x0

    move/from16 v39, v3

    goto :goto_8d

    .line 9305
    .restart local v39       #verticalEdges:Z
    :cond_cf
    const/16 v17, 0x0

    .line 9306
    .local v17, drawTop:Z
    const/4 v14, 0x0

    .line 9307
    .local v14, drawBottom:Z
    const/4 v15, 0x0

    .line 9308
    .local v15, drawLeft:Z
    const/16 v16, 0x0

    .line 9310
    .local v16, drawRight:Z
    const/16 v38, 0x0

    .line 9311
    .local v38, topFadeStrength:F
    const/4 v12, 0x0

    .line 9312
    .local v12, bottomFadeStrength:F
    const/16 v23, 0x0

    .line 9313
    .local v23, leftFadeStrength:F
    const/16 v31, 0x0

    .line 9316
    .local v31, rightFadeStrength:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v27, v0

    .line 9317
    .local v27, paddingLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v28, v0

    .line 9319
    .local v28, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isPaddingOffsetRequired()Z

    move-result v26

    .line 9320
    .local v26, offsetRequired:Z
    if-eqz v26, :cond_fa

    .line 9321
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftPaddingOffset()I

    move-result v3

    add-int v27, v27, v3

    .line 9322
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTopPaddingOffset()I

    move-result v3

    add-int v28, v28, v3

    .line 9325
    :cond_fa
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    add-int v22, v3, v27

    .line 9326
    .local v22, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v3, v0

    add-int v3, v3, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move v4, v0

    sub-int/2addr v3, v4

    sub-int v30, v3, v27

    .line 9327
    .local v30, right:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    add-int v37, v3, v28

    .line 9328
    .local v37, top:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v3, v0

    add-int v3, v3, v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move v4, v0

    sub-int/2addr v3, v4

    sub-int v11, v3, v28

    .line 9330
    .local v11, bottom:I
    if-eqz v26, :cond_13f

    .line 9331
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightPaddingOffset()I

    move-result v3

    add-int v30, v30, v3

    .line 9332
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomPaddingOffset()I

    move-result v3

    add-int/2addr v11, v3

    .line 9335
    :cond_13f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    move-object/from16 v35, v0

    .line 9336
    .local v35, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    move v3, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v19, v0

    .line 9337
    .local v19, fadeHeight:F
    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v24, v0

    .line 9341
    .local v24, length:I
    if-eqz v39, :cond_15f

    add-int v3, v37, v24

    sub-int v4, v11, v24

    if-le v3, v4, :cond_15f

    .line 9342
    sub-int v3, v11, v37

    div-int/lit8 v24, v3, 0x2

    .line 9346
    :cond_15f
    if-eqz v21, :cond_16b

    add-int v3, v22, v24

    sub-int v4, v30, v24

    if-le v3, v4, :cond_16b

    .line 9347
    sub-int v3, v30, v22

    div-int/lit8 v24, v3, 0x2

    .line 9350
    :cond_16b
    if-eqz v39, :cond_1a0

    .line 9351
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTopFadingEdgeStrength()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v38

    .line 9352
    mul-float v3, v38, v19

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-lez v3, :cond_345

    const/4 v3, 0x1

    move/from16 v17, v3

    .line 9353
    :goto_187
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomFadingEdgeStrength()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 9354
    mul-float v3, v12, v19

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-lez v3, :cond_34a

    const/4 v3, 0x1

    move v14, v3

    .line 9357
    :cond_1a0
    :goto_1a0
    if-eqz v21, :cond_1d5

    .line 9358
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 9359
    mul-float v3, v23, v19

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-lez v3, :cond_34e

    const/4 v3, 0x1

    move v15, v3

    .line 9360
    :goto_1bb
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v31

    .line 9361
    mul-float v3, v31, v19

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-lez v3, :cond_352

    const/4 v3, 0x1

    move/from16 v16, v3

    .line 9364
    :cond_1d5
    :goto_1d5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v32

    .line 9366
    .local v32, saveCount:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSolidColor()I

    move-result v36

    .line 9367
    .local v36, solidColor:I
    if-nez v36, :cond_357

    .line 9368
    const/16 v20, 0x4

    .line 9370
    .local v20, flags:I
    if-eqz v17, :cond_1f9

    .line 9371
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    add-int v3, v37, v24

    int-to-float v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 9374
    :cond_1f9
    if-eqz v14, :cond_20e

    .line 9375
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    sub-int v3, v11, v24

    int-to-float v5, v3

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 9378
    :cond_20e
    if-eqz v15, :cond_223

    .line 9379
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    add-int v3, v22, v24

    int-to-float v6, v3

    int-to-float v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 9382
    :cond_223
    if-eqz v16, :cond_238

    .line 9383
    sub-int v3, v30, v24

    int-to-float v4, v3

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 9390
    .end local v20           #flags:I
    :cond_238
    :goto_238
    if-nez v13, :cond_23d

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 9393
    :cond_23d
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 9396
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    move-object v8, v0

    .line 9397
    .local v8, p:Landroid/graphics/Paint;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v25, v0

    .line 9398
    .local v25, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    move-object/from16 v18, v0

    .line 9400
    .local v18, fade:Landroid/graphics/Shader;
    if-eqz v17, :cond_288

    .line 9401
    const/high16 v3, 0x3f80

    mul-float v4, v19, v38

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 9402
    move/from16 v0, v22

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 9403
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 9404
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    add-int v3, v37, v24

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 9407
    :cond_288
    if-eqz v14, :cond_2c1

    .line 9408
    const/high16 v3, 0x3f80

    mul-float v4, v19, v12

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 9409
    const/high16 v3, 0x4334

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 9410
    move/from16 v0, v22

    int-to-float v0, v0

    move v3, v0

    int-to-float v4, v11

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 9411
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 9412
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    sub-int v3, v11, v24

    int-to-float v5, v3

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v11

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 9415
    :cond_2c1
    if-eqz v15, :cond_2fd

    .line 9416
    const/high16 v3, 0x3f80

    mul-float v4, v19, v23

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 9417
    const/high16 v3, -0x3d4c

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 9418
    move/from16 v0, v22

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 9419
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 9420
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    add-int v3, v22, v24

    int-to-float v6, v3

    int-to-float v7, v11

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 9423
    :cond_2fd
    if-eqz v16, :cond_339

    .line 9424
    const/high16 v3, 0x3f80

    mul-float v4, v19, v31

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 9425
    const/high16 v3, 0x42b4

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 9426
    move/from16 v0, v30

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 9427
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 9428
    sub-int v3, v30, v24

    int-to-float v4, v3

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v11

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 9431
    :cond_339
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 9434
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    goto/16 :goto_9c

    .line 9352
    .end local v8           #p:Landroid/graphics/Paint;
    .end local v18           #fade:Landroid/graphics/Shader;
    .end local v25           #matrix:Landroid/graphics/Matrix;
    .end local v32           #saveCount:I
    .end local v36           #solidColor:I
    :cond_345
    const/4 v3, 0x0

    move/from16 v17, v3

    goto/16 :goto_187

    .line 9354
    :cond_34a
    const/4 v3, 0x0

    move v14, v3

    goto/16 :goto_1a0

    .line 9359
    :cond_34e
    const/4 v3, 0x0

    move v15, v3

    goto/16 :goto_1bb

    .line 9361
    :cond_352
    const/4 v3, 0x0

    move/from16 v16, v3

    goto/16 :goto_1d5

    .line 9386
    .restart local v32       #saveCount:I
    .restart local v36       #solidColor:I
    :cond_357
    invoke-virtual/range {v35 .. v36}, Landroid/view/View$ScrollabilityCache;->setFadeColor(I)V

    goto/16 :goto_238
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 9801
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 9802
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 9803
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 9805
    :cond_11
    return-void
.end method

.method public fastInvalidate()V
    .registers 5

    .prologue
    const v3, 0x8000

    const/high16 v2, -0x8000

    .line 7213
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x30

    if-eq v0, v1, :cond_17

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_17

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_4d

    .line 7216
    :cond_17
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_26

    .line 7217
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 7219
    :cond_26
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7220
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7221
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7222
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v0, :cond_4d

    .line 7223
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7226
    :cond_4d
    return-void
.end method

.method public findFocus()Landroid/view/View;
    .registers 2

    .prologue
    .line 3538
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    move-object v0, p0

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;
    .registers 7
    .parameter "root"
    .parameter "direction"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 4237
    sparse-switch p2, :sswitch_data_54

    move-object v1, v2

    .line 4263
    :goto_6
    return-object v1

    .line 4239
    :sswitch_7
    iget v1, p0, Landroid/view/View;->mNextFocusLeftId:I

    if-ne v1, v3, :cond_d

    move-object v1, v2

    goto :goto_6

    .line 4240
    :cond_d
    iget v1, p0, Landroid/view/View;->mNextFocusLeftId:I

    invoke-static {p1, v1}, Landroid/view/View;->findViewShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_6

    .line 4242
    :sswitch_14
    iget v1, p0, Landroid/view/View;->mNextFocusRightId:I

    if-ne v1, v3, :cond_1a

    move-object v1, v2

    goto :goto_6

    .line 4243
    :cond_1a
    iget v1, p0, Landroid/view/View;->mNextFocusRightId:I

    invoke-static {p1, v1}, Landroid/view/View;->findViewShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_6

    .line 4245
    :sswitch_21
    iget v1, p0, Landroid/view/View;->mNextFocusUpId:I

    if-ne v1, v3, :cond_27

    move-object v1, v2

    goto :goto_6

    .line 4246
    :cond_27
    iget v1, p0, Landroid/view/View;->mNextFocusUpId:I

    invoke-static {p1, v1}, Landroid/view/View;->findViewShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_6

    .line 4248
    :sswitch_2e
    iget v1, p0, Landroid/view/View;->mNextFocusDownId:I

    if-ne v1, v3, :cond_34

    move-object v1, v2

    goto :goto_6

    .line 4249
    :cond_34
    iget v1, p0, Landroid/view/View;->mNextFocusDownId:I

    invoke-static {p1, v1}, Landroid/view/View;->findViewShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_6

    .line 4251
    :sswitch_3b
    iget v1, p0, Landroid/view/View;->mNextFocusForwardId:I

    if-ne v1, v3, :cond_41

    move-object v1, v2

    goto :goto_6

    .line 4252
    :cond_41
    iget v1, p0, Landroid/view/View;->mNextFocusForwardId:I

    invoke-static {p1, v1}, Landroid/view/View;->findViewShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_6

    .line 4254
    :sswitch_48
    iget v0, p0, Landroid/view/View;->mID:I

    .line 4255
    .local v0, id:I
    new-instance v1, Landroid/view/View$2;

    invoke-direct {v1, p0, v0}, Landroid/view/View$2;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v1

    goto :goto_6

    .line 4237
    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_48
        0x2 -> :sswitch_3b
        0x11 -> :sswitch_7
        0x21 -> :sswitch_21
        0x42 -> :sswitch_14
        0x82 -> :sswitch_2e
    .end sparse-switch
.end method

.method public final findViewById(I)Landroid/view/View;
    .registers 3
    .parameter "id"

    .prologue
    .line 10409
    if-gez p1, :cond_4

    .line 10410
    const/4 v0, 0x0

    .line 10412
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    goto :goto_3
.end method

.method public final findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 10438
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;)Landroid/view/View;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 10395
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    .line 10398
    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .registers 3
    .parameter "id"

    .prologue
    .line 10371
    iget v0, p0, Landroid/view/View;->mID:I

    if-ne p1, v0, :cond_6

    move-object v0, p0

    .line 10374
    :goto_5
    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .registers 3
    .parameter "tag"

    .prologue
    .line 10423
    if-nez p1, :cond_4

    .line 10424
    const/4 v0, 0x0

    .line 10426
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_3
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 3
    .parameter "tag"

    .prologue
    .line 10383
    if-eqz p1, :cond_c

    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p0

    .line 10386
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 4
    .parameter "insets"

    .prologue
    .line 3763
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 3764
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 3765
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 3766
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/view/View;->mPaddingRight:I

    .line 3767
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/view/View;->mPaddingBottom:I

    .line 3768
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 3769
    const/4 v0, 0x1

    .line 3771
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public focusSearch(I)Landroid/view/View;
    .registers 3
    .parameter "direction"

    .prologue
    .line 4206
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_b

    .line 4207
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 4209
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public forceLayout()V
    .registers 3

    .prologue
    .line 10798
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10799
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10800
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 12
    .parameter "region"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 11179
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11180
    .local v6, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz p1, :cond_2f

    if-eqz v6, :cond_2f

    .line 11181
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11182
    .local v8, pflags:I
    and-int/lit16 v0, v8, 0x80

    if-nez v0, :cond_30

    .line 11185
    iget-object v7, v6, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 11186
    .local v7, location:[I
    invoke-virtual {p0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 11187
    aget v1, v7, v3

    aget v2, v7, v9

    aget v0, v7, v3

    iget v3, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v0, v3

    aget v0, v7, v9

    iget v4, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v0, v4

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v4, v0, v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 11196
    .end local v7           #location:[I
    .end local v8           #pflags:I
    :cond_2f
    :goto_2f
    return v9

    .line 11189
    .restart local v8       #pflags:I
    :cond_30
    and-int/lit16 v0, v8, 0x100

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2f

    .line 11193
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    goto :goto_2f
.end method

.method public getAlpha()F
    .registers 2

    .prologue
    .line 6201
    iget v0, p0, Landroid/view/View;->mAlpha:F

    return v0
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 11080
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getApplicationWindowToken()Landroid/os/IBinder;
    .registers 4

    .prologue
    .line 8132
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8133
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_c

    .line 8134
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 8135
    .local v1, appWindowToken:Landroid/os/IBinder;
    if-nez v1, :cond_a

    .line 8136
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    :cond_a
    move-object v2, v1

    .line 8140
    .end local v1           #appWindowToken:Landroid/os/IBinder;
    :goto_b
    return-object v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 10078
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBaseline()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 10771
    const/4 v0, -0x1

    return v0
.end method

.method public final getBottom()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 6317
    iget v0, p0, Landroid/view/View;->mBottom:I

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 3

    .prologue
    .line 7572
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_12

    const/high16 v0, 0x3f80

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected getBottomPaddingOffset()I
    .registers 2

    .prologue
    .line 9203
    const/4 v0, 0x0

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 3471
    iget-object v0, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 4948
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 5168
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayList()Landroid/view/DisplayList;
    .registers 9

    .prologue
    const/4 v5, 0x0

    const v7, 0x8020

    const v6, -0x600001

    .line 8700
    invoke-virtual {p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v4

    if-nez v4, :cond_f

    move-object v4, v5

    .line 8763
    :goto_e
    return-object v4

    .line 8704
    :cond_f
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_27

    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v4, :cond_27

    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v4}, Landroid/view/DisplayList;->isValid()Z

    move-result v4

    if-eqz v4, :cond_27

    iget-boolean v4, p0, Landroid/view/View;->mRecreateDisplayList:Z

    if-eqz v4, :cond_b8

    .line 8709
    :cond_27
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v4, :cond_47

    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v4}, Landroid/view/DisplayList;->isValid()Z

    move-result v4

    if-eqz v4, :cond_47

    iget-boolean v4, p0, Landroid/view/View;->mRecreateDisplayList:Z

    if-nez v4, :cond_47

    .line 8711
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v4, v7

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8712
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v6

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8713
    invoke-virtual {p0}, Landroid/view/View;->dispatchGetDisplayList()V

    .line 8715
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    goto :goto_e

    .line 8720
    :cond_47
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 8721
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-nez v4, :cond_5b

    .line 8722
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4, p0}, Landroid/view/HardwareRenderer;->createDisplayList(Landroid/view/View;)Landroid/view/DisplayList;

    move-result-object v4

    iput-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    .line 8726
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 8729
    :cond_5b
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v4}, Landroid/view/DisplayList;->start()Landroid/view/HardwareCanvas;

    move-result-object v0

    .line 8731
    .local v0, canvas:Landroid/view/HardwareCanvas;
    :try_start_61
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v4, v5

    .line 8732
    .local v3, width:I
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int v1, v4, v5

    .line 8734
    .local v1, height:I
    invoke-virtual {v0, v3, v1}, Landroid/view/HardwareCanvas;->setViewport(II)V

    .line 8736
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/HardwareCanvas;->onPreDraw(Landroid/graphics/Rect;)V

    .line 8738
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->save()I

    move-result v2

    .line 8740
    .local v2, restoreCount:I
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 8741
    iget v4, p0, Landroid/view/View;->mScrollX:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroid/view/View;->mScrollY:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 8742
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v4, v7

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8745
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_aa

    .line 8746
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v6

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8747
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 8752
    :goto_9b
    invoke-virtual {v0, v2}, Landroid/view/HardwareCanvas;->restoreToCount(I)V
    :try_end_9e
    .catchall {:try_start_61 .. :try_end_9e} :catchall_ae

    .line 8754
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 8756
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v4}, Landroid/view/DisplayList;->end()V

    .line 8763
    .end local v0           #canvas:Landroid/view/HardwareCanvas;
    .end local v1           #height:I
    .end local v2           #restoreCount:I
    .end local v3           #width:I
    :goto_a6
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    goto/16 :goto_e

    .line 8749
    .restart local v0       #canvas:Landroid/view/HardwareCanvas;
    .restart local v1       #height:I
    .restart local v2       #restoreCount:I
    .restart local v3       #width:I
    :cond_aa
    :try_start_aa
    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ae

    goto :goto_9b

    .line 8754
    .end local v1           #height:I
    .end local v2           #restoreCount:I
    .end local v3           #width:I
    :catchall_ae
    move-exception v4

    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 8756
    iget-object v5, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v5}, Landroid/view/DisplayList;->end()V

    .line 8754
    throw v4

    .line 8759
    .end local v0           #canvas:Landroid/view/HardwareCanvas;
    :cond_b8
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v4, v7

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8760
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v6

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_a6
.end method

.method public final getDrawableState()[I
    .registers 2

    .prologue
    .line 9836
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_d

    .line 9837
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 9841
    :goto_c
    return-object v0

    .line 9839
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 9840
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9841
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    goto :goto_c
.end method

.method public getDrawingCache()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 8774
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "autoScale"

    .prologue
    const/high16 v2, 0x2

    const v1, 0x8000

    .line 8805
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_c

    .line 8806
    const/4 v0, 0x0

    .line 8811
    :goto_b
    return-object v0

    .line 8808
    :cond_c
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_14

    .line 8809
    invoke-virtual {p0, p1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 8811
    :cond_14
    if-eqz p1, :cond_19

    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_b

    :cond_19
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_b
.end method

.method public getDrawingCacheBackgroundColor()I
    .registers 2

    .prologue
    .line 8859
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    return v0
.end method

.method public getDrawingCacheQuality()I
    .registers 3

    .prologue
    .line 3576
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x18

    and-int/2addr v0, v1

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "outRect"

    .prologue
    .line 5691
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 5692
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 5693
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 5694
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 5695
    return-void
.end method

.method public getDrawingTime()J
    .registers 3

    .prologue
    .line 8361
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-wide v0, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    :goto_8
    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method public getFilterTouchesWhenObscured()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 4122
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getFocusables(I)Ljava/util/ArrayList;
    .registers 4
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4283
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4284
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 4285
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "r"

    .prologue
    .line 6710
    invoke-virtual {p0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 6711
    return-void
.end method

.method public final getGlobalVisibleRect(Landroid/graphics/Rect;)Z
    .registers 3
    .parameter "r"

    .prologue
    .line 6741
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 8
    .parameter "r"
    .parameter "globalOffset"

    .prologue
    const/4 v4, 0x0

    .line 6728
    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int v1, v2, v3

    .line 6729
    .local v1, width:I
    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int v0, v2, v3

    .line 6730
    .local v0, height:I
    if-lez v1, :cond_2f

    if-lez v0, :cond_2f

    .line 6731
    invoke-virtual {p1, v4, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 6732
    if-eqz p2, :cond_1f

    .line 6733
    iget v2, p0, Landroid/view/View;->mScrollX:I

    neg-int v2, v2

    iget v3, p0, Landroid/view/View;->mScrollY:I

    neg-int v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 6735
    :cond_1f
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p0, p1, p2}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2b
    const/4 v2, 0x1

    .line 6737
    :goto_2c
    return v2

    :cond_2d
    move v2, v4

    .line 6735
    goto :goto_2c

    :cond_2f
    move v2, v4

    .line 6737
    goto :goto_2c
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 7311
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    .line 7312
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 7314
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method getHardwareLayer()Landroid/view/HardwareLayer;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 8544
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-nez v5, :cond_d

    :cond_b
    move-object v5, v7

    .line 8596
    :goto_c
    return-object v5

    .line 8548
    :cond_d
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v4, v5, v6

    .line 8549
    .local v4, width:I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int v2, v5, v6

    .line 8551
    .local v2, height:I
    if-eqz v4, :cond_1d

    if-nez v2, :cond_1f

    :cond_1d
    move-object v5, v7

    .line 8552
    goto :goto_c

    .line 8555
    :cond_1f
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, 0x8000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2b

    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-nez v5, :cond_99

    .line 8556
    :cond_2b
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-nez v5, :cond_9d

    .line 8557
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v6

    invoke-virtual {v5, v4, v2, v6}, Landroid/view/HardwareRenderer;->createHardwareLayer(IIZ)Landroid/view/HardwareLayer;

    move-result-object v5

    iput-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    .line 8559
    iget-object v5, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 8565
    :cond_42
    :goto_42
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v5, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/graphics/Canvas;

    .line 8566
    .local v1, currentCanvas:Landroid/graphics/Canvas;
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5, v1}, Landroid/view/HardwareLayer;->start(Landroid/graphics/Canvas;)Landroid/view/HardwareCanvas;

    move-result-object v0

    .line 8567
    .local v0, canvas:Landroid/view/HardwareCanvas;
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v0, v5, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/graphics/Canvas;

    .line 8569
    :try_start_50
    invoke-virtual {v0, v4, v2}, Landroid/view/HardwareCanvas;->setViewport(II)V

    .line 8570
    iget-object v5, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/HardwareCanvas;->onPreDraw(Landroid/graphics/Rect;)V

    .line 8571
    iget-object v5, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 8573
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->save()I

    move-result v3

    .line 8575
    .local v3, restoreCount:I
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 8576
    iget v5, p0, Landroid/view/View;->mScrollX:I

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Landroid/view/View;->mScrollY:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 8578
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, 0x8020

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8581
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v5, v5, 0x80

    const/16 v6, 0x80

    if-ne v5, v6, :cond_b8

    .line 8582
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x600001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8583
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 8588
    :goto_8a
    invoke-virtual {v0, v3}, Landroid/view/HardwareCanvas;->restoreToCount(I)V
    :try_end_8d
    .catchall {:try_start_50 .. :try_end_8d} :catchall_bc

    .line 8590
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 8591
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5, v1}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 8592
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v5, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/graphics/Canvas;

    .line 8596
    .end local v0           #canvas:Landroid/view/HardwareCanvas;
    .end local v1           #currentCanvas:Landroid/graphics/Canvas;
    .end local v3           #restoreCount:I
    :cond_99
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    goto/16 :goto_c

    .line 8560
    :cond_9d
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5}, Landroid/view/HardwareLayer;->getWidth()I

    move-result v5

    if-ne v5, v4, :cond_ad

    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5}, Landroid/view/HardwareLayer;->getHeight()I

    move-result v5

    if-eq v5, v2, :cond_42

    .line 8561
    :cond_ad
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5, v4, v2}, Landroid/view/HardwareLayer;->resize(II)V

    .line 8562
    iget-object v5, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_42

    .line 8585
    .restart local v0       #canvas:Landroid/view/HardwareCanvas;
    .restart local v1       #currentCanvas:Landroid/graphics/Canvas;
    .restart local v3       #restoreCount:I
    :cond_b8
    :try_start_b8
    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_bc

    goto :goto_8a

    .line 8590
    .end local v3           #restoreCount:I
    :catchall_bc
    move-exception v5

    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 8591
    iget-object v6, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v6, v1}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 8592
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v6, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/graphics/Canvas;

    .line 8590
    throw v5
.end method

.method public final getHeight()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 5680
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .registers 8
    .parameter "outRect"

    .prologue
    .line 6668
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 6669
    iget-boolean v1, p0, Landroid/view/View;->mMatrixIsIdentity:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v1, :cond_17

    .line 6670
    :cond_b
    iget v1, p0, Landroid/view/View;->mLeft:I

    iget v2, p0, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 6678
    :goto_16
    return-void

    .line 6672
    :cond_17
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 6673
    .local v0, tmpRect:Landroid/graphics/RectF;
    iget v1, p0, Landroid/view/View;->mPivotX:F

    neg-float v1, v1

    iget v2, p0, Landroid/view/View;->mPivotY:F

    neg-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/view/View;->mPivotX:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/view/View;->mPivotY:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6674
    iget-object v1, p0, Landroid/view/View;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6675
    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/view/View;->mTop:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/view/View;->mTop:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_16
.end method

.method public getHorizontalFadingEdgeLength()I
    .registers 3

    .prologue
    .line 2829
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2830
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2831
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_d

    .line 2832
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 2835
    .end local v0           #cache:Landroid/view/View$ScrollabilityCache;
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method protected getHorizontalScrollFactor()F
    .registers 2

    .prologue
    .line 11790
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollFactor()F

    move-result v0

    return v0
.end method

.method protected getHorizontalScrollbarHeight()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2867
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2868
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_12

    .line 2869
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 2870
    .local v1, scrollBar:Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_12

    .line 2871
    invoke-virtual {v1, v3}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 2872
    .local v2, size:I
    if-gtz v2, :cond_11

    .line 2873
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    :cond_11
    move v3, v2

    .line 2879
    .end local v1           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v2           #size:I
    :cond_12
    return v3
.end method

.method public getId()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 10493
    iget v0, p0, Landroid/view/View;->mID:I

    return v0
.end method

.method final getInverseMatrix()Landroid/graphics/Matrix;
    .registers 3

    .prologue
    .line 5845
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 5846
    iget-boolean v0, p0, Landroid/view/View;->mInverseMatrixDirty:Z

    if-eqz v0, :cond_1c

    .line 5847
    iget-object v0, p0, Landroid/view/View;->mInverseMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_12

    .line 5848
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mInverseMatrix:Landroid/graphics/Matrix;

    .line 5850
    :cond_12
    iget-object v0, p0, Landroid/view/View;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/View;->mInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 5851
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View;->mInverseMatrixDirty:Z

    .line 5853
    :cond_1c
    iget-object v0, p0, Landroid/view/View;->mInverseMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getKeepScreenOn()Z
    .registers 3

    .prologue
    .line 3607
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    .registers 2

    .prologue
    .line 4544
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getLayerType()I
    .registers 2

    .prologue
    .line 8504
    iget v0, p0, Landroid/view/View;->mLayerType:I

    return v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "layout_"
    .end annotation

    .prologue
    .line 6851
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public final getLeft()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 6381
    iget v0, p0, Landroid/view/View;->mLeft:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 7587
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    if-lez v0, :cond_9

    const/high16 v0, 0x3f80

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected getLeftPaddingOffset()I
    .registers 2

    .prologue
    .line 9161
    const/4 v0, 0x0

    return v0
.end method

.method public final getLocalVisibleRect(Landroid/graphics/Rect;)Z
    .registers 5
    .parameter "r"

    .prologue
    .line 6745
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 6746
    .local v0, offset:Landroid/graphics/Point;
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 6747
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 6748
    const/4 v1, 0x1

    .line 6750
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public getLocationInWindow([I)V
    .registers 12
    .parameter "location"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/high16 v7, 0x3f00

    .line 10342
    if-eqz p1, :cond_a

    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_12

    .line 10343
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "location must be an array of two integers"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 10347
    :cond_12
    iget v4, p0, Landroid/view/View;->mLeft:I

    iget v5, p0, Landroid/view/View;->mTranslationX:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    add-int/2addr v4, v5

    aput v4, p1, v9

    .line 10348
    iget v4, p0, Landroid/view/View;->mTop:I

    iget v5, p0, Landroid/view/View;->mTranslationY:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    add-int/2addr v4, v5

    aput v4, p1, v8

    .line 10350
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10351
    .local v2, viewParent:Landroid/view/ViewParent;
    :goto_26
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_4f

    .line 10352
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 10353
    .local v1, view:Landroid/view/View;
    aget v4, p1, v9

    iget v5, v1, Landroid/view/View;->mLeft:I

    iget v6, v1, Landroid/view/View;->mTranslationX:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, v1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    aput v4, p1, v9

    .line 10354
    aget v4, p1, v8

    iget v5, v1, Landroid/view/View;->mTop:I

    iget v6, v1, Landroid/view/View;->mTranslationY:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, v1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    aput v4, p1, v8

    .line 10355
    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10356
    goto :goto_26

    .line 10358
    .end local v1           #view:Landroid/view/View;
    :cond_4f
    instance-of v4, v2, Landroid/view/ViewRoot;

    if-eqz v4, :cond_5e

    .line 10360
    move-object v0, v2

    check-cast v0, Landroid/view/ViewRoot;

    move-object v3, v0

    .line 10361
    .local v3, vr:Landroid/view/ViewRoot;
    aget v4, p1, v8

    iget v5, v3, Landroid/view/ViewRoot;->mCurScrollY:I

    sub-int/2addr v4, v5

    aput v4, p1, v8

    .line 10363
    .end local v3           #vr:Landroid/view/ViewRoot;
    :cond_5e
    return-void
.end method

.method public getLocationOnScreen([I)V
    .registers 6
    .parameter "location"

    .prologue
    .line 10325
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 10327
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10328
    .local v0, info:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_17

    .line 10329
    const/4 v1, 0x0

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 10330
    const/4 v1, 0x1

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 10332
    :cond_17
    return-void
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .registers 2

    .prologue
    .line 5770
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 5771
    iget-object v0, p0, Landroid/view/View;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final getMeasuredHeight()I
    .registers 3

    .prologue
    .line 5729
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredHeightAndState()I
    .registers 2

    .prologue
    .line 5742
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    return v0
.end method

.method public final getMeasuredState()I
    .registers 3

    .prologue
    .line 5753
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mMeasuredHeight:I

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidth()I
    .registers 3

    .prologue
    .line 5705
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidthAndState()I
    .registers 2

    .prologue
    .line 5718
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    return v0
.end method

.method public getNextFocusDownId()I
    .registers 2

    .prologue
    .line 3694
    iget v0, p0, Landroid/view/View;->mNextFocusDownId:I

    return v0
.end method

.method public getNextFocusForwardId()I
    .registers 2

    .prologue
    .line 3715
    iget v0, p0, Landroid/view/View;->mNextFocusForwardId:I

    return v0
.end method

.method public getNextFocusLeftId()I
    .registers 2

    .prologue
    .line 3631
    iget v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    return v0
.end method

.method public getNextFocusRightId()I
    .registers 2

    .prologue
    .line 3652
    iget v0, p0, Landroid/view/View;->mNextFocusRightId:I

    return v0
.end method

.method public getNextFocusUpId()I
    .registers 2

    .prologue
    .line 3673
    iget v0, p0, Landroid/view/View;->mNextFocusUpId:I

    return v0
.end method

.method public getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .registers 2

    .prologue
    .line 3059
    iget-object v0, p0, Landroid/view/View;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method public getOverScrollMode()I
    .registers 2

    .prologue
    .line 11739
    iget v0, p0, Landroid/view/View;->mOverScrollMode:I

    return v0
.end method

.method public getPaddingBottom()I
    .registers 2

    .prologue
    .line 10168
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .registers 2

    .prologue
    .line 10179
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .registers 2

    .prologue
    .line 10190
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .registers 2

    .prologue
    .line 10157
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method public final getParent()Landroid/view/ViewParent;
    .registers 2

    .prologue
    .line 5637
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method public getPivotX()F
    .registers 2

    .prologue
    .line 6121
    iget v0, p0, Landroid/view/View;->mPivotX:F

    return v0
.end method

.method public getPivotY()F
    .registers 2

    .prologue
    .line 6163
    iget v0, p0, Landroid/view/View;->mPivotY:F

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 9708
    iget-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getRight()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 6439
    iget v0, p0, Landroid/view/View;->mRight:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 3

    .prologue
    .line 7601
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_12

    const/high16 v0, 0x3f80

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected getRightPaddingOffset()I
    .registers 2

    .prologue
    .line 9175
    const/4 v0, 0x0

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .registers 4

    .prologue
    .line 10301
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_c

    .line 10302
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v2, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 10303
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_c

    move-object v2, v1

    .line 10314
    .end local v1           #v:Landroid/view/View;
    :goto_b
    return-object v2

    .line 10308
    :cond_c
    move-object v0, p0

    .line 10310
    .local v0, parent:Landroid/view/View;
    :goto_d
    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1c

    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1c

    .line 10311
    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local v0           #parent:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0       #parent:Landroid/view/View;
    goto :goto_d

    :cond_1c
    move-object v2, v0

    .line 10314
    goto :goto_b
.end method

.method public getRotation()F
    .registers 2

    .prologue
    .line 5921
    iget v0, p0, Landroid/view/View;->mRotation:F

    return v0
.end method

.method public getRotationX()F
    .registers 2

    .prologue
    .line 6004
    iget v0, p0, Landroid/view/View;->mRotationX:F

    return v0
.end method

.method public getRotationY()F
    .registers 2

    .prologue
    .line 5960
    iget v0, p0, Landroid/view/View;->mRotationY:F

    return v0
.end method

.method public getScaleX()F
    .registers 2

    .prologue
    .line 6049
    iget v0, p0, Landroid/view/View;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .registers 2

    .prologue
    .line 6085
    iget v0, p0, Landroid/view/View;->mScaleY:F

    return v0
.end method

.method public getScrollBarStyle()I
    .registers 3

    .prologue
    .line 7733
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x300

    and-int/2addr v0, v1

    return v0
.end method

.method public final getScrollX()I
    .registers 2

    .prologue
    .line 5649
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method public final getScrollY()I
    .registers 2

    .prologue
    .line 5660
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method public getSolidColor()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9450
    const/4 v0, 0x0

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 4

    .prologue
    .line 11015
    iget v1, p0, Landroid/view/View;->mMinHeight:I

    .line 11017
    .local v1, suggestedMinHeight:I
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_f

    .line 11018
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 11019
    .local v0, bgMinHeight:I
    if-ge v1, v0, :cond_f

    .line 11020
    move v1, v0

    .line 11024
    .end local v0           #bgMinHeight:I
    :cond_f
    return v1
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 4

    .prologue
    .line 11039
    iget v1, p0, Landroid/view/View;->mMinWidth:I

    .line 11041
    .local v1, suggestedMinWidth:I
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_f

    .line 11042
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 11043
    .local v0, bgMinWidth:I
    if-ge v1, v0, :cond_f

    .line 11044
    move v1, v0

    .line 11048
    .end local v0           #bgMinWidth:I
    :cond_f
    return v1
.end method

.method public getSystemUiVisibility()I
    .registers 2

    .prologue
    .line 11277
    iget v0, p0, Landroid/view/View;->mSystemUiVisibility:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 10506
    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .registers 6
    .parameter "key"

    .prologue
    .line 10535
    const/4 v1, 0x0

    .line 10536
    .local v1, tags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    sget-object v3, Landroid/view/View;->sTagsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 10537
    :try_start_4
    sget-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    if-eqz v2, :cond_12

    .line 10538
    sget-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/SparseArray;

    move-object v1, v0

    .line 10540
    :cond_12
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_1a

    .line 10542
    if-eqz v1, :cond_1d

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 10543
    :goto_19
    return-object v2

    .line 10540
    :catchall_1a
    move-exception v2

    :try_start_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v2

    .line 10543
    :cond_1d
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public final getTop()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 6259
    iget v0, p0, Landroid/view/View;->mTop:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 7558
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    if-lez v0, :cond_9

    const/high16 v0, 0x3f80

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected getTopPaddingOffset()I
    .registers 2

    .prologue
    .line 9189
    const/4 v0, 0x0

    return v0
.end method

.method public getTouchDelegate()Landroid/view/TouchDelegate;
    .registers 2

    .prologue
    .line 5424
    iget-object v0, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    return-object v0
.end method

.method public getTouchables()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4338
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 4339
    return-object v0
.end method

.method public getTranslationX()F
    .registers 2

    .prologue
    .line 6540
    iget v0, p0, Landroid/view/View;->mTranslationX:F

    return v0
.end method

.method public getTranslationY()F
    .registers 2

    .prologue
    .line 6574
    iget v0, p0, Landroid/view/View;->mTranslationY:F

    return v0
.end method

.method public getVerticalFadingEdgeLength()I
    .registers 3

    .prologue
    .line 2797
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2798
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2799
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_d

    .line 2800
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 2803
    .end local v0           #cache:Landroid/view/View$ScrollabilityCache;
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method protected getVerticalScrollFactor()F
    .registers 5

    .prologue
    .line 11769
    iget v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_34

    .line 11770
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 11771
    .local v0, outValue:Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_24

    .line 11773
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11776
    :cond_24
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    .line 11779
    .end local v0           #outValue:Landroid/util/TypedValue;
    :cond_34
    iget v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    return v1
.end method

.method public getVerticalScrollbarPosition()I
    .registers 2

    .prologue
    .line 2985
    iget v0, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2845
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2846
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_13

    .line 2847
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 2848
    .local v1, scrollBar:Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_13

    .line 2849
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 2850
    .local v2, size:I
    if-gtz v2, :cond_12

    .line 2851
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    :cond_12
    move v3, v2

    .line 2857
    .end local v1           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v2           #size:I
    :cond_13
    return v3
.end method

.method getViewRoot()Landroid/view/ViewRoot;
    .registers 3

    .prologue
    .line 4452
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 4453
    .local v0, root:Landroid/view/View;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewRoot;

    move-object v1, p0

    :goto_d
    return-object v1

    .restart local p0
    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public getViewTreeObserver()Landroid/view/ViewTreeObserver;
    .registers 2

    .prologue
    .line 10286
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    .line 10287
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 10292
    :goto_8
    return-object v0

    .line 10289
    :cond_9
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_14

    .line 10290
    new-instance v0, Landroid/view/ViewTreeObserver;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 10292
    :cond_14
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    goto :goto_8
.end method

.method public getVisibility()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "VISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "INVISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "GONE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 3786
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public final getWidth()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 5670
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getWindowAttachCount()I
    .registers 2

    .prologue
    .line 8109
    iget v0, p0, Landroid/view/View;->mWindowAttachCount:I

    return v0
.end method

.method getWindowSession()Landroid/view/IWindowSession;
    .registers 2

    .prologue
    .line 8149
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 8118
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getWindowVisibility()I
    .registers 2

    .prologue
    .line 4828
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x8

    goto :goto_8
.end method

.method public getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    .registers 7
    .parameter "outRect"

    .prologue
    .line 4848
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_33

    .line 4850
    :try_start_4
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v3, v4, p1}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_30

    .line 4857
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v3, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 4858
    .local v2, insets:Landroid/graphics/Rect;
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 4859
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 4860
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 4861
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 4866
    .end local v2           #insets:Landroid/graphics/Rect;
    :goto_2f
    return-void

    .line 4851
    :catch_30
    move-exception v3

    move-object v1, v3

    .line 4852
    .local v1, e:Landroid/os/RemoteException;
    goto :goto_2f

    .line 4864
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_33
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4865
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0, p1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    goto :goto_2f
.end method

.method public getX()F
    .registers 3

    .prologue
    .line 6495
    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v0, v0

    iget v1, p0, Landroid/view/View;->mTranslationX:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getY()F
    .registers 3

    .prologue
    .line 6517
    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v0, v0

    iget v1, p0, Landroid/view/View;->mTranslationY:F

    add-float/2addr v0, v1

    return v0
.end method

.method public hackTurnOffWindowResizeAnim(Z)V
    .registers 3
    .parameter "off"

    .prologue
    .line 11947
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mTurnOffWindowResizeAnim:Z

    .line 11948
    return-void
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .registers 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 3221
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1c

    .line 3222
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3224
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_15

    .line 3225
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p0}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 3228
    :cond_15
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3229
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3231
    :cond_1c
    return-void
.end method

.method public hasFocus()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 3346
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasFocusable()Z
    .registers 2

    .prologue
    .line 3362
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method final hasIdentityMatrix()Z
    .registers 2

    .prologue
    .line 5791
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 5792
    iget-boolean v0, p0, Landroid/view/View;->mMatrixIsIdentity:Z

    return v0
.end method

.method protected hasOpaqueScrollbars()Z
    .registers 3

    .prologue
    const/high16 v1, 0x100

    .line 7303
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasWindowFocus()Z
    .registers 2

    .prologue
    .line 4736
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected initializeFadingEdge(Landroid/content/res/TypedArray;)V
    .registers 5
    .parameter "a"

    .prologue
    .line 2781
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 2783
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    const/16 v1, 0x18

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 2786
    return-void
.end method

.method protected initializeScrollbars(Landroid/content/res/TypedArray;)V
    .registers 11
    .parameter "a"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2894
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 2896
    iget-object v2, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2898
    .local v2, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v5, :cond_12

    .line 2899
    new-instance v5, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v5}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 2902
    :cond_12
    const/16 v5, 0x2c

    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 2904
    .local v1, fadeScrollbars:Z
    if-nez v1, :cond_1c

    .line 2905
    iput v7, v2, Landroid/view/View$ScrollabilityCache;->state:I

    .line 2907
    :cond_1c
    iput-boolean v1, v2, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 2910
    const/16 v5, 0x2a

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 2913
    const/16 v5, 0x2b

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 2918
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v5

    invoke-virtual {p1, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 2922
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2923
    .local v4, track:Landroid/graphics/drawable/Drawable;
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v4}, Landroid/widget/ScrollBarDrawable;->setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2925
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2926
    .local v3, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_5b

    .line 2927
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v3}, Landroid/widget/ScrollBarDrawable;->setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2930
    :cond_5b
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 2932
    .local v0, alwaysDraw:Z
    if-eqz v0, :cond_67

    .line 2933
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawHorizontalTrack(Z)V

    .line 2936
    :cond_67
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2937
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v4}, Landroid/widget/ScrollBarDrawable;->setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2939
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2940
    if-eqz v3, :cond_7d

    .line 2941
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v3}, Landroid/widget/ScrollBarDrawable;->setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2944
    :cond_7d
    const/4 v5, 0x6

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 2946
    if-eqz v0, :cond_89

    .line 2947
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawVerticalTrack(Z)V

    .line 2951
    :cond_89
    invoke-virtual {p0}, Landroid/view/View;->recomputePadding()V

    .line 2952
    return-void
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 7159
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 7160
    return-void
.end method

.method public invalidate(IIII)V
    .registers 14
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const v8, 0x8000

    const/high16 v7, -0x8000

    .line 7127
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-eq v5, v6, :cond_17

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v8

    if-eq v5, v8, :cond_17

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v7

    if-eq v5, v7, :cond_44

    .line 7130
    :cond_17
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7131
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v5, v7

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7132
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7133
    .local v1, p:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 7143
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_44

    if-eqz v0, :cond_44

    if-ge p1, p3, :cond_44

    if-ge p2, p4, :cond_44

    .line 7144
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 7145
    .local v2, scrollX:I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 7146
    .local v3, scrollY:I
    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 7147
    .local v4, tmpr:Landroid/graphics/Rect;
    sub-int v5, p1, v2

    sub-int v6, p2, v3

    sub-int v7, p3, v2

    sub-int v8, p4, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 7148
    invoke-interface {v1, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7151
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    .end local v1           #p:Landroid/view/ViewParent;
    .end local v2           #scrollX:I
    .end local v3           #scrollY:I
    .end local v4           #tmpr:Landroid/graphics/Rect;
    :cond_44
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 11
    .parameter "dirty"

    .prologue
    const v8, 0x8000

    const/high16 v7, -0x8000

    .line 7084
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-eq v5, v6, :cond_17

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v8

    if-eq v5, v8, :cond_17

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v7

    if-eq v5, v7, :cond_46

    .line 7087
    :cond_17
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7088
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v5, v7

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7089
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7090
    .local v1, p:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 7100
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_46

    if-eqz v0, :cond_46

    .line 7101
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 7102
    .local v3, scrollX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 7103
    .local v4, scrollY:I
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 7104
    .local v2, r:Landroid/graphics/Rect;
    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v3

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 7106
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v5, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7109
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    .end local v1           #p:Landroid/view/ViewParent;
    .end local v2           #r:Landroid/graphics/Rect;
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_46
    return-void
.end method

.method invalidate(Z)V
    .registers 10
    .parameter "invalidateCache"

    .prologue
    const v7, 0x8000

    const/4 v6, 0x0

    const/high16 v5, -0x8000

    .line 7178
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x30

    if-eq v3, v4, :cond_22

    if-eqz p1, :cond_15

    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_22

    :cond_15
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_22

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v3

    iget-boolean v4, p0, Landroid/view/View;->mLastIsOpaque:Z

    if-eq v3, v4, :cond_57

    .line 7181
    :cond_22
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/View;->mLastIsOpaque:Z

    .line 7182
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7183
    if-eqz p1, :cond_3d

    .line 7184
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7185
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x8001

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7187
    :cond_3d
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 7188
    .local v0, ai:Landroid/view/View$AttachInfo;
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7199
    .local v1, p:Landroid/view/ViewParent;
    if-eqz v1, :cond_57

    if-eqz v0, :cond_57

    .line 7200
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 7201
    .local v2, r:Landroid/graphics/Rect;
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 7204
    invoke-interface {v1, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7207
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    .end local v1           #p:Landroid/view/ViewParent;
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_57
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .parameter "drawable"

    .prologue
    .line 9717
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 9718
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 9719
    .local v0, dirty:Landroid/graphics/Rect;
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 9720
    .local v1, scrollX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 9722
    .local v2, scrollY:I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 9725
    .end local v0           #dirty:Landroid/graphics/Rect;
    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    :cond_1d
    return-void
.end method

.method protected invalidateParentCaches()V
    .registers 3

    .prologue
    .line 7238
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_11

    .line 7239
    iget-object p0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local p0
    check-cast p0, Landroid/view/View;

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7241
    :cond_11
    return-void
.end method

.method protected invalidateParentIfNeeded()V
    .registers 2

    .prologue
    .line 7253
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_14

    .line 7254
    iget-object p0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local p0
    check-cast p0, Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 7256
    :cond_14
    return-void
.end method

.method public isActivated()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 10270
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isClickable()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 3989
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDirty()Z
    .registers 3

    .prologue
    .line 6326
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x60

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isDrawingCacheEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    .line 8641
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDuplicateParentStateEnabled()Z
    .registers 3

    .prologue
    const/high16 v1, 0x40

    .line 8399
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 3809
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isFocusable()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 4180
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v1, v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isFocusableInTouchMode()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x4

    .line 4193
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isFocused()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 3527
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isHapticFeedbackEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x1000

    .line 3930
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isHardwareAccelerated()Z
    .registers 2

    .prologue
    .line 9222
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isHorizontalFadingEdgeEnabled()Z
    .registers 3

    .prologue
    .line 7488
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isHorizontalScrollBarEnabled()Z
    .registers 3

    .prologue
    .line 7615
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isInEditMode()Z
    .registers 2

    .prologue
    .line 9125
    const/4 v0, 0x0

    return v0
.end method

.method public isInTouchMode()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 4933
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    .line 4934
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 4936
    :goto_8
    return v0

    :cond_9
    invoke-static {}, Landroid/view/ViewRoot;->isInTouchMode()Z

    move-result v0

    goto :goto_8
.end method

.method public isLayoutRequested()Z
    .registers 3

    .prologue
    .line 9553
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isLongClickable()Z
    .registers 3

    .prologue
    const/high16 v1, 0x20

    .line 4016
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isOpaque()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x180

    .line 7271
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_12

    iget v0, p0, Landroid/view/View;->mAlpha:F

    const v1, 0x3f7aaaab

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected isPaddingOffsetRequired()Z
    .registers 2

    .prologue
    .line 9147
    const/4 v0, 0x0

    return v0
.end method

.method public isPressed()Z
    .registers 3

    .prologue
    .line 4074
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isRootNamespace()Z
    .registers 2

    .prologue
    .line 10478
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isSaveEnabled()Z
    .registers 3

    .prologue
    const/high16 v1, 0x1

    .line 4087
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isSaveFromParentEnabled()Z
    .registers 3

    .prologue
    const/high16 v1, 0x2000

    .line 4151
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isScrollbarFadingEnabled()Z
    .registers 2

    .prologue
    .line 7696
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget-boolean v0, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isSelected()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 10228
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isShown()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3735
    move-object v1, p0

    .line 3738
    .local v1, current:Landroid/view/View;
    :cond_2
    iget v3, v1, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-eqz v3, :cond_a

    move v3, v4

    .line 3751
    :goto_9
    return v3

    .line 3741
    :cond_a
    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3742
    .local v2, parent:Landroid/view/ViewParent;
    if-nez v2, :cond_10

    move v3, v4

    .line 3743
    goto :goto_9

    .line 3745
    :cond_10
    instance-of v3, v2, Landroid/view/View;

    if-nez v3, :cond_16

    .line 3746
    const/4 v3, 0x1

    goto :goto_9

    .line 3748
    :cond_16
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 3749
    if-nez v1, :cond_2

    move v3, v4

    .line 3751
    goto :goto_9
.end method

.method public isSoundEffectsEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x800

    .line 3901
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isVerticalFadingEdgeEnabled()Z
    .registers 3

    .prologue
    .line 7523
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isVerticalScrollBarEnabled()Z
    .registers 3

    .prologue
    .line 7645
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isVerticalScrollBarHidden()Z
    .registers 2

    .prologue
    .line 7987
    const/4 v0, 0x0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 9945
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 9946
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 9948
    :cond_9
    return-void
.end method

.method public layout(IIII)V
    .registers 20
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 9578
    iget v8, p0, Landroid/view/View;->mLeft:I

    .line 9579
    .local v8, oldL:I
    iget v9, p0, Landroid/view/View;->mTop:I

    .line 9580
    .local v9, oldT:I
    iget v11, p0, Landroid/view/View;->mBottom:I

    .line 9581
    .local v11, oldB:I
    iget v10, p0, Landroid/view/View;->mRight:I

    .line 9582
    .local v10, oldR:I
    invoke-virtual/range {p0 .. p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v1

    .line 9583
    .local v1, changed:Z
    if-nez v1, :cond_16

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v2, 0x2000

    if-ne v0, v2, :cond_50

    :cond_16
    move-object v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 9588
    invoke-virtual/range {v0 .. v5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 9589
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9591
    iget-object v0, p0, Landroid/view/View;->mOnLayoutChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_50

    .line 9592
    iget-object v0, p0, Landroid/view/View;->mOnLayoutChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 9594
    .local v13, listenersCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View$OnLayoutChangeListener;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 9595
    .local v14, numListeners:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_39
    if-ge v12, v14, :cond_50

    .line 9596
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnLayoutChangeListener;

    move-object v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-interface/range {v2 .. v11}, Landroid/view/View$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 9595
    add-int/lit8 v12, v12, 0x1

    goto :goto_39

    .line 9600
    .end local v12           #i:I
    .end local v13           #listenersCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View$OnLayoutChangeListener;>;"
    .end local v14           #numListeners:I
    :cond_50
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9601
    return-void
.end method

.method public final measure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 10823
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_10

    iget v0, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    if-ne p1, v0, :cond_10

    iget v0, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    if-eq p2, v0, :cond_2f

    .line 10828
    :cond_10
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10835
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 10839
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_29

    .line 10840
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onMeasure() did not set the measured dimension by calling setMeasuredDimension()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10845
    :cond_29
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10848
    :cond_2f
    iput p1, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 10849
    iput p2, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 10850
    return-void
.end method

.method needGlobalAttributesUpdate(Z)V
    .registers 4
    .parameter "force"

    .prologue
    .line 4915
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4916
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_15

    .line 4917
    if-nez p1, :cond_12

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-nez v1, :cond_12

    iget v1, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-nez v1, :cond_12

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    if-eqz v1, :cond_15

    .line 4919
    :cond_12
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 4922
    :cond_15
    return-void
.end method

.method public offsetLeftAndRight(I)V
    .registers 10
    .parameter "offset"

    .prologue
    const/4 v7, 0x0

    .line 6801
    if-eqz p1, :cond_45

    .line 6802
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 6803
    iget-boolean v4, p0, Landroid/view/View;->mMatrixIsIdentity:Z

    if-eqz v4, :cond_4d

    .line 6804
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6805
    .local v2, p:Landroid/view/ViewParent;
    if-eqz v2, :cond_2b

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_2b

    .line 6806
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v4, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 6809
    .local v3, r:Landroid/graphics/Rect;
    if-gez p1, :cond_46

    .line 6810
    iget v4, p0, Landroid/view/View;->mLeft:I

    add-int v1, v4, p1

    .line 6811
    .local v1, minLeft:I
    iget v0, p0, Landroid/view/View;->mRight:I

    .line 6816
    .local v0, maxRight:I
    :goto_1e
    sub-int v4, v0, v1

    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 6817
    invoke-interface {v2, p0, v3}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 6823
    .end local v0           #maxRight:I
    .end local v1           #minLeft:I
    .end local v2           #p:Landroid/view/ViewParent;
    .end local v3           #r:Landroid/graphics/Rect;
    :cond_2b
    :goto_2b
    iget v4, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v4, p1

    iput v4, p0, Landroid/view/View;->mLeft:I

    .line 6824
    iget v4, p0, Landroid/view/View;->mRight:I

    add-int/2addr v4, p1

    iput v4, p0, Landroid/view/View;->mRight:I

    .line 6826
    iget-boolean v4, p0, Landroid/view/View;->mMatrixIsIdentity:Z

    if-nez v4, :cond_42

    .line 6827
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6828
    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    .line 6830
    :cond_42
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 6832
    :cond_45
    return-void

    .line 6813
    .restart local v2       #p:Landroid/view/ViewParent;
    .restart local v3       #r:Landroid/graphics/Rect;
    :cond_46
    iget v1, p0, Landroid/view/View;->mLeft:I

    .line 6814
    .restart local v1       #minLeft:I
    iget v4, p0, Landroid/view/View;->mRight:I

    add-int v0, v4, p1

    .restart local v0       #maxRight:I
    goto :goto_1e

    .line 6820
    .end local v0           #maxRight:I
    .end local v1           #minLeft:I
    .end local v2           #p:Landroid/view/ViewParent;
    .end local v3           #r:Landroid/graphics/Rect;
    :cond_4d
    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2b
.end method

.method public offsetTopAndBottom(I)V
    .registers 10
    .parameter "offset"

    .prologue
    const/4 v7, 0x0

    .line 6759
    if-eqz p1, :cond_46

    .line 6760
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 6761
    iget-boolean v5, p0, Landroid/view/View;->mMatrixIsIdentity:Z

    if-eqz v5, :cond_4f

    .line 6762
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6763
    .local v2, p:Landroid/view/ViewParent;
    if-eqz v2, :cond_2c

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_2c

    .line 6764
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v5, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 6768
    .local v3, r:Landroid/graphics/Rect;
    if-gez p1, :cond_47

    .line 6769
    iget v5, p0, Landroid/view/View;->mTop:I

    add-int v1, v5, p1

    .line 6770
    .local v1, minTop:I
    iget v0, p0, Landroid/view/View;->mBottom:I

    .line 6771
    .local v0, maxBottom:I
    move v4, p1

    .line 6777
    .local v4, yLoc:I
    :goto_1f
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    sub-int v6, v0, v1

    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 6778
    invoke-interface {v2, p0, v3}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 6784
    .end local v0           #maxBottom:I
    .end local v1           #minTop:I
    .end local v2           #p:Landroid/view/ViewParent;
    .end local v3           #r:Landroid/graphics/Rect;
    .end local v4           #yLoc:I
    :cond_2c
    :goto_2c
    iget v5, p0, Landroid/view/View;->mTop:I

    add-int/2addr v5, p1

    iput v5, p0, Landroid/view/View;->mTop:I

    .line 6785
    iget v5, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v5, p1

    iput v5, p0, Landroid/view/View;->mBottom:I

    .line 6787
    iget-boolean v5, p0, Landroid/view/View;->mMatrixIsIdentity:Z

    if-nez v5, :cond_43

    .line 6788
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6789
    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    .line 6791
    :cond_43
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 6793
    :cond_46
    return-void

    .line 6773
    .restart local v2       #p:Landroid/view/ViewParent;
    .restart local v3       #r:Landroid/graphics/Rect;
    :cond_47
    iget v1, p0, Landroid/view/View;->mTop:I

    .line 6774
    .restart local v1       #minTop:I
    iget v5, p0, Landroid/view/View;->mBottom:I

    add-int v0, v5, p1

    .line 6775
    .restart local v0       #maxBottom:I
    const/4 v4, 0x0

    .restart local v4       #yLoc:I
    goto :goto_1f

    .line 6781
    .end local v0           #maxBottom:I
    .end local v1           #minTop:I
    .end local v2           #p:Landroid/view/ViewParent;
    .end local v3           #r:Landroid/graphics/Rect;
    .end local v4           #yLoc:I
    :cond_4f
    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2c
.end method

.method protected onAnimationEnd()V
    .registers 3

    .prologue
    .line 11145
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11146
    return-void
.end method

.method protected onAnimationStart()V
    .registers 3

    .prologue
    .line 11133
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11134
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 8063
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    .line 8064
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 8066
    :cond_b
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x800

    and-int/2addr v0, v1

    if-eqz v0, :cond_1d

    .line 8067
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 8068
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8070
    :cond_1d
    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 8071
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    .prologue
    .line 5093
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .registers 2
    .parameter "reason"

    .prologue
    .line 11562
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 4892
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .registers 9
    .parameter "consistency"

    .prologue
    const v6, 0x8000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10633
    const/4 v2, 0x1

    .line 10635
    .local v2, result:Z
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_89

    move v1, v5

    .line 10636
    .local v1, checkLayout:Z
    :goto_b
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_8b

    move v0, v5

    .line 10638
    .local v0, checkDrawing:Z
    :goto_10
    if-eqz v1, :cond_5a

    .line 10639
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_37

    .line 10640
    const/4 v2, 0x0

    .line 10641
    const-string v3, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not have a parent."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10645
    :cond_37
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v3, :cond_5a

    .line 10646
    const/4 v2, 0x0

    .line 10647
    const-string v3, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not attached to a window."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10652
    :cond_5a
    if-eqz v0, :cond_88

    .line 10656
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-eq v3, v4, :cond_88

    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_88

    .line 10658
    const/4 v2, 0x0

    .line 10659
    const-string v3, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was invalidated but its drawing cache is valid."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10664
    :cond_88
    return v2

    .end local v0           #checkDrawing:Z
    .end local v1           #checkLayout:Z
    :cond_89
    move v1, v4

    .line 10635
    goto :goto_b

    .restart local v1       #checkLayout:Z
    :cond_8b
    move v0, v4

    .line 10636
    goto :goto_10
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 5178
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 9
    .parameter "extraSpace"

    .prologue
    const/high16 v6, 0x40

    const/4 v5, 0x0

    .line 9861
    iget v4, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_17

    iget-object v4, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_17

    .line 9863
    iget-object p0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 9910
    :goto_16
    return-object v4

    .line 9868
    .restart local p0
    :cond_17
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9870
    .local v2, privateFlags:I
    const/4 v3, 0x0

    .line 9871
    .local v3, viewStateIndex:I
    and-int/lit16 v4, v2, 0x4000

    if-eqz v4, :cond_20

    or-int/lit8 v3, v3, 0x10

    .line 9872
    :cond_20
    iget v4, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_28

    or-int/lit8 v3, v3, 0x8

    .line 9873
    :cond_28
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_30

    or-int/lit8 v3, v3, 0x4

    .line 9874
    :cond_30
    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_36

    or-int/lit8 v3, v3, 0x2

    .line 9875
    :cond_36
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_3e

    or-int/lit8 v3, v3, 0x1

    .line 9876
    :cond_3e
    const/high16 v4, 0x4000

    and-int/2addr v4, v2

    if-eqz v4, :cond_45

    or-int/lit8 v3, v3, 0x20

    .line 9877
    :cond_45
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_51

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    if-eqz v4, :cond_51

    .line 9881
    or-int/lit8 v3, v3, 0x40

    .line 9884
    :cond_51
    sget-object v4, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aget-object v0, v4, v3

    .line 9898
    .local v0, drawableState:[I
    if-nez p1, :cond_59

    move-object v4, v0

    .line 9899
    goto :goto_16

    .line 9903
    :cond_59
    if-eqz v0, :cond_65

    .line 9904
    array-length v4, v0

    add-int/2addr v4, p1

    new-array v1, v4, [I

    .line 9905
    .local v1, fullState:[I
    array-length v4, v0

    invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_63
    move-object v4, v1

    .line 9910
    goto :goto_16

    .line 9907
    .end local v1           #fullState:[I
    :cond_65
    new-array v1, p1, [I

    .restart local v1       #fullState:[I
    goto :goto_63
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3
    .parameter "outAttrs"

    .prologue
    .line 5109
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 8080
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8082
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 8083
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 8084
    invoke-direct {p0}, Landroid/view/View;->removePerformClickCallback()V

    .line 8086
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 8088
    iget-object v0, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_20

    .line 8089
    iget-object v0, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->destroy()V

    .line 8090
    iput-object v2, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    .line 8093
    :cond_20
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_29

    .line 8094
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0}, Landroid/view/DisplayList;->invalidate()V

    .line 8097
    :cond_29
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_3d

    .line 8098
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 8099
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 8102
    :cond_3d
    iput-object v2, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 8103
    return-void
.end method

.method protected onDisplayHint(I)V
    .registers 2
    .parameter "hint"

    .prologue
    .line 4791
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 11528
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 8036
    return-void
.end method

.method protected onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 7
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 8006
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8007
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8008
    return-void
.end method

.method protected final onDrawScrollBars(Landroid/graphics/Canvas;)V
    .registers 28
    .parameter "canvas"

    .prologue
    .line 7870
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    move-object v12, v0

    .line 7871
    .local v12, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v12, :cond_e

    .line 7873
    move-object v0, v12

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->state:I

    move/from16 v21, v0

    .line 7875
    .local v21, state:I
    if-nez v21, :cond_f

    .line 7978
    .end local v21           #state:I
    :cond_e
    :goto_e
    return-void

    .line 7879
    .restart local v21       #state:I
    :cond_f
    const/16 v17, 0x0

    .line 7881
    .local v17, invalidate:Z
    const/4 v5, 0x2

    move/from16 v0, v21

    move v1, v5

    if-ne v0, v1, :cond_153

    .line 7883
    iget-object v5, v12, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    if-nez v5, :cond_20

    .line 7884
    const/4 v5, 0x1

    new-array v5, v5, [F

    iput-object v5, v12, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    .line 7887
    :cond_20
    move-object v0, v12

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    move-object/from16 v22, v0

    .line 7890
    .local v22, values:[F
    iget-object v5, v12, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Interpolator;->timeToValues([F)Landroid/graphics/Interpolator$Result;

    move-result-object v5

    sget-object v6, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    if-ne v5, v6, :cond_145

    .line 7892
    const/4 v5, 0x0

    iput v5, v12, Landroid/view/View$ScrollabilityCache;->state:I

    .line 7900
    :goto_35
    const/16 v17, 0x1

    .line 7908
    .end local v22           #values:[F
    :goto_37
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v24, v0

    .line 7910
    .local v24, viewFlags:I
    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x100

    move v5, v0

    const/16 v6, 0x100

    if-ne v5, v6, :cond_15c

    const/4 v5, 0x1

    move v13, v5

    .line 7912
    .local v13, drawHorizontalScrollBar:Z
    :goto_48
    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x200

    move v5, v0

    const/16 v6, 0x200

    if-ne v5, v6, :cond_160

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isVerticalScrollBarHidden()Z

    move-result v5

    if-nez v5, :cond_160

    const/4 v5, 0x1

    move v14, v5

    .line 7916
    .local v14, drawVerticalScrollBar:Z
    :goto_59
    if-nez v14, :cond_5d

    if-eqz v13, :cond_e

    .line 7917
    :cond_5d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v6, v0

    sub-int v25, v5, v6

    .line 7918
    .local v25, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move v6, v0

    sub-int v15, v5, v6

    .line 7920
    .local v15, height:I
    iget-object v7, v12, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 7922
    .local v7, scrollBar:Landroid/widget/ScrollBarDrawable;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v18, v0

    .line 7923
    .local v18, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v19, v0

    .line 7924
    .local v19, scrollY:I
    const/high16 v5, 0x200

    and-int v5, v5, v24

    if-nez v5, :cond_164

    const/4 v5, -0x1

    move/from16 v16, v5

    .line 7928
    .local v16, inside:I
    :goto_8c
    if-eqz v13, :cond_e8

    .line 7929
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v20

    .line 7930
    .local v20, size:I
    if-gtz v20, :cond_9a

    .line 7931
    move-object v0, v12

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v20, v0

    .line 7934
    :cond_9a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 7937
    if-eqz v14, :cond_169

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v5

    move/from16 v23, v5

    .line 7939
    .local v23, verticalScrollBarGap:I
    :goto_b2
    add-int v5, v19, v15

    sub-int v5, v5, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingBottom:I

    move v6, v0

    and-int v6, v6, v16

    sub-int v9, v5, v6

    .line 7940
    .local v9, top:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move v5, v0

    and-int v5, v5, v16

    add-int v8, v18, v5

    .line 7941
    .local v8, left:I
    add-int v5, v18, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingRight:I

    move v6, v0

    and-int v6, v6, v16

    sub-int/2addr v5, v6

    sub-int v10, v5, v23

    .line 7942
    .local v10, right:I
    add-int v11, v9, v20

    .local v11, bottom:I
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 7943
    invoke-virtual/range {v5 .. v11}, Landroid/view/View;->onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 7944
    if-eqz v17, :cond_e8

    .line 7945
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 7949
    .end local v8           #left:I
    .end local v9           #top:I
    .end local v10           #right:I
    .end local v11           #bottom:I
    .end local v20           #size:I
    .end local v23           #verticalScrollBarGap:I
    :cond_e8
    if-eqz v14, :cond_e

    .line 7950
    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v20

    .line 7951
    .restart local v20       #size:I
    if-gtz v20, :cond_f6

    .line 7952
    move-object v0, v12

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v20, v0

    .line 7955
    :cond_f6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 7958
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mVerticalScrollbarPosition:I

    move v5, v0

    packed-switch v5, :pswitch_data_178

    .line 7962
    add-int v5, v18, v25

    sub-int v5, v5, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingRight:I

    move v6, v0

    and-int v6, v6, v16

    sub-int v8, v5, v6

    .line 7968
    .restart local v8       #left:I
    :goto_11b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move v5, v0

    and-int v5, v5, v16

    add-int v9, v19, v5

    .line 7969
    .restart local v9       #top:I
    add-int v10, v8, v20

    .line 7970
    .restart local v10       #right:I
    add-int v5, v19, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingBottom:I

    move v6, v0

    and-int v6, v6, v16

    sub-int v11, v5, v6

    .restart local v11       #bottom:I
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 7971
    invoke-virtual/range {v5 .. v11}, Landroid/view/View;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 7972
    if-eqz v17, :cond_e

    .line 7973
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_e

    .line 7894
    .end local v7           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v8           #left:I
    .end local v9           #top:I
    .end local v10           #right:I
    .end local v11           #bottom:I
    .end local v13           #drawHorizontalScrollBar:Z
    .end local v14           #drawVerticalScrollBar:Z
    .end local v15           #height:I
    .end local v16           #inside:I
    .end local v18           #scrollX:I
    .end local v19           #scrollY:I
    .end local v20           #size:I
    .end local v24           #viewFlags:I
    .end local v25           #width:I
    .restart local v22       #values:[F
    :cond_145
    iget-object v5, v12, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/4 v6, 0x0

    aget v6, v22, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_35

    .line 7904
    .end local v22           #values:[F
    :cond_153
    iget-object v5, v12, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_37

    .line 7910
    .restart local v24       #viewFlags:I
    :cond_15c
    const/4 v5, 0x0

    move v13, v5

    goto/16 :goto_48

    .line 7912
    .restart local v13       #drawHorizontalScrollBar:Z
    :cond_160
    const/4 v5, 0x0

    move v14, v5

    goto/16 :goto_59

    .line 7924
    .restart local v7       #scrollBar:Landroid/widget/ScrollBarDrawable;
    .restart local v14       #drawVerticalScrollBar:Z
    .restart local v15       #height:I
    .restart local v18       #scrollX:I
    .restart local v19       #scrollY:I
    .restart local v25       #width:I
    :cond_164
    const/4 v5, 0x0

    move/from16 v16, v5

    goto/16 :goto_8c

    .line 7937
    .restart local v16       #inside:I
    .restart local v20       #size:I
    :cond_169
    const/4 v5, 0x0

    move/from16 v23, v5

    goto/16 :goto_b2

    .line 7965
    :pswitch_16e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingLeft:I

    move v5, v0

    and-int v5, v5, v16

    add-int v8, v18, v5

    .restart local v8       #left:I
    goto :goto_11b

    .line 7958
    :pswitch_data_178
    .packed-switch 0x1
        :pswitch_16e
    .end packed-switch
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 7
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 8026
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8027
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8028
    return-void
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 4629
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    .line 4632
    const/4 v0, 0x0

    .line 4634
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 9700
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 1

    .prologue
    .line 4523
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 3384
    if-eqz p1, :cond_7

    .line 3385
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3388
    :cond_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3389
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_42

    .line 3390
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3391
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3393
    :cond_17
    if-eqz v0, :cond_26

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_26

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v1, :cond_26

    .line 3395
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 3397
    :cond_26
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 3403
    :cond_29
    :goto_29
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 3404
    iget-object v1, p0, Landroid/view/View;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v1, :cond_36

    .line 3405
    iget-object v1, p0, Landroid/view/View;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 3408
    :cond_36
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_41

    .line 3409
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v1, p0}, Landroid/view/KeyEvent$DispatcherState;->reset(Ljava/lang/Object;)V

    .line 3411
    :cond_41
    return-void

    .line 3398
    :cond_42
    if-eqz v0, :cond_29

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v1, :cond_29

    .line 3400
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_29
.end method

.method protected onFocusLost()V
    .registers 1

    .prologue
    .line 3503
    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 3504
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 5238
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x20

    .line 4978
    const/4 v0, 0x0

    .line 4980
    .local v0, result:Z
    sparse-switch p1, :sswitch_data_34

    :cond_7
    move v1, v0

    .line 4999
    :goto_8
    return v1

    .line 4983
    :sswitch_9
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_13

    move v1, v4

    .line 4984
    goto :goto_8

    .line 4987
    :cond_13
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_20

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    :cond_20
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_7

    .line 4990
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 4991
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_32

    .line 4992
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/view/View;->postCheckForLongClick(I)V

    :cond_32
    move v1, v4

    .line 4994
    goto :goto_8

    .line 4980
    :sswitch_data_34
    .sparse-switch
        0x17 -> :sswitch_9
        0x42 -> :sswitch_9
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 5008
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 5057
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4964
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 5072
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 5022
    const/4 v0, 0x0

    .line 5024
    .local v0, result:Z
    sparse-switch p1, :sswitch_data_2e

    :cond_4
    :goto_4
    move v1, v0

    .line 5043
    :goto_5
    return v1

    .line 5027
    :sswitch_6
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_10

    .line 5028
    const/4 v1, 0x1

    goto :goto_5

    .line 5030
    :cond_10
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5031
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 5033
    iget-boolean v1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v1, :cond_4

    .line 5035
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 5037
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    goto :goto_4

    .line 5024
    :sswitch_data_2e
    .sparse-switch
        0x17 -> :sswitch_6
        0x42 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 9617
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 10899
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 10901
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 5
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 11728
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 8345
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8346
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_5b

    if-eqz p1, :cond_5b

    .line 8347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong state class, expecting View State but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead. This usually happens "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "when two views of different type have the same id in the same hierarchy. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "This view\'s id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Make sure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "other views do not use the same id."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8353
    :cond_5b
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 8288
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8289
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .registers 7
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v1, 0x1

    .line 5578
    iput-boolean v1, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 5580
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5581
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_9

    .line 5582
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 5584
    :cond_9
    return-void
.end method

.method protected onSetAlpha(I)Z
    .registers 3
    .parameter "alpha"

    .prologue
    .line 11160
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 5619
    return-void
.end method

.method public onStartTemporaryDetach()V
    .registers 3

    .prologue
    .line 4507
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 4508
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4509
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "event"

    .prologue
    const/16 v11, 0x4000

    const/4 v10, 0x0

    const/high16 v9, 0x20

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5248
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    .line 5250
    .local v2, viewFlags:I
    and-int/lit8 v5, v2, 0x20

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1b

    .line 5253
    and-int/lit16 v5, v2, 0x4000

    if-eq v5, v11, :cond_17

    and-int v5, v2, v9

    if-ne v5, v9, :cond_19

    :cond_17
    move v5, v8

    .line 5355
    :goto_18
    return v5

    :cond_19
    move v5, v7

    .line 5253
    goto :goto_18

    .line 5257
    :cond_1b
    iget-object v5, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    if-eqz v5, :cond_29

    .line 5258
    iget-object v5, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    invoke-virtual {v5, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_29

    move v5, v8

    .line 5259
    goto :goto_18

    .line 5263
    :cond_29
    and-int/lit16 v5, v2, 0x4000

    if-eq v5, v11, :cond_31

    and-int v5, v2, v9

    if-ne v5, v9, :cond_110

    .line 5265
    :cond_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_114

    :cond_38
    :goto_38
    move v5, v8

    .line 5352
    goto :goto_18

    .line 5267
    :pswitch_3a
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x200

    and-int/2addr v5, v6

    if-eqz v5, :cond_a6

    move v1, v8

    .line 5268
    .local v1, prepressed:Z
    :goto_42
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v5, v5, 0x4000

    if-nez v5, :cond_4a

    if-eqz v1, :cond_38

    .line 5271
    :cond_4a
    const/4 v0, 0x0

    .line 5272
    .local v0, focusTaken:Z
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-nez v5, :cond_61

    .line 5273
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 5276
    :cond_61
    if-eqz v1, :cond_6c

    .line 5281
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5282
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 5285
    :cond_6c
    iget-boolean v5, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v5, :cond_8b

    .line 5287
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 5290
    if-nez v0, :cond_8b

    .line 5294
    iget-object v5, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-nez v5, :cond_80

    .line 5295
    new-instance v5, Landroid/view/View$PerformClick;

    invoke-direct {v5, p0, v10}, Landroid/view/View$PerformClick;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v5, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    .line 5297
    :cond_80
    iget-object v5, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v5

    if-nez v5, :cond_8b

    .line 5298
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 5303
    :cond_8b
    iget-object v5, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-nez v5, :cond_96

    .line 5304
    new-instance v5, Landroid/view/View$UnsetPressedState;

    invoke-direct {v5, p0, v10}, Landroid/view/View$UnsetPressedState;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v5, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    .line 5307
    :cond_96
    if-eqz v1, :cond_a8

    .line 5308
    iget-object v5, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5314
    :cond_a2
    :goto_a2
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    goto :goto_38

    .end local v0           #focusTaken:Z
    .end local v1           #prepressed:Z
    :cond_a6
    move v1, v7

    .line 5267
    goto :goto_42

    .line 5310
    .restart local v0       #focusTaken:Z
    .restart local v1       #prepressed:Z
    :cond_a8
    iget-object v5, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v5

    if-nez v5, :cond_a2

    .line 5312
    iget-object v5, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {v5}, Landroid/view/View$UnsetPressedState;->run()V

    goto :goto_a2

    .line 5319
    .end local v0           #focusTaken:Z
    .end local v1           #prepressed:Z
    :pswitch_b6
    iget-object v5, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-nez v5, :cond_c1

    .line 5320
    new-instance v5, Landroid/view/View$CheckForTap;

    invoke-direct {v5, p0, v10}, Landroid/view/View$CheckForTap;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v5, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 5322
    :cond_c1
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x200

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5323
    iput-boolean v7, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 5324
    iget-object v5, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_38

    .line 5328
    :pswitch_d6
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v5, v5, -0x4001

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5329
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 5330
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    goto/16 :goto_38

    .line 5334
    :pswitch_e4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 5335
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 5338
    .local v4, y:I
    int-to-float v5, v3

    int-to-float v6, v4

    iget v7, p0, Landroid/view/View;->mTouchSlop:I

    int-to-float v7, v7

    invoke-direct {p0, v5, v6, v7}, Landroid/view/View;->pointInView(FFF)Z

    move-result v5

    if-nez v5, :cond_38

    .line 5340
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 5341
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_38

    .line 5343
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 5346
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v5, v5, -0x4001

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5347
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    goto/16 :goto_38

    .end local v3           #x:I
    .end local v4           #y:I
    :cond_110
    move v5, v7

    .line 5355
    goto/16 :goto_18

    .line 5265
    nop

    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_3a
        :pswitch_e4
        :pswitch_d6
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 5193
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 5
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 4759
    if-nez p2, :cond_9

    .line 4760
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_a

    .line 4761
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 4766
    :cond_9
    :goto_9
    return-void

    .line 4763
    :cond_a
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_9
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasWindowFocus"

    .prologue
    .line 4712
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4713
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_28

    .line 4714
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4715
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4717
    :cond_10
    if-eqz v0, :cond_1b

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1b

    .line 4718
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 4720
    :cond_1b
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 4721
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 4722
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 4726
    :cond_24
    :goto_24
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4727
    return-void

    .line 4723
    :cond_28
    if-eqz v0, :cond_24

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_24

    .line 4724
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_24
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 4816
    if-nez p1, :cond_5

    .line 4817
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 4819
    :cond_5
    return-void
.end method

.method public outputDirtyFlags(Ljava/lang/String;ZI)V
    .registers 13
    .parameter "indent"
    .parameter "clear"
    .parameter "clearMask"

    .prologue
    .line 8652
    const-string v5, "View"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "             DIRTY("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v8, 0x60

    and-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") DRAWN("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v7, v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " CACHE_VALID("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    const v8, 0x8000

    and-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") INVALIDATED("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v8, -0x8000

    and-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8656
    if-eqz p2, :cond_65

    .line 8657
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, p3

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8659
    :cond_65
    instance-of v5, p0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_91

    .line 8660
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 8661
    .local v4, parent:Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 8662
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_72
    if-ge v3, v2, :cond_91

    .line 8663
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8664
    .local v1, child:Landroid/view/View;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, p2, p3}, Landroid/view/View;->outputDirtyFlags(Ljava/lang/String;ZI)V

    .line 8662
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    .line 8667
    .end local v1           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #parent:Landroid/view/ViewGroup;
    :cond_91
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .registers 30
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "scrollRangeX"
    .parameter "scrollRangeY"
    .parameter "maxOverScrollX"
    .parameter "maxOverScrollY"
    .parameter "isTouchEvent"

    .prologue
    .line 11667
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mOverScrollMode:I

    move v14, v0

    .line 11668
    .local v14, overScrollMode:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7e

    const/16 v18, 0x1

    move/from16 v6, v18

    .line 11670
    .local v6, canScrollHorizontal:Z
    :goto_17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_83

    const/16 v18, 0x1

    move/from16 v7, v18

    .line 11672
    .local v7, canScrollVertical:Z
    :goto_29
    if-eqz v14, :cond_34

    const/16 v18, 0x1

    move v0, v14

    move/from16 v1, v18

    if-ne v0, v1, :cond_88

    if-eqz v6, :cond_88

    :cond_34
    const/16 v18, 0x1

    move/from16 v13, v18

    .line 11674
    .local v13, overScrollHorizontal:Z
    :goto_38
    if-eqz v14, :cond_43

    const/16 v18, 0x1

    move v0, v14

    move/from16 v1, v18

    if-ne v0, v1, :cond_8d

    if-eqz v7, :cond_8d

    :cond_43
    const/16 v18, 0x1

    move/from16 v15, v18

    .line 11677
    .local v15, overScrollVertical:Z
    :goto_47
    add-int v11, p3, p1

    .line 11678
    .local v11, newScrollX:I
    if-nez v13, :cond_4d

    .line 11679
    const/16 p7, 0x0

    .line 11682
    :cond_4d
    add-int v12, p4, p2

    .line 11683
    .local v12, newScrollY:I
    if-nez v15, :cond_53

    .line 11684
    const/16 p8, 0x0

    .line 11688
    :cond_53
    move/from16 v0, p7

    neg-int v0, v0

    move v10, v0

    .line 11689
    .local v10, left:I
    add-int v16, p7, p5

    .line 11690
    .local v16, right:I
    move/from16 v0, p8

    neg-int v0, v0

    move/from16 v17, v0

    .line 11691
    .local v17, top:I
    add-int v5, p8, p6

    .line 11693
    .local v5, bottom:I
    const/4 v8, 0x0

    .line 11694
    .local v8, clampedX:Z
    move v0, v11

    move/from16 v1, v16

    if-le v0, v1, :cond_92

    .line 11695
    move/from16 v11, v16

    .line 11696
    const/4 v8, 0x1

    .line 11702
    :cond_69
    :goto_69
    const/4 v9, 0x0

    .line 11703
    .local v9, clampedY:Z
    if-le v12, v5, :cond_97

    .line 11704
    move v12, v5

    .line 11705
    const/4 v9, 0x1

    .line 11711
    :cond_6e
    :goto_6e
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->onOverScrolled(IIZZ)V

    .line 11713
    if-nez v8, :cond_7b

    if-eqz v9, :cond_a0

    :cond_7b
    const/16 v18, 0x1

    :goto_7d
    return v18

    .line 11668
    .end local v5           #bottom:I
    .end local v6           #canScrollHorizontal:Z
    .end local v7           #canScrollVertical:Z
    .end local v8           #clampedX:Z
    .end local v9           #clampedY:Z
    .end local v10           #left:I
    .end local v11           #newScrollX:I
    .end local v12           #newScrollY:I
    .end local v13           #overScrollHorizontal:Z
    .end local v15           #overScrollVertical:Z
    .end local v16           #right:I
    .end local v17           #top:I
    :cond_7e
    const/16 v18, 0x0

    move/from16 v6, v18

    goto :goto_17

    .line 11670
    .restart local v6       #canScrollHorizontal:Z
    :cond_83
    const/16 v18, 0x0

    move/from16 v7, v18

    goto :goto_29

    .line 11672
    .restart local v7       #canScrollVertical:Z
    :cond_88
    const/16 v18, 0x0

    move/from16 v13, v18

    goto :goto_38

    .line 11674
    .restart local v13       #overScrollHorizontal:Z
    :cond_8d
    const/16 v18, 0x0

    move/from16 v15, v18

    goto :goto_47

    .line 11697
    .restart local v5       #bottom:I
    .restart local v8       #clampedX:Z
    .restart local v10       #left:I
    .restart local v11       #newScrollX:I
    .restart local v12       #newScrollY:I
    .restart local v15       #overScrollVertical:Z
    .restart local v16       #right:I
    .restart local v17       #top:I
    :cond_92
    if-ge v11, v10, :cond_69

    .line 11698
    move v11, v10

    .line 11699
    const/4 v8, 0x1

    goto :goto_69

    .line 11706
    .restart local v9       #clampedY:Z
    :cond_97
    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_6e

    .line 11707
    move/from16 v12, v17

    .line 11708
    const/4 v9, 0x1

    goto :goto_6e

    .line 11713
    :cond_a0
    const/16 v18, 0x0

    goto :goto_7d
.end method

.method public performClick()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3113
    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3115
    iget-object v0, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_13

    .line 3116
    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 3117
    iget-object v0, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    move v0, v2

    .line 3121
    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method performCollectViewAttributes(I)V
    .registers 6
    .parameter "visibility"

    .prologue
    const/high16 v1, 0x400

    const/4 v3, 0x1

    .line 4903
    and-int/lit8 v0, p1, 0xc

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_25

    .line 4904
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_14

    .line 4905
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v3, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 4907
    :cond_14
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v2, p0, Landroid/view/View;->mSystemUiVisibility:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 4908
    iget-object v0, p0, Landroid/view/View;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    if-eqz v0, :cond_25

    .line 4909
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v3, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 4912
    :cond_25
    return-void
.end method

.method public performHapticFeedback(I)Z
    .registers 3
    .parameter "feedbackConstant"

    .prologue
    .line 11234
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(II)Z
    .registers 6
    .parameter "feedbackConstant"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 11247
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_7

    move v0, v2

    .line 11255
    :goto_6
    return v0

    .line 11251
    :cond_7
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v2

    .line 11253
    goto :goto_6

    .line 11255
    :cond_13
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    :goto_1c
    invoke-interface {v0, p1, v1}, Landroid/view/View$AttachInfo$Callbacks;->performHapticFeedback(IZ)Z

    move-result v0

    goto :goto_6

    :cond_21
    move v1, v2

    goto :goto_1c
.end method

.method public performLongClick()Z
    .registers 3

    .prologue
    .line 3131
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3133
    const/4 v0, 0x0

    .line 3134
    .local v0, handled:Z
    iget-object v1, p0, Landroid/view/View;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_f

    .line 3135
    iget-object v1, p0, Landroid/view/View;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .line 3137
    :cond_f
    if-nez v0, :cond_15

    .line 3138
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    .line 3140
    :cond_15
    if-eqz v0, :cond_1b

    .line 3141
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 3143
    :cond_1b
    return v0
.end method

.method public playSoundEffect(I)V
    .registers 3
    .parameter "soundConstant"

    .prologue
    .line 11212
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 11216
    :cond_10
    :goto_10
    return-void

    .line 11215
    :cond_11
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    invoke-interface {v0, p1}, Landroid/view/View$AttachInfo$Callbacks;->playSoundEffect(I)V

    goto :goto_10
.end method

.method final pointInView(FF)Z
    .registers 6
    .parameter "localX"
    .parameter "localY"

    .prologue
    const/4 v2, 0x0

    .line 6684
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_1f

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1f

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_1f

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public post(Ljava/lang/Runnable;)Z
    .registers 4
    .parameter "action"

    .prologue
    .line 7329
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_d

    .line 7330
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 7337
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .end local v0           #handler:Landroid/os/Handler;
    :goto_c
    return v1

    .line 7333
    :cond_d
    invoke-static {}, Landroid/view/ViewRoot;->getRunQueue()Landroid/view/ViewRoot$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRoot$RunQueue;->post(Ljava/lang/Runnable;)V

    .line 7334
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .registers 6
    .parameter "action"
    .parameter "delayMillis"

    .prologue
    .line 7358
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_d

    .line 7359
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 7366
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    .end local v0           #handler:Landroid/os/Handler;
    :goto_c
    return v1

    .line 7362
    :cond_d
    invoke-static {}, Landroid/view/ViewRoot;->getRunQueue()Landroid/view/ViewRoot$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/view/ViewRoot$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    .line 7363
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public postInvalidate()V
    .registers 3

    .prologue
    .line 7400
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 7401
    return-void
.end method

.method public postInvalidate(IIII)V
    .registers 12
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 7416
    const-wide/16 v1, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    .line 7417
    return-void
.end method

.method public postInvalidateDelayed(J)V
    .registers 5
    .parameter "delayMilliseconds"

    .prologue
    .line 7429
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_14

    .line 7430
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7431
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7432
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7433
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7435
    .end local v0           #msg:Landroid/os/Message;
    :cond_14
    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .registers 10
    .parameter "delayMilliseconds"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 7453
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_22

    .line 7454
    invoke-static {}, Landroid/view/View$AttachInfo$InvalidateInfo;->acquire()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v0

    .line 7455
    .local v0, info:Landroid/view/View$AttachInfo$InvalidateInfo;
    iput-object p0, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 7456
    iput p3, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    .line 7457
    iput p4, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    .line 7458
    iput p5, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    .line 7459
    iput p6, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    .line 7461
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 7462
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 7463
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7464
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7466
    .end local v0           #info:Landroid/view/View$AttachInfo$InvalidateInfo;
    .end local v1           #msg:Landroid/os/Message;
    :cond_22
    return-void
.end method

.method protected recomputePadding()V
    .registers 5

    .prologue
    .line 7669
    iget v0, p0, Landroid/view/View;->mUserPaddingLeft:I

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, p0, Landroid/view/View;->mUserPaddingRight:I

    iget v3, p0, Landroid/view/View;->mUserPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 7670
    return-void
.end method

.method public refreshDrawableState()V
    .registers 3

    .prologue
    .line 9816
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9817
    invoke-virtual {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 9819
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 9820
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_10

    .line 9821
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->childDrawableStateChanged(Landroid/view/View;)V

    .line 9823
    :cond_10
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .registers 5
    .parameter "action"

    .prologue
    const/4 v2, 0x1

    .line 7381
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_e

    .line 7382
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 7389
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move v1, v2

    .line 7390
    .end local v0           #handler:Landroid/os/Handler;
    :goto_d
    return v1

    .line 7385
    :cond_e
    invoke-static {}, Landroid/view/ViewRoot;->getRunQueue()Landroid/view/ViewRoot$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRoot$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    move v1, v2

    .line 7386
    goto :goto_d
.end method

.method public removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 3047
    iget-object v0, p0, Landroid/view/View;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_5

    .line 3051
    :goto_4
    return-void

    .line 3050
    :cond_5
    iget-object v0, p0, Landroid/view/View;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 3016
    iget-object v0, p0, Landroid/view/View;->mOnLayoutChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 3020
    :goto_4
    return-void

    .line 3019
    :cond_5
    iget-object v0, p0, Landroid/view/View;->mOnLayoutChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public final requestFocus()Z
    .registers 2

    .prologue
    .line 4374
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .registers 3
    .parameter "direction"

    .prologue
    .line 4396
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 7
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/high16 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4430
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_10

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_12

    :cond_10
    move v0, v1

    .line 4447
    :goto_11
    return v0

    .line 4436
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v3

    if-eq v3, v0, :cond_1f

    move v0, v1

    .line 4438
    goto :goto_11

    .line 4442
    :cond_1f
    invoke-direct {p0}, Landroid/view/View;->hasAncestorThatBlocksDescendantFocus()Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v1

    .line 4443
    goto :goto_11

    .line 4446
    :cond_27
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    move v0, v2

    .line 4447
    goto :goto_11
.end method

.method public final requestFocusFromTouch()Z
    .registers 3

    .prologue
    .line 4468
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4469
    invoke-virtual {p0}, Landroid/view/View;->getViewRoot()Landroid/view/ViewRoot;

    move-result-object v0

    .line 4470
    .local v0, viewRoot:Landroid/view/ViewRoot;
    if-eqz v0, :cond_10

    .line 4471
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    .line 4474
    .end local v0           #viewRoot:Landroid/view/ViewRoot;
    :cond_10
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    return v1
.end method

.method public requestLayout()V
    .registers 3

    .prologue
    .line 10784
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10785
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10787
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 10788
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 10790
    :cond_1e
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .registers 3
    .parameter "rectangle"

    .prologue
    .line 3245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .registers 9
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 3264
    move-object v1, p0

    .line 3265
    .local v1, child:Landroid/view/View;
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3266
    .local v2, parent:Landroid/view/ViewParent;
    const/4 v3, 0x0

    .line 3267
    .local v3, scrolled:Z
    :goto_4
    if-eqz v2, :cond_27

    .line 3268
    invoke-interface {v2, v1, p1, p2}, Landroid/view/ViewParent;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v4

    or-int/2addr v3, v4

    .line 3273
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 3274
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 3276
    instance-of v4, v2, Landroid/view/View;

    if-nez v4, :cond_28

    .line 3283
    :cond_27
    return v3

    .line 3280
    :cond_28
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 3281
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_4
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8302
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 8303
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8236
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 8237
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 9736
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_13

    .line 9737
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 9739
    :cond_13
    return-void
.end method

.method public scrollBy(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 6900
    iget v0, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 6901
    return-void
.end method

.method public scrollTo(II)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 6879
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-ne v2, p1, :cond_8

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, p2, :cond_24

    .line 6880
    :cond_8
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 6881
    .local v0, oldX:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 6882
    .local v1, oldY:I
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 6883
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 6884
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 6885
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 6886
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_24

    .line 6887
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 6890
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    :cond_24
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .registers 3
    .parameter "eventType"

    .prologue
    .line 3417
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3418
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3420
    :cond_13
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 3426
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3445
    :goto_6
    return-void

    .line 3429
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3430
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3431
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 3432
    iget-object v1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3434
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_53

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_53

    .line 3435
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mFocusablesTempList:Ljava/util/ArrayList;

    .line 3436
    .local v0, focusablesTempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3437
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 3438
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 3439
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3442
    .end local v0           #focusablesTempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_53
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 3444
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_6
.end method

.method public setActivated(Z)V
    .registers 7
    .parameter "activated"

    .prologue
    const/high16 v4, 0x4000

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10245
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_22

    move v0, v3

    :goto_a
    if-eq v0, p1, :cond_21

    .line 10246
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x40000001

    and-int/2addr v0, v1

    if-eqz p1, :cond_24

    move v1, v4

    :goto_15
    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10247
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 10248
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 10249
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetActivated(Z)V

    .line 10251
    :cond_21
    return-void

    :cond_22
    move v0, v2

    .line 10245
    goto :goto_a

    :cond_24
    move v1, v2

    .line 10246
    goto :goto_15
.end method

.method public setAlpha(F)V
    .registers 4
    .parameter "alpha"

    .prologue
    .line 6220
    iput p1, p0, Landroid/view/View;->mAlpha:F

    .line 6221
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 6222
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 6223
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6225
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 6230
    :goto_1a
    return-void

    .line 6227
    :cond_1b
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    goto :goto_1a
.end method

.method setAlphaNoInvalidation(F)Z
    .registers 5
    .parameter "alpha"

    .prologue
    .line 6242
    iput p1, p0, Landroid/view/View;->mAlpha:F

    .line 6243
    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    .line 6244
    .local v0, subclassHandlesAlpha:Z
    if-eqz v0, :cond_14

    .line 6245
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x4

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6249
    :goto_13
    return v0

    .line 6247
    :cond_14
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_13
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 11118
    iput-object p1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 11119
    if-eqz p1, :cond_7

    .line 11120
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 11122
    :cond_7
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 9956
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_e

    .line 9957
    iget-object p0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .end local p0
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 9961
    :goto_d
    return-void

    .line 9959
    .restart local p0
    :cond_e
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 10
    .parameter "d"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 9995
    const/4 v1, 0x0

    .line 9997
    .local v1, requestLayout:Z
    iput v6, p0, Landroid/view/View;->mBackgroundResource:I

    .line 10003
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_14

    .line 10004
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 10005
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10008
    :cond_14
    if-eqz p1, :cond_97

    .line 10009
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 10010
    .local v0, padding:Landroid/graphics/Rect;
    if-nez v0, :cond_2a

    .line 10011
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #padding:Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10012
    .restart local v0       #padding:Landroid/graphics/Rect;
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 10014
    :cond_2a
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 10015
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 10020
    :cond_3b
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_57

    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    if-ne v2, v3, :cond_57

    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    if-eq v2, v3, :cond_58

    .line 10022
    :cond_57
    const/4 v1, 0x1

    .line 10025
    :cond_58
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 10026
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 10027
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 10029
    :cond_68
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_95

    move v2, v7

    :goto_6f
    invoke-virtual {p1, v2, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 10030
    iput-object p1, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 10032
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_87

    .line 10033
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10034
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10035
    const/4 v1, 0x1

    .line 10063
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_87
    :goto_87
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 10065
    if-eqz v1, :cond_8f

    .line 10066
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10069
    :cond_8f
    iput-boolean v7, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 10070
    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    .line 10071
    return-void

    .restart local v0       #padding:Landroid/graphics/Rect;
    :cond_95
    move v2, v6

    .line 10029
    goto :goto_6f

    .line 10039
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_97
    iput-object v3, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 10041
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_ab

    .line 10047
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10048
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10060
    :cond_ab
    const/4 v1, 0x1

    goto :goto_87
.end method

.method public setBackgroundResource(I)V
    .registers 4
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 9971
    if-eqz p1, :cond_7

    iget v1, p0, Landroid/view/View;->mBackgroundResource:I

    if-ne p1, v1, :cond_7

    .line 9982
    :goto_6
    return-void

    .line 9975
    :cond_7
    const/4 v0, 0x0

    .line 9976
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_10

    .line 9977
    iget-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 9979
    :cond_10
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9981
    iput p1, p0, Landroid/view/View;->mBackgroundResource:I

    goto :goto_6
.end method

.method public final setBottom(I)V
    .registers 9
    .parameter "bottom"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 6337
    iget v3, p0, Landroid/view/View;->mBottom:I

    if-eq p1, v3, :cond_54

    .line 6338
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 6339
    iget-boolean v3, p0, Landroid/view/View;->mMatrixIsIdentity:Z

    if-eqz v3, :cond_57

    .line 6340
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_23

    .line 6342
    iget v3, p0, Landroid/view/View;->mBottom:I

    if-ge p1, v3, :cond_55

    .line 6343
    iget v0, p0, Landroid/view/View;->mBottom:I

    .line 6347
    .local v0, maxBottom:I
    :goto_17
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v6, v6, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 6354
    .end local v0           #maxBottom:I
    :cond_23
    :goto_23
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int v2, v3, v4

    .line 6355
    .local v2, width:I
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v1, v3, v4

    .line 6357
    .local v1, oldHeight:I
    iput p1, p0, Landroid/view/View;->mBottom:I

    .line 6359
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2, v3, v2, v1}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 6361
    iget-boolean v3, p0, Landroid/view/View;->mMatrixIsIdentity:Z

    if-nez v3, :cond_4f

    .line 6362
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, 0x2000

    and-int/2addr v3, v4

    if-nez v3, :cond_46

    .line 6364
    iput-boolean v5, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 6366
    :cond_46
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6367
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 6369
    :cond_4f
    iput-boolean v5, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 6370
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 6372
    .end local v1           #oldHeight:I
    .end local v2           #width:I
    :cond_54
    return-void

    .line 6345
    :cond_55
    move v0, p1

    .restart local v0       #maxBottom:I
    goto :goto_17

    .line 6351
    .end local v0           #maxBottom:I
    :cond_57
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    goto :goto_23
.end method

.method public setCameraDistance(F)V
    .registers 7
    .parameter "distance"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 5896
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 5897
    invoke-virtual {p0, v4}, Landroid/view/View;->invalidate(Z)V

    .line 5899
    iget-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v1

    .line 5900
    .local v0, dpi:F
    iget-object v1, p0, Landroid/view/View;->mCamera:Landroid/graphics/Camera;

    if-nez v1, :cond_23

    .line 5901
    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    iput-object v1, p0, Landroid/view/View;->mCamera:Landroid/graphics/Camera;

    .line 5902
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/View;->matrix3D:Landroid/graphics/Matrix;

    .line 5905
    :cond_23
    iget-object v1, p0, Landroid/view/View;->mCamera:Landroid/graphics/Camera;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    neg-float v2, v2

    div-float/2addr v2, v0

    invoke-virtual {v1, v3, v3, v2}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 5906
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 5908
    invoke-virtual {p0, v4}, Landroid/view/View;->invalidate(Z)V

    .line 5909
    return-void
.end method

.method public setClickable(Z)V
    .registers 4
    .parameter "clickable"

    .prologue
    const/16 v1, 0x4000

    .line 4004
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4005
    return-void

    .line 4004
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "contentDescription"

    .prologue
    .line 3486
    iput-object p1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    .line 3487
    return-void
.end method

.method public setDrawingCacheBackgroundColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    .line 8847
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    if-eq p1, v0, :cond_e

    .line 8848
    iput p1, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 8849
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8851
    :cond_e
    return-void
.end method

.method public setDrawingCacheEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    const v1, 0x8000

    const/4 v0, 0x0

    .line 8627
    iput-boolean v0, p0, Landroid/view/View;->mCachingFailed:Z

    .line 8628
    if-eqz p1, :cond_9

    move v0, v1

    :cond_9
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 8629
    return-void
.end method

.method public setDrawingCacheQuality(I)V
    .registers 3
    .parameter "quality"

    .prologue
    .line 3593
    const/high16 v0, 0x18

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 3594
    return-void
.end method

.method public setDuplicateParentStateEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    const/high16 v1, 0x40

    .line 8386
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 8387
    return-void

    .line 8386
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setEnabled(Z)V
    .registers 4
    .parameter "enabled"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/16 v1, 0x20

    .line 3820
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_9

    .line 3833
    :goto_8
    return-void

    .line 3822
    :cond_9
    if-eqz p1, :cond_17

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3828
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3832
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    goto :goto_8

    :cond_17
    move v0, v1

    .line 3822
    goto :goto_c
.end method

.method public setFadingEdgeLength(I)V
    .registers 3
    .parameter "length"

    .prologue
    .line 2816
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 2817
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 2818
    return-void
.end method

.method public setFastAlpha(F)V
    .registers 2
    .parameter "alpha"

    .prologue
    .line 6651
    iput p1, p0, Landroid/view/View;->mAlpha:F

    .line 6652
    return-void
.end method

.method public setFastRotationY(F)V
    .registers 3
    .parameter "y"

    .prologue
    .line 6658
    iput p1, p0, Landroid/view/View;->mRotationY:F

    .line 6659
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 6660
    return-void
.end method

.method public setFastScaleX(F)V
    .registers 3
    .parameter "x"

    .prologue
    .line 6635
    iput p1, p0, Landroid/view/View;->mScaleX:F

    .line 6636
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 6637
    return-void
.end method

.method public setFastScaleY(F)V
    .registers 3
    .parameter "y"

    .prologue
    .line 6643
    iput p1, p0, Landroid/view/View;->mScaleY:F

    .line 6644
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 6645
    return-void
.end method

.method public setFastTranslationX(F)V
    .registers 3
    .parameter "x"

    .prologue
    .line 6603
    iput p1, p0, Landroid/view/View;->mTranslationX:F

    .line 6604
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 6605
    return-void
.end method

.method public setFastTranslationY(F)V
    .registers 3
    .parameter "y"

    .prologue
    .line 6611
    iput p1, p0, Landroid/view/View;->mTranslationY:F

    .line 6612
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 6613
    return-void
.end method

.method public setFastX(F)V
    .registers 3
    .parameter "x"

    .prologue
    .line 6619
    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    iput v0, p0, Landroid/view/View;->mTranslationX:F

    .line 6620
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 6621
    return-void
.end method

.method public setFastY(F)V
    .registers 3
    .parameter "y"

    .prologue
    .line 6627
    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    iput v0, p0, Landroid/view/View;->mTranslationY:F

    .line 6628
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 6629
    return-void
.end method

.method public setFilterTouchesWhenObscured(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    const/16 v1, 0x400

    .line 4136
    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4138
    return-void

    :cond_9
    move v0, v1

    .line 4136
    goto :goto_5
.end method

.method setFlags(II)V
    .registers 11
    .parameter "flags"
    .parameter "mask"

    .prologue
    const/4 v7, 0x0

    const v6, -0x8001

    const/4 v5, 0x1

    .line 5434
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    .line 5435
    .local v1, old:I
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit8 v4, p2, -0x1

    and-int/2addr v3, v4

    and-int v4, p1, p2

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mViewFlags:I

    .line 5437
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    xor-int v0, v3, v1

    .line 5438
    .local v0, changed:I
    if-nez v0, :cond_18

    .line 5554
    :cond_17
    :goto_17
    return-void

    .line 5441
    :cond_18
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5444
    .local v2, privateFlags:I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2d

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_2d

    .line 5446
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v5, :cond_123

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_123

    .line 5449
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 5460
    :cond_2d
    :goto_2d
    and-int/lit8 v3, p1, 0xc

    if-nez v3, :cond_53

    .line 5461
    and-int/lit8 v3, v0, 0xc

    if-eqz v3, :cond_53

    .line 5466
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5468
    invoke-virtual {p0, v5}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 5474
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_53

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    if-le v3, v4, :cond_53

    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    if-le v3, v4, :cond_53

    .line 5475
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 5481
    :cond_53
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_7c

    .line 5482
    invoke-virtual {p0, v7}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 5483
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5484
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 5486
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0x8

    if-ne v3, v4, :cond_74

    .line 5487
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 5488
    :cond_71
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 5490
    :cond_74
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_7c

    .line 5491
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 5496
    :cond_7c
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_a4

    .line 5497
    invoke-virtual {p0, v7}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 5498
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 5500
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/4 v4, 0x4

    if-ne v3, v4, :cond_9c

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 5502
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-eq v3, p0, :cond_9c

    .line 5503
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 5506
    :cond_9c
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_a4

    .line 5507
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 5511
    :cond_a4
    and-int/lit8 v3, v0, 0xc

    if-eqz v3, :cond_c3

    .line 5512
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_be

    .line 5513
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/ViewGroup;

    and-int/lit8 v4, p1, 0xc

    invoke-virtual {v3, p0, v4}, Landroid/view/ViewGroup;->onChildVisibilityChanged(Landroid/view/View;I)V

    .line 5514
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->invalidate(Z)V

    .line 5516
    :cond_be
    and-int/lit8 v3, p1, 0xc

    invoke-virtual {p0, p0, v3}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 5519
    :cond_c3
    const/high16 v3, 0x2

    and-int/2addr v3, v0

    if-eqz v3, :cond_cb

    .line 5520
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 5523
    :cond_cb
    const v3, 0x8000

    and-int/2addr v3, v0

    if-eqz v3, :cond_dc

    .line 5524
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 5525
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v6

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5526
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 5529
    :cond_dc
    const/high16 v3, 0x18

    and-int/2addr v3, v0

    if-eqz v3, :cond_e9

    .line 5530
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 5531
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v6

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5534
    :cond_e9
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_109

    .line 5535
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_13d

    .line 5536
    iget-object v3, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_136

    .line 5537
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5538
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5545
    :goto_103
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5546
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 5549
    :cond_109
    const/high16 v3, 0x400

    and-int/2addr v3, v0

    if-eqz v3, :cond_17

    .line 5550
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_17

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_17

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v3, :cond_17

    .line 5551
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    goto/16 :goto_17

    .line 5450
    :cond_123
    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_2d

    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2d

    .line 5456
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_2d

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    goto/16 :goto_2d

    .line 5540
    :cond_136
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_103

    .line 5543
    :cond_13d
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_103
.end method

.method public setFocusable(Z)V
    .registers 5
    .parameter "focusable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3847
    if-nez p1, :cond_9

    .line 3848
    const/high16 v0, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setFlags(II)V

    .line 3850
    :cond_9
    if-eqz p1, :cond_10

    move v0, v2

    :goto_c
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setFlags(II)V

    .line 3851
    return-void

    :cond_10
    move v0, v1

    .line 3850
    goto :goto_c
.end method

.method public setFocusableInTouchMode(Z)V
    .registers 5
    .parameter "focusableInTouchMode"

    .prologue
    const/high16 v2, 0x4

    const/4 v1, 0x1

    .line 3869
    if-eqz p1, :cond_f

    move v0, v2

    :goto_6
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setFlags(II)V

    .line 3870
    if-eqz p1, :cond_e

    .line 3871
    invoke-virtual {p0, v1, v1}, Landroid/view/View;->setFlags(II)V

    .line 3873
    :cond_e
    return-void

    .line 3869
    :cond_f
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected setFrame(IIII)Z
    .registers 14
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v8, 0x1

    .line 9633
    const/4 v0, 0x0

    .line 9640
    .local v0, changed:Z
    iget v6, p0, Landroid/view/View;->mLeft:I

    if-ne v6, p1, :cond_12

    iget v6, p0, Landroid/view/View;->mRight:I

    if-ne v6, p3, :cond_12

    iget v6, p0, Landroid/view/View;->mTop:I

    if-ne v6, p2, :cond_12

    iget v6, p0, Landroid/view/View;->mBottom:I

    if-eq v6, p4, :cond_61

    .line 9641
    :cond_12
    const/4 v0, 0x1

    .line 9644
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v6, 0x20

    .line 9647
    .local v1, drawn:I
    invoke-virtual {p0, v8}, Landroid/view/View;->invalidate(Z)V

    .line 9650
    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v5, v6, v7

    .line 9651
    .local v5, oldWidth:I
    iget v6, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v4, v6, v7

    .line 9653
    .local v4, oldHeight:I
    iput p1, p0, Landroid/view/View;->mLeft:I

    .line 9654
    iput p2, p0, Landroid/view/View;->mTop:I

    .line 9655
    iput p3, p0, Landroid/view/View;->mRight:I

    .line 9656
    iput p4, p0, Landroid/view/View;->mBottom:I

    .line 9658
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9660
    sub-int v3, p3, p1

    .line 9661
    .local v3, newWidth:I
    sub-int v2, p4, p2

    .line 9663
    .local v2, newHeight:I
    if-ne v3, v5, :cond_3c

    if-eq v2, v4, :cond_48

    .line 9664
    :cond_3c
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x2000

    and-int/2addr v6, v7

    if-nez v6, :cond_45

    .line 9666
    iput-boolean v8, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 9668
    :cond_45
    invoke-virtual {p0, v3, v2, v5, v4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 9671
    :cond_48
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_5a

    .line 9677
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9678
    invoke-virtual {p0, v8}, Landroid/view/View;->invalidate(Z)V

    .line 9681
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 9685
    :cond_5a
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v6, v1

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9687
    iput-boolean v8, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 9689
    .end local v1           #drawn:I
    .end local v2           #newHeight:I
    .end local v3           #newWidth:I
    .end local v4           #oldHeight:I
    .end local v5           #oldWidth:I
    :cond_61
    return v0
.end method

.method public setHapticFeedbackEnabled(Z)V
    .registers 4
    .parameter "hapticFeedbackEnabled"

    .prologue
    const/high16 v1, 0x1000

    .line 3917
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3918
    return-void

    .line 3917
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setHorizontalFadingEdgeEnabled(Z)V
    .registers 3
    .parameter "horizontalFadingEdgeEnabled"

    .prologue
    .line 7503
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_11

    .line 7504
    if-eqz p1, :cond_b

    .line 7505
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 7508
    :cond_b
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 7510
    :cond_11
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .registers 3
    .parameter "horizontalScrollBarEnabled"

    .prologue
    .line 7628
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_12

    .line 7629
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 7630
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 7631
    invoke-virtual {p0}, Landroid/view/View;->recomputePadding()V

    .line 7633
    :cond_12
    return-void
.end method

.method public setId(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 10455
    iput p1, p0, Landroid/view/View;->mID:I

    .line 10456
    return-void
.end method

.method public setIsRootNamespace(Z)V
    .registers 3
    .parameter "isRoot"

    .prologue
    .line 10465
    if-eqz p1, :cond_9

    .line 10466
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10470
    :goto_8
    return-void

    .line 10468
    :cond_9
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_8
.end method

.method public setKeepScreenOn(Z)V
    .registers 4
    .parameter "keepScreenOn"

    .prologue
    const/high16 v1, 0x400

    .line 3621
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3622
    return-void

    .line 3621
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .registers 7
    .parameter "layerType"
    .parameter "paint"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8442
    if-ltz p1, :cond_7

    const/4 v1, 0x2

    if-le p1, v1, :cond_f

    .line 8443
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Layer type can only be one of: LAYER_TYPE_NONE, LAYER_TYPE_SOFTWARE or LAYER_TYPE_HARDWARE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8447
    :cond_f
    iget v1, p0, Landroid/view/View;->mLayerType:I

    if-ne p1, v1, :cond_2b

    .line 8448
    if-eqz p1, :cond_28

    iget-object v1, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    if-eq p2, v1, :cond_28

    .line 8449
    if-nez p2, :cond_29

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    :goto_20
    iput-object v1, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    .line 8450
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 8451
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 8486
    :cond_28
    :goto_28
    return-void

    :cond_29
    move-object v1, p2

    .line 8449
    goto :goto_20

    .line 8457
    :cond_2b
    iget v1, p0, Landroid/view/View;->mLayerType:I

    packed-switch v1, :pswitch_data_7e

    .line 8479
    :cond_30
    :goto_30
    iput p1, p0, Landroid/view/View;->mLayerType:I

    .line 8480
    iget v1, p0, Landroid/view/View;->mLayerType:I

    if-nez v1, :cond_6b

    move v0, v3

    .line 8481
    .local v0, layerDisabled:Z
    :goto_37
    if-eqz v0, :cond_6e

    move-object v1, v2

    :goto_3a
    iput-object v1, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    .line 8482
    if-eqz v0, :cond_78

    move-object v1, v2

    :goto_3f
    iput-object v1, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    .line 8484
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 8485
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    goto :goto_28

    .line 8459
    .end local v0           #layerDisabled:Z
    :pswitch_48
    iget-object v1, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_53

    .line 8460
    iget-object v1, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 8461
    iput-object v2, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 8464
    :cond_53
    iget-object v1, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_30

    .line 8465
    iget-object v1, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 8466
    iput-object v2, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_30

    .line 8470
    :pswitch_5f
    iget-object v1, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-eqz v1, :cond_30

    .line 8471
    iget-object v1, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v1}, Landroid/view/HardwareLayer;->destroy()V

    .line 8472
    iput-object v2, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    goto :goto_30

    .line 8480
    :cond_6b
    const/4 v1, 0x0

    move v0, v1

    goto :goto_37

    .line 8481
    .restart local v0       #layerDisabled:Z
    :cond_6e
    if-nez p2, :cond_76

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto :goto_3a

    :cond_76
    move-object v1, p2

    goto :goto_3a

    .line 8482
    :cond_78
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_3f

    .line 8457
    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_48
        :pswitch_5f
    .end packed-switch
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 6864
    if-nez p1, :cond_a

    .line 6865
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Layout parameters cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6867
    :cond_a
    iput-object p1, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 6868
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6869
    return-void
.end method

.method public final setLeft(I)V
    .registers 11
    .parameter "left"

    .prologue
    const/4 v8, 0x1

    .line 6392
    iget v4, p0, Landroid/view/View;->mLeft:I

    if-eq p1, v4, :cond_56

    .line 6393
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 6394
    iget-boolean v4, p0, Landroid/view/View;->mMatrixIsIdentity:Z

    if-eqz v4, :cond_5b

    .line 6395
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_25

    .line 6398
    iget v4, p0, Landroid/view/View;->mLeft:I

    if-ge p1, v4, :cond_57

    .line 6399
    move v1, p1

    .line 6400
    .local v1, minLeft:I
    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int v3, p1, v4

    .line 6405
    .local v3, xLoc:I
    :goto_19
    const/4 v4, 0x0

    iget v5, p0, Landroid/view/View;->mRight:I

    sub-int/2addr v5, v1

    iget v6, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v6, v7

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 6412
    .end local v1           #minLeft:I
    .end local v3           #xLoc:I
    :cond_25
    :goto_25
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int v2, v4, v5

    .line 6413
    .local v2, oldWidth:I
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int v0, v4, v5

    .line 6415
    .local v0, height:I
    iput p1, p0, Landroid/view/View;->mLeft:I

    .line 6417
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4, v0, v2, v0}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 6419
    iget-boolean v4, p0, Landroid/view/View;->mMatrixIsIdentity:Z

    if-nez v4, :cond_51

    .line 6420
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v5, 0x2000

    and-int/2addr v4, v5

    if-nez v4, :cond_48

    .line 6422
    iput-boolean v8, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 6424
    :cond_48
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6425
    invoke-virtual {p0, v8}, Landroid/view/View;->invalidate(Z)V

    .line 6427
    :cond_51
    iput-boolean v8, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 6428
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 6430
    .end local v0           #height:I
    .end local v2           #oldWidth:I
    :cond_56
    return-void

    .line 6402
    :cond_57
    iget v1, p0, Landroid/view/View;->mLeft:I

    .line 6403
    .restart local v1       #minLeft:I
    const/4 v3, 0x0

    .restart local v3       #xLoc:I
    goto :goto_19

    .line 6409
    .end local v1           #minLeft:I
    .end local v3           #xLoc:I
    :cond_5b
    invoke-virtual {p0, v8}, Landroid/view/View;->invalidate(Z)V

    goto :goto_25
.end method

.method public setLongClickable(Z)V
    .registers 4
    .parameter "longClickable"

    .prologue
    const/high16 v1, 0x20

    .line 4030
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4031
    return-void

    .line 4030
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected final setMeasuredDimension(II)V
    .registers 4
    .parameter "measuredWidth"
    .parameter "measuredHeight"

    .prologue
    .line 10916
    iput p1, p0, Landroid/view/View;->mMeasuredWidth:I

    .line 10917
    iput p2, p0, Landroid/view/View;->mMeasuredHeight:I

    .line 10919
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10920
    return-void
.end method

.method public setMinimumHeight(I)V
    .registers 2
    .parameter "minHeight"

    .prologue
    .line 11059
    iput p1, p0, Landroid/view/View;->mMinHeight:I

    .line 11060
    return-void
.end method

.method public setMinimumWidth(I)V
    .registers 2
    .parameter "minWidth"

    .prologue
    .line 11070
    iput p1, p0, Landroid/view/View;->mMinWidth:I

    .line 11071
    return-void
.end method

.method public setNextFocusDownId(I)V
    .registers 2
    .parameter "nextFocusDownId"

    .prologue
    .line 3705
    iput p1, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 3706
    return-void
.end method

.method public setNextFocusForwardId(I)V
    .registers 2
    .parameter "nextFocusForwardId"

    .prologue
    .line 3726
    iput p1, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 3727
    return-void
.end method

.method public setNextFocusLeftId(I)V
    .registers 2
    .parameter "nextFocusLeftId"

    .prologue
    .line 3642
    iput p1, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 3643
    return-void
.end method

.method public setNextFocusRightId(I)V
    .registers 2
    .parameter "nextFocusRightId"

    .prologue
    .line 3663
    iput p1, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 3664
    return-void
.end method

.method public setNextFocusUpId(I)V
    .registers 2
    .parameter "nextFocusUpId"

    .prologue
    .line 3684
    iput p1, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 3685
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 3071
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3072
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 3074
    :cond_a
    iput-object p1, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 3075
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 3100
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 3103
    :cond_a
    iput-object p1, p0, Landroid/view/View;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 3104
    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 3199
    iput-object p1, p0, Landroid/view/View;->mOnDragListener:Landroid/view/View$OnDragListener;

    .line 3200
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 2994
    iput-object p1, p0, Landroid/view/View;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 2995
    return-void
.end method

.method public setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 3188
    iput-object p1, p0, Landroid/view/View;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    .line 3189
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 3172
    iput-object p1, p0, Landroid/view/View;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 3173
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 3086
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3087
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 3089
    :cond_a
    iput-object p1, p0, Landroid/view/View;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 3090
    return-void
.end method

.method public setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 11285
    iput-object p1, p0, Landroid/view/View;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 11286
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_15

    .line 11287
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 11289
    :cond_15
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 3180
    iput-object p1, p0, Landroid/view/View;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 3181
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 5
    .parameter "overScrollMode"

    .prologue
    .line 11754
    if-eqz p1, :cond_21

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    .line 11757
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid overscroll mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11759
    :cond_21
    iput p1, p0, Landroid/view/View;->mOverScrollMode:I

    .line 11760
    return-void
.end method

.method public setPadding(IIII)V
    .registers 11
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/high16 v5, 0x100

    const/4 v4, 0x0

    .line 10099
    const/4 v0, 0x0

    .line 10101
    .local v0, changed:Z
    iput p1, p0, Landroid/view/View;->mUserPaddingLeft:I

    .line 10102
    iput p3, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 10103
    iput p4, p0, Landroid/view/View;->mUserPaddingBottom:I

    .line 10105
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    .line 10108
    .local v2, viewFlags:I
    and-int/lit16 v3, v2, 0x300

    if-eqz v3, :cond_28

    .line 10109
    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_1e

    .line 10111
    and-int v3, v2, v5

    if-nez v3, :cond_4a

    move v1, v4

    .line 10113
    .local v1, offset:I
    :goto_19
    iget v3, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    packed-switch v3, :pswitch_data_5a

    .line 10123
    .end local v1           #offset:I
    :cond_1e
    :goto_1e
    and-int/lit16 v3, v2, 0x100

    if-eqz v3, :cond_28

    .line 10124
    and-int v3, v2, v5

    if-nez v3, :cond_54

    move v3, v4

    :goto_27
    add-int/2addr p4, v3

    .line 10129
    :cond_28
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-eq v3, p1, :cond_2f

    .line 10130
    const/4 v0, 0x1

    .line 10131
    iput p1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 10133
    :cond_2f
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-eq v3, p2, :cond_36

    .line 10134
    const/4 v0, 0x1

    .line 10135
    iput p2, p0, Landroid/view/View;->mPaddingTop:I

    .line 10137
    :cond_36
    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    if-eq v3, p3, :cond_3d

    .line 10138
    const/4 v0, 0x1

    .line 10139
    iput p3, p0, Landroid/view/View;->mPaddingRight:I

    .line 10141
    :cond_3d
    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq v3, p4, :cond_44

    .line 10142
    const/4 v0, 0x1

    .line 10143
    iput p4, p0, Landroid/view/View;->mPaddingBottom:I

    .line 10146
    :cond_44
    if-eqz v0, :cond_49

    .line 10147
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10149
    :cond_49
    return-void

    .line 10111
    :cond_4a
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v3

    move v1, v3

    goto :goto_19

    .line 10116
    .restart local v1       #offset:I
    :pswitch_50
    add-int/2addr p3, v1

    .line 10117
    goto :goto_1e

    .line 10119
    :pswitch_52
    add-int/2addr p1, v1

    goto :goto_1e

    .line 10124
    .end local v1           #offset:I
    :cond_54
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollbarHeight()I

    move-result v3

    goto :goto_27

    .line 10113
    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_50
        :pswitch_52
        :pswitch_50
    .end packed-switch
.end method

.method public setPivotX(F)V
    .registers 5
    .parameter "pivotX"

    .prologue
    const/4 v2, 0x0

    .line 6140
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6141
    iget v0, p0, Landroid/view/View;->mPivotX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_22

    .line 6142
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 6144
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 6145
    iput p1, p0, Landroid/view/View;->mPivotX:F

    .line 6146
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 6147
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6148
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 6150
    :cond_22
    return-void
.end method

.method public setPivotY(F)V
    .registers 5
    .parameter "pivotY"

    .prologue
    const/4 v2, 0x0

    .line 6181
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6182
    iget v0, p0, Landroid/view/View;->mPivotY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_22

    .line 6183
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 6185
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 6186
    iput p1, p0, Landroid/view/View;->mPivotY:F

    .line 6187
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 6188
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6189
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 6191
    :cond_22
    return-void
.end method

.method public setPressed(Z)V
    .registers 3
    .parameter "pressed"

    .prologue
    .line 4043
    if-eqz p1, :cond_f

    .line 4044
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4048
    :goto_8
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4049
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetPressed(Z)V

    .line 4050
    return-void

    .line 4046
    :cond_f
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_8
.end method

.method public final setRight(I)V
    .registers 10
    .parameter "right"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 6450
    iget v3, p0, Landroid/view/View;->mRight:I

    if-eq p1, v3, :cond_54

    .line 6451
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 6452
    iget-boolean v3, p0, Landroid/view/View;->mMatrixIsIdentity:Z

    if-eqz v3, :cond_57

    .line 6453
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_23

    .line 6455
    iget v3, p0, Landroid/view/View;->mRight:I

    if-ge p1, v3, :cond_55

    .line 6456
    iget v1, p0, Landroid/view/View;->mRight:I

    .line 6460
    .local v1, maxRight:I
    :goto_17
    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v1, v3

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v7, v7, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 6467
    .end local v1           #maxRight:I
    :cond_23
    :goto_23
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int v2, v3, v4

    .line 6468
    .local v2, oldWidth:I
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v0, v3, v4

    .line 6470
    .local v0, height:I
    iput p1, p0, Landroid/view/View;->mRight:I

    .line 6472
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3, v0, v2, v0}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 6474
    iget-boolean v3, p0, Landroid/view/View;->mMatrixIsIdentity:Z

    if-nez v3, :cond_4f

    .line 6475
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, 0x2000

    and-int/2addr v3, v4

    if-nez v3, :cond_46

    .line 6477
    iput-boolean v6, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 6479
    :cond_46
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6480
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 6482
    :cond_4f
    iput-boolean v6, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 6483
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 6485
    .end local v0           #height:I
    .end local v2           #oldWidth:I
    :cond_54
    return-void

    .line 6458
    :cond_55
    move v1, p1

    .restart local v1       #maxRight:I
    goto :goto_17

    .line 6464
    .end local v1           #maxRight:I
    :cond_57
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    goto :goto_23
.end method

.method public setRotation(F)V
    .registers 4
    .parameter "rotation"

    .prologue
    const/4 v1, 0x0

    .line 5939
    iget v0, p0, Landroid/view/View;->mRotation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1b

    .line 5940
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 5942
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 5943
    iput p1, p0, Landroid/view/View;->mRotation:F

    .line 5944
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 5945
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5946
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 5948
    :cond_1b
    return-void
.end method

.method public setRotationX(F)V
    .registers 4
    .parameter "rotationX"

    .prologue
    const/4 v1, 0x0

    .line 6027
    iget v0, p0, Landroid/view/View;->mRotationX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1b

    .line 6028
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 6030
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 6031
    iput p1, p0, Landroid/view/View;->mRotationX:F

    .line 6032
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 6033
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6034
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 6036
    :cond_1b
    return-void
.end method

.method public setRotationY(F)V
    .registers 4
    .parameter "rotationY"

    .prologue
    const/4 v1, 0x0

    .line 5983
    iget v0, p0, Landroid/view/View;->mRotationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1b

    .line 5984
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 5986
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 5987
    iput p1, p0, Landroid/view/View;->mRotationY:F

    .line 5988
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 5989
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5990
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 5992
    :cond_1b
    return-void
.end method

.method public setSaveEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    const/high16 v1, 0x1

    .line 4107
    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4108
    return-void

    :cond_9
    move v0, v1

    .line 4107
    goto :goto_5
.end method

.method public setSaveFromParentEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    const/high16 v1, 0x2000

    .line 4168
    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 4169
    return-void

    :cond_9
    move v0, v1

    .line 4168
    goto :goto_5
.end method

.method public setScaleX(F)V
    .registers 4
    .parameter "scaleX"

    .prologue
    const/4 v1, 0x0

    .line 6063
    iget v0, p0, Landroid/view/View;->mScaleX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1b

    .line 6064
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 6066
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 6067
    iput p1, p0, Landroid/view/View;->mScaleX:F

    .line 6068
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 6069
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6070
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 6072
    :cond_1b
    return-void
.end method

.method public setScaleY(F)V
    .registers 4
    .parameter "scaleY"

    .prologue
    const/4 v1, 0x0

    .line 6099
    iget v0, p0, Landroid/view/View;->mScaleY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1b

    .line 6100
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 6102
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 6103
    iput p1, p0, Landroid/view/View;->mScaleY:F

    .line 6104
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 6105
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6106
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 6108
    :cond_1b
    return-void
.end method

.method public setScrollBarStyle(I)V
    .registers 5
    .parameter "style"

    .prologue
    const/high16 v2, 0x300

    .line 7717
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-eq p1, v0, :cond_18

    .line 7718
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const v1, -0x3000001

    and-int/2addr v0, v1

    and-int v1, p1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 7719
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 7720
    invoke-virtual {p0}, Landroid/view/View;->recomputePadding()V

    .line 7722
    :cond_18
    return-void
.end method

.method public setScrollContainer(Z)V
    .registers 4
    .parameter "isScrollContainer"

    .prologue
    const/high16 v1, 0x10

    .line 3549
    if-eqz p1, :cond_21

    .line 3550
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_19

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_19

    .line 3551
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3552
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3554
    :cond_19
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3561
    :goto_20
    return-void

    .line 3556
    :cond_21
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2d

    .line 3557
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3559
    :cond_2d
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x180001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_20
.end method

.method public setScrollbarFadingEnabled(Z)V
    .registers 4
    .parameter "fadeScrollbars"

    .prologue
    .line 7679
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 7680
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 7681
    .local v0, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    iput-boolean p1, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 7682
    if-eqz p1, :cond_d

    .line 7683
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 7687
    :goto_c
    return-void

    .line 7685
    :cond_d
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    goto :goto_c
.end method

.method public setSelected(Z)V
    .registers 5
    .parameter "selected"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10202
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_24

    move v0, v2

    :goto_9
    if-eq v0, p1, :cond_23

    .line 10203
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_12

    const/4 v1, 0x4

    :cond_12
    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10204
    if-nez p1, :cond_1a

    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 10205
    :cond_1a
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 10206
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 10207
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetSelected(Z)V

    .line 10209
    :cond_23
    return-void

    :cond_24
    move v0, v1

    .line 10202
    goto :goto_9
.end method

.method public setSoundEffectsEnabled(Z)V
    .registers 4
    .parameter "soundEffectsEnabled"

    .prologue
    const/high16 v1, 0x800

    .line 3888
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3889
    return-void

    .line 3888
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setSystemUiVisibility(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 11264
    iget v0, p0, Landroid/view/View;->mSystemUiVisibility:I

    if-eq p1, v0, :cond_19

    .line 11265
    iput p1, p0, Landroid/view/View;->mSystemUiVisibility:I

    .line 11266
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_19

    .line 11267
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 11270
    :cond_19
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .registers 5
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 10570
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x2

    if-ge v0, v1, :cond_d

    .line 10571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be an application-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10575
    :cond_d
    invoke-static {p0, p1, p2}, Landroid/view/View;->setTagInternal(Landroid/view/View;ILjava/lang/Object;)V

    .line 10576
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 2
    .parameter "tag"

    .prologue
    .line 10521
    iput-object p1, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    .line 10522
    return-void
.end method

.method public setTagInternal(ILjava/lang/Object;)V
    .registers 5
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 10585
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    .line 10586
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be a framework-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10590
    :cond_d
    invoke-static {p0, p1, p2}, Landroid/view/View;->setTagInternal(Landroid/view/View;ILjava/lang/Object;)V

    .line 10591
    return-void
.end method

.method public final setTop(I)V
    .registers 10
    .parameter "top"

    .prologue
    const/4 v7, 0x1

    .line 6270
    iget v4, p0, Landroid/view/View;->mTop:I

    if-eq p1, v4, :cond_56

    .line 6271
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 6272
    iget-boolean v4, p0, Landroid/view/View;->mMatrixIsIdentity:Z

    if-eqz v4, :cond_5b

    .line 6273
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_25

    .line 6276
    iget v4, p0, Landroid/view/View;->mTop:I

    if-ge p1, v4, :cond_57

    .line 6277
    move v0, p1

    .line 6278
    .local v0, minTop:I
    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v3, p1, v4

    .line 6283
    .local v3, yLoc:I
    :goto_19
    const/4 v4, 0x0

    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mBottom:I

    sub-int/2addr v6, v0

    invoke-virtual {p0, v4, v3, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 6290
    .end local v0           #minTop:I
    .end local v3           #yLoc:I
    :cond_25
    :goto_25
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int v2, v4, v5

    .line 6291
    .local v2, width:I
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int v1, v4, v5

    .line 6293
    .local v1, oldHeight:I
    iput p1, p0, Landroid/view/View;->mTop:I

    .line 6295
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v2, v4, v2, v1}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 6297
    iget-boolean v4, p0, Landroid/view/View;->mMatrixIsIdentity:Z

    if-nez v4, :cond_51

    .line 6298
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v5, 0x2000

    and-int/2addr v4, v5

    if-nez v4, :cond_48

    .line 6300
    iput-boolean v7, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 6302
    :cond_48
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6303
    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    .line 6305
    :cond_51
    iput-boolean v7, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 6306
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 6308
    .end local v1           #oldHeight:I
    .end local v2           #width:I
    :cond_56
    return-void

    .line 6280
    :cond_57
    iget v0, p0, Landroid/view/View;->mTop:I

    .line 6281
    .restart local v0       #minTop:I
    const/4 v3, 0x0

    .restart local v3       #yLoc:I
    goto :goto_19

    .line 6287
    .end local v0           #minTop:I
    .end local v3           #yLoc:I
    :cond_5b
    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    goto :goto_25
.end method

.method public setTouchDelegate(Landroid/view/TouchDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 5417
    iput-object p1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 5418
    return-void
.end method

.method public setTranslationX(F)V
    .registers 4
    .parameter "translationX"

    .prologue
    const/4 v1, 0x0

    .line 6554
    iget v0, p0, Landroid/view/View;->mTranslationX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1b

    .line 6555
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 6557
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 6558
    iput p1, p0, Landroid/view/View;->mTranslationX:F

    .line 6559
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 6560
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6561
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 6563
    :cond_1b
    return-void
.end method

.method public setTranslationY(F)V
    .registers 4
    .parameter "translationY"

    .prologue
    const/4 v1, 0x0

    .line 6588
    iget v0, p0, Landroid/view/View;->mTranslationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1b

    .line 6589
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 6591
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 6592
    iput p1, p0, Landroid/view/View;->mTranslationY:F

    .line 6593
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mMatrixDirty:Z

    .line 6594
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6595
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 6597
    :cond_1b
    return-void
.end method

.method public setVerticalFadingEdgeEnabled(Z)V
    .registers 3
    .parameter "verticalFadingEdgeEnabled"

    .prologue
    .line 7538
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_11

    .line 7539
    if-eqz p1, :cond_b

    .line 7540
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 7543
    :cond_b
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 7545
    :cond_11
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .registers 3
    .parameter "verticalScrollBarEnabled"

    .prologue
    .line 7658
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_12

    .line 7659
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 7660
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 7661
    invoke-virtual {p0}, Landroid/view/View;->recomputePadding()V

    .line 7663
    :cond_12
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 2973
    iget v0, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_c

    .line 2974
    iput p1, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    .line 2975
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 2976
    invoke-virtual {p0}, Landroid/view/View;->recomputePadding()V

    .line 2978
    :cond_c
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .parameter "visibility"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3797
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 3798
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_13

    const/4 v1, 0x1

    :goto_f
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3799
    :cond_12
    return-void

    :cond_13
    move v1, v2

    .line 3798
    goto :goto_f
.end method

.method public setWillNotCacheDrawing(Z)V
    .registers 4
    .parameter "willNotCacheDrawing"

    .prologue
    const/high16 v1, 0x2

    .line 3966
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3967
    return-void

    .line 3966
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setWillNotDraw(Z)V
    .registers 4
    .parameter "willNotDraw"

    .prologue
    const/16 v1, 0x80

    .line 3943
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3944
    return-void

    .line 3943
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setX(F)V
    .registers 3
    .parameter "x"

    .prologue
    .line 6506
    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 6507
    return-void
.end method

.method public setY(F)V
    .registers 3
    .parameter "y"

    .prologue
    .line 6528
    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 6529
    return-void
.end method

.method public showContextMenu()Z
    .registers 2

    .prologue
    .line 3152
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .parameter "callback"

    .prologue
    .line 3164
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 11089
    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 11090
    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 11091
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 11092
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 11093
    return-void
.end method

.method public final startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .registers 28
    .parameter "data"
    .parameter "shadowBuilder"
    .parameter "myLocalState"
    .parameter "flags"

    .prologue
    .line 11452
    const/16 v19, 0x0

    .line 11454
    .local v19, okay:Z
    new-instance v21, Landroid/graphics/Point;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Point;-><init>()V

    .line 11455
    .local v21, shadowSize:Landroid/graphics/Point;
    new-instance v22, Landroid/graphics/Point;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Point;-><init>()V

    .line 11456
    .local v22, shadowTouchPoint:Landroid/graphics/Point;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 11458
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v3, v0

    if-ltz v3, :cond_31

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v3, v0

    if-ltz v3, :cond_31

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v3, v0

    if-ltz v3, :cond_31

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v3, v0

    if-gez v3, :cond_39

    .line 11460
    :cond_31
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Drag shadow dimensions must not be negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 11467
    :cond_39
    new-instance v8, Landroid/view/Surface;

    invoke-direct {v8}, Landroid/view/Surface;-><init>()V

    .line 11469
    .local v8, surface:Landroid/view/Surface;
    :try_start_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v4, v0

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v6, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v7, v0

    move/from16 v5, p4

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v11

    .line 11473
    .local v11, token:Landroid/os/IBinder;
    if-eqz v11, :cond_b4

    .line 11474
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_62} :catch_bd

    move-result-object v17

    .line 11476
    .local v17, canvas:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    :try_start_64
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v17

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 11477
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V
    :try_end_74
    .catchall {:try_start_64 .. :try_end_74} :catchall_b5

    .line 11479
    :try_start_74
    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 11482
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRoot()Landroid/view/ViewRoot;

    move-result-object v20

    .line 11485
    .local v20, root:Landroid/view/ViewRoot;
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot;->setLocalDragState(Ljava/lang/Object;)V

    .line 11488
    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewRoot;->getLastTouchPoint(Landroid/graphics/Point;)V

    .line 11490
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    iget-object v9, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    iget-object v10, v3, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v3, v0

    int-to-float v12, v3

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v3, v0

    int-to-float v13, v3

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v3, v0

    int-to-float v14, v3

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v3, v0

    int-to-float v15, v3

    move-object/from16 v16, p1

    invoke-interface/range {v9 .. v16}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z

    move-result v19

    .line 11500
    .end local v11           #token:Landroid/os/IBinder;
    .end local v17           #canvas:Landroid/graphics/Canvas;
    .end local v20           #root:Landroid/view/ViewRoot;
    :cond_b4
    :goto_b4
    return v19

    .line 11479
    .restart local v11       #token:Landroid/os/IBinder;
    .restart local v17       #canvas:Landroid/graphics/Canvas;
    :catchall_b5
    move-exception v3

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v3
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_bd} :catch_bd

    .line 11495
    .end local v11           #token:Landroid/os/IBinder;
    .end local v17           #canvas:Landroid/graphics/Canvas;
    :catch_bd
    move-exception v3

    move-object/from16 v18, v3

    .line 11496
    .local v18, e:Ljava/lang/Exception;
    const-string v3, "View"

    const-string v4, "Unable to initiate drag"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11497
    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V

    goto :goto_b4
.end method

.method unFocus()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3330
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_14

    .line 3331
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3333
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3334
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3336
    :cond_14
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "who"

    .prologue
    .line 9763
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_b

    .line 9764
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9766
    :cond_b
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4
    .parameter "who"
    .parameter "what"

    .prologue
    .line 9748
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_13

    .line 9749
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 9751
    :cond_13
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 9788
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public willNotCacheDrawing()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x2

    .line 3976
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public willNotDraw()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 3953
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
