.class public final Landroid/view/ViewRoot;
.super Landroid/os/Handler;
.source "ViewRoot.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/View$AttachInfo$Callbacks;
.implements Landroid/view/HardwareRenderer$HardwareDrawCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRoot$RunQueue;,
        Landroid/view/ViewRoot$CalledFromWrongThreadException;,
        Landroid/view/ViewRoot$TrackballAxis;,
        Landroid/view/ViewRoot$W;,
        Landroid/view/ViewRoot$InputMethodCallback;,
        Landroid/view/ViewRoot$TakenSurfaceHolder;,
        Landroid/view/ViewRoot$ResizedInfo;
    }
.end annotation


# static fields
.field public static final CHECK_FOCUS:I = 0x3f5

.field public static final CLOSE_SYSTEM_DIALOGS:I = 0x3f6

.field private static final DBG:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_DIALOG:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

#the value of this static final field might be set in the static constructor
.field static final DEBUG_SSI_LOGADV:Z = false

.field private static final DEBUG_TRACKBALL:Z = false

.field public static final DIE:I = 0x3e9

.field public static final DISPATCH_APP_VISIBILITY:I = 0x3f0

.field public static final DISPATCH_DRAG_EVENT:I = 0x3f7

.field public static final DISPATCH_DRAG_LOCATION_EVENT:I = 0x3f8

.field public static final DISPATCH_GENERIC_MOTION:I = 0x3fa

.field public static final DISPATCH_GET_NEW_SURFACE:I = 0x3f1

.field public static final DISPATCH_KEY:I = 0x3ed

.field public static final DISPATCH_KEY_FROM_IME:I = 0x3f3

.field public static final DISPATCH_POINTER:I = 0x3ee

.field public static final DISPATCH_SYSTEM_UI_VISIBILITY:I = 0x3f9

.field public static final DISPATCH_TRACKBALL:I = 0x3ef

.field public static final DO_TRAVERSAL:I = 0x3e8

.field public static final FINISHED_EVENT:I = 0x3f2

.field public static final FINISH_INPUT_CONNECTION:I = 0x3f4

.field private static final LOCAL_LOGV:Z = false

.field static final MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final MEASURE_LATENCY:Z = false

.field public static final RESIZED:I = 0x3ea

.field public static final RESIZED_REPORT:I = 0x3eb

.field private static final SHOW_FPS:Z = false

.field private static final TAG:Ljava/lang/String; = "ViewRoot"

.field public static final UPDATE_CONFIGURATION:I = 0x3fb

.field private static final WATCH_POINTER:Z = false

.field public static final WINDOW_FOCUS_CHANGED:I = 0x3ec

.field private static lt:Landroid/os/LatencyTimer;

.field static mInitialized:Z

.field static final mResizeInterpolator:Landroid/view/animation/Interpolator;

.field static final mStaticInit:Ljava/lang/Object;

.field static final sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private static sDrawTime:I

.field static sFirstDrawComplete:Z

.field static final sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/ViewRoot$RunQueue;",
            ">;"
        }
    .end annotation
.end field

.field static sWindowSession:Landroid/view/IWindowSession;


# instance fields
.field mAddNesting:I

.field mAdded:Z

.field mAddedTouchMode:Z

.field mAppVisible:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAudioManager:Landroid/media/AudioManager;

.field mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

.field mCurScrollY:I

.field final mCurrentDirty:Landroid/graphics/Rect;

.field mCurrentDragView:Landroid/view/View;

.field private final mDensity:I

.field mDirty:Landroid/graphics/Rect;

.field mDragDescription:Landroid/content/ClipDescription;

.field final mDragPoint:Landroid/graphics/PointF;

.field mDrawingAllowed:Z

.field mFallbackEventHandler:Landroid/view/FallbackEventHandler;

.field private mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

.field mFirst:Z

.field mFocusedView:Landroid/view/View;

.field mFullRedrawNeeded:Z

.field mHardwareYOffset:I

.field mHasHadWindowFocus:Z

.field mHeight:I

.field private mHolder:Landroid/view/SurfaceHolder;

.field mInputChannel:Landroid/view/InputChannel;

.field private final mInputHandler:Landroid/view/InputHandler;

.field final mInputMethodCallback:Landroid/view/ViewRoot$InputMethodCallback;

.field mInputQueue:Landroid/view/InputQueue;

.field mInputQueueCallback:Landroid/view/InputQueue$Callback;

.field mIsAnimating:Z

.field mIsCreating:Z

.field final mLastConfiguration:Landroid/content/res/Configuration;

.field final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mLastInCompatMode:Z

.field mLastJoystickXDirection:I

.field mLastJoystickXKeyCode:I

.field mLastJoystickYDirection:I

.field mLastJoystickYKeyCode:I

.field mLastScrolledFocus:Landroid/view/View;

.field final mLastTouchPoint:Landroid/graphics/PointF;

.field mLastTrackballTime:J

.field mLastWasImTarget:Z

.field mLayoutRequested:Z

.field volatile mLocalDragState:Ljava/lang/Object;

.field final mLocation:Landroid/view/WindowLeaked;

.field mNewSurfaceNeeded:Z

.field final mPendingConfiguration:Landroid/content/res/Configuration;

.field final mPendingContentInsets:Landroid/graphics/Rect;

.field mPendingEventSeq:I

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingVisibleInsets:Landroid/graphics/Rect;

.field final mPreviousDirty:Landroid/graphics/Rect;

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field private mProfile:Z

.field mRealFocusedView:Landroid/view/View;

.field mReportNextDraw:Z

.field mResizeAlpha:I

.field mResizeBitmap:Landroid/graphics/Bitmap;

.field mResizeBitmapDuration:I

.field mResizeBitmapStartTime:J

.field final mResizePaint:Landroid/graphics/Paint;

.field mScrollMayChange:Z

.field mScrollY:I

.field mScroller:Landroid/widget/Scroller;

.field mSoftInputMode:I

.field mStopped:Z

.field private final mSurface:Landroid/view/Surface;

.field mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field final mTempRect:Landroid/graphics/Rect;

.field final mThread:Ljava/lang/Thread;

.field final mTmpLocation:[I

.field final mTmpValue:Landroid/util/TypedValue;

.field final mTrackballAxisX:Landroid/view/ViewRoot$TrackballAxis;

.field final mTrackballAxisY:Landroid/view/ViewRoot$TrackballAxis;

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final mTransparentRegion:Landroid/graphics/Region;

.field mTraversalScheduled:Z

.field mView:Landroid/view/View;

.field final mViewConfiguration:Landroid/view/ViewConfiguration;

.field mViewVisibility:I

.field final mVisRect:Landroid/graphics/Rect;

.field mWidth:I

.field mWillDrawSoon:Z

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/ViewRoot$W;

.field final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field mWindowAttributesChanged:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    const-string/jumbo v0, "ssi.key.recording"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_36

    move v0, v2

    :goto_c
    sput-boolean v0, Landroid/view/ViewRoot;->DEBUG_SSI_LOGADV:Z

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/ViewRoot;->mStaticInit:Ljava/lang/Object;

    .line 121
    sput-boolean v1, Landroid/view/ViewRoot;->mInitialized:Z

    .line 123
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/ViewRoot;->sRunQueues:Ljava/lang/ThreadLocal;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    .line 126
    sput-boolean v1, Landroid/view/ViewRoot;->sFirstDrawComplete:Z

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    .line 245
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/view/ViewRoot;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    return-void

    :cond_36
    move v0, v1

    .line 110
    goto :goto_c
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 279
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRoot;->mLastTrackballTime:J

    .line 134
    new-instance v0, Landroid/view/ViewRoot$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRoot$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mTrackballAxisX:Landroid/view/ViewRoot$TrackballAxis;

    .line 135
    new-instance v0, Landroid/view/ViewRoot$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRoot$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mTrackballAxisY:Landroid/view/ViewRoot$TrackballAxis;

    .line 142
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/ViewRoot;->mTmpLocation:[I

    .line 144
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mTmpValue:Landroid/util/TypedValue;

    .line 147
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mPendingEvents:Landroid/util/SparseArray;

    .line 148
    iput v2, p0, Landroid/view/ViewRoot;->mPendingEventSeq:I

    .line 154
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 162
    iput-boolean v4, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    .line 166
    iput-boolean v2, p0, Landroid/view/ViewRoot;->mStopped:Z

    .line 168
    iput-boolean v2, p0, Landroid/view/ViewRoot;->mLastInCompatMode:Z

    .line 181
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mCurrentDirty:Landroid/graphics/Rect;

    .line 182
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mPreviousDirty:Landroid/graphics/Rect;

    .line 206
    iput-boolean v2, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    .line 210
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    .line 222
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 223
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 224
    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 227
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 228
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 253
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mDragPoint:Landroid/graphics/PointF;

    .line 254
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mLastTouchPoint:Landroid/graphics/PointF;

    .line 329
    iput-boolean v2, p0, Landroid/view/ViewRoot;->mProfile:Z

    .line 1502
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mResizePaint:Landroid/graphics/Paint;

    .line 3333
    new-instance v0, Landroid/view/ViewRoot$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRoot$1;-><init>(Landroid/view/ViewRoot;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mInputHandler:Landroid/view/InputHandler;

    .line 3862
    new-instance v0, Landroid/view/ViewRoot$2;

    invoke-direct {v0, p0}, Landroid/view/ViewRoot$2;-><init>(Landroid/view/ViewRoot;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mHolder:Landroid/view/SurfaceHolder;

    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRoot;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    .line 292
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRoot;->mThread:Ljava/lang/Thread;

    .line 293
    new-instance v0, Landroid/view/WindowLeaked;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mLocation:Landroid/view/WindowLeaked;

    .line 294
    iget-object v0, p0, Landroid/view/ViewRoot;->mLocation:Landroid/view/WindowLeaked;

    invoke-virtual {v0}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 295
    iput v3, p0, Landroid/view/ViewRoot;->mWidth:I

    .line 296
    iput v3, p0, Landroid/view/ViewRoot;->mHeight:I

    .line 297
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mDirty:Landroid/graphics/Rect;

    .line 298
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    .line 299
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mVisRect:Landroid/graphics/Rect;

    .line 300
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    .line 301
    new-instance v0, Landroid/view/ViewRoot$W;

    invoke-direct {v0, p0}, Landroid/view/ViewRoot$W;-><init>(Landroid/view/ViewRoot;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    .line 302
    new-instance v0, Landroid/view/ViewRoot$InputMethodCallback;

    invoke-direct {v0, p0}, Landroid/view/ViewRoot$InputMethodCallback;-><init>(Landroid/view/ViewRoot;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mInputMethodCallback:Landroid/view/ViewRoot$InputMethodCallback;

    .line 303
    const/16 v0, 0x8

    iput v0, p0, Landroid/view/ViewRoot;->mViewVisibility:I

    .line 304
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    .line 305
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mPreviousTransparentRegion:Landroid/graphics/Region;

    .line 306
    iput-boolean v4, p0, Landroid/view/ViewRoot;->mFirst:Z

    .line 307
    iput-boolean v2, p0, Landroid/view/ViewRoot;->mAdded:Z

    .line 308
    new-instance v0, Landroid/view/View$AttachInfo;

    sget-object v1, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-direct {v0, v1, v2, p0, p0}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 309
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRoot;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/view/ViewRoot;->mDensity:I

    .line 311
    invoke-static {p1}, Lcom/android/internal/policy/PolicyManager;->makeNewFallbackEventHandler(Landroid/content/Context;)Landroid/view/FallbackEventHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRoot;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    .line 312
    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewRoot;Landroid/view/InputQueue$FinishedCallback;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/view/ViewRoot;->startInputEvent(Landroid/view/InputQueue$FinishedCallback;)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewRoot;Landroid/view/KeyEvent;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRoot;->dispatchKey(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/ViewRoot;Landroid/view/MotionEvent;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRoot;->dispatchMotion(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/view/ViewRoot;)Landroid/view/Surface;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public static addConfigCallback(Landroid/content/ComponentCallbacks;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 323
    sget-object v0, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 324
    :try_start_3
    sget-object v1, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    monitor-exit v0

    .line 326
    return-void

    .line 325
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static addFirstDrawHandler(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 315
    sget-object v0, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 316
    :try_start_3
    sget-boolean v1, Landroid/view/ViewRoot;->sFirstDrawComplete:Z

    if-nez v1, :cond_c

    .line 317
    sget-object v1, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_c
    monitor-exit v0

    .line 320
    return-void

    .line 319
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private static captureKeyLog(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .registers 6
    .parameter "subTag"
    .parameter "ev"

    .prologue
    const/16 v3, 0x2c

    .line 2821
    if-eqz p1, :cond_d

    const-string v1, "debug.captureevent"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_e

    .line 2835
    :cond_d
    :goto_d
    return-void

    .line 2825
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2826
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2827
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2828
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2829
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2830
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2831
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2832
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2833
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2834
    const-string v1, "ViewRoot"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private static captureMotionLog(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "subTag"
    .parameter "ev"

    .prologue
    const/16 v3, 0x2c

    .line 2796
    if-eqz p1, :cond_d

    const-string v1, "debug.captureevent"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_e

    .line 2815
    :cond_d
    :goto_d
    return-void

    .line 2801
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2802
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2803
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2804
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2805
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2806
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2807
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2808
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2809
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2810
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2811
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2812
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2813
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2814
    const-string v1, "ViewRoot"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 2756
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-nez v1, :cond_9

    move v1, v2

    .line 2788
    :goto_8
    return v1

    .line 2761
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2762
    .local v0, action:I
    if-eqz v0, :cond_14

    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    move v1, v2

    .line 2763
    goto :goto_8

    .line 2767
    :cond_14
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1e

    move v1, v2

    .line 2768
    goto :goto_8

    .line 2776
    :cond_1e
    invoke-static {p1}, Landroid/view/ViewRoot;->isNavigationKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2777
    invoke-virtual {p0, v2}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    move-result v1

    goto :goto_8

    .line 2783
    :cond_29
    invoke-static {p1}, Landroid/view/ViewRoot;->isTypingKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2784
    invoke-virtual {p0, v2}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    move v1, v2

    .line 2785
    goto :goto_8

    :cond_34
    move v1, v2

    .line 2788
    goto :goto_8
.end method

.method private deliverGenericMotionEvent(Landroid/view/MotionEvent;Z)V
    .registers 8
    .parameter "event"
    .parameter "sendDone"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2620
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 2621
    .local v1, source:I
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_1c

    move v0, v4

    .line 2624
    .local v0, isJoystick:Z
    :goto_b
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v2, :cond_13

    iget-boolean v2, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-nez v2, :cond_1e

    .line 2625
    :cond_13
    if-eqz v0, :cond_18

    .line 2626
    invoke-direct {p0, p1, v3}, Landroid/view/ViewRoot;->updateJoystickDirection(Landroid/view/MotionEvent;Z)V

    .line 2628
    :cond_18
    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRoot;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    .line 2648
    :goto_1b
    return-void

    .end local v0           #isJoystick:Z
    :cond_1c
    move v0, v3

    .line 2621
    goto :goto_b

    .line 2633
    .restart local v0       #isJoystick:Z
    :cond_1e
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2634
    if-eqz v0, :cond_2b

    .line 2635
    invoke-direct {p0, p1, v3}, Landroid/view/ViewRoot;->updateJoystickDirection(Landroid/view/MotionEvent;Z)V

    .line 2637
    :cond_2b
    invoke-direct {p0, p1, p2, v4}, Landroid/view/ViewRoot;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto :goto_1b

    .line 2641
    :cond_2f
    if-eqz v0, :cond_38

    .line 2643
    invoke-direct {p0, p1, v4}, Landroid/view/ViewRoot;->updateJoystickDirection(Landroid/view/MotionEvent;Z)V

    .line 2644
    invoke-direct {p0, p1, p2, v4}, Landroid/view/ViewRoot;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto :goto_1b

    .line 2646
    :cond_38
    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRoot;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto :goto_1b
.end method

.method private deliverKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 7
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 2856
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-nez v2, :cond_d

    .line 2857
    :cond_8
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Landroid/view/ViewRoot;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    .line 2884
    :goto_c
    return-void

    .line 2864
    :cond_d
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2865
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2}, Landroid/view/ViewRoot;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto :goto_c

    .line 2871
    :cond_1a
    iget-boolean v2, p0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    if-eqz v2, :cond_34

    .line 2872
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2873
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_34

    .line 2874
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewRoot;->enqueuePendingEvent(Ljava/lang/Object;Z)I

    move-result v1

    .line 2877
    .local v1, seq:I
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRoot;->mInputMethodCallback:Landroid/view/ViewRoot$InputMethodCallback;

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEvent(Landroid/content/Context;ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V

    goto :goto_c

    .line 2883
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #seq:I
    :cond_34
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRoot;->deliverKeyEventPostIme(Landroid/view/KeyEvent;Z)V

    goto :goto_c
.end method

.method private deliverKeyEventPostIme(Landroid/view/KeyEvent;Z)V
    .registers 10
    .parameter "event"
    .parameter "sendDone"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2902
    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-nez v3, :cond_e

    .line 2903
    :cond_a
    invoke-direct {p0, p1, p2, v6}, Landroid/view/ViewRoot;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    .line 3010
    :goto_d
    return-void

    .line 2908
    :cond_e
    invoke-direct {p0, p1}, Landroid/view/ViewRoot;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2909
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRoot;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto :goto_d

    .line 2919
    :cond_18
    iget-object v3, p0, Landroid/view/ViewRoot;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v3, p1}, Landroid/view/FallbackEventHandler;->preDispatchKeyEvent(Landroid/view/KeyEvent;)V

    .line 2922
    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 2923
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRoot;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto :goto_d

    .line 2928
    :cond_29
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_4b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 2931
    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 2932
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRoot;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto :goto_d

    .line 2938
    :cond_4b
    iget-object v3, p0, Landroid/view/ViewRoot;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v3, p1}, Landroid/view/FallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 2939
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRoot;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto :goto_d

    .line 2944
    :cond_57
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_f1

    .line 2945
    const/4 v0, 0x0

    .line 2946
    .local v0, direction:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_f6

    .line 2976
    :cond_65
    :goto_65
    if-eqz v0, :cond_f1

    .line 2977
    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v3, :cond_e1

    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    move-object v1, v3

    .line 2978
    .local v1, focused:Landroid/view/View;
    :goto_72
    if-eqz v1, :cond_f1

    .line 2979
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    .line 2980
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_e4

    if-eq v2, v1, :cond_e4

    .line 2984
    iget-object v3, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2985
    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_99

    .line 2986
    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2988
    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2991
    :cond_99
    iget-object v3, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 2992
    invoke-static {v0}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/ViewRoot;->playSoundEffect(I)V

    .line 2994
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRoot;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto/16 :goto_d

    .line 2948
    .end local v1           #focused:Landroid/view/View;
    .end local v2           #v:Landroid/view/View;
    :sswitch_ad
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 2949
    const/16 v0, 0x11

    goto :goto_65

    .line 2953
    :sswitch_b6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 2954
    const/16 v0, 0x42

    goto :goto_65

    .line 2958
    :sswitch_bf
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 2959
    const/16 v0, 0x21

    goto :goto_65

    .line 2963
    :sswitch_c8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 2964
    const/16 v0, 0x82

    goto :goto_65

    .line 2968
    :sswitch_d1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 2969
    const/4 v0, 0x2

    goto :goto_65

    .line 2970
    :cond_d9
    invoke-virtual {p1, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 2971
    const/4 v0, 0x1

    goto :goto_65

    .line 2977
    :cond_e1
    const/4 v3, 0x0

    move-object v1, v3

    goto :goto_72

    .line 3000
    .restart local v1       #focused:Landroid/view/View;
    .restart local v2       #v:Landroid/view/View;
    :cond_e4
    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v3, v1, v0}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_f1

    .line 3001
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRoot;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto/16 :goto_d

    .line 3009
    .end local v0           #direction:I
    .end local v1           #focused:Landroid/view/View;
    .end local v2           #v:Landroid/view/View;
    :cond_f1
    invoke-direct {p0, p1, p2, v6}, Landroid/view/ViewRoot;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto/16 :goto_d

    .line 2946
    :sswitch_data_f6
    .sparse-switch
        0x13 -> :sswitch_bf
        0x14 -> :sswitch_c8
        0x15 -> :sswitch_ad
        0x16 -> :sswitch_b6
        0x3d -> :sswitch_d1
    .end sparse-switch
.end method

.method private deliverPointerEvent(Landroid/view/MotionEvent;Z)V
    .registers 16
    .parameter "event"
    .parameter "sendDone"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2366
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-nez v0, :cond_e

    .line 2367
    :cond_a
    invoke-direct {p0, p1, p2, v11}, Landroid/view/ViewRoot;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    .line 2454
    :goto_d
    return-void

    .line 2372
    :cond_e
    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_17

    .line 2373
    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V

    .line 2377
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4a

    move v9, v12

    .line 2378
    .local v9, isDown:Z
    :goto_1e
    if-eqz v9, :cond_23

    .line 2379
    invoke-virtual {p0, v12}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    .line 2386
    :cond_23
    iget v0, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    if-eqz v0, :cond_2e

    .line 2387
    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2394
    :cond_2e
    iget-object v0, p0, Landroid/view/ViewRoot;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 2395
    iget-object v0, p0, Landroid/view/ViewRoot;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 2398
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 2402
    .local v8, handled:Z
    if-eqz v8, :cond_4c

    .line 2403
    invoke-direct {p0, p1, p2, v12}, Landroid/view/ViewRoot;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto :goto_d

    .end local v8           #handled:Z
    .end local v9           #isDown:Z
    :cond_4a
    move v9, v11

    .line 2377
    goto :goto_1e

    .line 2408
    .restart local v8       #handled:Z
    .restart local v9       #isDown:Z
    :cond_4c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v6

    .line 2409
    .local v6, edgeFlags:I
    if-eqz v6, :cond_cf

    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_cf

    .line 2410
    iget-object v0, p0, Landroid/view/ViewRoot;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v7

    .line 2411
    .local v7, edgeSlop:I
    const/16 v4, 0x21

    .line 2412
    .local v4, direction:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 2413
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 2414
    .local v3, y:I
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 2416
    .local v5, deltas:[I
    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_aa

    .line 2417
    const/16 v4, 0x82

    .line 2418
    and-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_a1

    .line 2419
    aput v7, v5, v11

    .line 2420
    add-int/2addr v2, v7

    .line 2440
    :cond_7a
    :goto_7a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual/range {v0 .. v5}, Landroid/view/FocusFinder;->findNearestTouchable(Landroid/view/ViewGroup;III[I)Landroid/view/View;

    move-result-object v10

    .line 2442
    .local v10, nearest:Landroid/view/View;
    if-eqz v10, :cond_cf

    .line 2443
    aget v0, v5, v11

    int-to-float v0, v0

    aget v1, v5, v12

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2444
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 2445
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 2446
    invoke-direct {p0, p1, p2, v12}, Landroid/view/ViewRoot;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto/16 :goto_d

    .line 2421
    .end local v10           #nearest:Landroid/view/View;
    :cond_a1
    and-int/lit8 v0, v6, 0x8

    if-eqz v0, :cond_7a

    .line 2422
    neg-int v0, v7

    aput v0, v5, v11

    .line 2423
    sub-int/2addr v2, v7

    goto :goto_7a

    .line 2425
    :cond_aa
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_c1

    .line 2426
    const/16 v4, 0x21

    .line 2427
    and-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_b8

    .line 2428
    aput v7, v5, v11

    .line 2429
    add-int/2addr v2, v7

    goto :goto_7a

    .line 2430
    :cond_b8
    and-int/lit8 v0, v6, 0x8

    if-eqz v0, :cond_7a

    .line 2431
    neg-int v0, v7

    aput v0, v5, v11

    .line 2432
    sub-int/2addr v2, v7

    goto :goto_7a

    .line 2434
    :cond_c1
    and-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_c8

    .line 2435
    const/16 v4, 0x42

    goto :goto_7a

    .line 2436
    :cond_c8
    and-int/lit8 v0, v6, 0x8

    if-eqz v0, :cond_7a

    .line 2437
    const/16 v4, 0x11

    goto :goto_7a

    .line 2453
    .end local v2           #x:I
    .end local v3           #y:I
    .end local v4           #direction:I
    .end local v5           #deltas:[I
    .end local v7           #edgeSlop:I
    :cond_cf
    invoke-direct {p0, p1, p2, v11}, Landroid/view/ViewRoot;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto/16 :goto_d
.end method

.method private deliverTrackballEvent(Landroid/view/MotionEvent;Z)V
    .registers 38
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 2493
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v5, v0

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAdded:Z

    move v5, v0

    if-nez v5, :cond_1a

    .line 2494
    :cond_e
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRoot;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    .line 2617
    :goto_19
    return-void

    .line 2499
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 2504
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    .line 2506
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRoot;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    .line 2507
    const-wide/32 v8, -0x80000000

    move-wide v0, v8

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewRoot;->mLastTrackballTime:J

    goto :goto_19

    .line 2512
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTrackballAxisX:Landroid/view/ViewRoot$TrackballAxis;

    move-object/from16 v31, v0

    .line 2513
    .local v31, x:Landroid/view/ViewRoot$TrackballAxis;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTrackballAxisY:Landroid/view/ViewRoot$TrackballAxis;

    move-object/from16 v33, v0

    .line 2515
    .local v33, y:Landroid/view/ViewRoot$TrackballAxis;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2516
    .local v6, curTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ViewRoot;->mLastTrackballTime:J

    move-wide v8, v0

    const-wide/16 v10, 0xfa

    add-long/2addr v8, v10

    cmp-long v5, v8, v6

    if-gez v5, :cond_72

    .line 2519
    const/4 v5, 0x0

    move-object/from16 v0, v31

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2520
    const/4 v5, 0x0

    move-object/from16 v0, v33

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2521
    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewRoot;->mLastTrackballTime:J

    .line 2524
    :cond_72
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v29

    .line 2525
    .local v29, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    .line 2526
    .local v13, metaState:I
    packed-switch v29, :pswitch_data_1de

    .line 2551
    :goto_7d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    const-string v10, "X"

    move-object/from16 v0, v31

    move v1, v5

    move-wide v2, v8

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewRoot$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v32

    .line 2552
    .local v32, xOff:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    const-string v10, "Y"

    move-object/from16 v0, v33

    move v1, v5

    move-wide v2, v8

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewRoot$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v34

    .line 2560
    .local v34, yOff:F
    const/4 v11, 0x0

    .line 2561
    .local v11, keycode:I
    const/16 v30, 0x0

    .line 2562
    .local v30, movement:I
    const/high16 v27, 0x3f80

    .line 2563
    .local v27, accel:F
    cmpl-float v5, v32, v34

    if-lez v5, :cond_19e

    .line 2564
    const/high16 v5, 0x4000

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v8

    div-float/2addr v5, v8

    move-object/from16 v0, v31

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->generate(F)I

    move-result v30

    .line 2565
    if-eqz v30, :cond_ce

    .line 2566
    if-lez v30, :cond_199

    const/16 v5, 0x16

    move v11, v5

    .line 2568
    :goto_c1
    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    move/from16 v27, v0

    .line 2569
    const/4 v5, 0x2

    move-object/from16 v0, v33

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2581
    :cond_ce
    :goto_ce
    if-eqz v11, :cond_1d0

    .line 2582
    if-gez v30, :cond_d7

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    .line 2583
    :cond_d7
    move/from16 v0, v30

    int-to-float v0, v0

    move v5, v0

    mul-float v5, v5, v27

    move v0, v5

    float-to-int v0, v0

    move/from16 v28, v0

    .line 2587
    .local v28, accelMovement:I
    move/from16 v0, v28

    move/from16 v1, v30

    if-le v0, v1, :cond_100

    .line 2590
    add-int/lit8 v30, v30, -0x1

    .line 2591
    sub-int v12, v28, v30

    .line 2592
    .local v12, repeatCount:I
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x2

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x400

    const/16 v17, 0x101

    move-wide v8, v6

    invoke-direct/range {v5 .. v17}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 2597
    .end local v12           #repeatCount:I
    :cond_100
    :goto_100
    if-lez v30, :cond_1cb

    .line 2600
    add-int/lit8 v30, v30, -0x1

    .line 2601
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2602
    new-instance v14, Landroid/view/KeyEvent;

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x400

    const/16 v26, 0x101

    move-wide v15, v6

    move-wide/from16 v17, v6

    move/from16 v20, v11

    move/from16 v22, v13

    invoke-direct/range {v14 .. v26}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 2606
    new-instance v14, Landroid/view/KeyEvent;

    const/16 v19, 0x1

    const/16 v21, 0x0

    const/16 v23, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x400

    const/16 v26, 0x101

    move-wide v15, v6

    move-wide/from16 v17, v6

    move/from16 v20, v11

    move/from16 v22, v13

    invoke-direct/range {v14 .. v26}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_100

    .line 2528
    .end local v11           #keycode:I
    .end local v27           #accel:F
    .end local v28           #accelMovement:I
    .end local v30           #movement:I
    .end local v32           #xOff:F
    .end local v34           #yOff:F
    :pswitch_149
    const/4 v5, 0x2

    move-object/from16 v0, v31

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2529
    const/4 v5, 0x2

    move-object/from16 v0, v33

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2530
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x0

    const/16 v11, 0x17

    const/4 v12, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x400

    const/16 v17, 0x101

    move-wide v8, v6

    invoke-direct/range {v5 .. v17}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_7d

    .line 2536
    :pswitch_171
    const/4 v5, 0x2

    move-object/from16 v0, v31

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2537
    const/4 v5, 0x2

    move-object/from16 v0, v33

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2538
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x1

    const/16 v11, 0x17

    const/4 v12, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x400

    const/16 v17, 0x101

    move-wide v8, v6

    invoke-direct/range {v5 .. v17}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_7d

    .line 2566
    .restart local v11       #keycode:I
    .restart local v27       #accel:F
    .restart local v30       #movement:I
    .restart local v32       #xOff:F
    .restart local v34       #yOff:F
    :cond_199
    const/16 v5, 0x15

    move v11, v5

    goto/16 :goto_c1

    .line 2571
    :cond_19e
    const/4 v5, 0x0

    cmpl-float v5, v34, v5

    if-lez v5, :cond_ce

    .line 2572
    const/high16 v5, 0x4000

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v8

    div-float/2addr v5, v8

    move-object/from16 v0, v33

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->generate(F)I

    move-result v30

    .line 2573
    if-eqz v30, :cond_ce

    .line 2574
    if-lez v30, :cond_1c7

    const/16 v5, 0x14

    move v11, v5

    .line 2576
    :goto_1b8
    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    move/from16 v27, v0

    .line 2577
    const/4 v5, 0x2

    move-object/from16 v0, v31

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    goto/16 :goto_ce

    .line 2574
    :cond_1c7
    const/16 v5, 0x13

    move v11, v5

    goto :goto_1b8

    .line 2611
    .restart local v28       #accelMovement:I
    :cond_1cb
    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewRoot;->mLastTrackballTime:J

    .line 2616
    .end local v28           #accelMovement:I
    :cond_1d0
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRoot;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto/16 :goto_19

    .line 2526
    nop

    :pswitch_data_1de
    .packed-switch 0x0
        :pswitch_149
        :pswitch_171
    .end packed-switch
.end method

.method private destroyHardwareRenderer()V
    .registers 3

    .prologue
    .line 3294
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_18

    .line 3295
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroy(Z)V

    .line 3296
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 3297
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 3299
    :cond_18
    return-void
.end method

.method private dispatchGenericMotion(Landroid/view/MotionEvent;Z)V
    .registers 6
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 3410
    const/16 v1, 0x3fa

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3411
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3412
    if-eqz p2, :cond_15

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3413
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewRoot;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3414
    return-void

    .line 3412
    :cond_15
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private dispatchKey(Landroid/view/KeyEvent;Z)V
    .registers 6
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 3362
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3363
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3364
    if-eqz p2, :cond_15

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3369
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewRoot;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3370
    return-void

    .line 3364
    :cond_15
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private dispatchMotion(Landroid/view/MotionEvent;Z)V
    .registers 5
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 3377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 3378
    .local v0, source:I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_c

    .line 3379
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRoot;->dispatchPointer(Landroid/view/MotionEvent;Z)V

    .line 3385
    :goto_b
    return-void

    .line 3380
    :cond_c
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_14

    .line 3381
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRoot;->dispatchTrackball(Landroid/view/MotionEvent;Z)V

    goto :goto_b

    .line 3383
    :cond_14
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRoot;->dispatchGenericMotion(Landroid/view/MotionEvent;Z)V

    goto :goto_b
.end method

.method private dispatchPointer(Landroid/view/MotionEvent;Z)V
    .registers 6
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 3392
    const/16 v1, 0x3ee

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3393
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3394
    if-eqz p2, :cond_15

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewRoot;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3396
    return-void

    .line 3394
    :cond_15
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private dispatchTrackball(Landroid/view/MotionEvent;Z)V
    .registers 6
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 3403
    const/16 v1, 0x3ef

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3404
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3405
    if-eqz p2, :cond_15

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewRoot;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3407
    return-void

    .line 3405
    :cond_15
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private draw(Z)V
    .registers 33
    .parameter "fullRedrawNeeded"

    .prologue
    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object/from16 v23, v0

    .line 1518
    .local v23, surface:Landroid/view/Surface;
    if-eqz v23, :cond_e

    invoke-virtual/range {v23 .. v23}, Landroid/view/Surface;->isValid()Z

    move-result v26

    if-nez v26, :cond_f

    .line 1736
    :cond_e
    :goto_e
    return-void

    .line 1522
    :cond_f
    sget-boolean v26, Landroid/view/ViewRoot;->sFirstDrawComplete:Z

    if-nez v26, :cond_3d

    .line 1523
    sget-object v26, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v26

    .line 1524
    const/16 v27, 0x1

    :try_start_18
    sput-boolean v27, Landroid/view/ViewRoot;->sFirstDrawComplete:Z

    .line 1525
    sget-object v27, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1526
    .local v10, count:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_22
    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_3c

    .line 1527
    sget-object v27, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot;->post(Ljava/lang/Runnable;)Z

    .line 1526
    add-int/lit8 v16, v16, 0x1

    goto :goto_22

    .line 1529
    :cond_3c
    monitor-exit v26
    :try_end_3d
    .catchall {:try_start_18 .. :try_end_3d} :catchall_139

    .line 1532
    .end local v10           #count:I
    .end local v16           #i:I
    :cond_3d
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRoot;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    move/from16 v26, v0

    if-eqz v26, :cond_75

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    .line 1540
    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    if-eqz v26, :cond_13c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v26

    if-eqz v26, :cond_13c

    const/16 v26, 0x1

    move/from16 v6, v26

    .line 1541
    .local v6, animating:Z
    :goto_8d
    if-eqz v6, :cond_142

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->getCurrY()I

    move-result v25

    .line 1546
    .local v25, yoff:I
    :goto_99
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mCurScrollY:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v25

    if-eq v0, v1, :cond_ad

    .line 1547
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mCurScrollY:I

    .line 1548
    const/16 p1, 0x1

    .line 1550
    :cond_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move v7, v0

    .line 1551
    .local v7, appScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v20, v0

    .line 1553
    .local v20, scalingRequired:Z
    const/16 v18, 0x0

    .line 1554
    .local v18, resizeAlpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mResizeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    if-eqz v26, :cond_111

    .line 1555
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ViewRoot;->mResizeBitmapStartTime:J

    move-wide/from16 v28, v0

    sub-long v12, v26, v28

    .line 1556
    .local v12, deltaTime:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mResizeBitmapDuration:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v26, v12, v26

    if-gez v26, :cond_14a

    .line 1557
    move-wide v0, v12

    long-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mResizeBitmapDuration:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v5, v26, v27

    .line 1558
    .local v5, amt:F
    sget-object v26, Landroid/view/ViewRoot;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v26

    move v1, v5

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 1559
    const/4 v6, 0x1

    .line 1560
    const/16 v26, 0xff

    const/high16 v27, 0x437f

    mul-float v27, v27, v5

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-int v18, v26, v27

    .line 1566
    .end local v5           #amt:F
    .end local v12           #deltaTime:J
    :cond_111
    :goto_111
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mDirty:Landroid/graphics/Rect;

    move-object v14, v0

    .line 1567
    .local v14, dirty:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v26, v0

    if-eqz v26, :cond_14e

    .line 1569
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 1570
    if-eqz v6, :cond_e

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    if-eqz v26, :cond_134

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1574
    :cond_134
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->disposeResizeBitmap()V

    goto/16 :goto_e

    .line 1529
    .end local v6           #animating:Z
    .end local v7           #appScale:F
    .end local v14           #dirty:Landroid/graphics/Rect;
    .end local v18           #resizeAlpha:I
    .end local v20           #scalingRequired:Z
    .end local v25           #yoff:I
    :catchall_139
    move-exception v27

    :try_start_13a
    monitor-exit v26
    :try_end_13b
    .catchall {:try_start_13a .. :try_end_13b} :catchall_139

    throw v27

    .line 1540
    :cond_13c
    const/16 v26, 0x0

    move/from16 v6, v26

    goto/16 :goto_8d

    .line 1544
    .restart local v6       #animating:Z
    :cond_142
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mScrollY:I

    move/from16 v25, v0

    .restart local v25       #yoff:I
    goto/16 :goto_99

    .line 1562
    .restart local v7       #appScale:F
    .restart local v12       #deltaTime:J
    .restart local v18       #resizeAlpha:I
    .restart local v20       #scalingRequired:Z
    :cond_14a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->disposeResizeBitmap()V

    goto :goto_111

    .line 1579
    .end local v12           #deltaTime:J
    .restart local v14       #dirty:Landroid/graphics/Rect;
    :cond_14e
    if-eqz p1, :cond_19a

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1581
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v7

    const/high16 v29, 0x3f00

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v7

    const/high16 v30, 0x3f00

    add-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object v0, v14

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1584
    :cond_19a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v26, v0

    if-eqz v26, :cond_241

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v26

    if-eqz v26, :cond_241

    .line 1585
    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_1c8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mIsAnimating:Z

    move/from16 v26, v0

    if-eqz v26, :cond_232

    .line 1586
    :cond_1c8
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mIsAnimating:Z

    .line 1587
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mHardwareYOffset:I

    .line 1588
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mResizeAlpha:I

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mCurrentDirty:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mCurrentDirty:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPreviousDirty:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPreviousDirty:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1593
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mCurrentDirty:Landroid/graphics/Rect;

    move-object v11, v0

    .line 1596
    .local v11, currentDirty:Landroid/graphics/Rect;
    if-eqz v6, :cond_20e

    .line 1597
    const/4 v11, 0x0

    .line 1600
    :cond_20e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, p0

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/HardwareRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)V

    .line 1603
    .end local v11           #currentDirty:Landroid/graphics/Rect;
    :cond_232
    if-eqz v6, :cond_e

    .line 1604
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    .line 1605
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    goto/16 :goto_e

    .line 1620
    :cond_241
    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_24f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mIsAnimating:Z

    move/from16 v26, v0

    if-eqz v26, :cond_351

    .line 1623
    :cond_24f
    :try_start_24f
    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    .line 1624
    .local v17, left:I
    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    .line 1625
    .local v24, top:I
    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    .line 1626
    .local v19, right:I
    iget v8, v14, Landroid/graphics/Rect;->bottom:I

    .line 1628
    .local v8, bottom:I
    move-object/from16 v0, v23

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v9

    .line 1630
    .local v9, canvas:Landroid/graphics/Canvas;
    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_292

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_292

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_292

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    move v0, v8

    move/from16 v1, v26

    if-eq v0, v1, :cond_2a0

    .line 1632
    :cond_292
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1636
    :cond_2a0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mDensity:I

    move/from16 v26, v0

    move-object v0, v9

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_2ac
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_24f .. :try_end_2ac} :catch_360
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24f .. :try_end_2ac} :catch_395

    .line 1658
    :try_start_2ac
    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_2ba

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mIsAnimating:Z

    move/from16 v26, v0

    if-eqz v26, :cond_34b

    .line 1659
    :cond_2ba
    const-wide/16 v21, 0x0

    .line 1679
    .local v21, startTime:J
    invoke-virtual {v9}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v26

    if-eqz v26, :cond_2c4

    if-eqz v25, :cond_2d0

    .line 1680
    :cond_2c4
    const/16 v26, 0x0

    sget-object v27, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v9

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1683
    :cond_2d0
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 1684
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mIsAnimating:Z

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v27, v0

    or-int/lit8 v27, v27, 0x20

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I
    :try_end_2ff
    .catchall {:try_start_2ac .. :try_end_2ff} :catchall_3c2

    .line 1695
    const/16 v26, 0x0

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    :try_start_30b
    move-object v0, v9

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v26, v0

    if-eqz v26, :cond_327

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 1699
    :cond_327
    if-eqz v20, :cond_3ae

    sget v26, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_32b
    move-object v0, v9

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_33d
    .catchall {:try_start_30b .. :try_end_33d} :catchall_3b2

    .line 1703
    :try_start_33d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z
    :try_end_34b
    .catchall {:try_start_33d .. :try_end_34b} :catchall_3c2

    .line 1724
    .end local v21           #startTime:J
    :cond_34b
    move-object/from16 v0, v23

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1732
    .end local v8           #bottom:I
    .end local v9           #canvas:Landroid/graphics/Canvas;
    .end local v17           #left:I
    .end local v19           #right:I
    .end local v24           #top:I
    :cond_351
    if-eqz v6, :cond_e

    .line 1733
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    .line 1734
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    goto/16 :goto_e

    .line 1637
    :catch_360
    move-exception v26

    move-object/from16 v15, v26

    .line 1638
    .local v15, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v26, "ViewRoot"

    const-string v27, "OutOfResourcesException locking surface"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v15

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1640
    :try_start_36f
    sget-object v26, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v26

    if-nez v26, :cond_38b

    .line 1641
    const-string v26, "ViewRoot"

    const-string v27, "No processes killed for memory; killing self"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v26

    invoke-static/range {v26 .. v26}, Landroid/os/Process;->killProcess(I)V
    :try_end_38b
    .catch Landroid/os/RemoteException; {:try_start_36f .. :try_end_38b} :catch_3ca

    .line 1646
    :cond_38b
    :goto_38b
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    goto/16 :goto_e

    .line 1648
    .end local v15           #e:Landroid/view/Surface$OutOfResourcesException;
    :catch_395
    move-exception v26

    move-object/from16 v15, v26

    .line 1649
    .local v15, e:Ljava/lang/IllegalArgumentException;
    const-string v26, "ViewRoot"

    const-string v27, "IllegalArgumentException locking surface"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v15

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1653
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    goto/16 :goto_e

    .line 1699
    .end local v15           #e:Ljava/lang/IllegalArgumentException;
    .restart local v8       #bottom:I
    .restart local v9       #canvas:Landroid/graphics/Canvas;
    .restart local v17       #left:I
    .restart local v19       #right:I
    .restart local v21       #startTime:J
    .restart local v24       #top:I
    :cond_3ae
    const/16 v26, 0x0

    goto/16 :goto_32b

    .line 1703
    :catchall_3b2
    move-exception v26

    :try_start_3b3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    throw v26
    :try_end_3c2
    .catchall {:try_start_3b3 .. :try_end_3c2} :catchall_3c2

    .line 1724
    .end local v21           #startTime:J
    :catchall_3c2
    move-exception v26

    move-object/from16 v0, v23

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v26

    .line 1644
    .end local v8           #bottom:I
    .end local v9           #canvas:Landroid/graphics/Canvas;
    .end local v17           #left:I
    .end local v19           #right:I
    .end local v24           #top:I
    .local v15, e:Landroid/view/Surface$OutOfResourcesException;
    :catch_3ca
    move-exception v26

    goto :goto_38b
.end method

.method private enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V
    .registers 10
    .parameter "attrs"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 505
    iget-object v3, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v6, v3, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 506
    iget-object v3, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v6, v3, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    .line 509
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x100

    and-int/2addr v3, v4

    if-eqz v3, :cond_38

    move v0, v7

    .line 512
    .local v0, hardwareAccelerated:Z
    :goto_12
    if-eqz p1, :cond_37

    if-eqz v0, :cond_37

    .line 517
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x200

    and-int/2addr v3, v4

    if-eqz v3, :cond_3a

    move v1, v7

    .line 520
    .local v1, systemHwAccelerated:Z
    :goto_1e
    sget-boolean v3, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    if-eqz v3, :cond_24

    if-eqz v1, :cond_6c

    .line 522
    :cond_24
    if-nez v1, :cond_3c

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_3c

    .line 523
    const-string v3, "HardwareRenderer"

    const-string v4, "Attempting to initialize hardware acceleration outside of the main thread, aborting"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .end local v1           #systemHwAccelerated:Z
    :cond_37
    :goto_37
    return-void

    .end local v0           #hardwareAccelerated:Z
    :cond_38
    move v0, v6

    .line 509
    goto :goto_12

    .restart local v0       #hardwareAccelerated:Z
    :cond_3a
    move v1, v6

    .line 517
    goto :goto_1e

    .line 528
    .restart local v1       #systemHwAccelerated:Z
    :cond_3c
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_68

    move v2, v7

    .line 529
    .local v2, translucent:Z
    :goto_42
    iget-object v3, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v3, :cond_4f

    .line 530
    iget-object v3, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v3, v7}, Landroid/view/HardwareRenderer;->destroy(Z)V

    .line 532
    :cond_4f
    iget-object v3, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v4, 0x2

    invoke-static {v4, v2}, Landroid/view/HardwareRenderer;->createGlRenderer(IZ)Landroid/view/HardwareRenderer;

    move-result-object v4

    iput-object v4, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 533
    iget-object v3, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v5, :cond_6a

    move v5, v7

    :goto_63
    iput-boolean v5, v4, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    goto :goto_37

    .end local v2           #translucent:Z
    :cond_68
    move v2, v6

    .line 528
    goto :goto_42

    .restart local v2       #translucent:Z
    :cond_6a
    move v5, v6

    .line 533
    goto :goto_63

    .line 535
    .end local v2           #translucent:Z
    :cond_6c
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 536
    iget-object v3, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v7, v3, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    goto :goto_37
.end method

.method private ensureTouchModeLocally(Z)Z
    .registers 3
    .parameter "inTouchMode"

    .prologue
    .line 2278
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v0, p1, :cond_8

    const/4 v0, 0x0

    .line 2283
    :goto_7
    return v0

    .line 2280
    :cond_8
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 2281
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    .line 2283
    if-eqz p1, :cond_1a

    invoke-direct {p0}, Landroid/view/ViewRoot;->enterTouchMode()Z

    move-result v0

    goto :goto_7

    :cond_1a
    invoke-direct {p0}, Landroid/view/ViewRoot;->leaveTouchMode()Z

    move-result v0

    goto :goto_7
.end method

.method private enterTouchMode()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2287
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v2, :cond_36

    .line 2288
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2292
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2293
    .local v1, focused:Landroid/view/View;
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_36

    .line 2295
    invoke-direct {p0, v1}, Landroid/view/ViewRoot;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 2297
    .local v0, ancestorToTakeFocus:Landroid/view/ViewGroup;
    if-eqz v0, :cond_26

    .line 2300
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v2

    .line 2311
    .end local v0           #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .end local v1           #focused:Landroid/view/View;
    :goto_25
    return v2

    .line 2303
    .restart local v0       #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .restart local v1       #focused:Landroid/view/View;
    :cond_26
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->unFocus()V

    .line 2304
    iget-object v2, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 2305
    iput-object v3, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 2306
    const/4 v2, 0x1

    goto :goto_25

    .line 2311
    .end local v0           #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .end local v1           #focused:Landroid/view/View;
    :cond_36
    const/4 v2, 0x0

    goto :goto_25
.end method

.method private findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 8
    .parameter "focused"

    .prologue
    const/4 v5, 0x0

    .line 2322
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2323
    .local v1, parent:Landroid/view/ViewParent;
    :goto_5
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2a

    .line 2324
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 2325
    .local v2, vgParent:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x4

    if-ne v3, v4, :cond_1d

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object v3, v2

    .line 2335
    .end local v2           #vgParent:Landroid/view/ViewGroup;
    :goto_1c
    return-object v3

    .line 2329
    .restart local v2       #vgParent:Landroid/view/ViewGroup;
    :cond_1d
    invoke-virtual {v2}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_25

    move-object v3, v5

    .line 2330
    goto :goto_1c

    .line 2332
    :cond_25
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2334
    goto :goto_5

    .end local v2           #vgParent:Landroid/view/ViewGroup;
    :cond_2a
    move-object v3, v5

    .line 2335
    goto :goto_1c
.end method

.method private finishInputEvent(Z)V
    .registers 4
    .parameter "handled"

    .prologue
    .line 2234
    iget-object v0, p0, Landroid/view/ViewRoot;->mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

    if-eqz v0, :cond_d

    .line 2235
    iget-object v0, p0, Landroid/view/ViewRoot;->mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

    invoke-virtual {v0, p1}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    .line 2236
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRoot;->mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

    .line 2241
    :goto_c
    return-void

    .line 2238
    :cond_d
    const-string v0, "ViewRoot"

    const-string v1, "Attempted to tell the input queue that the current input event is finished but there is no input event actually in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private finishKeyEvent(Landroid/view/KeyEvent;ZZ)V
    .registers 9
    .parameter "event"
    .parameter "sendDone"
    .parameter "handled"

    .prologue
    .line 3014
    sget-boolean v3, Landroid/view/ViewRoot;->DEBUG_SSI_LOGADV:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    .line 3015
    const-string v3, "SystemCallbacks"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ISystemCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISystemCallbacks;

    move-result-object v1

    .line 3018
    .local v1, callbacks:Landroid/os/ISystemCallbacks;
    if-eqz v1, :cond_28

    .line 3019
    const/4 v0, 0x0

    .line 3020
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz p1, :cond_25

    .line 3021
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3022
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v3, "event"

    const-string v4, "KeyEvent"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3023
    const-string v3, "KeyEvent"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3027
    :cond_25
    :try_start_25
    invoke-interface {v1, v0}, Landroid/os/ISystemCallbacks;->onNotify(Landroid/os/Bundle;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_2e

    .line 3034
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #callbacks:Landroid/os/ISystemCallbacks;
    :cond_28
    :goto_28
    if-eqz p2, :cond_2d

    .line 3035
    invoke-direct {p0, p3}, Landroid/view/ViewRoot;->finishInputEvent(Z)V

    .line 3037
    :cond_2d
    return-void

    .line 3028
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #callbacks:Landroid/os/ISystemCallbacks;
    :catch_2e
    move-exception v2

    .line 3029
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_28
.end method

.method private finishMotionEvent(Landroid/view/MotionEvent;ZZ)V
    .registers 9
    .parameter "event"
    .parameter "sendDone"
    .parameter "handled"

    .prologue
    .line 2458
    sget-boolean v3, Landroid/view/ViewRoot;->DEBUG_SSI_LOGADV:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    .line 2459
    const-string v3, "SystemCallbacks"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ISystemCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISystemCallbacks;

    move-result-object v1

    .line 2462
    .local v1, callbacks:Landroid/os/ISystemCallbacks;
    if-eqz v1, :cond_28

    .line 2463
    const/4 v0, 0x0

    .line 2464
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz p1, :cond_25

    .line 2465
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2466
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v3, "event"

    const-string v4, "MotionEvent"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2467
    const-string v3, "MotionEvent"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2471
    :cond_25
    :try_start_25
    invoke-interface {v1, v0}, Landroid/os/ISystemCallbacks;->onNotify(Landroid/os/Bundle;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_31

    .line 2478
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #callbacks:Landroid/os/ISystemCallbacks;
    :cond_28
    :goto_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2479
    if-eqz p2, :cond_30

    .line 2480
    invoke-direct {p0, p3}, Landroid/view/ViewRoot;->finishInputEvent(Z)V

    .line 2487
    :cond_30
    return-void

    .line 2472
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #callbacks:Landroid/os/ISystemCallbacks;
    :catch_31
    move-exception v2

    .line 2473
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_28
.end method

.method private static forceLayout(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 1999
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 2000
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1c

    .line 2001
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 2002
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2003
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_10
    if-ge v3, v1, :cond_1c

    .line 2004
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewRoot;->forceLayout(Landroid/view/View;)V

    .line 2003
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2007
    .end local v1           #count:I
    .end local v2           #group:Landroid/view/ViewGroup;
    .end local v3           #i:I
    :cond_1c
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .prologue
    .line 3143
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-nez v0, :cond_c

    .line 3144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3146
    :cond_c
    iget-object v0, p0, Landroid/view/ViewRoot;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_20

    .line 3147
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/view/ViewRoot;->mAudioManager:Landroid/media/AudioManager;

    .line 3149
    :cond_20
    iget-object v0, p0, Landroid/view/ViewRoot;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getRootMeasureSpec(II)I
    .registers 5
    .parameter "windowSize"
    .parameter "rootDimension"

    .prologue
    const/high16 v1, 0x4000

    .line 1482
    packed-switch p2, :pswitch_data_16

    .line 1494
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1497
    .local v0, measureSpec:I
    :goto_9
    return v0

    .line 1486
    .end local v0           #measureSpec:I
    :pswitch_a
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1487
    .restart local v0       #measureSpec:I
    goto :goto_9

    .line 1490
    .end local v0           #measureSpec:I
    :pswitch_f
    const/high16 v1, -0x8000

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1491
    .restart local v0       #measureSpec:I
    goto :goto_9

    .line 1482
    :pswitch_data_16
    .packed-switch -0x2
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method static getRunQueue()Landroid/view/ViewRoot$RunQueue;
    .registers 2

    .prologue
    .line 3912
    sget-object v1, Landroid/view/ViewRoot;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRoot$RunQueue;

    .line 3913
    .local v0, rq:Landroid/view/ViewRoot$RunQueue;
    if-eqz v0, :cond_b

    .line 3918
    :goto_a
    return-object v0

    .line 3916
    :cond_b
    new-instance v0, Landroid/view/ViewRoot$RunQueue;

    .end local v0           #rq:Landroid/view/ViewRoot$RunQueue;
    invoke-direct {v0}, Landroid/view/ViewRoot$RunQueue;-><init>()V

    .line 3917
    .restart local v0       #rq:Landroid/view/ViewRoot$RunQueue;
    sget-object v1, Landroid/view/ViewRoot;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_a
.end method

.method public static getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;
    .registers 6
    .parameter "mainLooper"

    .prologue
    .line 264
    sget-object v1, Landroid/view/ViewRoot;->mStaticInit:Ljava/lang/Object;

    monitor-enter v1

    .line 265
    :try_start_3
    sget-boolean v2, Landroid/view/ViewRoot;->mInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-nez v2, :cond_20

    .line 267
    :try_start_7
    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 268
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getClient()Lcom/android/internal/view/IInputMethodClient;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputContext()Lcom/android/internal/view/IInputContext;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v2

    sput-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    .line 270
    const/4 v2, 0x1

    sput-boolean v2, Landroid/view/ViewRoot;->mInitialized:Z
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_24
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_20} :catch_27

    .line 274
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_20
    :goto_20
    :try_start_20
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v1

    return-object v2

    .line 275
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_24

    throw v2

    .line 271
    :catch_27
    move-exception v2

    goto :goto_20
.end method

.method private handleDragEvent(Landroid/view/DragEvent;)V
    .registers 11
    .parameter "event"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 3048
    iget-object v4, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v4, :cond_14

    iget-boolean v4, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v4, :cond_14

    .line 3049
    iget v3, p1, Landroid/view/DragEvent;->mAction:I

    .line 3051
    .local v3, what:I
    const/4 v4, 0x6

    if-ne v3, v4, :cond_18

    .line 3056
    iget-object v4, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 3120
    .end local v3           #what:I
    :cond_14
    :goto_14
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    .line 3121
    return-void

    .line 3060
    .restart local v3       #what:I
    :cond_18
    const/4 v4, 0x1

    if-ne v3, v4, :cond_9e

    .line 3061
    iput-object v7, p0, Landroid/view/ViewRoot;->mCurrentDragView:Landroid/view/View;

    .line 3062
    iget-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v4, p0, Landroid/view/ViewRoot;->mDragDescription:Landroid/content/ClipDescription;

    .line 3068
    :goto_21
    const/4 v4, 0x2

    if-eq v3, v4, :cond_26

    if-ne v3, v8, :cond_53

    .line 3069
    :cond_26
    iget-object v4, p0, Landroid/view/ViewRoot;->mDragPoint:Landroid/graphics/PointF;

    iget v5, p1, Landroid/view/DragEvent;->mX:F

    iget v6, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 3070
    iget-object v4, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_3a

    .line 3071
    iget-object v4, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v5, p0, Landroid/view/ViewRoot;->mDragPoint:Landroid/graphics/PointF;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 3074
    :cond_3a
    iget v4, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    if-eqz v4, :cond_47

    .line 3075
    iget-object v4, p0, Landroid/view/ViewRoot;->mDragPoint:Landroid/graphics/PointF;

    const/4 v5, 0x0

    iget v6, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->offset(FF)V

    .line 3078
    :cond_47
    iget-object v4, p0, Landroid/view/ViewRoot;->mDragPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/view/DragEvent;->mX:F

    .line 3079
    iget-object v4, p0, Landroid/view/ViewRoot;->mDragPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/view/DragEvent;->mY:F

    .line 3083
    :cond_53
    iget-object v1, p0, Landroid/view/ViewRoot;->mCurrentDragView:Landroid/view/View;

    .line 3086
    .local v1, prevDragView:Landroid/view/View;
    iget-object v4, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    .line 3089
    .local v2, result:Z
    iget-object v4, p0, Landroid/view/ViewRoot;->mCurrentDragView:Landroid/view/View;

    if-eq v1, v4, :cond_73

    .line 3091
    if-eqz v1, :cond_68

    .line 3092
    :try_start_61
    sget-object v4, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 3094
    :cond_68
    iget-object v4, p0, Landroid/view/ViewRoot;->mCurrentDragView:Landroid/view/View;

    if-eqz v4, :cond_73

    .line 3095
    sget-object v4, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_73} :catch_a4

    .line 3103
    :cond_73
    :goto_73
    if-ne v3, v8, :cond_96

    .line 3104
    iput-object v7, p0, Landroid/view/ViewRoot;->mDragDescription:Landroid/content/ClipDescription;

    .line 3106
    :try_start_77
    const-string v4, "ViewRoot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reporting drop result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    sget-object v4, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v4, v5, v2}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_96} :catch_ae

    .line 3115
    :cond_96
    :goto_96
    const/4 v4, 0x4

    if-ne v3, v4, :cond_14

    .line 3116
    invoke-virtual {p0, v7}, Landroid/view/ViewRoot;->setLocalDragState(Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 3064
    .end local v1           #prevDragView:Landroid/view/View;
    .end local v2           #result:Z
    :cond_9e
    iget-object v4, p0, Landroid/view/ViewRoot;->mDragDescription:Landroid/content/ClipDescription;

    iput-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    goto/16 :goto_21

    .line 3097
    .restart local v1       #prevDragView:Landroid/view/View;
    .restart local v2       #result:Z
    :catch_a4
    move-exception v4

    move-object v0, v4

    .line 3098
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "ViewRoot"

    const-string v5, "Unable to note drag target change"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 3108
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_ae
    move-exception v4

    move-object v0, v4

    .line 3109
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v4, "ViewRoot"

    const-string v5, "Unable to report drop result"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96
.end method

.method private handleFinishedEvent(IZ)V
    .registers 7
    .parameter "seq"
    .parameter "handled"

    .prologue
    const/4 v3, 0x1

    .line 2887
    invoke-virtual {p0, p1}, Landroid/view/ViewRoot;->retrievePendingEvent(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 2890
    .local v0, event:Landroid/view/KeyEvent;
    if-eqz v0, :cond_11

    .line 2891
    if-ltz p1, :cond_12

    move v1, v3

    .line 2892
    .local v1, sendDone:Z
    :goto_c
    if-eqz p2, :cond_15

    .line 2893
    invoke-direct {p0, v0, v1, v3}, Landroid/view/ViewRoot;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    .line 2898
    .end local v1           #sendDone:Z
    :cond_11
    :goto_11
    return-void

    .line 2891
    :cond_12
    const/4 v2, 0x0

    move v1, v2

    goto :goto_c

    .line 2895
    .restart local v1       #sendDone:Z
    :cond_15
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRoot;->deliverKeyEventPostIme(Landroid/view/KeyEvent;Z)V

    goto :goto_11
.end method

.method static isInTouchMode()Z
    .registers 1

    .prologue
    .line 348
    sget-boolean v0, Landroid/view/ViewRoot;->mInitialized:Z

    if-eqz v0, :cond_c

    .line 350
    :try_start_4
    sget-object v0, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v0}, Landroid/view/IWindowSession;->getInTouchMode()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    .line 354
    :goto_a
    return v0

    .line 351
    :catch_b
    move-exception v0

    .line 354
    :cond_c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isNavigationKey(Landroid/view/KeyEvent;)Z
    .registers 2
    .parameter "keyEvent"

    .prologue
    .line 2721
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_c

    .line 2736
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 2734
    :sswitch_9
    const/4 v0, 0x1

    goto :goto_8

    .line 2721
    nop

    :sswitch_data_c
    .sparse-switch
        0x13 -> :sswitch_9
        0x14 -> :sswitch_9
        0x15 -> :sswitch_9
        0x16 -> :sswitch_9
        0x17 -> :sswitch_9
        0x3d -> :sswitch_9
        0x3e -> :sswitch_9
        0x42 -> :sswitch_9
        0x5c -> :sswitch_9
        0x5d -> :sswitch_9
        0x7a -> :sswitch_9
        0x7b -> :sswitch_9
    .end sparse-switch
.end method

.method private static isTypingKey(Landroid/view/KeyEvent;)Z
    .registers 2
    .parameter "keyEvent"

    .prologue
    .line 2745
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 1990
    if-ne p0, p1, :cond_5

    move v1, v2

    .line 1995
    :goto_4
    return v1

    .line 1994
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1995
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_17

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/view/ViewRoot;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_4

    :cond_17
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private static joystickAxisValueToDirection(F)I
    .registers 2
    .parameter "value"

    .prologue
    .line 2706
    const/high16 v0, 0x3f00

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_8

    .line 2707
    const/4 v0, 0x1

    .line 2711
    :goto_7
    return v0

    .line 2708
    :cond_8
    const/high16 v0, -0x4100

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_10

    .line 2709
    const/4 v0, -0x1

    goto :goto_7

    .line 2711
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private leaveTouchMode()Z
    .registers 6

    .prologue
    const/16 v4, 0x82

    const/4 v3, 0x0

    .line 2339
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_39

    .line 2340
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2342
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 2343
    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_1f

    move v1, v3

    .line 2361
    :goto_1e
    return v1

    .line 2346
    :cond_1f
    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x4

    if-eq v1, v2, :cond_2d

    move v1, v3

    .line 2350
    goto :goto_1e

    .line 2356
    :cond_2d
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4}, Landroid/view/ViewRoot;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2357
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_39

    .line 2358
    invoke-virtual {v0, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    goto :goto_1e

    .end local v0           #focused:Landroid/view/View;
    :cond_39
    move v1, v3

    .line 2361
    goto :goto_1e
.end method

.method private static native nativeShowFPS(Landroid/graphics/Canvas;I)V
.end method

.method private performTraversals()V
    .registers 76

    .prologue
    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v43, v0

    .line 704
    .local v43, host:Landroid/view/View;
    if-eqz v43, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAdded:Z

    move v5, v0

    if-nez v5, :cond_10

    .line 1453
    :cond_f
    :goto_f
    return-void

    .line 707
    :cond_10
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    .line 708
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mWillDrawSoon:Z

    .line 709
    const/16 v73, 0x0

    .line 710
    .local v73, windowSizeMayChange:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    move/from16 v39, v0

    .line 711
    .local v39, fullRedrawNeeded:Z
    const/16 v54, 0x0

    .line 712
    .local v54, newSurface:Z
    const/16 v65, 0x0

    .line 713
    .local v65, surfaceChanged:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v52, v0

    .line 720
    .local v52, lp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v19, v0

    .line 722
    .local v19, attachInfo:Landroid/view/View$AttachInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->getHostVisibility()I

    move-result v68

    .line 723
    .local v68, viewVisibility:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mViewVisibility:I

    move v5, v0

    move v0, v5

    move/from16 v1, v68

    if-ne v0, v1, :cond_49

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mNewSurfaceNeeded:Z

    move v5, v0

    if-eqz v5, :cond_2f9

    :cond_49
    const/4 v5, 0x1

    move/from16 v69, v5

    .line 726
    .local v69, viewVisibilityChanged:Z
    :goto_4c
    const/16 v58, 0x0

    .line 727
    .local v58, params:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    move v5, v0

    if-eqz v5, :cond_5f

    .line 728
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    .line 729
    const/16 v65, 0x1

    .line 730
    move-object/from16 v58, v52

    .line 732
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/CompatibilityInfoHolder;->get()Landroid/content/res/CompatibilityInfo;

    move-result-object v27

    .line 733
    .local v27, compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLastInCompatMode:Z

    move v6, v0

    if-ne v5, v6, :cond_98

    .line 734
    move-object/from16 v58, v52

    .line 735
    const/16 v39, 0x1

    .line 736
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .line 737
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLastInCompatMode:Z

    move v5, v0

    if-eqz v5, :cond_2fe

    .line 738
    move-object/from16 v0, v58

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v5, v0

    const v6, -0x20000001

    and-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v58

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 739
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLastInCompatMode:Z

    .line 745
    :cond_98
    :goto_98
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    .line 746
    .local v38, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v5, v0

    if-eqz v5, :cond_332

    .line 747
    const/16 v39, 0x1

    .line 748
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .line 750
    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7de

    if-ne v5, v6, :cond_313

    .line 752
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v34

    .line 753
    .local v34, disp:Landroid/view/Display;
    invoke-virtual/range {v34 .. v34}, Landroid/view/Display;->getRealWidth()I

    move-result v32

    .line 754
    .local v32, desiredWindowWidth:I
    invoke-virtual/range {v34 .. v34}, Landroid/view/Display;->getRealHeight()I

    move-result v31

    .line 766
    .end local v34           #disp:Landroid/view/Display;
    .local v31, desiredWindowHeight:I
    :goto_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/view/View$AttachInfo;->mSurface:Landroid/view/Surface;

    .line 770
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    .line 771
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 772
    move/from16 v0, v68

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 773
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 774
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 775
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 776
    const/16 v69, 0x0

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mLastConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 778
    const/4 v5, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v19

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 793
    :cond_10f
    :goto_10f
    if-eqz v69, :cond_148

    .line 794
    move/from16 v0, v68

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 795
    move-object/from16 v0, v43

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 796
    if-nez v68, :cond_127

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mNewSurfaceNeeded:Z

    move v5, v0

    if-eqz v5, :cond_13b

    .line 797
    :cond_127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v5, :cond_13b

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/HardwareRenderer;->destroy(Z)V

    .line 801
    :cond_13b
    const/16 v5, 0x8

    move/from16 v0, v68

    move v1, v5

    if-ne v0, v1, :cond_148

    .line 804
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mHasHadWindowFocus:Z

    .line 808
    :cond_148
    const/16 v49, 0x0

    .line 810
    .local v49, insetsChanged:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    move v5, v0

    if-eqz v5, :cond_259

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mStopped:Z

    move v5, v0

    if-nez v5, :cond_259

    .line 813
    invoke-static {}, Landroid/view/ViewRoot;->getRunQueue()Landroid/view/ViewRoot$RunQueue;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/view/ViewRoot$RunQueue;->executeActions(Landroid/os/Handler;)V

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v60

    .line 817
    .local v60, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v5, v0

    if-eqz v5, :cond_35d

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAddedTouchMode:Z

    move v6, v0

    if-nez v6, :cond_35a

    const/4 v6, 0x1

    :goto_192
    iput-boolean v6, v5, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 822
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAddedTouchMode:Z

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/view/ViewRoot;->ensureTouchModeLocally(Z)Z

    .line 902
    :cond_19f
    :goto_19f
    const/16 v40, 0x0

    .line 903
    .local v40, goodMeasure:Z
    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move v5, v0

    const/4 v6, -0x2

    if-eq v5, v6, :cond_1b1

    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move v5, v0

    const/4 v6, -0x2

    if-ne v5, v6, :cond_21a

    .line 909
    :cond_1b1
    invoke-virtual/range {v60 .. v60}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v57

    .line 910
    .local v57, packageMetrics:Landroid/util/DisplayMetrics;
    const v5, 0x1050007

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpValue:Landroid/util/TypedValue;

    move-object v6, v0

    const/4 v7, 0x1

    move-object/from16 v0, v60

    move v1, v5

    move-object v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 911
    const/16 v20, 0x0

    .line 912
    .local v20, baseSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpValue:Landroid/util/TypedValue;

    move-object v5, v0

    iget v5, v5, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1e2

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpValue:Landroid/util/TypedValue;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v20, v0

    .line 916
    :cond_1e2
    if-eqz v20, :cond_21a

    move/from16 v0, v32

    move/from16 v1, v20

    if-le v0, v1, :cond_21a

    .line 917
    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move v5, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v26

    .line 918
    .local v26, childWidthMeasureSpec:I
    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move v5, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v25

    .line 919
    .local v25, childHeightMeasureSpec:I
    move-object/from16 v0, v43

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 922
    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v5

    const/high16 v6, 0x100

    and-int/2addr v5, v6

    if-nez v5, :cond_52b

    .line 923
    const/16 v40, 0x1

    .line 941
    .end local v20           #baseSize:I
    .end local v25           #childHeightMeasureSpec:I
    .end local v26           #childWidthMeasureSpec:I
    .end local v57           #packageMetrics:Landroid/util/DisplayMetrics;
    :cond_21a
    :goto_21a
    if-nez v40, :cond_259

    .line 942
    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move v5, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v26

    .line 943
    .restart local v26       #childWidthMeasureSpec:I
    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move v5, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v25

    .line 944
    .restart local v25       #childHeightMeasureSpec:I
    move-object/from16 v0, v43

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 945
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v5, v0

    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ne v5, v6, :cond_257

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v5, v0

    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-eq v5, v6, :cond_259

    .line 946
    :cond_257
    const/16 v73, 0x1

    .line 957
    .end local v25           #childHeightMeasureSpec:I
    .end local v26           #childWidthMeasureSpec:I
    .end local v40           #goodMeasure:Z
    .end local v60           #res:Landroid/content/res/Resources;
    :cond_259
    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    move v5, v0

    if-eqz v5, :cond_2af

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    if-eqz v5, :cond_2af

    .line 959
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 960
    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    move/from16 v55, v0

    .line 961
    .local v55, oldScreenOn:Z
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move/from16 v56, v0

    .line 962
    .local v56, oldVis:I
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 963
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 964
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 965
    const/4 v5, 0x0

    move-object/from16 v0, v43

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 966
    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    move v5, v0

    move v0, v5

    move/from16 v1, v55

    if-ne v0, v1, :cond_2ad

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move v5, v0

    move v0, v5

    move/from16 v1, v56

    if-ne v0, v1, :cond_2ad

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    move v5, v0

    if-eqz v5, :cond_2af

    .line 969
    :cond_2ad
    move-object/from16 v58, v52

    .line 973
    .end local v55           #oldScreenOn:Z
    .end local v56           #oldVis:I
    :cond_2af
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v5, v0

    if-nez v5, :cond_2bd

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    move v5, v0

    if-eqz v5, :cond_573

    .line 974
    :cond_2bd
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 975
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mSoftInputMode:I

    move v5, v0

    move v0, v5

    and-int/lit16 v0, v0, 0xf0

    move/from16 v61, v0

    .line 979
    .local v61, resizeMode:I
    if-nez v61, :cond_573

    .line 980
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 981
    .local v17, N:I
    const/16 v45, 0x0

    .local v45, i:I
    :goto_2da
    move/from16 v0, v45

    move/from16 v1, v17

    if-ge v0, v1, :cond_553

    .line 982
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_2f6

    .line 983
    const/16 v61, 0x10

    .line 981
    :cond_2f6
    add-int/lit8 v45, v45, 0x1

    goto :goto_2da

    .line 723
    .end local v17           #N:I
    .end local v27           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v31           #desiredWindowHeight:I
    .end local v32           #desiredWindowWidth:I
    .end local v38           #frame:Landroid/graphics/Rect;
    .end local v45           #i:I
    .end local v49           #insetsChanged:Z
    .end local v58           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v61           #resizeMode:I
    .end local v69           #viewVisibilityChanged:Z
    :cond_2f9
    const/4 v5, 0x0

    move/from16 v69, v5

    goto/16 :goto_4c

    .line 741
    .restart local v27       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v58       #params:Landroid/view/WindowManager$LayoutParams;
    .restart local v69       #viewVisibilityChanged:Z
    :cond_2fe
    move-object/from16 v0, v58

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v5, v0

    const/high16 v6, 0x2000

    or-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v58

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 742
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLastInCompatMode:Z

    goto/16 :goto_98

    .line 756
    .restart local v38       #frame:Landroid/graphics/Rect;
    :cond_313
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v57

    .line 758
    .restart local v57       #packageMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, v57

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v32, v0

    .line 759
    .restart local v32       #desiredWindowWidth:I
    move-object/from16 v0, v57

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v31, v0

    .restart local v31       #desiredWindowHeight:I
    goto/16 :goto_c6

    .line 782
    .end local v31           #desiredWindowHeight:I
    .end local v32           #desiredWindowWidth:I
    .end local v57           #packageMetrics:Landroid/util/DisplayMetrics;
    :cond_332
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->width()I

    move-result v32

    .line 783
    .restart local v32       #desiredWindowWidth:I
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v31

    .line 784
    .restart local v31       #desiredWindowHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v5, v0

    move/from16 v0, v32

    move v1, v5

    if-ne v0, v1, :cond_34e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v5, v0

    move/from16 v0, v31

    move v1, v5

    if-eq v0, v1, :cond_10f

    .line 787
    :cond_34e
    const/16 v39, 0x1

    .line 788
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .line 789
    const/16 v73, 0x1

    goto/16 :goto_10f

    .line 821
    .restart local v49       #insetsChanged:Z
    .restart local v60       #res:Landroid/content/res/Resources;
    :cond_35a
    const/4 v6, 0x0

    goto/16 :goto_192

    .line 824
    :cond_35d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49f

    .line 825
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v5, v0

    if-lez v5, :cond_481

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v5, v0

    if-lez v5, :cond_481

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_481

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v5

    if-eqz v5, :cond_481

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mTurnOffWindowResizeAnim:Z

    if-nez v5, :cond_481

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v5, :cond_481

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v5}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_481

    if-eqz v52, :cond_481

    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move v5, v0

    invoke-static {v5}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v5

    if-nez v5, :cond_481

    .line 832
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->disposeResizeBitmap()V

    .line 834
    const/16 v28, 0x0

    .line 836
    .local v28, completed:Z
    :try_start_3c0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mResizeBitmap:Landroid/graphics/Bitmap;

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mResizeBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 839
    new-instance v24, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mResizeBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 840
    .local v24, canvas:Landroid/graphics/Canvas;
    const/high16 v5, -0x100

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v24

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object v5, v0

    if-eqz v5, :cond_4ed

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_4ed

    const/4 v5, 0x1

    move/from16 v62, v5

    .line 844
    .local v62, scrolling:Z
    :goto_40b
    if-eqz v62, :cond_4f2

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v74

    .line 846
    .local v74, yoff:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 850
    :goto_41e
    const/4 v5, 0x0

    move/from16 v0, v74

    neg-int v0, v0

    move v6, v0

    int-to-float v6, v6

    move-object/from16 v0, v24

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    if-eqz v5, :cond_43d

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 854
    :cond_43d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v5, :cond_4fa

    sget v5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_448
    move-object/from16 v0, v24

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 857
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewRoot;->mResizeBitmapStartTime:J

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mResizeBitmapDuration:I
    :try_end_477
    .catchall {:try_start_3c0 .. :try_end_477} :catchall_50f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3c0 .. :try_end_477} :catch_4fd

    .line 860
    const/16 v28, 0x1

    .line 864
    if-nez v28, :cond_481

    .line 865
    .end local v24           #canvas:Landroid/graphics/Canvas;
    .end local v62           #scrolling:Z
    .end local v74           #yoff:I
    :goto_47b
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mResizeBitmap:Landroid/graphics/Bitmap;

    .line 869
    .end local v28           #completed:Z
    :cond_481
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 871
    const/16 v49, 0x1

    .line 875
    :cond_49f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c0

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 880
    :cond_4c0
    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move v5, v0

    const/4 v6, -0x2

    if-eq v5, v6, :cond_4d0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move v5, v0

    const/4 v6, -0x2

    if-ne v5, v6, :cond_19f

    .line 882
    :cond_4d0
    const/16 v73, 0x1

    .line 884
    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7de

    if-ne v5, v6, :cond_519

    .line 886
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v34

    .line 887
    .restart local v34       #disp:Landroid/view/Display;
    invoke-virtual/range {v34 .. v34}, Landroid/view/Display;->getRealWidth()I

    move-result v32

    .line 888
    invoke-virtual/range {v34 .. v34}, Landroid/view/Display;->getRealHeight()I

    move-result v31

    .line 889
    goto/16 :goto_19f

    .line 842
    .end local v34           #disp:Landroid/view/Display;
    .restart local v24       #canvas:Landroid/graphics/Canvas;
    .restart local v28       #completed:Z
    :cond_4ed
    const/4 v5, 0x0

    move/from16 v62, v5

    goto/16 :goto_40b

    .line 848
    .restart local v62       #scrolling:Z
    :cond_4f2
    :try_start_4f2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mScrollY:I

    move/from16 v74, v0
    :try_end_4f8
    .catchall {:try_start_4f2 .. :try_end_4f8} :catchall_50f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4f2 .. :try_end_4f8} :catch_4fd

    .restart local v74       #yoff:I
    goto/16 :goto_41e

    .line 854
    :cond_4fa
    const/4 v5, 0x0

    goto/16 :goto_448

    .line 861
    .end local v24           #canvas:Landroid/graphics/Canvas;
    .end local v62           #scrolling:Z
    .end local v74           #yoff:I
    :catch_4fd
    move-exception v5

    move-object/from16 v35, v5

    .line 862
    .local v35, e:Ljava/lang/OutOfMemoryError;
    :try_start_500
    const-string v5, "ViewRoot"

    const-string v6, "Not enough memory for content change anim buffer"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50b
    .catchall {:try_start_500 .. :try_end_50b} :catchall_50f

    .line 864
    if-nez v28, :cond_481

    goto/16 :goto_47b

    .end local v35           #e:Ljava/lang/OutOfMemoryError;
    :catchall_50f
    move-exception v5

    if-nez v28, :cond_518

    .line 865
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mResizeBitmap:Landroid/graphics/Bitmap;

    .line 864
    :cond_518
    throw v5

    .line 890
    .end local v28           #completed:Z
    :cond_519
    invoke-virtual/range {v60 .. v60}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v57

    .line 891
    .restart local v57       #packageMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, v57

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v32, v0

    .line 892
    move-object/from16 v0, v57

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v31, v0

    goto/16 :goto_19f

    .line 926
    .restart local v20       #baseSize:I
    .restart local v25       #childHeightMeasureSpec:I
    .restart local v26       #childWidthMeasureSpec:I
    .restart local v40       #goodMeasure:Z
    :cond_52b
    add-int v5, v20, v32

    div-int/lit8 v20, v5, 0x2

    .line 929
    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move v5, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v26

    .line 930
    move-object/from16 v0, v43

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 933
    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v5

    const/high16 v6, 0x100

    and-int/2addr v5, v6

    if-nez v5, :cond_21a

    .line 935
    const/16 v40, 0x1

    goto/16 :goto_21a

    .line 986
    .end local v20           #baseSize:I
    .end local v25           #childHeightMeasureSpec:I
    .end local v26           #childWidthMeasureSpec:I
    .end local v40           #goodMeasure:Z
    .end local v57           #packageMetrics:Landroid/util/DisplayMetrics;
    .end local v60           #res:Landroid/content/res/Resources;
    .restart local v17       #N:I
    .restart local v45       #i:I
    .restart local v61       #resizeMode:I
    :cond_553
    if-nez v61, :cond_557

    .line 987
    const/16 v61, 0x20

    .line 989
    :cond_557
    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move v5, v0

    and-int/lit16 v5, v5, 0xf0

    move v0, v5

    move/from16 v1, v61

    if-eq v0, v1, :cond_573

    .line 991
    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move v5, v0

    and-int/lit16 v5, v5, -0xf1

    or-int v5, v5, v61

    move v0, v5

    move-object/from16 v1, v52

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 994
    move-object/from16 v58, v52

    .line 999
    .end local v17           #N:I
    .end local v45           #i:I
    .end local v61           #resizeMode:I
    :cond_573
    if-eqz v58, :cond_58f

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v5, v0

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_58f

    .line 1000
    move-object/from16 v0, v58

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move v5, v0

    invoke-static {v5}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v5

    if-nez v5, :cond_58f

    .line 1001
    const/4 v5, -0x3

    move v0, v5

    move-object/from16 v1, v58

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1005
    :cond_58f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    move v5, v0

    if-eqz v5, :cond_7fa

    if-eqz v73, :cond_7fa

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v5, v0

    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ne v5, v6, :cond_5e6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v5, v0

    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ne v5, v6, :cond_5e6

    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move v5, v0

    const/4 v6, -0x2

    if-ne v5, v6, :cond_5ca

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->width()I

    move-result v5

    move v0, v5

    move/from16 v1, v32

    if-ge v0, v1, :cond_5ca

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->width()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    if-ne v5, v6, :cond_5e6

    :cond_5ca
    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move v5, v0

    const/4 v6, -0x2

    if-ne v5, v6, :cond_7fa

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v5

    move v0, v5

    move/from16 v1, v31

    if-ge v0, v1, :cond_7fa

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    if-eq v5, v6, :cond_7fa

    :cond_5e6
    const/4 v5, 0x1

    move/from16 v72, v5

    .line 1012
    .local v72, windowShouldResize:Z
    :goto_5e9
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    move-result v29

    .line 1015
    .local v29, computesInternalInsets:Z
    const/16 v50, 0x0

    .line 1016
    .local v50, insetsPending:Z
    const/16 v59, 0x0

    .line 1018
    .local v59, relayoutResult:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v5, v0

    if-nez v5, :cond_605

    if-nez v72, :cond_605

    if-nez v49, :cond_605

    if-nez v69, :cond_605

    if-eqz v58, :cond_a2d

    .line 1021
    :cond_605
    if-nez v68, :cond_615

    .line 1031
    if-eqz v29, :cond_7ff

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v5, v0

    if-nez v5, :cond_612

    if-eqz v69, :cond_7ff

    :cond_612
    const/4 v5, 0x1

    move/from16 v50, v5

    .line 1034
    :cond_615
    :goto_615
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    if-eqz v5, :cond_62c

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1036
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mDrawingAllowed:Z

    .line 1039
    :cond_62c
    const/16 v44, 0x0

    .line 1040
    .local v44, hwInitialized:Z
    const/16 v30, 0x0

    .line 1042
    .local v30, contentInsetsChanged:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v41

    .line 1045
    .local v41, hadSurface:Z
    const/16 v36, 0x0

    .line 1046
    .local v36, fl:I
    if-eqz v58, :cond_67b

    .line 1047
    :try_start_63d
    move-object/from16 v0, v58

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v36, v0

    .line 1048
    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    move v5, v0

    if-eqz v5, :cond_656

    .line 1049
    move-object/from16 v0, v58

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v5, v0

    or-int/lit16 v5, v5, 0x80

    move v0, v5

    move-object/from16 v1, v58

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1051
    :cond_656
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v58

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1052
    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    move v5, v0

    if-nez v5, :cond_675

    move-object/from16 v0, v58

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move v5, v0

    if-nez v5, :cond_675

    move-object/from16 v0, v58

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move v5, v0

    if-eqz v5, :cond_804

    :cond_675
    const/4 v5, 0x1

    :goto_676
    move v0, v5

    move-object/from16 v1, v58

    iput-boolean v0, v1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 1061
    :cond_67b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->getGenerationId()I

    move-result v66

    .line 1062
    .local v66, surfaceGenerationId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move/from16 v2, v68

    move/from16 v3, v50

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRoot;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v59

    .line 1064
    if-eqz v58, :cond_698

    .line 1065
    move/from16 v0, v36

    move-object/from16 v1, v58

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1073
    :cond_698
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    iget v5, v5, Landroid/content/res/Configuration;->seq:I

    if-eqz v5, :cond_6bd

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-nez v6, :cond_807

    const/4 v6, 0x1

    :goto_6ae
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRoot;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/content/res/Configuration;->seq:I

    .line 1080
    :cond_6bd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_80a

    const/4 v5, 0x1

    move/from16 v30, v5

    .line 1082
    :goto_6d2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_80f

    const/4 v5, 0x1

    move/from16 v70, v5

    .line 1084
    .local v70, visibleInsetsChanged:Z
    :goto_6e7
    if-eqz v30, :cond_705

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 1090
    :cond_705
    if-eqz v70, :cond_716

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1096
    :cond_716
    if-nez v41, :cond_848

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v5

    if-eqz v5, :cond_748

    .line 1105
    const/16 v54, 0x1

    .line 1106
    const/16 v39, 0x1

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Region;->setEmpty()V

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;
    :try_end_736
    .catch Landroid/os/RemoteException; {:try_start_63d .. :try_end_736} :catch_845

    if-eqz v5, :cond_748

    .line 1111
    :try_start_738
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mHolder:Landroid/view/SurfaceHolder;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/view/HardwareRenderer;->initialize(Landroid/view/SurfaceHolder;)Z
    :try_end_747
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_738 .. :try_end_747} :catch_814
    .catch Landroid/os/RemoteException; {:try_start_738 .. :try_end_747} :catch_845

    move-result v44

    .line 1159
    .end local v66           #surfaceGenerationId:I
    .end local v70           #visibleInsetsChanged:Z
    :cond_748
    :goto_748
    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 1160
    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 1165
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->width()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mWidth:I

    .line 1166
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mHeight:I

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    if-eqz v5, :cond_93c

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v5

    if-eqz v5, :cond_78c

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    iput-object v6, v5, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    .line 1175
    :cond_78c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v7, v0

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v5

    if-eqz v5, :cond_cb6

    .line 1178
    if-nez v41, :cond_8dc

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 1181
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mIsCreating:Z

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder$Callback2;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v22

    .line 1184
    .local v22, callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v22, :cond_8da

    .line 1185
    move-object/from16 v18, v22

    .local v18, arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v51, v0

    .local v51, len$:I
    const/16 v46, 0x0

    .local v46, i$:I
    :goto_7e4
    move/from16 v0, v46

    move/from16 v1, v51

    if-ge v0, v1, :cond_8da

    aget-object v21, v18, v46

    .line 1186
    .local v21, c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1185
    add-int/lit8 v46, v46, 0x1

    goto :goto_7e4

    .line 1005
    .end local v18           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v21           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v22           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v29           #computesInternalInsets:Z
    .end local v30           #contentInsetsChanged:Z
    .end local v36           #fl:I
    .end local v41           #hadSurface:Z
    .end local v44           #hwInitialized:Z
    .end local v46           #i$:I
    .end local v50           #insetsPending:Z
    .end local v51           #len$:I
    .end local v59           #relayoutResult:I
    .end local v72           #windowShouldResize:Z
    :cond_7fa
    const/4 v5, 0x0

    move/from16 v72, v5

    goto/16 :goto_5e9

    .line 1031
    .restart local v29       #computesInternalInsets:Z
    .restart local v50       #insetsPending:Z
    .restart local v59       #relayoutResult:I
    .restart local v72       #windowShouldResize:Z
    :cond_7ff
    const/4 v5, 0x0

    move/from16 v50, v5

    goto/16 :goto_615

    .line 1052
    .restart local v30       #contentInsetsChanged:Z
    .restart local v36       #fl:I
    .restart local v41       #hadSurface:Z
    .restart local v44       #hwInitialized:Z
    :cond_804
    const/4 v5, 0x0

    goto/16 :goto_676

    .line 1076
    .restart local v66       #surfaceGenerationId:I
    :cond_807
    const/4 v6, 0x0

    goto/16 :goto_6ae

    .line 1080
    :cond_80a
    const/4 v5, 0x0

    move/from16 v30, v5

    goto/16 :goto_6d2

    .line 1082
    :cond_80f
    const/4 v5, 0x0

    move/from16 v70, v5

    goto/16 :goto_6e7

    .line 1112
    .restart local v70       #visibleInsetsChanged:Z
    :catch_814
    move-exception v5

    move-object/from16 v35, v5

    .line 1113
    .local v35, e:Landroid/view/Surface$OutOfResourcesException;
    :try_start_817
    const-string v5, "ViewRoot"

    const-string v6, "OutOfResourcesException initializing HW surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_822
    .catch Landroid/os/RemoteException; {:try_start_817 .. :try_end_822} :catch_845

    .line 1115
    :try_start_822
    sget-object v5, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v5

    if-nez v5, :cond_83d

    .line 1116
    const-string v5, "ViewRoot"

    const-string v6, "No processes killed for memory; killing self"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V
    :try_end_83d
    .catch Landroid/os/RemoteException; {:try_start_822 .. :try_end_83d} :catch_d7a

    .line 1121
    :cond_83d
    :goto_83d
    const/4 v5, 0x1

    :try_start_83e
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    goto/16 :goto_f

    .line 1153
    .end local v35           #e:Landroid/view/Surface$OutOfResourcesException;
    .end local v66           #surfaceGenerationId:I
    .end local v70           #visibleInsetsChanged:Z
    :catch_845
    move-exception v5

    goto/16 :goto_748

    .line 1126
    .restart local v66       #surfaceGenerationId:I
    .restart local v70       #visibleInsetsChanged:Z
    :cond_848
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v5

    if-nez v5, :cond_878

    .line 1129
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mLastScrolledFocus:Landroid/view/View;

    .line 1130
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mCurScrollY:I

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mScrollY:I

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object v5, v0

    if-eqz v5, :cond_873

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1134
    :cond_873
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->disposeResizeBitmap()V

    goto/16 :goto_748

    .line 1135
    :cond_878
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->getGenerationId()I

    move-result v5

    move/from16 v0, v66

    move v1, v5

    if-eq v0, v1, :cond_748

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    if-nez v5, :cond_748

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;
    :try_end_894
    .catch Landroid/os/RemoteException; {:try_start_83e .. :try_end_894} :catch_845

    if-eqz v5, :cond_748

    .line 1137
    const/16 v39, 0x1

    .line 1139
    :try_start_898
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mHolder:Landroid/view/SurfaceHolder;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/view/HardwareRenderer;->updateSurface(Landroid/view/SurfaceHolder;)V
    :try_end_8a7
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_898 .. :try_end_8a7} :catch_8a9
    .catch Landroid/os/RemoteException; {:try_start_898 .. :try_end_8a7} :catch_845

    goto/16 :goto_748

    .line 1140
    :catch_8a9
    move-exception v5

    move-object/from16 v35, v5

    .line 1141
    .restart local v35       #e:Landroid/view/Surface$OutOfResourcesException;
    :try_start_8ac
    const-string v5, "ViewRoot"

    const-string v6, "OutOfResourcesException updating HW surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b7
    .catch Landroid/os/RemoteException; {:try_start_8ac .. :try_end_8b7} :catch_845

    .line 1143
    :try_start_8b7
    sget-object v5, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v5

    if-nez v5, :cond_8d2

    .line 1144
    const-string v5, "ViewRoot"

    const-string v6, "No processes killed for memory; killing self"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V
    :try_end_8d2
    .catch Landroid/os/RemoteException; {:try_start_8b7 .. :try_end_8d2} :catch_d77

    .line 1149
    :cond_8d2
    :goto_8d2
    const/4 v5, 0x1

    :try_start_8d3
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z
    :try_end_8d8
    .catch Landroid/os/RemoteException; {:try_start_8d3 .. :try_end_8d8} :catch_845

    goto/16 :goto_f

    .line 1189
    .end local v35           #e:Landroid/view/Surface$OutOfResourcesException;
    .end local v66           #surfaceGenerationId:I
    .end local v70           #visibleInsetsChanged:Z
    .restart local v22       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_8da
    const/16 v65, 0x1

    .line 1191
    .end local v22           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_8dc
    if-eqz v65, :cond_936

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v9, v0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/view/SurfaceHolder$Callback2;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v22

    .line 1195
    .restart local v22       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v22, :cond_936

    .line 1196
    move-object/from16 v18, v22

    .restart local v18       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v51, v0

    .restart local v51       #len$:I
    const/16 v46, 0x0

    .restart local v46       #i$:I
    :goto_90e
    move/from16 v0, v46

    move/from16 v1, v51

    if-ge v0, v1, :cond_936

    aget-object v21, v18, v46

    .line 1197
    .restart local v21       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v8, v0

    move-object/from16 v0, v21

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1196
    add-int/lit8 v46, v46, 0x1

    goto :goto_90e

    .line 1202
    .end local v18           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v21           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v22           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v46           #i$:I
    .end local v51           #len$:I
    :cond_936
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mIsCreating:Z

    .line 1220
    :cond_93c
    :goto_93c
    if-nez v44, :cond_958

    if-nez v72, :cond_942

    if-eqz v58, :cond_96c

    :cond_942
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v5, :cond_96c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v5}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_96c

    .line 1223
    :cond_958
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/HardwareRenderer;->setup(II)V

    .line 1226
    :cond_96c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mStopped:Z

    move v5, v0

    if-nez v5, :cond_a2d

    .line 1227
    and-int/lit8 v5, v59, 0x1

    if-eqz v5, :cond_d19

    const/4 v5, 0x1

    :goto_978
    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/view/ViewRoot;->ensureTouchModeLocally(Z)Z

    move-result v37

    .line 1229
    .local v37, focusChangedDueToTouchMode:Z
    if-nez v37, :cond_999

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v5, v0

    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ne v5, v6, :cond_999

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v5, v0

    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ne v5, v6, :cond_999

    if-eqz v30, :cond_a2d

    .line 1231
    :cond_999
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v5, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v26

    .line 1232
    .restart local v26       #childWidthMeasureSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v5, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v25

    .line 1241
    .restart local v25       #childHeightMeasureSpec:I
    move-object/from16 v0, v43

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1246
    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getMeasuredWidth()I

    move-result v71

    .line 1247
    .local v71, width:I
    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getMeasuredHeight()I

    move-result v42

    .line 1248
    .local v42, height:I
    const/16 v53, 0x0

    .line 1250
    .local v53, measureAgain:Z
    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    move v5, v0

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9f6

    .line 1251
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v5, v0

    sub-int v5, v5, v71

    int-to-float v5, v5

    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    move v6, v0

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int v71, v71, v5

    .line 1252
    const/high16 v5, 0x4000

    move/from16 v0, v71

    move v1, v5

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    .line 1254
    const/16 v53, 0x1

    .line 1256
    :cond_9f6
    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    move v5, v0

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a1c

    .line 1257
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v5, v0

    sub-int v5, v5, v42

    int-to-float v5, v5

    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    move v6, v0

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int v42, v42, v5

    .line 1258
    const/high16 v5, 0x4000

    move/from16 v0, v42

    move v1, v5

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .line 1260
    const/16 v53, 0x1

    .line 1263
    :cond_a1c
    if-eqz v53, :cond_a27

    .line 1267
    move-object/from16 v0, v43

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1270
    :cond_a27
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .line 1275
    .end local v25           #childHeightMeasureSpec:I
    .end local v26           #childWidthMeasureSpec:I
    .end local v30           #contentInsetsChanged:Z
    .end local v36           #fl:I
    .end local v37           #focusChangedDueToTouchMode:Z
    .end local v41           #hadSurface:Z
    .end local v42           #height:I
    .end local v44           #hwInitialized:Z
    .end local v53           #measureAgain:Z
    .end local v71           #width:I
    :cond_a2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    move v5, v0

    if-eqz v5, :cond_d1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mStopped:Z

    move v5, v0

    if-nez v5, :cond_d1c

    const/4 v5, 0x1

    move/from16 v33, v5

    .line 1276
    .local v33, didLayout:Z
    :goto_a3e
    if-nez v33, :cond_a47

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    move v5, v0

    if-eqz v5, :cond_d21

    :cond_a47
    const/4 v5, 0x1

    move/from16 v67, v5

    .line 1278
    .local v67, triggerGlobalLayoutListener:Z
    :goto_a4a
    if-eqz v33, :cond_b0c

    .line 1279
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .line 1280
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mScrollMayChange:Z

    .line 1284
    const-wide/16 v63, 0x0

    .line 1288
    .local v63, startTime:J
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move-object/from16 v0, v43

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1305
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v5, v0

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_b0c

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v5, v0

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/View;->mRight:I

    move v9, v0

    add-int/2addr v8, v9

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v9, v0

    sub-int/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v9, v0

    const/4 v10, 0x1

    aget v9, v9, v10

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v10, v0

    add-int/2addr v9, v10

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/View;->mTop:I

    move v10, v0

    sub-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Region;->set(IIII)Z

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v5, v0

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    if-eqz v5, :cond_ae0

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    .line 1318
    :cond_ae0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b0c

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1322
    :try_start_afd
    sget-object v5, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v7, v0

    invoke-interface {v5, v6, v7}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_b0c
    .catch Landroid/os/RemoteException; {:try_start_afd .. :try_end_b0c} :catch_d74

    .line 1335
    .end local v63           #startTime:J
    :cond_b0c
    :goto_b0c
    if-eqz v67, :cond_b1c

    .line 1336
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1337
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 1340
    :cond_b1c
    if-eqz v29, :cond_b8d

    .line 1342
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v48, v0

    .line 1343
    .local v48, insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    invoke-virtual/range {v48 .. v48}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    .line 1346
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 1349
    if-nez v50, :cond_b42

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b8d

    .line 1350
    :cond_b42
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    if-eqz v5, :cond_d26

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    .line 1358
    .local v8, contentInsets:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    .line 1359
    .local v9, visibleInsets:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v10

    .line 1367
    .local v10, touchableRegion:Landroid/graphics/Region;
    :goto_b7e
    :try_start_b7e
    sget-object v5, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v6, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    move v7, v0

    invoke-interface/range {v5 .. v10}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_b8d
    .catch Landroid/os/RemoteException; {:try_start_b7e .. :try_end_b8d} :catch_d71

    .line 1374
    .end local v8           #contentInsets:Landroid/graphics/Rect;
    .end local v9           #visibleInsets:Landroid/graphics/Rect;
    .end local v10           #touchableRegion:Landroid/graphics/Region;
    .end local v48           #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_b8d
    :goto_b8d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v5, v0

    if-eqz v5, :cond_bc2

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v5, v0

    if-eqz v5, :cond_bc2

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_d37

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v5, v0

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/View;->requestFocus(I)Z

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1392
    :cond_bc2
    :goto_bc2
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFirst:Z

    .line 1393
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mWillDrawSoon:Z

    .line 1394
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mNewSurfaceNeeded:Z

    .line 1395
    move/from16 v0, v68

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mViewVisibility:I

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v5, :cond_c39

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v5}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v47

    .line 1400
    .local v47, imTarget:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    move v5, v0

    move/from16 v0, v47

    move v1, v5

    if-eq v0, v1, :cond_c39

    .line 1401
    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    .line 1402
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v11

    .line 1403
    .local v11, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v11, :cond_c39

    if-eqz v47, :cond_c39

    .line 1404
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v11, v5}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v14, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mHasHadWindowFocus:Z

    move v5, v0

    if-nez v5, :cond_d47

    const/4 v5, 0x1

    move v15, v5

    :goto_c2c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 1412
    .end local v11           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v47           #imTarget:Z
    :cond_c39
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    move-result v23

    .line 1414
    .local v23, cancelDraw:Z
    if-nez v23, :cond_d5a

    if-nez v54, :cond_d5a

    .line 1415
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    .line 1416
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/view/ViewRoot;->draw(Z)V

    .line 1418
    and-int/lit8 v5, v59, 0x2

    if-nez v5, :cond_c5e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mReportNextDraw:Z

    move v5, v0

    if-eqz v5, :cond_f

    .line 1423
    :cond_c5e
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mReportNextDraw:Z

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    if-eqz v5, :cond_d4b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v5

    if-eqz v5, :cond_d4b

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v22

    .line 1427
    .restart local v22       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v22, :cond_d4b

    .line 1428
    move-object/from16 v18, v22

    .restart local v18       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v51, v0

    .restart local v51       #len$:I
    const/16 v46, 0x0

    .restart local v46       #i$:I
    :goto_c97
    move/from16 v0, v46

    move/from16 v1, v51

    if-ge v0, v1, :cond_d4b

    aget-object v21, v18, v46

    .line 1429
    .restart local v21       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/view/SurfaceHolder$Callback2;

    move v5, v0

    if-eqz v5, :cond_cb3

    .line 1430
    check-cast v21, Landroid/view/SurfaceHolder$Callback2;

    .end local v21           #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 1428
    :cond_cb3
    add-int/lit8 v46, v46, 0x1

    goto :goto_c97

    .line 1203
    .end local v18           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v22           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v23           #cancelDraw:Z
    .end local v33           #didLayout:Z
    .end local v46           #i$:I
    .end local v51           #len$:I
    .end local v67           #triggerGlobalLayoutListener:Z
    .restart local v30       #contentInsetsChanged:Z
    .restart local v36       #fl:I
    .restart local v41       #hadSurface:Z
    .restart local v44       #hwInitialized:Z
    :cond_cb6
    if-eqz v41, :cond_93c

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v22

    .line 1206
    .restart local v22       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder$Callback2;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1207
    if-eqz v22, :cond_cf7

    .line 1208
    move-object/from16 v18, v22

    .restart local v18       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v51, v0

    .restart local v51       #len$:I
    const/16 v46, 0x0

    .restart local v46       #i$:I
    :goto_ce1
    move/from16 v0, v46

    move/from16 v1, v51

    if-ge v0, v1, :cond_cf7

    aget-object v21, v18, v46

    .line 1209
    .restart local v21       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1208
    add-int/lit8 v46, v46, 0x1

    goto :goto_ce1

    .line 1212
    .end local v18           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v21           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v46           #i$:I
    .end local v51           #len$:I
    :cond_cf7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6}, Landroid/view/Surface;-><init>()V

    iput-object v6, v5, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_93c

    .line 1227
    .end local v22           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_d19
    const/4 v5, 0x0

    goto/16 :goto_978

    .line 1275
    .end local v30           #contentInsetsChanged:Z
    .end local v36           #fl:I
    .end local v41           #hadSurface:Z
    .end local v44           #hwInitialized:Z
    :cond_d1c
    const/4 v5, 0x0

    move/from16 v33, v5

    goto/16 :goto_a3e

    .line 1276
    .restart local v33       #didLayout:Z
    :cond_d21
    const/4 v5, 0x0

    move/from16 v67, v5

    goto/16 :goto_a4a

    .line 1361
    .restart local v48       #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v67       #triggerGlobalLayoutListener:Z
    :cond_d26
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    move-object v8, v0

    .line 1362
    .restart local v8       #contentInsets:Landroid/graphics/Rect;
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    move-object v9, v0

    .line 1363
    .restart local v9       #visibleInsets:Landroid/graphics/Rect;
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    move-object v10, v0

    .restart local v10       #touchableRegion:Landroid/graphics/Region;
    goto/16 :goto_b7e

    .line 1385
    .end local v8           #contentInsets:Landroid/graphics/Rect;
    .end local v9           #visibleInsets:Landroid/graphics/Rect;
    .end local v10           #touchableRegion:Landroid/graphics/Region;
    .end local v48           #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_d37
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    goto/16 :goto_bc2

    .line 1405
    .restart local v11       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v47       #imTarget:Z
    :cond_d47
    const/4 v5, 0x0

    move v15, v5

    goto/16 :goto_c2c

    .line 1437
    .end local v11           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v47           #imTarget:Z
    .restart local v23       #cancelDraw:Z
    :cond_d4b
    :try_start_d4b
    sget-object v5, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_d55
    .catch Landroid/os/RemoteException; {:try_start_d4b .. :try_end_d55} :catch_d57

    goto/16 :goto_f

    .line 1438
    :catch_d57
    move-exception v5

    goto/16 :goto_f

    .line 1444
    :cond_d5a
    and-int/lit8 v5, v59, 0x2

    if-eqz v5, :cond_d64

    .line 1445
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mReportNextDraw:Z

    .line 1447
    :cond_d64
    if-eqz v39, :cond_d6c

    .line 1448
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    .line 1451
    :cond_d6c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    goto/16 :goto_f

    .line 1369
    .end local v23           #cancelDraw:Z
    .restart local v8       #contentInsets:Landroid/graphics/Rect;
    .restart local v9       #visibleInsets:Landroid/graphics/Rect;
    .restart local v10       #touchableRegion:Landroid/graphics/Region;
    .restart local v48       #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :catch_d71
    move-exception v5

    goto/16 :goto_b8d

    .line 1323
    .end local v8           #contentInsets:Landroid/graphics/Rect;
    .end local v9           #visibleInsets:Landroid/graphics/Rect;
    .end local v10           #touchableRegion:Landroid/graphics/Region;
    .end local v48           #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v63       #startTime:J
    :catch_d74
    move-exception v5

    goto/16 :goto_b0c

    .line 1147
    .end local v33           #didLayout:Z
    .end local v63           #startTime:J
    .end local v67           #triggerGlobalLayoutListener:Z
    .restart local v30       #contentInsetsChanged:Z
    .restart local v35       #e:Landroid/view/Surface$OutOfResourcesException;
    .restart local v36       #fl:I
    .restart local v41       #hadSurface:Z
    .restart local v44       #hwInitialized:Z
    .restart local v66       #surfaceGenerationId:I
    .restart local v70       #visibleInsetsChanged:Z
    :catch_d77
    move-exception v5

    goto/16 :goto_8d2

    .line 1119
    :catch_d7a
    move-exception v5

    goto/16 :goto_83d
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .registers 21
    .parameter "params"
    .parameter "viewVisibility"
    .parameter "insetsPending"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v2, v0

    iget v14, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 3156
    .local v14, appScale:F
    const/16 v16, 0x0

    .line 3157
    .local v16, restore:Z
    if-eqz p1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    if-eqz v2, :cond_22

    .line 3158
    const/16 v16, 0x1

    .line 3159
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 3160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 3162
    :cond_22
    if-eqz p1, :cond_24

    .line 3165
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/res/Configuration;->seq:I

    .line 3167
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v5, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    const/high16 v6, 0x3f00

    add-float/2addr v4, v6

    float-to-int v6, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v13, v0

    move-object/from16 v4, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-interface/range {v2 .. v13}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v15

    .line 3175
    .local v15, relayoutResult:I
    if-eqz v16, :cond_79

    .line 3176
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 3179
    :cond_79
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    if-eqz v2, :cond_a7

    .line 3180
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 3181
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 3182
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 3184
    :cond_a7
    return v15
.end method

.method private sendAccessibilityEvents()V
    .registers 4

    .prologue
    .line 3463
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_11

    .line 3471
    :cond_10
    :goto_10
    return-void

    .line 3466
    :cond_11
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3467
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3468
    .local v0, focusedView:Landroid/view/View;
    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eq v0, v1, :cond_10

    .line 3469
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_10
.end method

.method private startInputEvent(Landroid/view/InputQueue$FinishedCallback;)V
    .registers 4
    .parameter "finishedCallback"

    .prologue
    .line 2223
    iget-object v0, p0, Landroid/view/ViewRoot;->mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

    if-eqz v0, :cond_b

    .line 2224
    const-string v0, "ViewRoot"

    const-string v1, "Received a new input event from the input queue but there is already an unfinished input event in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    :cond_b
    iput-object p1, p0, Landroid/view/ViewRoot;->mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

    .line 2229
    return-void
.end method

.method private updateJoystickDirection(Landroid/view/MotionEvent;Z)V
    .registers 21
    .parameter "event"
    .parameter "synthesizeNewKeys"

    .prologue
    .line 2651
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 2652
    .local v4, time:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    .line 2653
    .local v11, metaState:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    .line 2654
    .local v12, deviceId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    .line 2656
    .local v15, source:I
    const/16 v3, 0xf

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    invoke-static {v3}, Landroid/view/ViewRoot;->joystickAxisValueToDirection(F)I

    move-result v16

    .line 2657
    .local v16, xDirection:I
    if-nez v16, :cond_27

    .line 2658
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Landroid/view/ViewRoot;->joystickAxisValueToDirection(F)I

    move-result v16

    .line 2661
    :cond_27
    const/16 v3, 0x10

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    invoke-static {v3}, Landroid/view/ViewRoot;->joystickAxisValueToDirection(F)I

    move-result v17

    .line 2662
    .local v17, yDirection:I
    if-nez v17, :cond_3e

    .line 2663
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Landroid/view/ViewRoot;->joystickAxisValueToDirection(F)I

    move-result v17

    .line 2666
    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mLastJoystickXDirection:I

    move v3, v0

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_98

    .line 2667
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mLastJoystickXKeyCode:I

    move v3, v0

    if-eqz v3, :cond_6d

    .line 2668
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mLastJoystickXKeyCode:I

    move v9, v0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x400

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v6

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 2671
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mLastJoystickXKeyCode:I

    .line 2674
    :cond_6d
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mLastJoystickXDirection:I

    .line 2676
    if-eqz v16, :cond_98

    if-eqz p2, :cond_98

    .line 2677
    if-lez v16, :cond_f3

    const/16 v3, 0x16

    :goto_7b
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mLastJoystickXKeyCode:I

    .line 2679
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mLastJoystickXKeyCode:I

    move v9, v0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x400

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v6

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 2685
    :cond_98
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mLastJoystickYDirection:I

    move v3, v0

    move/from16 v0, v17

    move v1, v3

    if-eq v0, v1, :cond_f2

    .line 2686
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mLastJoystickYKeyCode:I

    move v3, v0

    if-eqz v3, :cond_c7

    .line 2687
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mLastJoystickYKeyCode:I

    move v9, v0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x400

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v6

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 2690
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mLastJoystickYKeyCode:I

    .line 2693
    :cond_c7
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mLastJoystickYDirection:I

    .line 2695
    if-eqz v17, :cond_f2

    if-eqz p2, :cond_f2

    .line 2696
    if-lez v17, :cond_f6

    const/16 v3, 0x14

    :goto_d5
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mLastJoystickYKeyCode:I

    .line 2698
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mLastJoystickYKeyCode:I

    move v9, v0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x400

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 2703
    .end local v4           #time:J
    :cond_f2
    return-void

    .line 2677
    .restart local v4       #time:J
    :cond_f3
    const/16 v3, 0x15

    goto :goto_7b

    .line 2696
    :cond_f6
    const/16 v3, 0x13

    goto :goto_d5
.end method


# virtual methods
.method public bringChildToFront(Landroid/view/View;)V
    .registers 2
    .parameter "child"

    .prologue
    .line 667
    return-void
.end method

.method checkThread()V
    .registers 3

    .prologue
    .line 3488
    iget-object v0, p0, Landroid/view/ViewRoot;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_10

    .line 3489
    new-instance v0, Landroid/view/ViewRoot$CalledFromWrongThreadException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Landroid/view/ViewRoot$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3492
    :cond_10
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .registers 2
    .parameter "child"

    .prologue
    .line 3485
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .registers 6
    .parameter "child"

    .prologue
    const/4 v3, 0x0

    .line 1872
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 1874
    iget-object v0, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1877
    .local v0, oldFocus:Landroid/view/View;
    iput-object v3, p0, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1878
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_27

    .line 1880
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1881
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 1886
    :cond_26
    :goto_26
    return-void

    .line 1883
    :cond_27
    if-eqz v0, :cond_26

    .line 1884
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    goto :goto_26
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 3482
    return-void
.end method

.method public debug()V
    .registers 2

    .prologue
    .line 3246
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    .line 3247
    return-void
.end method

.method public die(Z)V
    .registers 3
    .parameter "immediate"

    .prologue
    .line 3250
    if-eqz p1, :cond_6

    .line 3251
    invoke-virtual {p0}, Landroid/view/ViewRoot;->doDie()V

    .line 3255
    :goto_5
    return-void

    .line 3253
    :cond_6
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendEmptyMessage(I)Z

    goto :goto_5
.end method

.method public dispatchAppVisibility(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 3417
    const/16 v1, 0x3f0

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3418
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :goto_9
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3419
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 3420
    return-void

    .line 3418
    :cond_f
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .registers 4
    .parameter "reason"

    .prologue
    .line 3436
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3437
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3f6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3438
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3439
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 3440
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1921
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_10

    .line 1922
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 1925
    :cond_10
    iput-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .line 1926
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 1927
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mSurface:Landroid/view/Surface;

    .line 1929
    invoke-direct {p0}, Landroid/view/ViewRoot;->destroyHardwareRenderer()V

    .line 1931
    iget-object v0, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1933
    iget-object v0, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_33

    .line 1934
    iget-object v0, p0, Landroid/view/ViewRoot;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v0, :cond_46

    .line 1935
    iget-object v0, p0, Landroid/view/ViewRoot;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v1, p0, Landroid/view/ViewRoot;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v0, v1}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    .line 1936
    iput-object v2, p0, Landroid/view/ViewRoot;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 1943
    :cond_33
    :goto_33
    :try_start_33
    sget-object v0, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3a} :catch_4c

    .line 1949
    :goto_3a
    iget-object v0, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_45

    .line 1950
    iget-object v0, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 1951
    iput-object v2, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    .line 1953
    :cond_45
    return-void

    .line 1938
    :cond_46
    iget-object v0, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {v0}, Landroid/view/InputQueue;->unregisterInputChannel(Landroid/view/InputChannel;)V

    goto :goto_33

    .line 1944
    :catch_4c
    move-exception v0

    goto :goto_3a
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 3444
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    .line 3445
    const/16 v1, 0x3f8

    .line 3446
    .local v1, what:I
    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->removeMessages(I)V

    .line 3450
    :goto_c
    invoke-virtual {p0, v1, p1}, Landroid/view/ViewRoot;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3451
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 3452
    return-void

    .line 3448
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #what:I
    :cond_14
    const/16 v1, 0x3f7

    .restart local v1       #what:I
    goto :goto_c
.end method

.method public dispatchFinishedEvent(IZ)V
    .registers 5
    .parameter "seq"
    .parameter "handled"

    .prologue
    .line 3302
    const/16 v1, 0x3f2

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3303
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3304
    if-eqz p2, :cond_11

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3305
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 3306
    return-void

    .line 3304
    :cond_11
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public dispatchGetNewSurface()V
    .registers 3

    .prologue
    .line 3423
    const/16 v1, 0x3f1

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3424
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 3425
    return-void
.end method

.method public dispatchKey(Landroid/view/KeyEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 3346
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRoot;->dispatchKey(Landroid/view/KeyEvent;Z)V

    .line 3347
    return-void
.end method

.method public dispatchMotion(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 3373
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRoot;->dispatchMotion(Landroid/view/MotionEvent;Z)V

    .line 3374
    return-void
.end method

.method public dispatchPointer(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 3388
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRoot;->dispatchPointer(Landroid/view/MotionEvent;Z)V

    .line 3389
    return-void
.end method

.method public dispatchResized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .registers 11
    .parameter "w"
    .parameter "h"
    .parameter "coveredInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"

    .prologue
    .line 3314
    if-eqz p5, :cond_43

    const/16 v2, 0x3eb

    :goto_4
    invoke-virtual {p0, v2}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3315
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_24

    .line 3316
    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, p3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 3317
    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, p4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 3318
    int-to-float v2, p1

    iget-object v3, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v3, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    mul-float/2addr v2, v3

    float-to-int p1, v2

    .line 3319
    int-to-float v2, p2

    iget-object v3, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v3, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    mul-float/2addr v2, v3

    float-to-int p2, v2

    .line 3321
    :cond_24
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3322
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 3323
    new-instance v1, Landroid/view/ViewRoot$ResizedInfo;

    invoke-direct {v1, p0}, Landroid/view/ViewRoot$ResizedInfo;-><init>(Landroid/view/ViewRoot;)V

    .line 3324
    .local v1, ri:Landroid/view/ViewRoot$ResizedInfo;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Landroid/view/ViewRoot$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    .line 3325
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Landroid/view/ViewRoot$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 3326
    iput-object p6, v1, Landroid/view/ViewRoot$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    .line 3327
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3328
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 3329
    return-void

    .line 3314
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #ri:Landroid/view/ViewRoot$ResizedInfo;
    :cond_43
    const/16 v2, 0x3ea

    goto :goto_4
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .registers 4
    .parameter "visibility"

    .prologue
    .line 3455
    const/16 v0, 0x3f9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/ViewRoot;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 3456
    return-void
.end method

.method public dispatchTrackball(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 3399
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRoot;->dispatchTrackball(Landroid/view/MotionEvent;Z)V

    .line 3400
    return-void
.end method

.method disposeResizeBitmap()V
    .registers 2

    .prologue
    .line 688
    iget-object v0, p0, Landroid/view/ViewRoot;->mResizeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 689
    iget-object v0, p0, Landroid/view/ViewRoot;->mResizeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 690
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRoot;->mResizeBitmap:Landroid/graphics/Bitmap;

    .line 692
    :cond_c
    return-void
.end method

.method doDie()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3258
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 3260
    monitor-enter p0

    .line 3261
    :try_start_5
    iget-boolean v2, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v2, :cond_39

    iget-boolean v2, p0, Landroid/view/ViewRoot;->mFirst:Z

    if-nez v2, :cond_39

    .line 3262
    invoke-direct {p0}, Landroid/view/ViewRoot;->destroyHardwareRenderer()V

    .line 3264
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 3265
    .local v0, viewVisibility:I
    iget v2, p0, Landroid/view/ViewRoot;->mViewVisibility:I

    if-eq v2, v0, :cond_45

    const/4 v2, 0x1

    move v1, v2

    .line 3266
    .local v1, viewVisibilityChanged:Z
    :goto_1c
    iget-boolean v2, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_47

    if-nez v2, :cond_22

    if-eqz v1, :cond_34

    .line 3271
    :cond_22
    :try_start_22
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Landroid/view/ViewRoot;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_34

    .line 3273
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_47
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_34} :catch_4a

    .line 3279
    :cond_34
    :goto_34
    :try_start_34
    iget-object v2, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 3281
    .end local v0           #viewVisibility:I
    .end local v1           #viewVisibilityChanged:Z
    :cond_39
    iget-boolean v2, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v2, :cond_43

    .line 3282
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/ViewRoot;->mAdded:Z

    .line 3283
    invoke-virtual {p0}, Landroid/view/ViewRoot;->dispatchDetachedFromWindow()V

    .line 3285
    :cond_43
    monitor-exit p0

    .line 3286
    return-void

    .restart local v0       #viewVisibility:I
    :cond_45
    move v1, v3

    .line 3265
    goto :goto_1c

    .line 3285
    .end local v0           #viewVisibility:I
    :catchall_47
    move-exception v2

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_34 .. :try_end_49} :catchall_47

    throw v2

    .line 3275
    .restart local v0       #viewVisibility:I
    .restart local v1       #viewVisibilityChanged:Z
    :catch_4a
    move-exception v2

    goto :goto_34
.end method

.method enqueuePendingEvent(Ljava/lang/Object;Z)I
    .registers 5
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 2838
    iget v1, p0, Landroid/view/ViewRoot;->mPendingEventSeq:I

    add-int/lit8 v0, v1, 0x1

    .line 2839
    .local v0, seq:I
    if-gez v0, :cond_7

    const/4 v0, 0x0

    .line 2840
    :cond_7
    iput v0, p0, Landroid/view/ViewRoot;->mPendingEventSeq:I

    .line 2841
    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2842
    if-eqz p2, :cond_12

    move v1, v0

    :goto_11
    return v1

    :cond_12
    neg-int v1, v0

    goto :goto_11
.end method

.method ensureTouchMode(Z)Z
    .registers 4
    .parameter "inTouchMode"

    .prologue
    .line 2255
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v1, p1, :cond_8

    const/4 v1, 0x0

    .line 2265
    :goto_7
    return v1

    .line 2259
    :cond_8
    :try_start_8
    sget-object v1, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v1, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_12

    .line 2265
    invoke-direct {p0, p1}, Landroid/view/ViewRoot;->ensureTouchModeLocally(Z)Z

    move-result v1

    goto :goto_7

    .line 2260
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 2261
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 3238
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 3239
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_b

    .line 3240
    const/4 v0, 0x0

    .line 3242
    .end local p0
    :goto_a
    return-object v0

    .restart local p0
    :cond_b
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object p0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_a
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 1890
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 1892
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1893
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1908
    :cond_12
    :goto_12
    return-void

    .line 1898
    :cond_13
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1899
    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_3d

    const/4 v1, 0x1

    move v0, v1

    .line 1903
    .local v0, descendantsHaveDibsOnFocus:Z
    :goto_2f
    if-eqz v0, :cond_12

    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    invoke-static {p1, v1}, Landroid/view/ViewRoot;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1905
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_12

    .line 1899
    .end local v0           #descendantsHaveDibsOnFocus:Z
    :cond_3d
    const/4 v1, 0x0

    move v0, v1

    goto :goto_2f
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 7
    .parameter "child"
    .parameter "r"
    .parameter "offset"

    .prologue
    const/4 v2, 0x0

    .line 658
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eq p1, v0, :cond_d

    .line 659
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "child is not mine, honest!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_d
    iget v0, p0, Landroid/view/ViewRoot;->mWidth:I

    iget v1, p0, Landroid/view/ViewRoot;->mHeight:I

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0
.end method

.method getHostVisibility()I
    .registers 2

    .prologue
    .line 684
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x8

    goto :goto_a
.end method

.method public getLastTouchPoint(Landroid/graphics/Point;)V
    .registers 3
    .parameter "outLocation"

    .prologue
    .line 3132
    iget-object v0, p0, Landroid/view/ViewRoot;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 3133
    iget-object v0, p0, Landroid/view/ViewRoot;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 3134
    return-void
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .registers 2

    .prologue
    .line 546
    iget-object v0, p0, Landroid/view/ViewRoot;->mLocation:Landroid/view/WindowLeaked;

    return-object v0
.end method

.method public getParent()Landroid/view/ViewParent;
    .registers 2

    .prologue
    .line 649
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 542
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    return-object v0
.end method

.method handleAppVisibility(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 576
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    if-eq v0, p1, :cond_9

    .line 577
    iput-boolean p1, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    .line 578
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 580
    :cond_9
    return-void
.end method

.method public handleDispatchSystemUiVisibilityChanged(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 3124
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 3129
    :goto_4
    return-void

    .line 3125
    :cond_5
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_d

    .line 3126
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 3128
    :cond_d
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    goto :goto_4
.end method

.method handleGetNewSurface()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 583
    iput-boolean v0, p0, Landroid/view/ViewRoot;->mNewSurfaceNeeded:Z

    .line 584
    iput-boolean v0, p0, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    .line 585
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 586
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "msg"

    .prologue
    .line 2032
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_27c

    .line 2220
    .end local p0
    .end local p1
    :cond_5
    :goto_5
    return-void

    .line 2034
    .restart local p0
    .restart local p1
    :sswitch_6
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_5

    .line 2037
    .restart local p0
    :sswitch_e
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 2038
    .local v11, info:Landroid/view/View$AttachInfo$InvalidateInfo;
    iget-object v1, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iget v2, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iget v3, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iget v4, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iget v5, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    .line 2039
    invoke-virtual {v11}, Landroid/view/View$AttachInfo$InvalidateInfo;->release()V

    goto :goto_5

    .line 2042
    .end local v11           #info:Landroid/view/View$AttachInfo$InvalidateInfo;
    :sswitch_23
    iget-boolean v1, p0, Landroid/view/ViewRoot;->mProfile:Z

    if-eqz v1, :cond_2c

    .line 2043
    const-string v1, "ViewRoot"

    invoke-static {v1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 2046
    :cond_2c
    invoke-direct {p0}, Landroid/view/ViewRoot;->performTraversals()V

    .line 2048
    iget-boolean v1, p0, Landroid/view/ViewRoot;->mProfile:Z

    if-eqz v1, :cond_5

    .line 2049
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 2050
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mProfile:Z

    goto :goto_5

    .line 2054
    :sswitch_3a
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_45

    const/4 v2, 0x1

    :goto_41
    invoke-direct {p0, v1, v2}, Landroid/view/ViewRoot;->handleFinishedEvent(IZ)V

    goto :goto_5

    :cond_45
    const/4 v2, 0x0

    goto :goto_41

    .line 2057
    :sswitch_47
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_54

    const/4 v1, 0x1

    :goto_50
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_5

    :cond_54
    const/4 v1, 0x0

    goto :goto_50

    .line 2060
    :sswitch_56
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_63

    const/4 v1, 0x1

    :goto_5f
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRoot;->deliverPointerEvent(Landroid/view/MotionEvent;Z)V

    goto :goto_5

    :cond_63
    const/4 v1, 0x0

    goto :goto_5f

    .line 2063
    :sswitch_65
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_72

    const/4 v1, 0x1

    :goto_6e
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRoot;->deliverTrackballEvent(Landroid/view/MotionEvent;Z)V

    goto :goto_5

    :cond_72
    const/4 v1, 0x0

    goto :goto_6e

    .line 2066
    :sswitch_74
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_81

    const/4 v1, 0x1

    :goto_7d
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRoot;->deliverGenericMotionEvent(Landroid/view/MotionEvent;Z)V

    goto :goto_5

    :cond_81
    const/4 v1, 0x0

    goto :goto_7d

    .line 2069
    :sswitch_83
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_8d

    const/4 v1, 0x1

    :goto_88
    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->handleAppVisibility(Z)V

    goto/16 :goto_5

    :cond_8d
    const/4 v1, 0x0

    goto :goto_88

    .line 2072
    :sswitch_8f
    invoke-virtual {p0}, Landroid/view/ViewRoot;->handleGetNewSurface()V

    goto/16 :goto_5

    .line 2075
    :sswitch_94
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/view/ViewRoot$ResizedInfo;

    .line 2077
    .local v12, ri:Landroid/view/ViewRoot$ResizedInfo;
    iget-object v1, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_c8

    iget-object v1, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v2, :cond_c8

    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v2, v12, Landroid/view/ViewRoot$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v2, v12, Landroid/view/ViewRoot$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewRoot$ResizedInfo;

    iget-object v1, v0, Landroid/view/ViewRoot$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_5

    .line 2085
    .end local v12           #ri:Landroid/view/ViewRoot$ResizedInfo;
    :cond_c8
    :sswitch_c8
    iget-boolean v1, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v1, :cond_5

    .line 2086
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewRoot$ResizedInfo;

    iget-object v6, v0, Landroid/view/ViewRoot$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    .line 2087
    .local v6, config:Landroid/content/res/Configuration;
    if-eqz v6, :cond_d8

    .line 2088
    const/4 v1, 0x0

    invoke-virtual {p0, v6, v1}, Landroid/view/ViewRoot;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 2090
    :cond_d8
    iget-object v1, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2091
    iget-object v1, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2092
    iget-object v1, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2093
    iget-object v1, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2094
    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewRoot$ResizedInfo;

    iget-object v2, v0, Landroid/view/ViewRoot$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2095
    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewRoot$ResizedInfo;

    iget-object v2, v0, Landroid/view/ViewRoot$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2096
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_10d

    .line 2097
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mReportNextDraw:Z

    .line 2100
    :cond_10d
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_116

    .line 2101
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-static {v1}, Landroid/view/ViewRoot;->forceLayout(Landroid/view/View;)V

    .line 2103
    :cond_116
    invoke-virtual {p0}, Landroid/view/ViewRoot;->requestLayout()V

    goto/16 :goto_5

    .line 2107
    .end local v6           #config:Landroid/content/res/Configuration;
    :sswitch_11b
    iget-boolean v1, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v1, :cond_5

    .line 2108
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1c7

    const/4 v1, 0x1

    move v9, v1

    .line 2109
    .local v9, hasWindowFocus:Z
    :goto_125
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v9, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 2110
    if-eqz v9, :cond_158

    .line 2111
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_1cb

    const/4 v1, 0x1

    move v10, v1

    .line 2112
    .local v10, inTouchMode:Z
    :goto_131
    invoke-direct {p0, v10}, Landroid/view/ViewRoot;->ensureTouchModeLocally(Z)Z

    .line 2114
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v1, :cond_158

    iget-object v1, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_158

    iget-object v1, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_158

    .line 2116
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    .line 2118
    :try_start_149
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget v2, p0, Landroid/view/ViewRoot;->mWidth:I

    iget v3, p0, Landroid/view/ViewRoot;->mHeight:I

    iget-object v4, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, p0, Landroid/view/ViewRoot;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/HardwareRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/SurfaceHolder;)V
    :try_end_158
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_149 .. :try_end_158} :catch_1cf

    .line 2136
    .end local v10           #inTouchMode:Z
    :cond_158
    iget-object v1, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    .line 2139
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2140
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_183

    .line 2141
    if-eqz v9, :cond_177

    if-eqz v0, :cond_177

    iget-boolean v1, p0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    if-eqz v1, :cond_177

    .line 2142
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 2144
    :cond_177
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v1}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 2145
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 2150
    :cond_183
    if-eqz v9, :cond_1bc

    .line 2151
    if-eqz v0, :cond_1a3

    iget-boolean v1, p0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    if-eqz v1, :cond_1a3

    .line 2152
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-boolean v4, p0, Landroid/view/ViewRoot;->mHasHadWindowFocus:Z

    if-nez v4, :cond_201

    const/4 v4, 0x1

    :goto_19c
    iget-object v5, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 2158
    :cond_1a3
    iget-object v1, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0x101

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2160
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2163
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mHasHadWindowFocus:Z

    .line 2166
    :cond_1bc
    if-eqz v9, :cond_5

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 2167
    invoke-direct {p0}, Landroid/view/ViewRoot;->sendAccessibilityEvents()V

    goto/16 :goto_5

    .line 2108
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v9           #hasWindowFocus:Z
    .restart local p1
    :cond_1c7
    const/4 v1, 0x0

    move v9, v1

    goto/16 :goto_125

    .line 2111
    .restart local v9       #hasWindowFocus:Z
    :cond_1cb
    const/4 v1, 0x0

    move v10, v1

    goto/16 :goto_131

    .line 2120
    .restart local v10       #inTouchMode:Z
    :catch_1cf
    move-exception v1

    move-object v7, v1

    .line 2121
    .local v7, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v1, "ViewRoot"

    const-string v2, "OutOfResourcesException locking surface"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2123
    :try_start_1d8
    sget-object v1, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v1

    if-nez v1, :cond_1f0

    .line 2124
    const-string v1, "ViewRoot"

    const-string v2, "No processes killed for memory; killing self"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_1f0
    .catch Landroid/os/RemoteException; {:try_start_1d8 .. :try_end_1f0} :catch_279

    .line 2130
    :cond_1f0
    :goto_1f0
    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/ViewRoot;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/ViewRoot;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5

    .line 2152
    .end local v7           #e:Landroid/view/Surface$OutOfResourcesException;
    .end local v10           #inTouchMode:Z
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_201
    const/4 v4, 0x0

    goto :goto_19c

    .line 2172
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v9           #hasWindowFocus:Z
    :sswitch_203
    invoke-virtual {p0}, Landroid/view/ViewRoot;->doDie()V

    goto/16 :goto_5

    .line 2178
    :sswitch_208
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/view/KeyEvent;

    .line 2179
    .local v8, event:Landroid/view/KeyEvent;
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_21e

    .line 2182
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x9

    invoke-static {v8, v1}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v8

    .line 2184
    :cond_21e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p1
    check-cast p1, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/view/ViewRoot;->deliverKeyEventPostIme(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_5

    .line 2187
    .end local v8           #event:Landroid/view/KeyEvent;
    .restart local p1
    :sswitch_228
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2188
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_5

    .line 2189
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_5

    .line 2193
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local p0
    :sswitch_237
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2194
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_5

    .line 2195
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    goto/16 :goto_5

    .line 2199
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_242
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 2200
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2205
    .restart local p0
    :sswitch_251
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/view/DragEvent;

    .line 2206
    .local v8, event:Landroid/view/DragEvent;
    iget-object v1, p0, Landroid/view/ViewRoot;->mLocalDragState:Ljava/lang/Object;

    iput-object v1, v8, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 2207
    invoke-direct {p0, v8}, Landroid/view/ViewRoot;->handleDragEvent(Landroid/view/DragEvent;)V

    goto/16 :goto_5

    .line 2210
    .end local v8           #event:Landroid/view/DragEvent;
    :sswitch_25e
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->handleDispatchSystemUiVisibilityChanged(I)V

    goto/16 :goto_5

    .line 2213
    :sswitch_265
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/res/Configuration;

    .line 2214
    .restart local v6       #config:Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/view/ViewRoot;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_273

    .line 2215
    iget-object v6, p0, Landroid/view/ViewRoot;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 2217
    :cond_273
    const/4 v1, 0x0

    invoke-virtual {p0, v6, v1}, Landroid/view/ViewRoot;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    goto/16 :goto_5

    .line 2127
    .end local v6           #config:Landroid/content/res/Configuration;
    .restart local v7       #e:Landroid/view/Surface$OutOfResourcesException;
    .restart local v9       #hasWindowFocus:Z
    .restart local v10       #inTouchMode:Z
    :catch_279
    move-exception v1

    goto/16 :goto_1f0

    .line 2032
    :sswitch_data_27c
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_e
        0x3e8 -> :sswitch_23
        0x3e9 -> :sswitch_203
        0x3ea -> :sswitch_94
        0x3eb -> :sswitch_c8
        0x3ec -> :sswitch_11b
        0x3ed -> :sswitch_47
        0x3ee -> :sswitch_56
        0x3ef -> :sswitch_65
        0x3f0 -> :sswitch_83
        0x3f1 -> :sswitch_8f
        0x3f2 -> :sswitch_3a
        0x3f3 -> :sswitch_208
        0x3f4 -> :sswitch_228
        0x3f5 -> :sswitch_237
        0x3f6 -> :sswitch_242
        0x3f7 -> :sswitch_251
        0x3f8 -> :sswitch_251
        0x3f9 -> :sswitch_25e
        0x3fa -> :sswitch_74
        0x3fb -> :sswitch_265
    .end sparse-switch
.end method

.method invalidate()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 635
    iget-object v0, p0, Landroid/view/ViewRoot;->mDirty:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/ViewRoot;->mWidth:I

    iget v2, p0, Landroid/view/ViewRoot;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 636
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 637
    return-void
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 6
    .parameter "child"
    .parameter "dirty"

    .prologue
    const/4 v2, -0x1

    .line 605
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 607
    if-nez p2, :cond_a

    .line 609
    invoke-virtual {p0}, Landroid/view/ViewRoot;->invalidate()V

    .line 632
    :cond_9
    :goto_9
    return-void

    .line 612
    :cond_a
    iget v0, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_36

    .line 613
    :cond_12
    iget-object v0, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 614
    iget-object p2, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    .line 615
    iget v0, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    if-eqz v0, :cond_24

    .line 616
    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 618
    :cond_24
    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_2d

    .line 619
    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 621
    :cond_2d
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v0, :cond_36

    .line 622
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 625
    :cond_36
    iget-object v0, p0, Landroid/view/ViewRoot;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Landroid/view/ViewRoot;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 626
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 628
    :cond_4b
    iget-object v0, p0, Landroid/view/ViewRoot;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 629
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mWillDrawSoon:Z

    if-nez v0, :cond_9

    .line 630
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    goto :goto_9
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 4
    .parameter "location"
    .parameter "dirty"

    .prologue
    const/4 v0, 0x0

    .line 653
    invoke-virtual {p0, v0, p2}, Landroid/view/ViewRoot;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 654
    return-object v0
.end method

.method public isLayoutRequested()Z
    .registers 2

    .prologue
    .line 601
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    return v0
.end method

.method public onHardwarePostDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 1509
    iget-object v0, p0, Landroid/view/ViewRoot;->mResizeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_19

    .line 1510
    iget v0, p0, Landroid/view/ViewRoot;->mHardwareYOffset:I

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1511
    iget-object v0, p0, Landroid/view/ViewRoot;->mResizePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/view/ViewRoot;->mResizeAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1512
    iget-object v0, p0, Landroid/view/ViewRoot;->mResizeBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/view/ViewRoot;->mResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1514
    :cond_19
    return-void
.end method

.method public onHardwarePreDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 1505
    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewRoot;->mHardwareYOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1506
    return-void
.end method

.method public performHapticFeedback(IZ)Z
    .registers 6
    .parameter "effectId"
    .parameter "always"

    .prologue
    .line 3228
    :try_start_0
    sget-object v1, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v1, v2, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(Landroid/view/IWindow;IZ)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 3230
    :goto_8
    return v1

    .line 3229
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 3230
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public playSoundEffect(I)V
    .registers 7
    .parameter "effectId"

    .prologue
    .line 3191
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 3194
    :try_start_3
    invoke-direct {p0}, Landroid/view/ViewRoot;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 3196
    .local v0, audioManager:Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_6c

    .line 3213
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown effect id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not defined in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/view/SoundEffectConstants;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_34
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_34} :catch_34

    .line 3216
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catch_34
    move-exception v2

    move-object v1, v2

    .line 3218
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v2, "ViewRoot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FATAL EXCEPTION when attempting to play sound effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 3221
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :goto_51
    return-void

    .line 3198
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :pswitch_52
    const/4 v2, 0x0

    :try_start_53
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_51

    .line 3201
    :pswitch_57
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_51

    .line 3204
    :pswitch_5c
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_51

    .line 3207
    :pswitch_61
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_51

    .line 3210
    :pswitch_66
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_6a
    .catch Ljava/lang/IllegalStateException; {:try_start_53 .. :try_end_6a} :catch_34

    goto :goto_51

    .line 3196
    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_52
        :pswitch_5c
        :pswitch_66
        :pswitch_61
        :pswitch_57
    .end packed-switch
.end method

.method public profile()V
    .registers 2

    .prologue
    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mProfile:Z

    .line 337
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 1911
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 1912
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_13

    .line 1913
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1914
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mWillDrawSoon:Z

    if-nez v0, :cond_13

    .line 1915
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 1918
    :cond_13
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1861
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 1862
    iget-object v0, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    if-eq v0, p2, :cond_13

    .line 1863
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 1864
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 1866
    :cond_13
    iput-object p2, p0, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    iput-object p2, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1869
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 3500
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRoot;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .parameter "disallowIntercept"

    .prologue
    .line 3496
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 592
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .line 594
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 595
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 1457
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 1458
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_15

    .line 1459
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 1462
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    .line 1463
    invoke-virtual {p0}, Landroid/view/ViewRoot;->requestLayout()V

    .line 1465
    :cond_15
    return-void
.end method

.method public requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "config"

    .prologue
    .line 3289
    const/16 v1, 0x3fb

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewRoot;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3290
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 3291
    return-void
.end method

.method retrievePendingEvent(I)Ljava/lang/Object;
    .registers 4
    .parameter "seq"

    .prologue
    .line 2846
    if-gez p1, :cond_3

    neg-int p1, p1

    .line 2847
    :cond_3
    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2848
    .local v0, event:Ljava/lang/Object;
    if-eqz v0, :cond_10

    .line 2849
    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2851
    :cond_10
    return-object v0
.end method

.method public scheduleTraversals()V
    .registers 2

    .prologue
    .line 670
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    if-nez v0, :cond_c

    .line 671
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    .line 672
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendEmptyMessage(I)Z

    .line 674
    :cond_c
    return-void
.end method

.method scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .registers 13
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1739
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1740
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 1741
    .local v1, ci:Landroid/graphics/Rect;
    iget-object v5, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 1742
    .local v5, vi:Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 1743
    .local v4, scrollY:I
    const/4 v3, 0x0

    .line 1745
    .local v3, handled:Z
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    if-gt v6, v7, :cond_22

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    if-gt v6, v7, :cond_22

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_22

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_41

    .line 1751
    :cond_22
    iget v4, p0, Landroid/view/ViewRoot;->mScrollY:I

    .line 1758
    iget-object v2, p0, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    .line 1763
    .local v2, focus:Landroid/view/View;
    if-eqz v2, :cond_2e

    iget-object v6, v2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eq v6, v7, :cond_32

    .line 1764
    :cond_2e
    iput-object v8, p0, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    move v6, v9

    .line 1857
    .end local v2           #focus:Landroid/view/View;
    :goto_31
    return v6

    .line 1768
    .restart local v2       #focus:Landroid/view/View;
    :cond_32
    iget-object v6, p0, Landroid/view/ViewRoot;->mLastScrolledFocus:Landroid/view/View;

    if-eq v2, v6, :cond_37

    .line 1772
    const/4 p1, 0x0

    .line 1777
    :cond_37
    iget-object v6, p0, Landroid/view/ViewRoot;->mLastScrolledFocus:Landroid/view/View;

    if-ne v2, v6, :cond_6b

    iget-boolean v6, p0, Landroid/view/ViewRoot;->mScrollMayChange:Z

    if-nez v6, :cond_6b

    if-nez p1, :cond_6b

    .line 1843
    .end local v2           #focus:Landroid/view/View;
    :cond_41
    :goto_41
    iget v6, p0, Landroid/view/ViewRoot;->mScrollY:I

    if-eq v4, v6, :cond_69

    .line 1846
    if-nez p2, :cond_e9

    iget-object v6, p0, Landroid/view/ViewRoot;->mResizeBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_e9

    .line 1847
    iget-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    if-nez v6, :cond_5c

    .line 1848
    new-instance v6, Landroid/widget/Scroller;

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    .line 1850
    :cond_5c
    iget-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    iget v7, p0, Landroid/view/ViewRoot;->mScrollY:I

    iget v8, p0, Landroid/view/ViewRoot;->mScrollY:I

    sub-int v8, v4, v8

    invoke-virtual {v6, v9, v7, v9, v8}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1854
    :cond_67
    :goto_67
    iput v4, p0, Landroid/view/ViewRoot;->mScrollY:I

    :cond_69
    move v6, v3

    .line 1857
    goto :goto_31

    .line 1784
    .restart local v2       #focus:Landroid/view/View;
    :cond_6b
    if-eqz v2, :cond_41

    .line 1788
    iput-object v2, p0, Landroid/view/ViewRoot;->mLastScrolledFocus:Landroid/view/View;

    .line 1789
    iput-boolean v9, p0, Landroid/view/ViewRoot;->mScrollMayChange:Z

    .line 1792
    iget-object v6, p0, Landroid/view/ViewRoot;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 1797
    if-nez p1, :cond_af

    .line 1798
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1801
    iget-object v6, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_8f

    .line 1802
    iget-object v6, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v7}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1816
    :cond_8f
    :goto_8f
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/ViewRoot;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 1820
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_b5

    .line 1837
    :cond_ad
    :goto_ad
    const/4 v3, 0x1

    goto :goto_41

    .line 1810
    :cond_af
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_8f

    .line 1826
    :cond_b5
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_c8

    .line 1827
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v4

    sub-int/2addr v6, v7

    sub-int/2addr v4, v6

    goto :goto_ad

    .line 1830
    :cond_c8
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_ad

    .line 1832
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    add-int/2addr v4, v6

    goto :goto_ad

    .line 1851
    .end local v2           #focus:Landroid/view/View;
    :cond_e9
    iget-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    if-eqz v6, :cond_67

    .line 1852
    iget-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_67
.end method

.method public setDragFocus(Landroid/view/View;)V
    .registers 3
    .parameter "newDragTarget"

    .prologue
    .line 3137
    iget-object v0, p0, Landroid/view/ViewRoot;->mCurrentDragView:Landroid/view/View;

    if-eq v0, p1, :cond_6

    .line 3138
    iput-object p1, p0, Landroid/view/ViewRoot;->mCurrentDragView:Landroid/view/View;

    .line 3140
    :cond_6
    return-void
.end method

.method setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .registers 8
    .parameter "attrs"
    .parameter "newView"

    .prologue
    .line 550
    monitor-enter p0

    .line 551
    :try_start_1
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 553
    .local v1, oldSoftInputMode:I
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2000

    and-int v0, v2, v3

    .line 555
    .local v0, compatibleWindowFlag:I
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 556
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 558
    if-eqz p2, :cond_22

    .line 559
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v2, p0, Landroid/view/ViewRoot;->mSoftInputMode:I

    .line 560
    invoke-virtual {p0}, Landroid/view/ViewRoot;->requestLayout()V

    .line 563
    :cond_22
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, 0xf0

    if-nez v2, :cond_35

    .line 565
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0xf1

    and-int/lit16 v4, v1, 0xf0

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 570
    :cond_35
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    .line 571
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 572
    monitor-exit p0

    .line 573
    return-void

    .line 572
    .end local v0           #compatibleWindowFlag:I
    .end local v1           #oldSoftInputMode:I
    :catchall_3d
    move-exception v2

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method setLocalDragState(Ljava/lang/Object;)V
    .registers 2
    .parameter "obj"

    .prologue
    .line 3041
    iput-object p1, p0, Landroid/view/ViewRoot;->mLocalDragState:Ljava/lang/Object;

    .line 3042
    return-void
.end method

.method setStopped(Z)V
    .registers 3
    .parameter "stopped"

    .prologue
    .line 640
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mStopped:Z

    if-eq v0, p1, :cond_b

    .line 641
    iput-boolean p1, p0, Landroid/view/ViewRoot;->mStopped:Z

    .line 642
    if-nez p1, :cond_b

    .line 643
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 646
    :cond_b
    return-void
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .registers 17
    .parameter "view"
    .parameter "attrs"
    .parameter "panelParentView"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 361
    monitor-enter p0

    .line 362
    :try_start_3
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-nez v1, :cond_23e

    .line 363
    iput-object p1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .line 364
    iget-object v1, p0, Landroid/view/ViewRoot;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v1, p1}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 365
    iget-object v1, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, p2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 366
    iget-object p2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 368
    instance-of v1, p1, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v1, :cond_34

    .line 369
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v1, v0

    invoke-interface {v1}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 371
    iget-object v1, p0, Landroid/view/ViewRoot;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v1, :cond_34

    .line 372
    new-instance v1, Landroid/view/ViewRoot$TakenSurfaceHolder;

    invoke-direct {v1, p0}, Landroid/view/ViewRoot$TakenSurfaceHolder;-><init>(Landroid/view/ViewRoot;)V

    iput-object v1, p0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 373
    iget-object v1, p0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    .line 378
    :cond_34
    iget-object v1, p0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v1, :cond_3b

    .line 379
    invoke-direct {p0, p2}, Landroid/view/ViewRoot;->enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V

    .line 382
    :cond_3b
    iget-object v1, p0, Landroid/view/ViewRoot;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v1}, Landroid/view/CompatibilityInfoHolder;->get()Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    .line 383
    .local v7, compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v7}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 385
    iget-object v1, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_52

    .line 386
    iget-object v1, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 389
    :cond_52
    const/4 v10, 0x0

    .line 390
    .local v10, restore:Z
    iget-object v1, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_60

    .line 391
    const/4 v10, 0x1

    .line 392
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 393
    iget-object v1, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 397
    :cond_60
    invoke-virtual {v7}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_70

    .line 398
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 399
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mLastInCompatMode:Z

    .line 402
    :cond_70
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v1, p0, Landroid/view/ViewRoot;->mSoftInputMode:I

    .line 403
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    .line 404
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object p1, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 405
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_112

    move v2, v12

    :goto_82
    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 406
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v2, :cond_115

    const/high16 v2, 0x3f80

    :goto_8c
    iput v2, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 408
    if-eqz p3, :cond_98

    .line 409
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 412
    :cond_98
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mAdded:Z

    .line 418
    invoke-virtual {p0}, Landroid/view/ViewRoot;->requestLayout()V

    .line 419
    new-instance v1, Landroid/view/InputChannel;

    invoke-direct {v1}, Landroid/view/InputChannel;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;
    :try_end_a5
    .catchall {:try_start_3 .. :try_end_a5} :catchall_10f

    .line 421
    :try_start_a5
    sget-object v1, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewRoot;->getHostVisibility()I

    move-result v4

    iget-object v5, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface/range {v1 .. v6}, Landroid/view/IWindowSession;->add(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I
    :try_end_b8
    .catchall {:try_start_a5 .. :try_end_b8} :catchall_13c
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_b8} :catch_11b

    move-result v9

    .line 433
    .local v9, res:I
    if-eqz v10, :cond_be

    .line 434
    :try_start_bb
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 438
    :cond_be
    iget-object v1, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_cb

    .line 439
    iget-object v1, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v2, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 441
    :cond_cb
    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 442
    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 444
    if-gez v9, :cond_20b

    .line 445
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .line 446
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 447
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mAdded:Z

    .line 448
    iget-object v1, p0, Landroid/view/ViewRoot;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 449
    invoke-virtual {p0}, Landroid/view/ViewRoot;->unscheduleTraversals()V

    .line 450
    packed-switch v9, :pswitch_data_250

    .line 481
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- unknown error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 501
    .end local v7           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v9           #res:I
    .end local v10           #restore:Z
    :catchall_10f
    move-exception v1

    monitor-exit p0
    :try_end_111
    .catchall {:try_start_bb .. :try_end_111} :catchall_10f

    throw v1

    .restart local v7       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v10       #restore:Z
    :cond_112
    move v2, v11

    .line 405
    goto/16 :goto_82

    .line 406
    :cond_115
    :try_start_115
    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v2, v2, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F
    :try_end_119
    .catchall {:try_start_115 .. :try_end_119} :catchall_10f

    goto/16 :goto_8c

    .line 424
    :catch_11b
    move-exception v1

    move-object v8, v1

    .line 425
    .local v8, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    :try_start_11e
    iput-boolean v1, p0, Landroid/view/ViewRoot;->mAdded:Z

    .line 426
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .line 427
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 428
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    .line 429
    iget-object v1, p0, Landroid/view/ViewRoot;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 430
    invoke-virtual {p0}, Landroid/view/ViewRoot;->unscheduleTraversals()V

    .line 431
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Adding window failed"

    invoke-direct {v1, v2, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_13c
    .catchall {:try_start_11e .. :try_end_13c} :catchall_13c

    .line 433
    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_13c
    move-exception v1

    if-eqz v10, :cond_142

    .line 434
    :try_start_13f
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 433
    :cond_142
    throw v1

    .line 453
    .restart local v9       #res:I
    :pswitch_143
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid; is your activity running?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 457
    :pswitch_164
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not for an application"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 461
    :pswitch_185
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- app for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is exiting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :pswitch_1a6
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has already been added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 471
    :pswitch_1c7
    monitor-exit p0

    .line 502
    .end local v7           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v9           #res:I
    .end local v10           #restore:Z
    :goto_1c8
    return-void

    .line 473
    .restart local v7       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v9       #res:I
    .restart local v10       #restore:Z
    :pswitch_1c9
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- another window of this type already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 477
    :pswitch_1ea
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- permission denied for this window type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 485
    :cond_20b
    instance-of v1, p1, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v1, :cond_219

    .line 486
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v1, v0

    invoke-interface {v1}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 489
    :cond_219
    iget-object v1, p0, Landroid/view/ViewRoot;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v1, :cond_240

    .line 490
    new-instance v1, Landroid/view/InputQueue;

    iget-object v2, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    invoke-direct {v1, v2}, Landroid/view/InputQueue;-><init>(Landroid/view/InputChannel;)V

    iput-object v1, p0, Landroid/view/ViewRoot;->mInputQueue:Landroid/view/InputQueue;

    .line 491
    iget-object v1, p0, Landroid/view/ViewRoot;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v2, p0, Landroid/view/ViewRoot;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v1, v2}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    .line 497
    :goto_22d
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 498
    and-int/lit8 v1, v9, 0x1

    if-eqz v1, :cond_24c

    move v1, v12

    :goto_235
    iput-boolean v1, p0, Landroid/view/ViewRoot;->mAddedTouchMode:Z

    .line 499
    and-int/lit8 v1, v9, 0x2

    if-eqz v1, :cond_24e

    move v1, v12

    :goto_23c
    iput-boolean v1, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    .line 501
    .end local v7           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v9           #res:I
    .end local v10           #restore:Z
    :cond_23e
    monitor-exit p0

    goto :goto_1c8

    .line 493
    .restart local v7       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v9       #res:I
    .restart local v10       #restore:Z
    :cond_240
    iget-object v1, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Landroid/view/ViewRoot;->mInputHandler:Landroid/view/InputHandler;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V
    :try_end_24b
    .catchall {:try_start_13f .. :try_end_24b} :catchall_10f

    goto :goto_22d

    :cond_24c
    move v1, v11

    .line 498
    goto :goto_235

    :cond_24e
    move v1, v11

    .line 499
    goto :goto_23c

    .line 450
    :pswitch_data_250
    .packed-switch -0x8
        :pswitch_1ea
        :pswitch_1c9
        :pswitch_1c7
        :pswitch_1a6
        :pswitch_185
        :pswitch_164
        :pswitch_143
        :pswitch_143
    .end packed-switch
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 3
    .parameter "originalView"

    .prologue
    .line 3474
    const/4 v0, 0x0

    return v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4
    .parameter "originalView"
    .parameter "callback"

    .prologue
    .line 3478
    const/4 v0, 0x0

    return-object v0
.end method

.method public unscheduleTraversals()V
    .registers 2

    .prologue
    .line 677
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    if-eqz v0, :cond_c

    .line 678
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    .line 679
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->removeMessages(I)V

    .line 681
    :cond_c
    return-void
.end method

.method updateConfiguration(Landroid/content/res/Configuration;Z)V
    .registers 9
    .parameter "config"
    .parameter "force"

    .prologue
    .line 1961
    iget-object v3, p0, Landroid/view/ViewRoot;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v3}, Landroid/view/CompatibilityInfoHolder;->getIfNeeded()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 1962
    .local v0, ci:Landroid/content/res/CompatibilityInfo;
    if-eqz v0, :cond_11

    .line 1963
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1964
    .end local p1
    .local v1, config:Landroid/content/res/Configuration;
    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(Landroid/content/res/Configuration;)V

    move-object p1, v1

    .line 1967
    .end local v1           #config:Landroid/content/res/Configuration;
    .restart local p1
    :cond_11
    sget-object v4, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1968
    :try_start_14
    sget-object v3, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int v2, v3, v5

    .local v2, i:I
    :goto_1d
    if-ltz v2, :cond_2d

    .line 1969
    sget-object v3, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentCallbacks;

    invoke-interface {v3, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1968
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 1971
    :cond_2d
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_55

    .line 1972
    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v3, :cond_54

    .line 1976
    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v3, :cond_40

    .line 1977
    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 1979
    :cond_40
    if-nez p2, :cond_4a

    iget-object v3, p0, Landroid/view/ViewRoot;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    if-eqz v3, :cond_54

    .line 1980
    :cond_4a
    iget-object v3, p0, Landroid/view/ViewRoot;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1981
    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1984
    :cond_54
    return-void

    .line 1971
    .end local v2           #i:I
    :catchall_55
    move-exception v3

    :try_start_56
    monitor-exit v4
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v3
.end method

.method public windowFocusChanged(ZZ)V
    .registers 7
    .parameter "hasFocus"
    .parameter "inTouchMode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3428
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3429
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3ec

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3430
    if-eqz p1, :cond_18

    move v1, v3

    :goto_d
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3431
    if-eqz p2, :cond_1a

    move v1, v3

    :goto_12
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3432
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 3433
    return-void

    :cond_18
    move v1, v2

    .line 3430
    goto :goto_d

    :cond_1a
    move v1, v2

    .line 3431
    goto :goto_12
.end method
