.class public Lcom/android/server/wm/WindowManagerService;
.super Landroid/view/IWindowManager$Stub;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;,
        Lcom/android/server/wm/WindowManagerService$H;,
        Lcom/android/server/wm/WindowManagerService$DummyAnimation;,
        Lcom/android/server/wm/WindowManagerService$PolicyThread;,
        Lcom/android/server/wm/WindowManagerService$WMThread;,
        Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    }
.end annotation


# static fields
.field static final ADJUST_WALLPAPER_LAYERS_CHANGED:I = 0x2

.field static final ADJUST_WALLPAPER_VISIBILITY_CHANGED:I = 0x4

.field private static final ALLOW_DISABLE_NO:I = 0x0

.field private static final ALLOW_DISABLE_UNKNOWN:I = -0x1

.field private static final ALLOW_DISABLE_YES:I = 0x1

.field static final BLUR:Z = true

.field static final CUSTOM_SCREEN_ROTATION:Z = true

.field static final DEBUG:Z = false

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_ANIM:Z = false

.field static final DEBUG_APP_ORIENTATION:Z = false

.field static final DEBUG_APP_TRANSITIONS:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field static final DEBUG_DRAG:Z = false

.field static final DEBUG_FOCUS:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_INPUT_METHOD:Z = false

.field static final DEBUG_LAYERS:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_ORIENTATION:Z = false

.field static final DEBUG_REORDER:Z = false

.field static final DEBUG_RESIZE:Z = false

#the value of this static final field might be set in the static constructor
.field static final DEBUG_SSI_AUTOTEST:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DEBUG_TOKEN_MOVEMENT:Z = false

.field static final DEBUG_VISIBILITY:Z = false

.field static final DEBUG_WALLPAPER:Z = false

.field static final DEBUG_WINDOW_MOVEMENT:Z = false

.field static final DEFAULT_DIM_DURATION:I = 0xc8

.field static final DEFAULT_FADE_IN_OUT_DURATION:I = 0x190

.field static final DEFAULT_INPUT_DISPATCHING_TIMEOUT_NANOS:J = 0x12a05f200L

.field static final FREEZE_LAYER:I = 0x1e8481

.field static final HIDE_STACK_CRAWLS:Z = true

.field private static final INJECTION_TIMEOUT_MILLIS:I = 0x7530

.field private static final INPUT_DEVICES_READY_FOR_SAFE_MODE_DETECTION_TIMEOUT_MILLIS:I = 0x3e8

.field static final LAYER_OFFSET_BLUR:I = 0x2

.field static final LAYER_OFFSET_DIM:I = 0x1

.field static final MASK_LAYER:I = 0x1e8480

.field static final MAX_ANIMATION_DURATION:I = 0x2710

.field static final PROFILE_ORIENTATION:Z = false

.field static final SHOW_SURFACE_ALLOC:Z = false

.field static final SHOW_TRANSACTIONS:Z = false

.field private static final SYSTEM_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final SYSTEM_SECURE:Ljava/lang/String; = "ro.secure"

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field static final UPDATE_FOCUS_NORMAL:I = 0x0

.field static final UPDATE_FOCUS_PLACING_SURFACES:I = 0x2

.field static final UPDATE_FOCUS_WILL_ASSIGN_LAYERS:I = 0x1

.field static final UPDATE_FOCUS_WILL_PLACE_SURFACES:I = 0x3

.field static final WALLPAPER_TIMEOUT:J = 0x96L

.field static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L

.field static final WINDOW_LAYER_MULTIPLIER:I = 0x5

.field static final localLOGV:Z

.field static final sDummyAnimation:Landroid/view/animation/Animation;


# instance fields
.field final mActivityManager:Landroid/app/IActivityManager;

.field private mAllowDisableKeyguard:I

.field mAltOrientation:Z

.field mAnimationPending:Z

.field mAppDisplayHeight:I

.field mAppDisplayWidth:I

.field final mAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mAppTransitionReady:Z

.field mAppTransitionRunning:Z

.field mAppTransitionTimeout:Z

.field mAppsFreezingScreen:I

.field mBaseDisplayHeight:I

.field mBaseDisplayWidth:I

.field final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBlackFrame:Lcom/android/server/wm/BlackFrame;

.field mBlurShown:Z

.field mBlurSurface:Landroid/view/Surface;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mClosingApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

.field mCompatibleScreenScale:F

.field final mContext:Landroid/content/Context;

.field mCurConfiguration:Landroid/content/res/Configuration;

.field mCurDisplayHeight:I

.field mCurDisplayWidth:I

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mDeferredRotation:I

.field mDeferredRotationAnimFlags:I

.field final mDestroySurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mDimAnimator:Lcom/android/server/wm/DimAnimator;

.field mDisplay:Landroid/view/Display;

.field mDisplayEnabled:Z

.field mDisplayFrozen:Z

.field final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mDragInputHandler:Landroid/view/InputHandler;

.field mDragState:Lcom/android/server/wm/DragState;

.field final mExitingAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mFinishedStarting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mFocusMayChange:Z

.field mFocusedApp:Lcom/android/server/wm/AppWindowToken;

.field mForceRemoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mForcedAppOrientation:I

.field mFreezeGcPending:J

.field mFxSession:Landroid/view/SurfaceSession;

.field mH:Lcom/android/server/wm/WindowManagerService$H;

.field mHardKeyboardAvailable:Z

.field mHardKeyboardEnabled:Z

.field mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

.field final mHaveInputMethods:Z

.field mHoldingScreenOn:Lcom/android/server/wm/Session;

.field mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mInLayout:Z

.field mInTouchMode:Z

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field final mInputManager:Lcom/android/server/wm/InputManager;

.field mInputMethodAnimLayerAdjustment:I

.field final mInputMethodDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field mInputMethodTarget:Lcom/android/server/wm/WindowState;

.field mInputMethodTargetWaitingAnim:Z

.field mInputMethodWindow:Lcom/android/server/wm/WindowState;

.field final mInputMonitor:Lcom/android/server/wm/InputMonitor;

.field private mKeyguardDisabled:Z

.field final mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

.field mLastFocus:Lcom/android/server/wm/WindowState;

.field mLastRotationFlags:I

.field mLastWallpaperTimeoutTime:J

.field mLastWallpaperX:F

.field mLastWallpaperXStep:F

.field mLastWallpaperY:F

.field mLastWallpaperYStep:F

.field mLastWindowForcedOrientation:I

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field final mLimitedAlphaCompositing:Z

.field mLosingFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mNextAppTransition:I

.field mNextAppTransitionEnter:I

.field mNextAppTransitionExit:I

.field mNextAppTransitionPackage:Ljava/lang/String;

.field final mOpeningApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPowerManager:Lcom/android/server/PowerManagerService;

.field mRebuildTmp:[Lcom/android/server/wm/WindowState;

.field mRequestedRotation:I

.field final mResizingWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mRotation:I

.field mRotationWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/IRotationWatcher;",
            ">;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

.field mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

.field final mSessions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/wm/Session;",
            ">;"
        }
    .end annotation
.end field

.field mSkipAppTransitionAnimation:Z

.field mStartingIconInTransition:Z

.field mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

.field mSystemBooted:Z

.field final mTempConfiguration:Landroid/content/res/Configuration;

.field final mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mTmpFloats:[F

.field final mToBottomApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mToTopApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mTransactionSequence:I

.field mTransitionAnimationScale:F

.field mTurnOnScreen:Z

.field mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private mViewServer:Lcom/android/server/wm/ViewServer;

.field mWaitingForConfig:Z

.field mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field mWallpaperAnimLayerAdjustment:I

.field mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mWatermark:Lcom/android/server/wm/Watermark;

.field mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

.field mWindowAnimationScale:F

.field private mWindowChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowManagerService$WindowChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

.field final mWindowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowsChanged:Z

.field mWindowsFreezingScreen:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 177
    const-string v0, "ssi.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_15

    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_SSI_AUTOTEST:Z

    .line 6116
    new-instance v0, Lcom/android/server/wm/WindowManagerService$DummyAnimation;

    invoke-direct {v0}, Lcom/android/server/wm/WindowManagerService$DummyAnimation;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    return-void

    :cond_15
    move v0, v1

    .line 177
    goto :goto_b
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)V
    .registers 15
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, -0x1

    const/high16 v8, -0x4080

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 720
    invoke-direct {p0}, Landroid/view/IWindowManager$Stub;-><init>()V

    .line 260
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z

    .line 265
    iput v9, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    .line 267
    new-instance v3, Lcom/android/server/wm/WindowManagerService$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v5, "WindowManagerService.mKeyguardTokenWatcher"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/wm/WindowManagerService$1;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    .line 286
    new-instance v3, Lcom/android/server/wm/WindowManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowManagerService$2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 304
    invoke-static {}, Lcom/android/internal/policy/PolicyManager;->makeNewWindowManager()Landroid/view/WindowManagerPolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 313
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    .line 319
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    .line 324
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    .line 331
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    .line 338
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    .line 344
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    .line 350
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    .line 355
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 362
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 367
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    .line 372
    const/16 v3, 0x14

    new-array v3, v3, [Lcom/android/server/wm/WindowState;

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 377
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    .line 383
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 395
    const/16 v3, 0x14

    new-array v3, v3, [Lcom/android/server/wm/WindowState;

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    .line 400
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 409
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 411
    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 414
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    .line 415
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    .line 416
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 417
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .line 418
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 419
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    .line 420
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 421
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    .line 422
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 423
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 424
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .line 425
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mRequestedRotation:I

    .line 426
    iput v9, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    .line 427
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    .line 429
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    .line 434
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 435
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    .line 436
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 437
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 438
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 439
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/wm/WindowManagerService;->mFreezeGcPending:J

    .line 440
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 441
    iput v9, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    .line 443
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    .line 448
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 460
    iput v9, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    .line 464
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 465
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    .line 466
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    .line 467
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    .line 468
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 469
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    .line 470
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    .line 471
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    .line 472
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    .line 476
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 477
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 478
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 480
    new-instance v3, Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowManagerService$H;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 482
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 483
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 487
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 491
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 492
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    .line 498
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 502
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 505
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 508
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 513
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 514
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    .line 516
    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    .line 517
    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    .line 518
    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    .line 519
    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    .line 530
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 534
    iput v10, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    .line 535
    iput v10, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    .line 545
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 546
    new-instance v3, Lcom/android/server/wm/WindowManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowManagerService$3;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDragInputHandler:Landroid/view/InputHandler;

    .line 607
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 610
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    .line 612
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 619
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 5851
    new-instance v3, Lcom/android/server/wm/InputMonitor;

    invoke-direct {v3, p0}, Lcom/android/server/wm/InputMonitor;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 6880
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    .line 721
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 722
    iput-boolean p3, p0, Lcom/android/server/wm/WindowManagerService;->mHaveInputMethods:Z

    .line 723
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    .line 726
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    .line 727
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v3, v4}, Lcom/android/server/PowerManagerService;->setPolicy(Landroid/view/WindowManagerPolicy;)V

    .line 728
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 729
    .local v1, pmc:Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "SCREEN_FROZEN"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    .line 731
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 733
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 734
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 737
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "window_animation_scale"

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    .line 739
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "transition_animation_scale"

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    .line 743
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 744
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 745
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 747
    const/16 v3, 0xa

    const-string v4, "KEEP_SCREEN_ON_FLAG"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 749
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 751
    new-instance v3, Lcom/android/server/wm/InputManager;

    invoke-direct {v3, p1, p0}, Lcom/android/server/wm/InputManager;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    .line 753
    new-instance v2, Lcom/android/server/wm/WindowManagerService$PolicyThread;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct {v2, v3, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$PolicyThread;-><init>(Landroid/view/WindowManagerPolicy;Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;Lcom/android/server/PowerManagerService;)V

    .line 754
    .local v2, thr:Lcom/android/server/wm/WindowManagerService$PolicyThread;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService$PolicyThread;->start()V

    .line 756
    monitor-enter v2

    .line 757
    :goto_1f2
    :try_start_1f2
    iget-boolean v3, v2, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mRunning:Z
    :try_end_1f4
    .catchall {:try_start_1f2 .. :try_end_1f4} :catchall_20a

    if-nez v3, :cond_1fc

    .line 759
    :try_start_1f6
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1f9
    .catchall {:try_start_1f6 .. :try_end_1f9} :catchall_20a
    .catch Ljava/lang/InterruptedException; {:try_start_1f6 .. :try_end_1f9} :catch_1fa

    goto :goto_1f2

    .line 760
    :catch_1fa
    move-exception v3

    goto :goto_1f2

    .line 763
    :cond_1fc
    :try_start_1fc
    monitor-exit v2
    :try_end_1fd
    .catchall {:try_start_1fc .. :try_end_1fd} :catchall_20a

    .line 765
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v3}, Lcom/android/server/wm/InputManager;->start()V

    .line 768
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 769
    return-void

    .line 763
    :catchall_20a
    move-exception v3

    :try_start_20b
    monitor-exit v2
    :try_end_20c
    .catchall {:try_start_20b .. :try_end_20c} :catchall_20a

    throw v3
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZLcom/android/server/wm/WindowManagerService$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->shouldAllowDisableKeyguard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/WindowManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/wm/WindowManagerService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/WindowManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wm/WindowManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V

    return-void
.end method

.method private addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V
    .registers 31
    .parameter "win"
    .parameter "addToToken"

    .prologue
    .line 823
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v10, v0

    .line 824
    .local v10, client:Landroid/view/IWindow;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v20, v0

    .line 825
    .local v20, token:Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v14, v0

    .line 827
    .local v14, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 828
    .local v3, N:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object v8, v0

    .line 830
    .local v8, attached:Lcom/android/server/wm/WindowState;
    if-nez v8, :cond_255

    .line 831
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 832
    .local v21, tokenWindowsPos:I
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_221

    .line 833
    const/16 v26, 0x1

    sub-int v12, v21, v26

    .line 834
    .local v12, index:I
    if-ltz v12, :cond_e7

    .line 838
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8e

    .line 840
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #N:I
    check-cast v3, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 841
    const/16 v21, 0x0

    .line 962
    .end local v12           #index:I
    :cond_5f
    :goto_5f
    if-eqz p2, :cond_70

    .line 964
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1022
    .end local v21           #tokenWindowsPos:I
    :cond_70
    :goto_70
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8d

    if-eqz p2, :cond_8d

    .line 1023
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    :cond_8d
    return-void

    .line 843
    .restart local v3       #N:I
    .restart local v12       #index:I
    .restart local v21       #tokenWindowsPos:I
    :cond_8e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object v7, v0

    .line 844
    .local v7, atoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v7, :cond_c7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_c7

    .line 846
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #N:I
    check-cast v3, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 847
    add-int/lit8 v21, v21, -0x1

    goto :goto_5f

    .line 849
    .restart local v3       #N:I
    :cond_c7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowManagerService;->findIdxBasedOnAppTokens(Lcom/android/server/wm/WindowState;)I

    move-result v16

    .line 850
    .local v16, newIdx:I
    const/16 v26, -0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_5f

    .line 859
    add-int/lit8 v26, v16, 0x1

    move-object v0, v14

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 860
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_5f

    .line 870
    .end local v7           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v16           #newIdx:I
    :cond_e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 871
    .local v4, NA:I
    const/16 v17, 0x0

    .line 872
    .local v17, pos:Lcom/android/server/wm/WindowState;
    const/16 v26, 0x1

    sub-int v11, v4, v26

    .local v11, i:I
    :goto_f7
    if-ltz v11, :cond_110

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/AppWindowToken;

    .line 874
    .local v19, t:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_156

    .line 875
    add-int/lit8 v11, v11, -0x1

    .line 889
    .end local v19           #t:Lcom/android/server/wm/AppWindowToken;
    :cond_110
    if-eqz v17, :cond_17e

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    .line 892
    .local v7, atoken:Lcom/android/server/wm/WindowToken;
    if-eqz v7, :cond_14b

    .line 893
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 894
    .local v5, NC:I
    if-lez v5, :cond_14b

    .line 895
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 896
    .local v9, bottom:Lcom/android/server/wm/WindowState;
    move-object v0, v9

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v26, v0

    if-gez v26, :cond_14b

    .line 897
    move-object/from16 v17, v9

    .line 901
    .end local v5           #NC:I
    .end local v9           #bottom:Lcom/android/server/wm/WindowState;
    :cond_14b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_5f

    .line 882
    .end local v7           #atoken:Lcom/android/server/wm/WindowToken;
    .restart local v19       #t:Lcom/android/server/wm/AppWindowToken;
    :cond_156
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    move/from16 v26, v0

    if-nez v26, :cond_178

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_178

    .line 883
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #pos:Lcom/android/server/wm/WindowState;
    check-cast v17, Lcom/android/server/wm/WindowState;

    .line 872
    .restart local v17       #pos:Lcom/android/server/wm/WindowState;
    :cond_178
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_f7

    .line 912
    .local v6, NW:I
    :cond_17c
    add-int/lit8 v11, v11, -0x1

    .line 905
    .end local v6           #NW:I
    .end local v19           #t:Lcom/android/server/wm/AppWindowToken;
    :cond_17e
    if-ltz v11, :cond_1ab

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/AppWindowToken;

    .line 907
    .restart local v19       #t:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 908
    .restart local v6       #NW:I
    if-lez v6, :cond_17c

    .line 909
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    sub-int v27, v6, v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #pos:Lcom/android/server/wm/WindowState;
    check-cast v17, Lcom/android/server/wm/WindowState;

    .line 914
    .end local v6           #NW:I
    .end local v19           #t:Lcom/android/server/wm/AppWindowToken;
    .restart local v17       #pos:Lcom/android/server/wm/WindowState;
    :cond_1ab
    if-eqz v17, :cond_1f4

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    .line 918
    .restart local v7       #atoken:Lcom/android/server/wm/WindowToken;
    if-eqz v7, :cond_1e9

    .line 919
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 920
    .restart local v5       #NC:I
    if-lez v5, :cond_1e9

    .line 921
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    sub-int v27, v5, v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/WindowState;

    .line 922
    .local v22, top:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v26, v0

    if-ltz v26, :cond_1e9

    .line 923
    move-object/from16 v17, v22

    .line 927
    .end local v5           #NC:I
    .end local v22           #top:Lcom/android/server/wm/WindowState;
    :cond_1e9
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_5f

    .line 930
    .end local v7           #atoken:Lcom/android/server/wm/WindowToken;
    :cond_1f4
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move v15, v0

    .line 931
    .local v15, myLayer:I
    const/4 v11, 0x0

    :goto_1fa
    if-ge v11, v3, :cond_20d

    .line 932
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowState;

    .line 933
    .local v23, w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v26, v0

    move/from16 v0, v26

    move v1, v15

    if-le v0, v1, :cond_21e

    .line 941
    .end local v23           #w:Lcom/android/server/wm/WindowState;
    :cond_20d
    move-object v0, v14

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 942
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_5f

    .line 931
    .restart local v23       #w:Lcom/android/server/wm/WindowState;
    :cond_21e
    add-int/lit8 v11, v11, 0x1

    goto :goto_1fa

    .line 948
    .end local v4           #NA:I
    .end local v11           #i:I
    .end local v12           #index:I
    .end local v15           #myLayer:I
    .end local v17           #pos:Lcom/android/server/wm/WindowState;
    .end local v23           #w:Lcom/android/server/wm/WindowState;
    :cond_221
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move v15, v0

    .line 949
    .restart local v15       #myLayer:I
    const/16 v26, 0x1

    sub-int v11, v3, v26

    .end local v3           #N:I
    .restart local v11       #i:I
    :goto_22a
    if-ltz v11, :cond_23e

    .line 950
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    move-object v0, v3

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v26, v0

    move/from16 v0, v26

    move v1, v15

    if-gt v0, v1, :cond_252

    .line 951
    add-int/lit8 v11, v11, 0x1

    .line 955
    :cond_23e
    if-gez v11, :cond_241

    const/4 v11, 0x0

    .line 959
    :cond_241
    move-object v0, v14

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 960
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_5f

    .line 949
    :cond_252
    add-int/lit8 v11, v11, -0x1

    goto :goto_22a

    .line 970
    .end local v11           #i:I
    .end local v15           #myLayer:I
    .end local v21           #tokenWindowsPos:I
    .restart local v3       #N:I
    :cond_255
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 971
    .restart local v4       #NA:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v18, v0

    .line 972
    .local v18, sublayer:I
    const/high16 v13, -0x8000

    .line 973
    .local v13, largestSublayer:I
    const/16 v25, 0x0

    .line 974
    .local v25, windowWithLargestSublayer:Lcom/android/server/wm/WindowState;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_26a
    if-ge v11, v4, :cond_2af

    .line 975
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowState;

    .line 976
    .restart local v23       #w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v24, v0

    .line 977
    .local v24, wSublayer:I
    move/from16 v0, v24

    move v1, v13

    if-lt v0, v1, :cond_28a

    .line 978
    move/from16 v13, v24

    .line 979
    move-object/from16 v25, v23

    .line 981
    :cond_28a
    if-gez v18, :cond_2cf

    .line 984
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_2ef

    .line 985
    if-eqz p2, :cond_2a2

    .line 987
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 989
    :cond_2a2
    if-ltz v24, :cond_2cc

    move-object/from16 v26, v8

    :goto_2a6
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 1006
    .end local v23           #w:Lcom/android/server/wm/WindowState;
    .end local v24           #wSublayer:I
    :cond_2af
    :goto_2af
    if-lt v11, v4, :cond_70

    .line 1007
    if-eqz p2, :cond_2c0

    .line 1009
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    :cond_2c0
    if-gez v18, :cond_2f3

    .line 1012
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_70

    .restart local v23       #w:Lcom/android/server/wm/WindowState;
    .restart local v24       #wSublayer:I
    :cond_2cc
    move-object/from16 v26, v23

    .line 989
    goto :goto_2a6

    .line 996
    :cond_2cf
    move/from16 v0, v24

    move/from16 v1, v18

    if-le v0, v1, :cond_2ef

    .line 997
    if-eqz p2, :cond_2e5

    .line 999
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1001
    :cond_2e5
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto :goto_2af

    .line 974
    :cond_2ef
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_26a

    .line 1014
    .end local v23           #w:Lcom/android/server/wm/WindowState;
    .end local v24           #wSublayer:I
    :cond_2f3
    if-ltz v13, :cond_302

    move-object/from16 v26, v25

    :goto_2f7
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_70

    :cond_302
    move-object/from16 v26, v8

    goto :goto_2f7
.end method

.method private applyAnimationLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z
    .registers 9
    .parameter "wtoken"
    .parameter "lp"
    .parameter "transit"
    .parameter "enter"

    .prologue
    .line 2932
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_97

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_97

    .line 2934
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v2, :cond_28

    .line 2935
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p4, :cond_25

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionEnter:I

    :goto_16
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2997
    .local v0, a:Landroid/view/animation/Animation;
    :goto_1a
    if-eqz v0, :cond_1f

    .line 3006
    invoke-virtual {p1, v0}, Lcom/android/server/wm/AppWindowToken;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3012
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_1f
    :goto_1f
    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_9b

    const/4 v2, 0x1

    :goto_24
    return v2

    .line 2935
    :cond_25
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionExit:I

    goto :goto_16

    .line 2938
    :cond_28
    const/4 v1, 0x0

    .line 2939
    .local v1, animAttr:I
    sparse-switch p3, :sswitch_data_9e

    .line 2991
    :goto_2c
    if-eqz v1, :cond_94

    invoke-direct {p0, p2, v1}, Lcom/android/server/wm/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object v0, v2

    .restart local v0       #a:Landroid/view/animation/Animation;
    :goto_33
    goto :goto_1a

    .line 2941
    .end local v0           #a:Landroid/view/animation/Animation;
    :sswitch_34
    if-eqz p4, :cond_39

    const/4 v2, 0x4

    move v1, v2

    .line 2944
    :goto_38
    goto :goto_2c

    .line 2941
    :cond_39
    const/4 v2, 0x5

    move v1, v2

    goto :goto_38

    .line 2946
    :sswitch_3c
    if-eqz p4, :cond_41

    const/4 v2, 0x6

    move v1, v2

    .line 2949
    :goto_40
    goto :goto_2c

    .line 2946
    :cond_41
    const/4 v2, 0x7

    move v1, v2

    goto :goto_40

    .line 2951
    :sswitch_44
    if-eqz p4, :cond_4a

    const/16 v2, 0x8

    move v1, v2

    .line 2954
    :goto_49
    goto :goto_2c

    .line 2951
    :cond_4a
    const/16 v2, 0x9

    move v1, v2

    goto :goto_49

    .line 2956
    :sswitch_4e
    if-eqz p4, :cond_54

    const/16 v2, 0xa

    move v1, v2

    .line 2959
    :goto_53
    goto :goto_2c

    .line 2956
    :cond_54
    const/16 v2, 0xb

    move v1, v2

    goto :goto_53

    .line 2961
    :sswitch_58
    if-eqz p4, :cond_5e

    const/16 v2, 0xc

    move v1, v2

    .line 2964
    :goto_5d
    goto :goto_2c

    .line 2961
    :cond_5e
    const/16 v2, 0xd

    move v1, v2

    goto :goto_5d

    .line 2966
    :sswitch_62
    if-eqz p4, :cond_68

    const/16 v2, 0xe

    move v1, v2

    .line 2969
    :goto_67
    goto :goto_2c

    .line 2966
    :cond_68
    const/16 v2, 0xf

    move v1, v2

    goto :goto_67

    .line 2971
    :sswitch_6c
    if-eqz p4, :cond_72

    const/16 v2, 0x10

    move v1, v2

    .line 2974
    :goto_71
    goto :goto_2c

    .line 2971
    :cond_72
    const/16 v2, 0x11

    move v1, v2

    goto :goto_71

    .line 2976
    :sswitch_76
    if-eqz p4, :cond_7c

    const/16 v2, 0x12

    move v1, v2

    .line 2979
    :goto_7b
    goto :goto_2c

    .line 2976
    :cond_7c
    const/16 v2, 0x13

    move v1, v2

    goto :goto_7b

    .line 2981
    :sswitch_80
    if-eqz p4, :cond_86

    const/16 v2, 0x14

    move v1, v2

    .line 2984
    :goto_85
    goto :goto_2c

    .line 2981
    :cond_86
    const/16 v2, 0x15

    move v1, v2

    goto :goto_85

    .line 2986
    :sswitch_8a
    if-eqz p4, :cond_90

    const/16 v2, 0x16

    move v1, v2

    :goto_8f
    goto :goto_2c

    :cond_90
    const/16 v2, 0x17

    move v1, v2

    goto :goto_8f

    .line 2991
    :cond_94
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_33

    .line 3009
    .end local v1           #animAttr:I
    :cond_97
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->clearAnimation()V

    goto :goto_1f

    .line 3012
    :cond_9b
    const/4 v2, 0x0

    goto :goto_24

    .line 2939
    nop

    :sswitch_data_9e
    .sparse-switch
        0x1006 -> :sswitch_34
        0x1008 -> :sswitch_44
        0x100a -> :sswitch_58
        0x100d -> :sswitch_6c
        0x100e -> :sswitch_80
        0x2007 -> :sswitch_3c
        0x2009 -> :sswitch_4e
        0x200b -> :sswitch_62
        0x200c -> :sswitch_76
        0x200f -> :sswitch_8a
    .end sparse-switch
.end method

.method private final assignLayersLocked()V
    .registers 8

    .prologue
    .line 6840
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6841
    .local v0, N:I
    const/4 v1, 0x0

    .line 6842
    .local v1, curBaseLayer:I
    const/4 v2, 0x0

    .line 6851
    .local v2, curLayer:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_9
    if-ge v3, v0, :cond_65

    .line 6852
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 6853
    .local v4, w:Lcom/android/server/wm/WindowState;
    iget v5, v4, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-eq v5, v1, :cond_21

    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v5, :cond_21

    if-lez v3, :cond_40

    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_40

    .line 6855
    :cond_21
    add-int/lit8 v2, v2, 0x5

    .line 6856
    iput v2, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 6861
    :goto_25
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_46

    .line 6862
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v6, v6, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    .line 6868
    :goto_32
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v5, :cond_59

    .line 6869
    iget v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    .line 6851
    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 6858
    :cond_40
    iget v2, v4, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move v1, v2

    .line 6859
    iput v2, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_25

    .line 6863
    :cond_46
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_54

    .line 6864
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v6, v6, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_32

    .line 6866
    :cond_54
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_32

    .line 6870
    :cond_59
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_3d

    .line 6871
    iget v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_3d

    .line 6878
    .end local v4           #w:Lcom/android/server/wm/WindowState;
    :cond_65
    return-void
.end method

.method static canBeImeTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .parameter "w"

    .prologue
    const v2, 0x20008

    .line 1028
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v1, v2

    .line 1030
    .local v0, fl:I
    if-eqz v0, :cond_14

    if-eq v0, v2, :cond_14

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 1044
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v1

    .line 1046
    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method private computeCompatSmallestWidth(ZLandroid/util/DisplayMetrics;II)I
    .registers 17
    .parameter "rotated"
    .parameter "dm"
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 5574
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, p2}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 5575
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 5577
    if-eqz p1, :cond_2f

    .line 5578
    move/from16 v4, p4

    .line 5579
    .local v4, unrotDw:I
    move v5, p3

    .line 5584
    .local v5, unrotDh:I
    :goto_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    .line 5585
    .local v7, sw:I
    const/4 v8, 0x1

    move-object v6, p0

    move-object v9, p2

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    .line 5586
    const/4 v2, 0x2

    move-object v0, p0

    move v1, v7

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    .line 5587
    const/4 v8, 0x3

    move-object v6, p0

    move-object v9, p2

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    .line 5588
    return v7

    .line 5581
    .end local v4           #unrotDw:I
    .end local v5           #unrotDh:I
    .end local v7           #sw:I
    :cond_2f
    move v4, p3

    .line 5582
    .restart local v4       #unrotDw:I
    move/from16 v5, p4

    .restart local v5       #unrotDh:I
    goto :goto_c
.end method

.method private computeFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 8621
    const/4 v4, 0x0

    .line 8624
    .local v4, result:Lcom/android/server/wm/WindowState;
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    .line 8625
    .local v0, i:I
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v2, v7, v8

    .line 8626
    .local v2, nextAppIndex:I
    if-ltz v2, :cond_33

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    move-object v1, v7

    .line 8629
    .local v1, nextApp:Lcom/android/server/wm/WindowToken;
    :goto_1e
    if-ltz v0, :cond_69

    .line 8630
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 8638
    .local v6, win:Lcom/android/server/wm/WindowState;
    iget-object v5, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 8641
    .local v5, thisApp:Lcom/android/server/wm/AppWindowToken;
    if-eqz v5, :cond_35

    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v7, :cond_35

    .line 8642
    add-int/lit8 v0, v0, -0x1

    .line 8643
    goto :goto_1e

    .end local v1           #nextApp:Lcom/android/server/wm/WindowToken;
    .end local v5           #thisApp:Lcom/android/server/wm/AppWindowToken;
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :cond_33
    move-object v1, v9

    .line 8626
    goto :goto_1e

    .line 8649
    .restart local v1       #nextApp:Lcom/android/server/wm/WindowToken;
    .restart local v5       #thisApp:Lcom/android/server/wm/AppWindowToken;
    .restart local v6       #win:Lcom/android/server/wm/WindowState;
    :cond_35
    if-eqz v5, :cond_62

    if-eqz v1, :cond_62

    if-eq v5, v1, :cond_62

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_62

    .line 8651
    move v3, v2

    .line 8652
    .local v3, origAppIndex:I
    :cond_43
    if-lez v2, :cond_57

    .line 8653
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v1, v7, :cond_4b

    move-object v7, v9

    .line 8686
    .end local v3           #origAppIndex:I
    .end local v5           #thisApp:Lcom/android/server/wm/AppWindowToken;
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :goto_4a
    return-object v7

    .line 8660
    .restart local v3       #origAppIndex:I
    .restart local v5       #thisApp:Lcom/android/server/wm/AppWindowToken;
    .restart local v6       #win:Lcom/android/server/wm/WindowState;
    :cond_4b
    add-int/lit8 v2, v2, -0x1

    .line 8661
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #nextApp:Lcom/android/server/wm/WindowToken;
    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 8662
    .restart local v1       #nextApp:Lcom/android/server/wm/WindowToken;
    if-ne v1, v5, :cond_43

    .line 8666
    :cond_57
    if-eq v5, v1, :cond_62

    .line 8670
    move v2, v3

    .line 8671
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #nextApp:Lcom/android/server/wm/WindowToken;
    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 8676
    .end local v3           #origAppIndex:I
    .restart local v1       #nextApp:Lcom/android/server/wm/WindowToken;
    :cond_62
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 8679
    move-object v4, v6

    .end local v5           #thisApp:Lcom/android/server/wm/AppWindowToken;
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :cond_69
    move-object v7, v4

    .line 8686
    goto :goto_4a

    .line 8683
    .restart local v5       #thisApp:Lcom/android/server/wm/AppWindowToken;
    .restart local v6       #win:Lcom/android/server/wm/WindowState;
    :cond_6b
    add-int/lit8 v0, v0, -0x1

    .line 8684
    goto :goto_1e
.end method

.method private computeSmallestWidth(ZIIF)I
    .registers 9
    .parameter "rotated"
    .parameter "dw"
    .parameter "dh"
    .parameter "density"

    .prologue
    .line 5547
    if-eqz p1, :cond_19

    .line 5548
    move v2, p3

    .line 5549
    .local v2, unrotDw:I
    move v1, p2

    .line 5554
    .local v1, unrotDh:I
    :goto_4
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, p4, v2}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFI)I

    move-result v0

    .line 5555
    .local v0, sw:I
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, p4, v1}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFI)I

    move-result v0

    .line 5556
    const/4 v3, 0x2

    invoke-direct {p0, v0, v3, p4, v2}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFI)I

    move-result v0

    .line 5557
    const/4 v3, 0x3

    invoke-direct {p0, v0, v3, p4, v1}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFI)I

    move-result v0

    .line 5558
    return v0

    .line 5551
    .end local v0           #sw:I
    .end local v1           #unrotDh:I
    .end local v2           #unrotDw:I
    :cond_19
    move v2, p2

    .line 5552
    .restart local v2       #unrotDw:I
    move v1, p3

    .restart local v1       #unrotDh:I
    goto :goto_4
.end method

.method private findIdxBasedOnAppTokens(Lcom/android/server/wm/WindowState;)I
    .registers 9
    .parameter "win"

    .prologue
    const/4 v6, -0x1

    .line 808
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 809
    .local v2, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 810
    .local v1, jmax:I
    if-nez v1, :cond_b

    move v4, v6

    .line 819
    :goto_a
    return v4

    .line 813
    :cond_b
    const/4 v4, 0x1

    sub-int v0, v1, v4

    .local v0, j:I
    :goto_e
    if-ltz v0, :cond_21

    .line 814
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 815
    .local v3, wentry:Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v4, v5, :cond_1e

    move v4, v0

    .line 816
    goto :goto_a

    .line 813
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .end local v3           #wentry:Lcom/android/server/wm/WindowState;
    :cond_21
    move v4, v6

    .line 819
    goto :goto_a
.end method

.method private findWindow(I)Lcom/android/server/wm/WindowState;
    .registers 8
    .parameter "hashCode"

    .prologue
    .line 5483
    const/4 v4, -0x1

    if-ne p1, v4, :cond_8

    .line 5484
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 5499
    :goto_7
    return-object v4

    .line 5487
    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 5488
    :try_start_b
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 5489
    .local v3, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5491
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v0, :cond_26

    .line 5492
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 5493
    .local v2, w:Lcom/android/server/wm/WindowState;
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p1, :cond_23

    .line 5494
    monitor-exit v4

    move-object v4, v2

    goto :goto_7

    .line 5491
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 5497
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_26
    monitor-exit v4

    .line 5499
    const/4 v4, 0x0

    goto :goto_7

    .line 5497
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :catchall_29
    move-exception v5

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_29

    throw v5
.end method

.method private findWindowOffsetLocked(I)I
    .registers 12
    .parameter "tokenPos"

    .prologue
    const/4 v9, 0x1

    .line 4134
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4136
    .local v0, NW:I
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt p1, v7, :cond_25

    .line 4137
    move v2, v0

    .line 4138
    .local v2, i:I
    :cond_10
    if-lez v2, :cond_25

    .line 4139
    add-int/lit8 v2, v2, -0x1

    .line 4140
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 4141
    .local v5, win:Lcom/android/server/wm/WindowState;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 4142
    add-int/lit8 v7, v2, 0x1

    .line 4187
    .end local v2           #i:I
    .end local v5           #win:Lcom/android/server/wm/WindowState;
    :goto_24
    return v7

    .line 4147
    :cond_25
    :goto_25
    if-lez p1, :cond_87

    .line 4150
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    sub-int v8, p1, v9

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 4153
    .local v6, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v7, v6, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    if-eqz v7, :cond_38

    .line 4156
    add-int/lit8 p1, p1, -0x1

    .line 4157
    goto :goto_25

    .line 4159
    :cond_38
    iget-object v7, v6, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4160
    .restart local v2       #i:I
    :cond_3e
    if-lez v2, :cond_84

    .line 4161
    add-int/lit8 v2, v2, -0x1

    .line 4162
    iget-object v7, v6, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 4163
    .restart local v5       #win:Lcom/android/server/wm/WindowState;
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4164
    .local v3, j:I
    :cond_50
    if-lez v3, :cond_72

    .line 4165
    add-int/lit8 v3, v3, -0x1

    .line 4166
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4167
    .local v1, cwin:Lcom/android/server/wm/WindowState;
    iget v7, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v7, :cond_50

    .line 4168
    sub-int v4, v0, v9

    .local v4, pos:I
    :goto_62
    if-ltz v4, :cond_50

    .line 4169
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_6f

    .line 4172
    add-int/lit8 v7, v4, 0x1

    goto :goto_24

    .line 4168
    :cond_6f
    add-int/lit8 v4, v4, -0x1

    goto :goto_62

    .line 4177
    .end local v1           #cwin:Lcom/android/server/wm/WindowState;
    .end local v4           #pos:I
    :cond_72
    sub-int v4, v0, v9

    .restart local v4       #pos:I
    :goto_74
    if-ltz v4, :cond_3e

    .line 4178
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_81

    .line 4180
    add-int/lit8 v7, v4, 0x1

    goto :goto_24

    .line 4177
    :cond_81
    add-int/lit8 v4, v4, -0x1

    goto :goto_74

    .line 4184
    .end local v3           #j:I
    .end local v4           #pos:I
    .end local v5           #win:Lcom/android/server/wm/WindowState;
    :cond_84
    add-int/lit8 p1, p1, -0x1

    .line 4185
    goto :goto_25

    .line 4187
    .end local v2           #i:I
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_87
    const/4 v7, 0x0

    goto :goto_24
.end method

.method private finishUpdateFocusedWindowAfterAssignLayersLocked(Z)V
    .registers 4
    .parameter "updateInputWindows"

    .prologue
    .line 8617
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    .line 8618
    return-void
.end method

.method static fixScale(F)F
    .registers 2
    .parameter "scale"

    .prologue
    .line 4520
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_b

    const/4 p0, 0x0

    .line 4522
    :cond_6
    :goto_6
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    .line 4521
    :cond_b
    const/high16 v0, 0x41a0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_6

    const/high16 p0, 0x41a0

    goto :goto_6
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .registers 6
    .parameter "lp"

    .prologue
    .line 2792
    if-eqz p1, :cond_27

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_27

    .line 2796
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object v0, v2

    .line 2797
    .local v0, packageName:Ljava/lang/String;
    :goto_d
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2798
    .local v1, resId:I
    const/high16 v2, -0x100

    and-int/2addr v2, v1

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_18

    .line 2799
    const-string v0, "android"

    .line 2803
    :cond_18
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 2806
    .end local v0           #packageName:Ljava/lang/String;
    .end local v1           #resId:I
    :goto_22
    return-object v2

    .line 2796
    :cond_23
    const-string v2, "android"

    move-object v0, v2

    goto :goto_d

    .line 2806
    :cond_27
    const/4 v2, 0x0

    goto :goto_22
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .registers 5
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 2812
    if-eqz p1, :cond_16

    .line 2813
    const/high16 v0, -0x100

    and-int/2addr v0, p2

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_b

    .line 2814
    const-string p1, "android"

    .line 2818
    :cond_b
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 2821
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private getFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    .prologue
    .line 6052
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 6053
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 6054
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private getFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    .registers 2

    .prologue
    .line 6058
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I
    .registers 8
    .parameter "tokens"
    .parameter "index"
    .parameter "defUnits"
    .parameter "defDps"
    .parameter "dm"

    .prologue
    .line 8810
    array-length v2, p0

    if-ge p1, v2, :cond_14

    .line 8811
    aget-object v0, p0, p1

    .line 8812
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14

    .line 8814
    :try_start_d
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_13

    move-result v1

    .local v1, val:I
    move v2, v1

    .line 8824
    .end local v0           #str:Ljava/lang/String;
    .end local v1           #val:I
    :goto_12
    return v2

    .line 8816
    .restart local v0       #str:Ljava/lang/String;
    :catch_13
    move-exception v2

    .line 8820
    .end local v0           #str:Ljava/lang/String;
    :cond_14
    if-nez p2, :cond_18

    move v2, p3

    .line 8821
    goto :goto_12

    .line 8823
    :cond_18
    int-to-float v2, p3

    invoke-static {p2, v2, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    .restart local v1       #val:I
    move v2, v1

    .line 8824
    goto :goto_12
.end method

.method private isSystemSecure()Z
    .registers 4

    .prologue
    .line 5198
    const-string v0, "1"

    const-string v1, "ro.secure"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "0"

    const-string v1, "ro.debuggable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .registers 8
    .parameter "lp"
    .parameter "animAttr"

    .prologue
    .line 2895
    const/4 v0, 0x0

    .line 2896
    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 2897
    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_14

    .line 2898
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 2899
    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_14

    .line 2900
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 2901
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 2904
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_14
    if-eqz v0, :cond_1b

    .line 2905
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 2907
    :goto_1a
    return-object v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method private loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .registers 7
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 2911
    const/4 v0, 0x0

    .line 2912
    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 2913
    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_e

    .line 2914
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 2915
    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_e

    .line 2916
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 2917
    move v0, p2

    .line 2920
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_e
    if-eqz v0, :cond_15

    .line 2921
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 2923
    :goto_14
    return-object v3

    :cond_15
    const/4 v3, 0x0

    goto :goto_14
.end method

.method static logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .registers 6
    .parameter "w"
    .parameter "msg"
    .parameter "where"

    .prologue
    .line 2339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SURFACE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2341
    .local v0, str:Ljava/lang/String;
    if-eqz p2, :cond_3d

    .line 2342
    const-string v1, "WindowManager"

    invoke-static {v1, v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2346
    :goto_3c
    return-void

    .line 2344
    :cond_3d
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)Lcom/android/server/wm/WindowManagerService;
    .registers 5
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"

    .prologue
    .line 626
    new-instance v0, Lcom/android/server/wm/WindowManagerService$WMThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$WMThread;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)V

    .line 627
    .local v0, thr:Lcom/android/server/wm/WindowManagerService$WMThread;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$WMThread;->start()V

    .line 629
    monitor-enter v0

    .line 630
    :goto_9
    :try_start_9
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService$WMThread;->mService:Lcom/android/server/wm/WindowManagerService;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_17

    if-nez v1, :cond_13

    .line 632
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_17
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_9

    .line 633
    :catch_11
    move-exception v1

    goto :goto_9

    .line 636
    :cond_13
    :try_start_13
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService$WMThread;->mService:Lcom/android/server/wm/WindowManagerService;

    monitor-exit v0

    return-object v1

    .line 637
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private moveAppWindowsLocked(Lcom/android/server/wm/AppWindowToken;IZ)V
    .registers 7
    .parameter "wtoken"
    .parameter "tokenPos"
    .parameter "updateFocusAndLayout"

    .prologue
    const/4 v2, 0x0

    .line 4293
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z

    .line 4296
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v0

    .line 4299
    .local v0, pos:I
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v0

    .line 4301
    if-eqz p3, :cond_28

    .line 4302
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 4303
    const/4 v1, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 4305
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 4307
    :cond_1d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 4308
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4309
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 4311
    :cond_28
    return-void
.end method

.method private moveAppWindowsLocked(Ljava/util/List;I)V
    .registers 10
    .parameter
    .parameter "tokenPos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v6, 0x0

    .line 4315
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4317
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v0, :cond_1c

    .line 4318
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 4319
    .local v3, token:Lcom/android/server/wm/WindowToken;
    if-eqz v3, :cond_19

    .line 4320
    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z

    .line 4317
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4325
    .end local v3           #token:Lcom/android/server/wm/WindowToken;
    :cond_1c
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v2

    .line 4328
    .local v2, pos:I
    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_38

    .line 4329
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 4330
    .restart local v3       #token:Lcom/android/server/wm/WindowToken;
    if-eqz v3, :cond_35

    .line 4331
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v2

    .line 4328
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 4335
    .end local v3           #token:Lcom/android/server/wm/WindowToken;
    :cond_38
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 4336
    const/4 v4, 0x3

    invoke-direct {p0, v4, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v4

    if-nez v4, :cond_47

    .line 4338
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 4340
    :cond_47
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 4341
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4342
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 4345
    return-void
.end method

.method private notifyFocusChanged()V
    .registers 6

    .prologue
    .line 5469
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 5470
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 5471
    monitor-exit v3

    .line 5480
    :cond_c
    return-void

    .line 5473
    :cond_d
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 5474
    .local v2, windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 5475
    .restart local v2       #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2a

    .line 5476
    array-length v0, v2

    .line 5477
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    if-ge v1, v0, :cond_c

    .line 5478
    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->focusChanged()V

    .line 5477
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 5475
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    :catchall_2a
    move-exception v4

    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v4
.end method

.method private notifyWindowsChanged()V
    .registers 6

    .prologue
    .line 5454
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 5455
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 5456
    monitor-exit v3

    .line 5465
    :cond_c
    return-void

    .line 5458
    :cond_d
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 5459
    .local v2, windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 5460
    .restart local v2       #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2a

    .line 5461
    array-length v0, v2

    .line 5462
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    if-ge v1, v0, :cond_c

    .line 5463
    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->windowsChanged()V

    .line 5462
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 5460
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    :catchall_2a
    move-exception v4

    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v4
.end method

.method private final performLayoutAndPlaceSurfacesLocked()V
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 6882
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    if-eqz v7, :cond_e

    .line 6886
    const-string v7, "WindowManager"

    const-string v8, "performLayoutAndPlaceSurfacesLocked called while in layout"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6962
    :cond_d
    :goto_d
    return-void

    .line 6890
    :cond_e
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-nez v7, :cond_d

    .line 6897
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v7, :cond_d

    .line 6902
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    .line 6903
    const/4 v3, 0x0

    .line 6906
    .local v3, recoveringMemory:Z
    :try_start_19
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v7, :cond_65

    .line 6907
    const/4 v3, 0x1

    .line 6909
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1f
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_4f

    .line 6910
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 6911
    .local v6, ws:Lcom/android/server/wm/WindowState;
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Force removing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6912
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-direct {p0, v7, v6}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 6909
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 6914
    .end local v6           #ws:Lcom/android/server/wm/WindowState;
    :cond_4f
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 6915
    const-string v7, "WindowManager"

    const-string v8, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6916
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 6917
    .local v4, tmp:Ljava/lang/Object;
    monitor-enter v4
    :try_end_5f
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_5f} :catch_99

    .line 6919
    const-wide/16 v7, 0xfa

    :try_start_61
    invoke-virtual {v4, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_96
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_64} :catch_eb

    .line 6922
    :goto_64
    :try_start_64
    monitor-exit v4
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_96

    .line 6929
    .end local v2           #i:I
    .end local v4           #tmp:Ljava/lang/Object;
    :cond_65
    :goto_65
    :try_start_65
    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLockedInner(Z)V

    .line 6931
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6932
    .local v0, N:I
    if-lez v0, :cond_de

    .line 6933
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    array-length v7, v7

    if-ge v7, v0, :cond_7b

    .line 6934
    add-int/lit8 v7, v0, 0xa

    new-array v7, v7, [Lcom/android/server/wm/WindowState;

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 6936
    :cond_7b
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 6937
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 6938
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_88
    if-ge v2, v0, :cond_a3

    .line 6939
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    aget-object v5, v7, v2

    .line 6940
    .local v5, w:Lcom/android/server/wm/WindowState;
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-direct {p0, v7, v5}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    :try_end_93
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_93} :catch_d1

    .line 6938
    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    .line 6922
    .end local v0           #N:I
    .end local v5           #w:Lcom/android/server/wm/WindowState;
    .restart local v4       #tmp:Ljava/lang/Object;
    :catchall_96
    move-exception v7

    :try_start_97
    monitor-exit v4
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    :try_start_98
    throw v7
    :try_end_99
    .catch Ljava/lang/RuntimeException; {:try_start_98 .. :try_end_99} :catch_99

    .line 6924
    .end local v2           #i:I
    .end local v4           #tmp:Ljava/lang/Object;
    :catch_99
    move-exception v7

    move-object v1, v7

    .line 6925
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v7, "WindowManager"

    const-string v8, "Unhandled exception while force removing for memory"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_65

    .line 6943
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_a3
    const/4 v7, 0x0

    :try_start_a4
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    .line 6944
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 6945
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 6946
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 6954
    .end local v2           #i:I
    :cond_af
    :goto_af
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    .line 6955
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x13

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 6956
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v9, 0x13

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_cf
    .catch Ljava/lang/RuntimeException; {:try_start_a4 .. :try_end_cf} :catch_d1

    goto/16 :goto_d

    .line 6958
    .end local v0           #N:I
    :catch_d1
    move-exception v7

    move-object v1, v7

    .line 6959
    .restart local v1       #e:Ljava/lang/RuntimeException;
    iput-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    .line 6960
    const-string v7, "WindowManager"

    const-string v8, "Unhandled exception while layout out windows"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 6949
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v0       #N:I
    :cond_de
    const/4 v7, 0x0

    :try_start_df
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    .line 6950
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    if-eqz v7, :cond_af

    .line 6951
    const-wide/16 v7, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/server/wm/WindowManagerService;->requestAnimationLocked(J)V
    :try_end_ea
    .catch Ljava/lang/RuntimeException; {:try_start_df .. :try_end_ea} :catch_d1

    goto :goto_af

    .line 6920
    .end local v0           #N:I
    .restart local v2       #i:I
    .restart local v4       #tmp:Ljava/lang/Object;
    :catch_eb
    move-exception v7

    goto/16 :goto_64
.end method

.method private final performLayoutAndPlaceSurfacesLockedInner(Z)V
    .registers 94
    .parameter "recoveringMemory"

    .prologue
    .line 7085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v5, v0

    if-nez v5, :cond_f

    .line 7086
    const-string v5, "WindowManager"

    const-string v6, "skipping performLayoutAndPlaceSurfacesLockedInner with no mDisplay"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8390
    :goto_e
    return-void

    .line 7090
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v42

    .line 7091
    .local v42, currentTime:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    move/from16 v48, v0

    .line 7092
    .local v48, dw:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    move/from16 v44, v0

    .line 7093
    .local v44, dh:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move/from16 v60, v0

    .line 7094
    .local v60, innerDw:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    move/from16 v59, v0

    .line 7098
    .local v59, innerDh:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    move v5, v0

    if-eqz v5, :cond_41

    .line 7099
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 7100
    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 7105
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v58, v5, v6

    .local v58, i:I
    :goto_4d
    if-ltz v58, :cond_63

    .line 7106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 7105
    add-int/lit8 v58, v58, -0x1

    goto :goto_4d

    .line 7110
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v58, v5, v6

    :goto_6f
    if-ltz v58, :cond_85

    .line 7111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    .line 7110
    add-int/lit8 v58, v58, -0x1

    goto :goto_6f

    .line 7114
    :cond_85
    const/16 v70, 0x1

    .line 7115
    .local v70, orientationChangeComplete:Z
    const/16 v57, 0x0

    .line 7116
    .local v57, holdScreen:Lcom/android/server/wm/Session;
    const/high16 v72, -0x4080

    .line 7117
    .local v72, screenBrightness:F
    const/high16 v35, -0x4080

    .line 7118
    .local v35, buttonBrightness:F
    const/16 v50, 0x0

    .line 7119
    .local v50, focusDisplayed:Z
    const/16 v29, 0x0

    .line 7120
    .local v29, animating:Z
    const/16 v41, 0x0

    .line 7121
    .local v41, createWatermark:Z
    const/16 v80, 0x0

    .line 7122
    .local v80, updateRotation:Z
    const/16 v73, 0x0

    .line 7124
    .local v73, screenRotationFinished:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object v5, v0

    if-nez v5, :cond_aa

    .line 7125
    new-instance v5, Landroid/view/SurfaceSession;

    invoke-direct {v5}, Landroid/view/SurfaceSession;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    .line 7126
    const/16 v41, 0x1

    .line 7131
    :cond_aa
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 7133
    if-eqz v41, :cond_b2

    .line 7134
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->createWatermark()V

    .line 7136
    :cond_b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object v5, v0

    if-eqz v5, :cond_c6

    .line 7137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v48

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Watermark;->positionSurface(II)V

    .line 7139
    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    move-object v5, v0

    if-eqz v5, :cond_da

    .line 7140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v48

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(II)V

    .line 7144
    :cond_da
    const/16 v83, 0x0

    .line 7145
    .local v83, wallpaperForceHidingChanged:Z
    const/16 v71, 0x0

    .line 7146
    .local v71, repeats:I
    const/16 v38, 0x0

    .line 7149
    .local v38, changes:I
    :cond_e0
    add-int/lit8 v71, v71, 0x1

    .line 7150
    const/4 v5, 0x6

    move/from16 v0, v71

    move v1, v5

    if-le v0, v1, :cond_464

    .line 7151
    :try_start_e8
    const-string v5, "WindowManager"

    const-string v6, "Animation repeat aborted after too many iterations"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7152
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7787
    :goto_f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_d65

    const/4 v5, 0x1

    move/from16 v74, v5

    .line 7789
    .local v74, someoneLosingFocus:Z
    :goto_103
    const/16 v66, 0x0

    .line 7790
    .local v66, obscured:Z
    const/16 v34, 0x0

    .line 7791
    .local v34, blurring:Z
    const/16 v46, 0x0

    .line 7792
    .local v46, dimming:Z
    const/16 v40, 0x0

    .line 7793
    .local v40, covered:Z
    const/16 v75, 0x0

    .line 7795
    .local v75, syswin:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 7797
    .local v19, N:I
    const/4 v5, 0x1

    sub-int v58, v19, v5

    :goto_119
    if-ltz v58, :cond_111f

    .line 7798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v81

    check-cast v81, Lcom/android/server/wm/WindowState;

    .line 7800
    .local v81, w:Lcom/android/server/wm/WindowState;
    const/16 v47, 0x0

    .line 7801
    .local v47, displayed:Z
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    .line 7802
    .local v32, attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v31, v0

    .line 7804
    .local v31, attrFlags:I
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_102e

    .line 7819
    invoke-virtual/range {v81 .. v81}, Lcom/android/server/wm/WindowState;->computeShownFrameLocked()V

    .line 7825
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_d6a

    .line 7828
    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v86, v0

    .line 7829
    .local v86, width:I
    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move/from16 v56, v0

    .line 7835
    .local v56, height:I
    :goto_15d
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_1f1

    .line 7836
    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSurfaceX:I

    move v5, v0

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-ne v5, v6, :cond_180

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSurfaceY:I

    move v5, v0

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->top:I
    :try_end_17e
    .catch Ljava/lang/RuntimeException; {:try_start_e8 .. :try_end_17e} :catch_7c1

    if-eq v5, v6, :cond_1ae

    .line 7842
    :cond_180
    :try_start_180
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move v0, v5

    move-object/from16 v1, v81

    iput v0, v1, Lcom/android/server/wm/WindowState;->mSurfaceX:I

    .line 7843
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move v0, v5

    move-object/from16 v1, v81

    iput v0, v1, Lcom/android/server/wm/WindowState;->mSurfaceY:I

    .line 7844
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V
    :try_end_1ae
    .catch Ljava/lang/RuntimeException; {:try_start_180 .. :try_end_1ae} :catch_d7e

    .line 7855
    :cond_1ae
    :goto_1ae
    const/4 v5, 0x1

    move/from16 v0, v86

    move v1, v5

    if-ge v0, v1, :cond_1b6

    .line 7856
    const/16 v86, 0x1

    .line 7858
    :cond_1b6
    const/4 v5, 0x1

    move/from16 v0, v56

    move v1, v5

    if-ge v0, v1, :cond_1be

    .line 7859
    const/16 v56, 0x1

    .line 7862
    :cond_1be
    :try_start_1be
    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSurfaceW:I

    move v5, v0

    move v0, v5

    move/from16 v1, v86

    if-ne v0, v1, :cond_1d2

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSurfaceH:I

    move v5, v0
    :try_end_1cd
    .catch Ljava/lang/RuntimeException; {:try_start_1be .. :try_end_1cd} :catch_7c1

    move v0, v5

    move/from16 v1, v56

    if-eq v0, v1, :cond_1f1

    .line 7867
    :cond_1d2
    const/4 v5, 0x1

    :try_start_1d3
    move v0, v5

    move-object/from16 v1, v81

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mSurfaceResized:Z

    .line 7868
    move/from16 v0, v86

    move-object/from16 v1, v81

    iput v0, v1, Lcom/android/server/wm/WindowState;->mSurfaceW:I

    .line 7869
    move/from16 v0, v56

    move-object/from16 v1, v81

    iput v0, v1, Lcom/android/server/wm/WindowState;->mSurfaceH:I

    .line 7870
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v86

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setSize(II)V
    :try_end_1f1
    .catch Ljava/lang/RuntimeException; {:try_start_1d3 .. :try_end_1f1} :catch_dd8

    .line 7884
    :cond_1f1
    :goto_1f1
    :try_start_1f1
    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    move v5, v0

    if-nez v5, :cond_322

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    move v6, v0

    if-ne v5, v6, :cond_322

    .line 7885
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e2a

    const/4 v5, 0x1

    :goto_215
    move v0, v5

    move-object/from16 v1, v81

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    .line 7887
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e2d

    const/4 v5, 0x1

    :goto_22b
    move v0, v5

    move-object/from16 v1, v81

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    .line 7889
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    if-eq v5, v6, :cond_e30

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    if-eqz v5, :cond_253

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    if-eqz v5, :cond_e30

    :cond_253
    const/4 v5, 0x1

    move/from16 v39, v5

    .line 7900
    .local v39, configChanged:Z
    :goto_256
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mLastCompatFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e35

    const/4 v5, 0x1

    move/from16 v53, v5

    .line 7901
    .local v53, frameChanged:Z
    :goto_269
    if-nez v53, :cond_282

    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    move v5, v0

    if-nez v5, :cond_282

    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    move v5, v0

    if-nez v5, :cond_282

    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSurfaceResized:Z

    move v5, v0

    if-nez v5, :cond_282

    if-eqz v39, :cond_e3a

    .line 7915
    :cond_282
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7916
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mLastCompatFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7917
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7918
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7922
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    move v5, v0

    if-eqz v5, :cond_2ef

    .line 7925
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v81

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 7926
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    move v5, v0

    if-nez v5, :cond_2ef

    .line 7927
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 7930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 7931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object v6, v0

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v10, 0x7d0

    invoke-virtual {v5, v6, v10, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7940
    :cond_2ef
    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_317

    .line 7944
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v81

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    .line 7945
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v81

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    .line 7946
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v81

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    .line 7947
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object v5, v0

    if-eqz v5, :cond_317

    .line 7948
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 7953
    :cond_317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7964
    .end local v39           #configChanged:Z
    .end local v53           #frameChanged:Z
    :cond_322
    :goto_322
    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    move v5, v0

    if-nez v5, :cond_32f

    invoke-virtual/range {v81 .. v81}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v5

    if-nez v5, :cond_e77

    .line 7965
    :cond_32f
    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    move v5, v0

    if-nez v5, :cond_351

    .line 7967
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v81

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    .line 7970
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_351

    .line 7971
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v81

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z
    :try_end_349
    .catch Ljava/lang/RuntimeException; {:try_start_1f1 .. :try_end_349} :catch_7c1

    .line 7973
    :try_start_349
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_351
    .catch Ljava/lang/RuntimeException; {:try_start_349 .. :try_end_351} :catch_e57

    .line 7985
    :cond_351
    :goto_351
    :try_start_351
    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_35e

    .line 7986
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v81

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 8052
    :cond_35e
    :goto_35e
    if-eqz v47, :cond_393

    .line 8053
    if-nez v40, :cond_374

    .line 8054
    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_374

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_374

    .line 8056
    const/16 v40, 0x1

    .line 8059
    :cond_374
    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_38b

    .line 8060
    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    move v5, v0

    if-nez v5, :cond_389

    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    move v5, v0

    if-eqz v5, :cond_1026

    .line 8061
    :cond_389
    const/16 v70, 0x0

    .line 8070
    :cond_38b
    :goto_38b
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 8078
    .end local v56           #height:I
    .end local v86           #width:I
    :cond_393
    :goto_393
    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    move v5, v0

    if-eqz v5, :cond_3a0

    .line 8080
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v81

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 8083
    :cond_3a0
    invoke-virtual/range {v81 .. v81}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v36

    .line 8085
    .local v36, canBeSeen:Z
    if-eqz v74, :cond_3b4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object v5, v0

    move-object/from16 v0, v81

    move-object v1, v5

    if-ne v0, v1, :cond_3b4

    if-eqz v36, :cond_3b4

    .line 8086
    const/16 v50, 0x1

    .line 8089
    :cond_3b4
    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mObscured:Z

    move v5, v0

    move v0, v5

    move/from16 v1, v66

    if-eq v0, v1, :cond_103d

    const/4 v5, 0x1

    move/from16 v67, v5

    .line 8092
    .local v67, obscuredChanged:Z
    :goto_3c1
    move/from16 v0, v66

    move-object/from16 v1, v81

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v66, :cond_451

    .line 8093
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_436

    .line 8094
    move/from16 v0, v31

    and-int/lit16 v0, v0, 0x80

    move v5, v0

    if-eqz v5, :cond_3dd

    .line 8095
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v57, v0

    .line 8097
    :cond_3dd
    if-nez v75, :cond_3fa

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3fa

    const/4 v5, 0x0

    cmpg-float v5, v72, v5

    if-gez v5, :cond_3fa

    .line 8099
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    move/from16 v72, v0

    .line 8101
    :cond_3fa
    if-nez v75, :cond_417

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_417

    const/4 v5, 0x0

    cmpg-float v5, v35, v5

    if-gez v5, :cond_417

    .line 8103
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    move/from16 v35, v0

    .line 8105
    :cond_417
    if-eqz v36, :cond_436

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7d8

    if-eq v5, v6, :cond_434

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7d4

    if-eq v5, v6, :cond_434

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7da

    if-ne v5, v6, :cond_436

    .line 8109
    :cond_434
    const/16 v75, 0x1

    .line 8113
    :cond_436
    if-eqz v36, :cond_1042

    invoke-virtual/range {v81 .. v81}, Lcom/android/server/wm/WindowState;->isOpaqueDrawn()Z

    move-result v5

    if-eqz v5, :cond_1042

    const/4 v5, 0x1

    move/from16 v69, v5

    .line 8114
    .local v69, opaqueDrawn:Z
    :goto_441
    if-eqz v69, :cond_1047

    move-object/from16 v0, v81

    move/from16 v1, v60

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    move-result v5

    if-eqz v5, :cond_1047

    .line 8118
    const/16 v66, 0x1

    .line 8177
    .end local v69           #opaqueDrawn:Z
    :cond_451
    :goto_451
    if-eqz v67, :cond_460

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v81

    if-ne v0, v1, :cond_460

    .line 8181
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperVisibilityLocked()V

    .line 7797
    :cond_460
    add-int/lit8 v58, v58, -0x1

    goto/16 :goto_119

    .line 7156
    .end local v19           #N:I
    .end local v31           #attrFlags:I
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v34           #blurring:Z
    .end local v36           #canBeSeen:Z
    .end local v40           #covered:Z
    .end local v46           #dimming:Z
    .end local v47           #displayed:Z
    .end local v66           #obscured:Z
    .end local v67           #obscuredChanged:Z
    .end local v74           #someoneLosingFocus:Z
    .end local v75           #syswin:Z
    .end local v81           #w:Lcom/android/server/wm/WindowState;
    :cond_464
    and-int/lit8 v5, v38, 0x7

    if-eqz v5, :cond_4a5

    .line 7159
    and-int/lit8 v5, v38, 0x4

    if-eqz v5, :cond_47d

    .line 7160
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_47d

    .line 7161
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 7162
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7165
    :cond_47d
    and-int/lit8 v5, v38, 0x2

    if-eqz v5, :cond_49b

    .line 7167
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v5

    if-eqz v5, :cond_49b

    .line 7168
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 7172
    :cond_49b
    and-int/lit8 v5, v38, 0x1

    if-eqz v5, :cond_4a5

    .line 7173
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7178
    :cond_4a5
    const/4 v5, 0x4

    move/from16 v0, v71

    move v1, v5

    if-ge v0, v1, :cond_4bf

    .line 7179
    if-nez v71, :cond_4bd

    const/4 v5, 0x1

    :goto_4ae
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->performLayoutLockedInner(ZZ)I

    move-result v38

    .line 7180
    if-eqz v38, :cond_4c8

    .line 7783
    :cond_4b9
    :goto_4b9
    if-nez v38, :cond_e0

    goto/16 :goto_f5

    .line 7179
    :cond_4bd
    const/4 v5, 0x0

    goto :goto_4ae

    .line 7184
    :cond_4bf
    const-string v5, "WindowManager"

    const-string v6, "Layout repeat skipped after too many iterations"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7185
    const/16 v38, 0x0

    .line 7188
    :cond_4c8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    move v5, v0

    add-int/lit8 v79, v5, 0x1

    move/from16 v0, v79

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 7192
    .local v79, transactionSequence:I
    const/16 v78, 0x0

    .line 7193
    .local v78, tokensAnimating:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 7194
    .local v20, NAT:I
    const/16 v58, 0x0

    :goto_4e2
    move/from16 v0, v58

    move/from16 v1, v20

    if-ge v0, v1, :cond_508

    .line 7195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    move-object v0, v5

    move-wide/from16 v1, v42

    move/from16 v3, v60

    move/from16 v4, v59

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppWindowToken;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_505

    .line 7197
    const/16 v78, 0x1

    .line 7194
    :cond_505
    add-int/lit8 v58, v58, 0x1

    goto :goto_4e2

    .line 7200
    :cond_508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 7201
    .local v22, NEAT:I
    const/16 v58, 0x0

    :goto_513
    move/from16 v0, v58

    move/from16 v1, v22

    if-ge v0, v1, :cond_539

    .line 7202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    move-object v0, v5

    move-wide/from16 v1, v42

    move/from16 v3, v60

    move/from16 v4, v59

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppWindowToken;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_536

    .line 7204
    const/16 v78, 0x1

    .line 7201
    :cond_536
    add-int/lit8 v58, v58, 0x1

    goto :goto_513

    .line 7214
    :cond_539
    move/from16 v29, v78

    .line 7216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object v5, v0

    if-eqz v5, :cond_55d

    .line 7217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_55d

    .line 7218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimation(J)Z

    move-result v5

    if-eqz v5, :cond_73c

    .line 7219
    const/16 v29, 0x1

    .line 7227
    :cond_55d
    :goto_55d
    const/16 v77, 0x0

    .line 7228
    .local v77, tokenMayBeDrawn:Z
    const/16 v84, 0x0

    .line 7229
    .local v84, wallpaperMayChange:Z
    const/16 v51, 0x0

    .line 7230
    .local v51, forceHiding:Z
    const/16 v90, 0x0

    .line 7231
    .local v90, windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    const/16 v88, 0x0

    .line 7232
    .local v88, windowAnimationBackground:Lcom/android/server/wm/WindowState;
    const/16 v89, 0x0

    .line 7234
    .local v89, windowAnimationBackgroundColor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v48

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->beginAnimationLw(II)V

    .line 7236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 7238
    .restart local v19       #N:I
    const/4 v5, 0x1

    sub-int v58, v19, v5

    :goto_582
    if-ltz v58, :cond_943

    .line 7239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v81

    check-cast v81, Lcom/android/server/wm/WindowState;

    .line 7241
    .restart local v81       #w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    .line 7243
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_6ab

    .line 7245
    move-object/from16 v0, v81

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->commitFinishDrawingLocked(J)Z

    move-result v5

    if-eqz v5, :cond_5b7

    .line 7246
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x10

    and-int/2addr v5, v6

    if-eqz v5, :cond_5b7

    .line 7250
    const/16 v84, 0x1

    .line 7254
    :cond_5b7
    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    move/from16 v85, v0

    .line 7256
    .local v85, wasAnimating:Z
    move/from16 v28, v60

    .line 7257
    .local v28, animDw:I
    move/from16 v27, v59

    .line 7263
    .local v27, animDh:I
    invoke-virtual/range {v81 .. v81}, Lcom/android/server/wm/WindowState;->shouldAnimateMove()Z

    move-result v5

    if-eqz v5, :cond_5fa

    .line 7267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x10a0054

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v25

    .line 7269
    .local v25, a:Landroid/view/animation/Animation;
    move-object/from16 v0, v81

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 7270
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v28, v5, v6

    .line 7271
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v27, v5, v6

    .line 7275
    .end local v25           #a:Landroid/view/animation/Animation;
    :cond_5fa
    move-object/from16 v0, v81

    move-wide/from16 v1, v42

    move/from16 v3, v28

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowState;->stepAnimationLocked(JII)Z

    move-result v64

    .line 7281
    .local v64, nowAnimating:Z
    if-eqz v64, :cond_634

    .line 7282
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object v5, v0

    if-eqz v5, :cond_632

    .line 7283
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v5

    if-eqz v5, :cond_61c

    .line 7284
    move-object/from16 v90, v81

    .line 7286
    :cond_61c
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v5

    if-eqz v5, :cond_632

    .line 7287
    move-object/from16 v88, v81

    .line 7288
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v89

    .line 7292
    :cond_632
    const/16 v29, 0x1

    .line 7298
    :cond_634
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object v5, v0

    if-eqz v5, :cond_66d

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_66d

    .line 7299
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v5

    if-eqz v5, :cond_653

    .line 7300
    move-object/from16 v90, v81

    .line 7302
    :cond_653
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v5

    if-eqz v5, :cond_66d

    .line 7303
    move-object/from16 v88, v81

    .line 7304
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v89

    .line 7309
    :cond_66d
    if-eqz v85, :cond_682

    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    move v5, v0

    if-nez v5, :cond_682

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v81

    if-ne v0, v1, :cond_682

    .line 7310
    const/16 v84, 0x1

    .line 7313
    :cond_682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v81

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_753

    .line 7314
    if-nez v85, :cond_742

    if-eqz v64, :cond_742

    .line 7318
    const/16 v83, 0x1

    .line 7319
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 7360
    :cond_69e
    :goto_69e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v81

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 7363
    .end local v27           #animDh:I
    .end local v28           #animDw:I
    .end local v64           #nowAnimating:Z
    .end local v85           #wasAnimating:Z
    :cond_6ab
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v30, v0

    .line 7364
    .local v30, atoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v30, :cond_937

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    move v5, v0

    if-eqz v5, :cond_6c1

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    move v5, v0

    if-eqz v5, :cond_937

    .line 7365
    :cond_6c1
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:I

    move v5, v0

    move v0, v5

    move/from16 v1, v79

    if-eq v0, v1, :cond_6e2

    .line 7366
    move/from16 v0, v79

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:I

    .line 7367
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    move v0, v5

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    .line 7368
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 7370
    :cond_6e2
    invoke-virtual/range {v81 .. v81}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v5

    if-nez v5, :cond_6f2

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_738

    :cond_6f2
    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mExiting:Z

    move v5, v0

    if-nez v5, :cond_738

    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    move v5, v0

    if-nez v5, :cond_738

    .line 7387
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object v5, v0

    move-object/from16 v0, v81

    move-object v1, v5

    if-eq v0, v1, :cond_929

    .line 7388
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    move v5, v0

    if-eqz v5, :cond_718

    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    move v5, v0

    if-nez v5, :cond_738

    .line 7389
    :cond_718
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    .line 7390
    invoke-virtual/range {v81 .. v81}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_738

    .line 7391
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    .line 7396
    const/16 v77, 0x1

    .line 7238
    :cond_738
    :goto_738
    add-int/lit8 v58, v58, -0x1

    goto/16 :goto_582

    .line 7221
    .end local v19           #N:I
    .end local v30           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v51           #forceHiding:Z
    .end local v77           #tokenMayBeDrawn:Z
    .end local v81           #w:Lcom/android/server/wm/WindowState;
    .end local v84           #wallpaperMayChange:Z
    .end local v88           #windowAnimationBackground:Lcom/android/server/wm/WindowState;
    .end local v89           #windowAnimationBackgroundColor:I
    .end local v90           #windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    :cond_73c
    const/16 v73, 0x1

    .line 7222
    const/16 v80, 0x1

    goto/16 :goto_55d

    .line 7320
    .restart local v19       #N:I
    .restart local v27       #animDh:I
    .restart local v28       #animDw:I
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v51       #forceHiding:Z
    .restart local v64       #nowAnimating:Z
    .restart local v77       #tokenMayBeDrawn:Z
    .restart local v81       #w:Lcom/android/server/wm/WindowState;
    .restart local v84       #wallpaperMayChange:Z
    .restart local v85       #wasAnimating:Z
    .restart local v88       #windowAnimationBackground:Lcom/android/server/wm/WindowState;
    .restart local v89       #windowAnimationBackgroundColor:I
    .restart local v90       #windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    :cond_742
    invoke-virtual/range {v81 .. v81}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v5

    if-eqz v5, :cond_69e

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object v5, v0

    if-nez v5, :cond_69e

    .line 7321
    const/16 v51, 0x1

    goto/16 :goto_69e

    .line 7323
    :cond_753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v81

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_69e

    .line 7325
    if-eqz v51, :cond_77f

    .line 7326
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v81

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v37

    .line 7354
    .local v37, changed:Z
    :cond_76f
    :goto_76f
    if-eqz v37, :cond_69e

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v5, v0

    const/high16 v6, 0x10

    and-int/2addr v5, v6

    if-eqz v5, :cond_69e

    .line 7356
    const/16 v84, 0x1

    goto/16 :goto_69e

    .line 7330
    .end local v37           #changed:Z
    :cond_77f
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v81

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v37

    .line 7333
    .restart local v37       #changed:Z
    if-eqz v37, :cond_76f

    .line 7334
    if-eqz v83, :cond_7a5

    invoke-virtual/range {v81 .. v81}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v5

    if-eqz v5, :cond_7a5

    .line 7340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v25

    .line 7341
    .restart local v25       #a:Landroid/view/animation/Animation;
    if-eqz v25, :cond_7a5

    .line 7342
    move-object/from16 v0, v81

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 7345
    .end local v25           #a:Landroid/view/animation/Animation;
    :cond_7a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object v5, v0

    if-eqz v5, :cond_7ba

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/wm/WindowState;->mLayer:I

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move v6, v0

    if-ge v5, v6, :cond_76f

    .line 7350
    :cond_7ba
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z
    :try_end_7c0
    .catch Ljava/lang/RuntimeException; {:try_start_351 .. :try_end_7c0} :catch_7c1

    goto :goto_76f

    .line 8209
    .end local v19           #N:I
    .end local v20           #NAT:I
    .end local v22           #NEAT:I
    .end local v27           #animDh:I
    .end local v28           #animDw:I
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v37           #changed:Z
    .end local v51           #forceHiding:Z
    .end local v64           #nowAnimating:Z
    .end local v77           #tokenMayBeDrawn:Z
    .end local v78           #tokensAnimating:Z
    .end local v79           #transactionSequence:I
    .end local v81           #w:Lcom/android/server/wm/WindowState;
    .end local v84           #wallpaperMayChange:Z
    .end local v85           #wasAnimating:Z
    .end local v88           #windowAnimationBackground:Lcom/android/server/wm/WindowState;
    .end local v89           #windowAnimationBackgroundColor:I
    .end local v90           #windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    :catch_7c1
    move-exception v5

    move-object/from16 v49, v5

    .line 8210
    .local v49, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Unhandled exception in Window Manager"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v49

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8213
    .end local v49           #e:Ljava/lang/RuntimeException;
    :cond_7cf
    :goto_7cf
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 8217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object v5, v0

    if-eqz v5, :cond_7e1

    .line 8218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V

    .line 8224
    :cond_7e1
    if-eqz v70, :cond_7fd

    .line 8225
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    move v5, v0

    if-eqz v5, :cond_7fa

    .line 8226
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 8227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 8229
    :cond_7fa
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 8232
    :cond_7fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v58

    .line 8233
    if-lez v58, :cond_898

    .line 8235
    :cond_808
    add-int/lit8 v58, v58, -0x1

    .line 8236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Lcom/android/server/wm/WindowState;

    .line 8240
    .local v87, win:Lcom/android/server/wm/WindowState;
    const/16 v45, 0x0

    .line 8241
    .local v45, diff:I
    :try_start_81a
    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    if-eq v5, v6, :cond_11a6

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    if-eqz v5, :cond_83d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v45

    if-eqz v45, :cond_11a6

    :cond_83d
    const/4 v5, 0x1

    move/from16 v39, v5

    .line 8252
    .restart local v39       #configChanged:Z
    :goto_840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v87

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 8253
    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v10, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v11

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object v13, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object v14, v0

    move-object/from16 v0, v87

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    move v15, v0

    if-eqz v39, :cond_11ab

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v16, v5

    :goto_879
    invoke-interface/range {v10 .. v16}, Landroid/view/IWindow;->resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    .line 8257
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v87

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    .line 8258
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v87

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    .line 8259
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v87

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mSurfaceResized:Z
    :try_end_88e
    .catch Landroid/os/RemoteException; {:try_start_81a .. :try_end_88e} :catch_11b0

    .line 8263
    .end local v39           #configChanged:Z
    :goto_88e
    if-gtz v58, :cond_808

    .line 8264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8268
    .end local v45           #diff:I
    .end local v87           #win:Lcom/android/server/wm/WindowState;
    :cond_898
    const/16 v82, 0x0

    .line 8269
    .local v82, wallpaperDestroyed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v58

    .line 8270
    if-lez v58, :cond_8e4

    .line 8272
    :cond_8a5
    add-int/lit8 v58, v58, -0x1

    .line 8273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Lcom/android/server/wm/WindowState;

    .line 8274
    .restart local v87       #win:Lcom/android/server/wm/WindowState;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v87

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 8275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v87

    if-ne v0, v1, :cond_8cb

    .line 8276
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 8278
    :cond_8cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object v5, v0

    move-object/from16 v0, v87

    move-object v1, v5

    if-ne v0, v1, :cond_8d7

    .line 8279
    const/16 v82, 0x1

    .line 8281
    :cond_8d7
    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wm/WindowState;->destroySurfaceLocked()V

    .line 8282
    if-gtz v58, :cond_8a5

    .line 8283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8287
    .end local v87           #win:Lcom/android/server/wm/WindowState;
    :cond_8e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v58, v5, v6

    :goto_8f0
    if-ltz v58, :cond_11bb

    .line 8288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Lcom/android/server/wm/WindowToken;

    .line 8289
    .local v76, token:Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, v76

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    move v5, v0

    if-nez v5, :cond_926

    .line 8290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8291
    move-object/from16 v0, v76

    iget v0, v0, Lcom/android/server/wm/WindowToken;->windowType:I

    move v5, v0

    const/16 v6, 0x7dd

    if-ne v5, v6, :cond_926

    .line 8292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8287
    :cond_926
    add-int/lit8 v58, v58, -0x1

    goto :goto_8f0

    .line 7399
    .end local v76           #token:Lcom/android/server/wm/WindowToken;
    .end local v82           #wallpaperDestroyed:Z
    .restart local v19       #N:I
    .restart local v20       #NAT:I
    .restart local v22       #NEAT:I
    .restart local v30       #atoken:Lcom/android/server/wm/AppWindowToken;
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v51       #forceHiding:Z
    .restart local v77       #tokenMayBeDrawn:Z
    .restart local v78       #tokensAnimating:Z
    .restart local v79       #transactionSequence:I
    .restart local v81       #w:Lcom/android/server/wm/WindowState;
    .restart local v84       #wallpaperMayChange:Z
    .restart local v88       #windowAnimationBackground:Lcom/android/server/wm/WindowState;
    .restart local v89       #windowAnimationBackgroundColor:I
    .restart local v90       #windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    :cond_929
    :try_start_929
    invoke-virtual/range {v81 .. v81}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_738

    .line 7400
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    goto/16 :goto_738

    .line 7403
    :cond_937
    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    move v5, v0

    if-eqz v5, :cond_738

    .line 7404
    invoke-virtual/range {v81 .. v81}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    goto/16 :goto_738

    .line 7408
    .end local v30           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v81           #w:Lcom/android/server/wm/WindowState;
    :cond_943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->finishAnimationLw()I

    move-result v5

    or-int v38, v38, v5

    .line 7410
    if-eqz v77, :cond_9b9

    .line 7413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 7414
    .local v24, NT:I
    const/16 v58, 0x0

    :goto_95b
    move/from16 v0, v58

    move/from16 v1, v24

    if-ge v0, v1, :cond_9b9

    .line 7415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 7416
    .local v6, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-eqz v5, :cond_993

    .line 7417
    move-object v0, v6

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    move/from16 v65, v0

    .line 7418
    .local v65, numInteresting:I
    if-lez v65, :cond_990

    iget v5, v6, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    move v0, v5

    move/from16 v1, v65

    if-lt v0, v1, :cond_990

    .line 7423
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 7424
    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v5

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 7425
    const/16 v70, 0x1

    .line 7414
    .end local v65           #numInteresting:I
    :cond_990
    :goto_990
    add-int/lit8 v58, v58, 0x1

    goto :goto_95b

    .line 7427
    :cond_993
    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_990

    .line 7428
    move-object v0, v6

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    move/from16 v65, v0

    .line 7429
    .restart local v65       #numInteresting:I
    if-lez v65, :cond_990

    iget v5, v6, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    move v0, v5

    move/from16 v1, v65

    if-lt v0, v1, :cond_990

    .line 7434
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 7435
    or-int/lit8 v38, v38, 0x8

    .line 7438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_990

    .line 7439
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    goto :goto_990

    .line 7449
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    .end local v24           #NT:I
    .end local v65           #numInteresting:I
    :cond_9b9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    move v5, v0

    if-eqz v5, :cond_c03

    .line 7450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 7451
    .local v23, NN:I
    const/16 v55, 0x1

    .line 7456
    .local v55, goodToGo:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    move v5, v0

    if-nez v5, :cond_a02

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    move v5, v0

    if-nez v5, :cond_a02

    .line 7460
    const/16 v58, 0x0

    :goto_9db
    move/from16 v0, v58

    move/from16 v1, v23

    if-ge v0, v1, :cond_a02

    if-eqz v55, :cond_a02

    .line 7461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 7466
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_9ff

    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v5, :cond_9ff

    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v5, :cond_9ff

    .line 7468
    const/16 v55, 0x0

    .line 7460
    :cond_9ff
    add-int/lit8 v58, v58, 0x1

    goto :goto_9db

    .line 7472
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_a02
    if-eqz v55, :cond_c03

    .line 7474
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    move v9, v0

    .line 7475
    .local v9, transit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    move v5, v0

    if-eqz v5, :cond_a11

    .line 7476
    const/4 v9, -0x1

    .line 7478
    :cond_a11
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    .line 7479
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 7480
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    .line 7481
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    .line 7482
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    .line 7483
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 7485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 7492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a85

    .line 7493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 7494
    const/16 v58, 0x0

    :goto_a55
    move/from16 v0, v58

    move/from16 v1, v23

    if-ge v0, v1, :cond_a7d

    .line 7495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 7496
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->sendingToTop:Z

    if-eqz v5, :cond_a7a

    .line 7497
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->sendingToTop:Z

    .line 7498
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v23

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->moveAppWindowsLocked(Lcom/android/server/wm/AppWindowToken;IZ)V

    .line 7494
    :cond_a7a
    add-int/lit8 v58, v58, 0x1

    goto :goto_a55

    .line 7501
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_a7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7504
    :cond_a85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v68, v0

    .line 7506
    .local v68, oldWallpaper:Lcom/android/server/wm/WindowState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 7507
    const/16 v84, 0x0

    .line 7511
    const/4 v7, 0x0

    .line 7512
    .local v7, animLp:Landroid/view/WindowManager$LayoutParams;
    const/16 v33, -0x1

    .line 7513
    .local v33, bestAnimLayer:I
    const/16 v54, 0x0

    .line 7519
    .local v54, fullscreenAnim:Z
    const/16 v52, 0x0

    .line 7530
    .local v52, foundWallpapers:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 7531
    .local v21, NC:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int v23, v21, v5

    .line 7532
    const/16 v58, 0x0

    :goto_aad
    move/from16 v0, v58

    move/from16 v1, v23

    if-ge v0, v1, :cond_b2c

    .line 7535
    move/from16 v0, v58

    move/from16 v1, v21

    if-ge v0, v1, :cond_afe

    .line 7536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 7537
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/16 v62, 0x1

    .line 7542
    .local v62, mode:I
    :goto_ac9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object v5, v0

    if-eqz v5, :cond_ae4

    .line 7543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v5, v6, :cond_ae2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v5, v6, :cond_ae4

    .line 7545
    :cond_ae2
    or-int v52, v52, v62

    .line 7548
    :cond_ae4
    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-eqz v5, :cond_b0e

    .line 7549
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v91

    .line 7550
    .local v91, ws:Lcom/android/server/wm/WindowState;
    if-eqz v91, :cond_afb

    .line 7551
    move-object/from16 v0, v91

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v7, v0

    .line 7552
    move-object/from16 v0, v91

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v33, v0

    .line 7553
    const/16 v54, 0x1

    .line 7532
    .end local v91           #ws:Lcom/android/server/wm/WindowState;
    :cond_afb
    :goto_afb
    add-int/lit8 v58, v58, 0x1

    goto :goto_aad

    .line 7539
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    .end local v62           #mode:I
    :cond_afe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    sub-int v6, v58, v21

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 7540
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/16 v62, 0x2

    .restart local v62       #mode:I
    goto :goto_ac9

    .line 7555
    :cond_b0e
    if-nez v54, :cond_afb

    .line 7556
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v91

    .line 7557
    .restart local v91       #ws:Lcom/android/server/wm/WindowState;
    if-eqz v91, :cond_afb

    .line 7558
    move-object/from16 v0, v91

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move v5, v0

    move v0, v5

    move/from16 v1, v33

    if-le v0, v1, :cond_afb

    .line 7559
    move-object/from16 v0, v91

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v7, v0

    .line 7560
    move-object/from16 v0, v91

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v33, v0

    goto :goto_afb

    .line 7566
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    .end local v62           #mode:I
    .end local v91           #ws:Lcom/android/server/wm/WindowState;
    :cond_b2c
    const/4 v5, 0x3

    move/from16 v0, v52

    move v1, v5

    if-ne v0, v1, :cond_b82

    .line 7569
    sparse-switch v9, :sswitch_data_134a

    .line 7601
    :cond_b35
    :goto_b35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->allowAppAnimationsLw()Z

    move-result v5

    if-nez v5, :cond_b41

    .line 7602
    const/4 v7, 0x0

    .line 7605
    :cond_b41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 7606
    const/16 v58, 0x0

    :goto_b4c
    move/from16 v0, v58

    move/from16 v1, v23

    if-ge v0, v1, :cond_b91

    .line 7607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 7610
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 7611
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 7612
    const/4 v5, 0x0

    iput-object v5, v6, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 7613
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 7615
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 7616
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 7617
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 7606
    add-int/lit8 v58, v58, 0x1

    goto :goto_b4c

    .line 7573
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :sswitch_b7c
    const/16 v9, 0x100e

    .line 7574
    goto :goto_b35

    .line 7578
    :sswitch_b7f
    const/16 v9, 0x200f

    goto :goto_b35

    .line 7583
    :cond_b82
    if-eqz v68, :cond_b87

    .line 7586
    const/16 v9, 0x200c

    goto :goto_b35

    .line 7589
    :cond_b87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object v5, v0

    if-eqz v5, :cond_b35

    .line 7592
    const/16 v9, 0x100d

    goto :goto_b35

    .line 7619
    :cond_b91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 7620
    const/16 v58, 0x0

    :goto_b9c
    move/from16 v0, v58

    move/from16 v1, v23

    if-ge v0, v1, :cond_bc9

    .line 7621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 7624
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 7625
    const/4 v5, 0x0

    iput-object v5, v6, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 7626
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 7628
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 7629
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->waitingToHide:Z

    .line 7633
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 7620
    add-int/lit8 v58, v58, 0x1

    goto :goto_b9c

    .line 7636
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_bc9
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 7638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7643
    or-int/lit8 v38, v38, 0x3

    .line 7645
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7646
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v5

    if-nez v5, :cond_bf4

    .line 7647
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 7649
    :cond_bf4
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 7651
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 7655
    .end local v7           #animLp:Landroid/view/WindowManager$LayoutParams;
    .end local v9           #transit:I
    .end local v21           #NC:I
    .end local v23           #NN:I
    .end local v33           #bestAnimLayer:I
    .end local v52           #foundWallpapers:I
    .end local v54           #fullscreenAnim:Z
    .end local v55           #goodToGo:Z
    .end local v68           #oldWallpaper:Lcom/android/server/wm/WindowState;
    :cond_c03
    const/16 v26, 0x0

    .line 7657
    .local v26, adjResult:I
    if-nez v29, :cond_c32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    move v5, v0

    if-eqz v5, :cond_c32

    .line 7664
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    .line 7666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7668
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->rebuildAppWindowListLocked()V

    .line 7669
    or-int/lit8 v38, v38, 0x1

    .line 7670
    or-int/lit8 v26, v26, 0x2

    .line 7671
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 7672
    const/16 v84, 0x1

    .line 7676
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 7679
    :cond_c32
    if-eqz v83, :cond_cd4

    if-nez v38, :cond_cd4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    move v5, v0

    if-nez v5, :cond_cd4

    .line 7686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v68, v0

    .line 7687
    .restart local v68       #oldWallpaper:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object v5, v0

    if-eqz v5, :cond_c6b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_c6b

    .line 7695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v5, :cond_c6b

    .line 7699
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 7700
    or-int/lit8 v38, v38, 0x8

    .line 7703
    :cond_c6b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    or-int v26, v26, v5

    .line 7704
    const/16 v84, 0x0

    .line 7705
    const/16 v83, 0x0

    .line 7709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object v5, v0

    if-nez v5, :cond_cd4

    .line 7712
    const/16 v51, 0x0

    .line 7713
    const/4 v5, 0x1

    sub-int v58, v19, v5

    :goto_c81
    if-ltz v58, :cond_cd4

    .line 7714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v81

    check-cast v81, Lcom/android/server/wm/WindowState;

    .line 7715
    .restart local v81       #w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_cb6

    .line 7716
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    .line 7717
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v81

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_cb9

    invoke-virtual/range {v81 .. v81}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_cb9

    .line 7719
    const/16 v51, 0x1

    .line 7713
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_cb6
    :goto_cb6
    add-int/lit8 v58, v58, -0x1

    goto :goto_c81

    .line 7720
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_cb9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v81

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_cb6

    .line 7721
    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    move v5, v0

    if-nez v5, :cond_cb6

    .line 7724
    invoke-virtual/range {v81 .. v81}, Lcom/android/server/wm/WindowState;->clearAnimation()V

    goto :goto_cb6

    .line 7732
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v68           #oldWallpaper:Lcom/android/server/wm/WindowState;
    .end local v81           #w:Lcom/android/server/wm/WindowState;
    :cond_cd4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v90

    if-eq v0, v1, :cond_ce6

    .line 7736
    move-object/from16 v0, v90

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 7737
    const/16 v84, 0x1

    .line 7740
    :cond_ce6
    if-eqz v89, :cond_d4e

    .line 7741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    move-object v5, v0

    if-nez v5, :cond_cfe

    .line 7742
    new-instance v5, Lcom/android/server/wm/DimSurface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/server/wm/DimSurface;-><init>(Landroid/view/SurfaceSession;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    .line 7744
    :cond_cfe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    move-object v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move-object v0, v5

    move/from16 v1, v48

    move/from16 v2, v44

    move v3, v6

    move/from16 v4, v89

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/DimSurface;->show(IIII)V

    .line 7751
    :cond_d15
    :goto_d15
    if-eqz v84, :cond_d1d

    .line 7754
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    or-int v26, v26, v5

    .line 7757
    :cond_d1d
    and-int/lit8 v5, v26, 0x2

    if-eqz v5, :cond_d5e

    .line 7760
    or-int/lit8 v38, v38, 0x1

    .line 7761
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 7768
    :cond_d26
    :goto_d26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    move v5, v0

    if-eqz v5, :cond_d43

    .line 7769
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 7770
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v5

    if-eqz v5, :cond_d43

    .line 7772
    or-int/lit8 v38, v38, 0x8

    .line 7773
    const/16 v26, 0x0

    .line 7777
    :cond_d43
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    move v5, v0

    if-eqz v5, :cond_4b9

    .line 7778
    or-int/lit8 v38, v38, 0x1

    goto/16 :goto_4b9

    .line 7747
    :cond_d4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    move-object v5, v0

    if-eqz v5, :cond_d15

    .line 7748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/wm/DimSurface;->hide()V

    goto :goto_d15

    .line 7762
    :cond_d5e
    and-int/lit8 v5, v26, 0x4

    if-eqz v5, :cond_d26

    .line 7765
    or-int/lit8 v38, v38, 0x1

    goto :goto_d26

    .line 7787
    .end local v19           #N:I
    .end local v20           #NAT:I
    .end local v22           #NEAT:I
    .end local v26           #adjResult:I
    .end local v51           #forceHiding:Z
    .end local v77           #tokenMayBeDrawn:Z
    .end local v78           #tokensAnimating:Z
    .end local v79           #transactionSequence:I
    .end local v84           #wallpaperMayChange:Z
    .end local v88           #windowAnimationBackground:Lcom/android/server/wm/WindowState;
    .end local v89           #windowAnimationBackgroundColor:I
    .end local v90           #windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    :cond_d65
    const/4 v5, 0x0

    move/from16 v74, v5

    goto/16 :goto_103

    .line 7831
    .restart local v19       #N:I
    .restart local v31       #attrFlags:I
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v34       #blurring:Z
    .restart local v40       #covered:Z
    .restart local v46       #dimming:Z
    .restart local v47       #displayed:Z
    .restart local v66       #obscured:Z
    .restart local v74       #someoneLosingFocus:Z
    .restart local v75       #syswin:Z
    .restart local v81       #w:Lcom/android/server/wm/WindowState;
    :cond_d6a
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v86

    .line 7832
    .restart local v86       #width:I
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v56

    .restart local v56       #height:I
    goto/16 :goto_15d

    .line 7845
    :catch_d7e
    move-exception v5

    move-object/from16 v49, v5

    .line 7846
    .restart local v49       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error positioning surface of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pos=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v49

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7849
    if-nez p1, :cond_1ae

    .line 7850
    const-string v5, "position"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v81

    move-object v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    goto/16 :goto_1ae

    .line 7871
    .end local v49           #e:Ljava/lang/RuntimeException;
    :catch_dd8
    move-exception v5

    move-object/from16 v49, v5

    .line 7875
    .restart local v49       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error resizing surface of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v49

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7877
    if-nez p1, :cond_1f1

    .line 7878
    const-string v5, "size"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v81

    move-object v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    goto/16 :goto_1f1

    .line 7885
    .end local v49           #e:Ljava/lang/RuntimeException;
    :cond_e2a
    const/4 v5, 0x0

    goto/16 :goto_215

    .line 7887
    :cond_e2d
    const/4 v5, 0x0

    goto/16 :goto_22b

    .line 7889
    :cond_e30
    const/4 v5, 0x0

    move/from16 v39, v5

    goto/16 :goto_256

    .line 7900
    .restart local v39       #configChanged:Z
    :cond_e35
    const/4 v5, 0x0

    move/from16 v53, v5

    goto/16 :goto_269

    .line 7954
    .restart local v53       #frameChanged:Z
    :cond_e3a
    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_322

    .line 7955
    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    move v5, v0

    if-nez v5, :cond_322

    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    move v5, v0

    if-nez v5, :cond_322

    .line 7959
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v81

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_322

    .line 7974
    .end local v39           #configChanged:Z
    .end local v53           #frameChanged:Z
    :catch_e57
    move-exception v5

    move-object/from16 v49, v5

    .line 7975
    .restart local v49       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception hiding surface in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_351

    .line 7990
    .end local v49           #e:Ljava/lang/RuntimeException;
    :cond_e77
    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLastLayer:I

    move v5, v0

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move v6, v0

    if-ne v5, v6, :cond_eec

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLastAlpha:F

    move v5, v0

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_eec

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLastDsDx:F

    move v5, v0

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDsDx:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_eec

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLastDtDx:F

    move v5, v0

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDtDx:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_eec

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLastDsDy:F

    move v5, v0

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDsDy:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_eec

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLastDtDy:F

    move v5, v0

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDtDy:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_eec

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    move v5, v0

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_eec

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    move v5, v0

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_eec

    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    move v5, v0

    if-eqz v5, :cond_1022

    .line 7999
    :cond_eec
    const/16 v47, 0x1

    .line 8000
    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v81

    iput v0, v1, Lcom/android/server/wm/WindowState;->mLastAlpha:F

    .line 8001
    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v81

    iput v0, v1, Lcom/android/server/wm/WindowState;->mLastLayer:I

    .line 8002
    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDsDx:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v81

    iput v0, v1, Lcom/android/server/wm/WindowState;->mLastDsDx:F

    .line 8003
    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDtDx:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v81

    iput v0, v1, Lcom/android/server/wm/WindowState;->mLastDtDx:F

    .line 8004
    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDsDy:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v81

    iput v0, v1, Lcom/android/server/wm/WindowState;->mLastDsDy:F

    .line 8005
    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDtDy:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v81

    iput v0, v1, Lcom/android/server/wm/WindowState;->mLastDtDy:F

    .line 8006
    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v81

    iput v0, v1, Lcom/android/server/wm/WindowState;->mLastHScale:F

    .line 8007
    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v81

    iput v0, v1, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 8014
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_f43
    .catch Ljava/lang/RuntimeException; {:try_start_929 .. :try_end_f43} :catch_7c1

    if-eqz v5, :cond_fa7

    .line 8016
    :try_start_f45
    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v81

    iput v0, v1, Lcom/android/server/wm/WindowState;->mSurfaceAlpha:F

    .line 8017
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setAlpha(F)V

    .line 8018
    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v81

    iput v0, v1, Lcom/android/server/wm/WindowState;->mSurfaceLayer:I

    .line 8019
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setLayer(I)V

    .line 8020
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDsDx:F

    move v6, v0

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move v7, v0

    mul-float/2addr v6, v7

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDtDx:F

    move v7, v0

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move v8, v0

    mul-float/2addr v7, v8

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDsDy:F

    move v8, v0

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move v9, v0

    mul-float/2addr v8, v9

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDtDy:F

    move v9, v0

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move v10, v0

    mul-float/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/Surface;->setMatrix(FFFF)V
    :try_end_fa7
    .catch Ljava/lang/RuntimeException; {:try_start_f45 .. :try_end_fa7} :catch_fea

    .line 8031
    :cond_fa7
    :goto_fa7
    :try_start_fa7
    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    move v5, v0

    if-eqz v5, :cond_fd9

    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    move v5, v0

    if-nez v5, :cond_fd9

    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    move v5, v0

    if-nez v5, :cond_fd9

    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    move v5, v0

    if-nez v5, :cond_fd9

    .line 8038
    move-object/from16 v0, p0

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->showSurfaceRobustlyLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-eqz v5, :cond_101b

    .line 8039
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v81

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mHasDrawn:Z

    .line 8040
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v81

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    .line 8045
    :cond_fd9
    :goto_fd9
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_35e

    .line 8046
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    goto/16 :goto_35e

    .line 8023
    :catch_fea
    move-exception v5

    move-object/from16 v49, v5

    .line 8024
    .restart local v49       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error updating surface in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v49

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8025
    if-nez p1, :cond_fa7

    .line 8026
    const-string v5, "update"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v81

    move-object v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    goto :goto_fa7

    .line 8042
    .end local v49           #e:Ljava/lang/RuntimeException;
    :cond_101b
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v81

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto :goto_fd9

    .line 8049
    :cond_1022
    const/16 v47, 0x1

    goto/16 :goto_35e

    .line 8065
    :cond_1026
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v81

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_38b

    .line 8072
    .end local v56           #height:I
    .end local v86           #width:I
    :cond_102e
    move-object/from16 v0, v81

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_393

    .line 8075
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v81

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_393

    .line 8089
    .restart local v36       #canBeSeen:Z
    :cond_103d
    const/4 v5, 0x0

    move/from16 v67, v5

    goto/16 :goto_3c1

    .line 8113
    .restart local v67       #obscuredChanged:Z
    :cond_1042
    const/4 v5, 0x0

    move/from16 v69, v5

    goto/16 :goto_441

    .line 8119
    .restart local v69       #opaqueDrawn:Z
    :cond_1047
    if-eqz v36, :cond_451

    if-nez v66, :cond_451

    and-int/lit8 v5, v31, 0x4

    or-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_451

    .line 8125
    and-int/lit8 v5, v31, 0x2

    if-eqz v5, :cond_1093

    .line 8126
    if-nez v46, :cond_1093

    .line 8128
    const/16 v46, 0x1

    .line 8129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    move-object v5, v0

    if-nez v5, :cond_106f

    .line 8130
    new-instance v5, Lcom/android/server/wm/DimAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/server/wm/DimAnimator;-><init>(Landroid/view/SurfaceSession;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 8132
    :cond_106f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v60

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DimAnimator;->show(II)V

    .line 8133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v81

    move-wide/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/DimAnimator;->updateParameters(Landroid/content/res/Resources;Lcom/android/server/wm/WindowState;J)V

    .line 8137
    :cond_1093
    and-int/lit8 v5, v31, 0x4

    if-eqz v5, :cond_451

    .line 8138
    if-nez v34, :cond_451

    .line 8140
    const/16 v34, 0x1

    .line 8141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_10a0
    .catch Ljava/lang/RuntimeException; {:try_start_fa7 .. :try_end_10a0} :catch_7c1

    if-nez v5, :cond_10bd

    .line 8143
    :try_start_10a2
    new-instance v10, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object v11, v0

    const/4 v12, 0x0

    const-string v13, "BlurSurface"

    const/4 v14, -0x1

    const/16 v15, 0x10

    const/16 v16, 0x10

    const/16 v17, -0x1

    const/high16 v18, 0x1

    invoke-direct/range {v10 .. v18}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;
    :try_end_10bd
    .catch Ljava/lang/Exception; {:try_start_10a2 .. :try_end_10bd} :catch_1101
    .catch Ljava/lang/RuntimeException; {:try_start_10a2 .. :try_end_10bd} :catch_7c1

    .line 8154
    :cond_10bd
    :goto_10bd
    :try_start_10bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_451

    .line 8158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V

    .line 8159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v48

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setSize(II)V

    .line 8160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v81

    iget v0, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move v6, v0

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setLayer(I)V

    .line 8161
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z

    move v5, v0
    :try_end_10ef
    .catch Ljava/lang/RuntimeException; {:try_start_10bd .. :try_end_10ef} :catch_7c1

    if-nez v5, :cond_451

    .line 8165
    :try_start_10f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->show()V
    :try_end_10f9
    .catch Ljava/lang/RuntimeException; {:try_start_10f1 .. :try_end_10f9} :catch_1110

    .line 8169
    :goto_10f9
    const/4 v5, 0x1

    :try_start_10fa
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z

    goto/16 :goto_451

    .line 8148
    :catch_1101
    move-exception v5

    move-object/from16 v49, v5

    .line 8149
    .local v49, e:Ljava/lang/Exception;
    const-string v5, "WindowManager"

    const-string v6, "Exception creating Blur surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v49

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10bd

    .line 8166
    .end local v49           #e:Ljava/lang/Exception;
    :catch_1110
    move-exception v5

    move-object/from16 v49, v5

    .line 8167
    .local v49, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Failure showing blur surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v49

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10f9

    .line 8185
    .end local v31           #attrFlags:I
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v36           #canBeSeen:Z
    .end local v47           #displayed:Z
    .end local v49           #e:Ljava/lang/RuntimeException;
    .end local v67           #obscuredChanged:Z
    .end local v69           #opaqueDrawn:Z
    .end local v81           #w:Lcom/android/server/wm/WindowState;
    :cond_111f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    move-object v5, v0

    if-eqz v5, :cond_1153

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-eqz v5, :cond_1153

    .line 8186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    move v6, v0

    if-nez v6, :cond_1146

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v6

    if-nez v6, :cond_118f

    :cond_1146
    const/4 v6, 0x1

    :goto_1147
    move-object v0, v5

    move/from16 v1, v46

    move-wide/from16 v2, v42

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/DimAnimator;->updateSurface(ZJZ)Z

    move-result v5

    or-int v29, v29, v5

    .line 8190
    :cond_1153
    if-nez v34, :cond_116a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z

    move v5, v0
    :try_end_115a
    .catch Ljava/lang/RuntimeException; {:try_start_10fa .. :try_end_115a} :catch_7c1

    if-eqz v5, :cond_116a

    .line 8194
    :try_start_115c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_1164
    .catch Ljava/lang/IllegalArgumentException; {:try_start_115c .. :try_end_1164} :catch_1191
    .catch Ljava/lang/RuntimeException; {:try_start_115c .. :try_end_1164} :catch_7c1

    .line 8198
    :goto_1164
    const/4 v5, 0x0

    :try_start_1165
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z

    .line 8201
    :cond_116a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    move-object v5, v0

    if-eqz v5, :cond_7cf

    .line 8202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object v5, v0

    if-eqz v5, :cond_119c

    .line 8203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_7cf

    .line 8186
    :cond_118f
    const/4 v6, 0x0

    goto :goto_1147

    .line 8195
    :catch_1191
    move-exception v5

    move-object/from16 v49, v5

    .line 8196
    .local v49, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "WindowManager"

    const-string v6, "Illegal argument exception hiding blur surface"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1164

    .line 8206
    .end local v49           #e:Ljava/lang/IllegalArgumentException;
    :cond_119c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/wm/BlackFrame;->clearMatrix()V
    :try_end_11a4
    .catch Ljava/lang/RuntimeException; {:try_start_1165 .. :try_end_11a4} :catch_7c1

    goto/16 :goto_7cf

    .line 8241
    .end local v19           #N:I
    .end local v34           #blurring:Z
    .end local v40           #covered:Z
    .end local v46           #dimming:Z
    .end local v66           #obscured:Z
    .end local v74           #someoneLosingFocus:Z
    .end local v75           #syswin:Z
    .restart local v45       #diff:I
    .restart local v87       #win:Lcom/android/server/wm/WindowState;
    :cond_11a6
    const/4 v5, 0x0

    move/from16 v39, v5

    goto/16 :goto_840

    .line 8253
    .restart local v39       #configChanged:Z
    :cond_11ab
    const/4 v5, 0x0

    move-object/from16 v16, v5

    goto/16 :goto_879

    .line 8260
    .end local v39           #configChanged:Z
    :catch_11b0
    move-exception v5

    move-object/from16 v49, v5

    .line 8261
    .local v49, e:Landroid/os/RemoteException;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v87

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_88e

    .line 8298
    .end local v45           #diff:I
    .end local v49           #e:Landroid/os/RemoteException;
    .end local v87           #win:Lcom/android/server/wm/WindowState;
    .restart local v82       #wallpaperDestroyed:Z
    :cond_11bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v58, v5, v6

    :goto_11c7
    if-ltz v58, :cond_1211

    .line 8299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Lcom/android/server/wm/AppWindowToken;

    .line 8300
    .local v76, token:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v76

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    move v5, v0

    if-nez v5, :cond_120e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_120e

    .line 8304
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v76

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 8305
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v76

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->animating:Z

    .line 8308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8298
    :cond_120e
    add-int/lit8 v58, v58, -0x1

    goto :goto_11c7

    .line 8313
    .end local v76           #token:Lcom/android/server/wm/AppWindowToken;
    :cond_1211
    const/16 v63, 0x0

    .line 8315
    .local v63, needRelayout:Z
    if-nez v29, :cond_1232

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    move v5, v0

    if-eqz v5, :cond_1232

    .line 8322
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    .line 8323
    const/16 v63, 0x1

    .line 8324
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->rebuildAppWindowListLocked()V

    .line 8325
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 8327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8330
    :cond_1232
    if-eqz v50, :cond_123d

    .line 8331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 8333
    :cond_123d
    if-eqz v82, :cond_1248

    .line 8334
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    if-eqz v5, :cond_1310

    const/4 v5, 0x1

    move/from16 v63, v5

    .line 8336
    :cond_1248
    :goto_1248
    if-eqz v63, :cond_1315

    .line 8337
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->requestAnimationLocked(J)V

    .line 8343
    :cond_1252
    :goto_1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 8345
    if-eqz v57, :cond_1328

    const/4 v5, 0x1

    :goto_125e
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Z)V

    .line 8346
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    move v5, v0

    if-nez v5, :cond_1293

    .line 8347
    const/4 v5, 0x0

    cmpg-float v5, v72, v5

    if-ltz v5, :cond_1276

    const/high16 v5, 0x3f80

    cmpl-float v5, v72, v5

    if-lez v5, :cond_132b

    .line 8348
    :cond_1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    .line 8353
    :goto_127f
    const/4 v5, 0x0

    cmpg-float v5, v35, v5

    if-ltz v5, :cond_128a

    const/high16 v5, 0x3f80

    cmpl-float v5, v35, v5

    if-lez v5, :cond_133a

    .line 8354
    :cond_128a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setButtonBrightnessOverride(I)V

    .line 8360
    :cond_1293
    :goto_1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    move-object v5, v0

    move-object/from16 v0, v57

    move-object v1, v5

    if-eq v0, v1, :cond_12bd

    .line 8361
    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    .line 8362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xc

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v61

    .line 8363
    .local v61, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 8366
    .end local v61           #m:Landroid/os/Message;
    :cond_12bd
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    move v5, v0

    if-eqz v5, :cond_12d9

    .line 8368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v10, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 8370
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    .line 8373
    :cond_12d9
    if-eqz v73, :cond_12f0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object v5, v0

    if-eqz v5, :cond_12f0

    .line 8374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 8375
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 8378
    :cond_12f0
    if-eqz v80, :cond_130b

    .line 8380
    const/16 v5, -0x3e8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setRotationUncheckedLocked(IIZ)Z

    move-result v37

    .line 8382
    .restart local v37       #changed:Z
    if-eqz v37, :cond_130b

    .line 8383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 8389
    .end local v37           #changed:Z
    :cond_130b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    goto/16 :goto_e

    .line 8334
    :cond_1310
    const/4 v5, 0x0

    move/from16 v63, v5

    goto/16 :goto_1248

    .line 8338
    :cond_1315
    if-eqz v29, :cond_1252

    .line 8339
    const-wide/16 v10, 0x10

    add-long v10, v10, v42

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v10, v12

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->requestAnimationLocked(J)V

    goto/16 :goto_1252

    .line 8345
    :cond_1328
    const/4 v5, 0x0

    goto/16 :goto_125e

    .line 8350
    :cond_132b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/high16 v6, 0x437f

    mul-float v6, v6, v72

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    goto/16 :goto_127f

    .line 8356
    :cond_133a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/high16 v6, 0x437f

    mul-float v6, v6, v35

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setButtonBrightnessOverride(I)V

    goto/16 :goto_1293

    .line 7569
    nop

    :sswitch_data_134a
    .sparse-switch
        0x1006 -> :sswitch_b7c
        0x1008 -> :sswitch_b7c
        0x100a -> :sswitch_b7c
        0x2007 -> :sswitch_b7f
        0x2009 -> :sswitch_b7f
        0x200b -> :sswitch_b7f
    .end sparse-switch
.end method

.method private final performLayoutLockedInner(ZZ)I
    .registers 15
    .parameter "initial"
    .parameter "updateInputWindows"

    .prologue
    .line 6965
    iget-boolean v9, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    if-nez v9, :cond_6

    .line 6966
    const/4 v9, 0x0

    .line 7079
    :goto_5
    return v9

    .line 6969
    :cond_6
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 6971
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 6972
    .local v3, dw:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    .line 6974
    .local v2, dh:I
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6980
    .local v0, N:I
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9, v3, v2}, Landroid/view/WindowManagerPolicy;->beginLayoutLw(II)V

    .line 6982
    iget v9, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    add-int/lit8 v6, v9, 0x1

    .line 6983
    .local v6, seq:I
    if-gez v6, :cond_1f

    const/4 v6, 0x0

    .line 6984
    :cond_1f
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    .line 6988
    const/4 v7, -0x1

    .line 6989
    .local v7, topAttached:I
    const/4 v9, 0x1

    sub-int v5, v0, v9

    .local v5, i:I
    :goto_25
    if-ltz v5, :cond_7d

    .line 6990
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 6995
    .local v8, win:Lcom/android/server/wm/WindowState;
    iget-object v1, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 6996
    .local v1, atoken:Lcom/android/server/wm/AppWindowToken;
    iget v9, v8, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v10, 0x8

    if-eq v9, v10, :cond_55

    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v9, :cond_55

    if-nez v1, :cond_43

    iget-object v9, v8, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v9, v9, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v9, :cond_55

    :cond_43
    if-eqz v1, :cond_49

    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v9, :cond_55

    :cond_49
    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v9, :cond_55

    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v9, :cond_55

    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v9, :cond_76

    :cond_55
    const/4 v9, 0x1

    move v4, v9

    .line 7020
    .local v4, gone:Z
    :goto_57
    if-eqz v4, :cond_5d

    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-nez v9, :cond_73

    .line 7021
    :cond_5d
    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v9, :cond_79

    .line 7022
    if-eqz p1, :cond_66

    .line 7024
    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 7026
    :cond_66
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 7027
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v11, 0x0

    invoke-interface {v9, v8, v10, v11}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 7028
    iput v6, v8, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 6989
    :cond_73
    :goto_73
    add-int/lit8 v5, v5, -0x1

    goto :goto_25

    .line 6996
    .end local v4           #gone:Z
    :cond_76
    const/4 v9, 0x0

    move v4, v9

    goto :goto_57

    .line 7034
    .restart local v4       #gone:Z
    :cond_79
    if-gez v7, :cond_73

    move v7, v5

    goto :goto_73

    .line 7043
    .end local v1           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v4           #gone:Z
    .end local v8           #win:Lcom/android/server/wm/WindowState;
    :cond_7d
    move v5, v7

    :goto_7e
    if-ltz v5, :cond_b0

    .line 7044
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 7046
    .restart local v8       #win:Lcom/android/server/wm/WindowState;
    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v9, :cond_ad

    .line 7056
    iget v9, v8, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v10, 0x8

    if-eq v9, v10, :cond_96

    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v9, :cond_9a

    :cond_96
    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-nez v9, :cond_ad

    .line 7058
    :cond_9a
    if-eqz p1, :cond_9f

    .line 7060
    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 7062
    :cond_9f
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 7063
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-interface {v9, v8, v10, v11}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 7064
    iput v6, v8, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 7043
    :cond_ad
    add-int/lit8 v5, v5, -0x1

    goto :goto_7e

    .line 7074
    .end local v8           #win:Lcom/android/server/wm/WindowState;
    :cond_b0
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v9}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 7075
    if-eqz p2, :cond_bd

    .line 7076
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 7079
    :cond_bd
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->finishLayoutLw()I

    move-result v9

    goto/16 :goto_5
.end method

.method private placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 6
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 787
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 791
    .local v0, i:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 792
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 793
    return-void
.end method

.method private placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 5
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 796
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 800
    .local v0, i:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 801
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 802
    return-void
.end method

.method private final reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I
    .registers 6
    .parameter "index"
    .parameter "token"

    .prologue
    .line 4221
    iget-object v2, p2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4222
    .local v0, NW:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_18

    .line 4223
    iget-object v2, p2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result p1

    .line 4222
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4225
    :cond_18
    return p1
.end method

.method private final reAddWindowLocked(ILcom/android/server/wm/WindowState;)I
    .registers 9
    .parameter "index"
    .parameter "win"

    .prologue
    const/4 v5, 0x0

    .line 4191
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4192
    .local v0, NCW:I
    const/4 v1, 0x0

    .line 4193
    .local v1, added:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_9
    if-ge v3, v0, :cond_2f

    .line 4194
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4195
    .local v2, cwin:Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_23

    iget v4, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v4, :cond_23

    .line 4198
    iput-boolean v5, p2, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    .line 4199
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4200
    add-int/lit8 p1, p1, 0x1

    .line 4201
    const/4 v1, 0x1

    .line 4205
    :cond_23
    iput-boolean v5, v2, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    .line 4206
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4207
    add-int/lit8 p1, p1, 0x1

    .line 4193
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4209
    .end local v2           #cwin:Lcom/android/server/wm/WindowState;
    :cond_2f
    if-nez v1, :cond_3a

    .line 4212
    iput-boolean v5, p2, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    .line 4213
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4214
    add-int/lit8 p1, p1, 0x1

    .line 4216
    :cond_3a
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 4217
    return p1
.end method

.method private reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V
    .registers 4
    .parameter "win"

    .prologue
    .line 1264
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 1268
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1269
    .local v0, wpos:I
    if-ltz v0, :cond_17

    .line 1272
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1273
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1274
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    .line 1276
    :cond_17
    return-void
.end method

.method private readForcedDisplaySizeLocked()V
    .registers 9

    .prologue
    const/16 v7, 0x2c

    .line 6669
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_size_forced"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6671
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_17

    .line 6686
    :cond_16
    :goto_16
    return-void

    .line 6674
    :cond_17
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 6675
    .local v2, pos:I
    if-lez v2, :cond_16

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ne v5, v2, :cond_16

    .line 6680
    const/4 v5, 0x0

    :try_start_24
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 6681
    .local v4, width:I
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_35} :catch_3a

    move-result v1

    .line 6685
    .local v1, height:I
    invoke-direct {p0, v4, v1}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(II)V

    goto :goto_16

    .line 6682
    .end local v1           #height:I
    .end local v4           #width:I
    :catch_3a
    move-exception v5

    move-object v0, v5

    .line 6683
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_16
.end method

.method private rebuildBlackFrame(Z)V
    .registers 13
    .parameter "inTransaction"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 6626
    if-nez p1, :cond_7

    .line 6629
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 6632
    :cond_7
    :try_start_7
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v7, :cond_13

    .line 6633
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v7}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 6634
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 6636
    :cond_13
    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    if-lt v7, v8, :cond_1f

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge v7, v8, :cond_4d

    .line 6639
    :cond_1f
    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    if-eq v7, v10, :cond_28

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_53

    :cond_28
    move v6, v10

    .line 6641
    .local v6, rotated:Z
    :goto_29
    if-eqz v6, :cond_55

    .line 6642
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .line 6643
    .local v3, initW:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 6644
    .local v2, initH:I
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    .line 6645
    .local v1, baseW:I
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 6652
    .local v0, baseH:I
    :goto_33
    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6653
    .local v5, outer:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_5e

    .line 6655
    .local v4, inner:Landroid/graphics/Rect;
    :try_start_41
    new-instance v7, Lcom/android/server/wm/BlackFrame;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const v9, 0x1e8480

    invoke-direct {v7, v8, v5, v4, v9}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_5e
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_41 .. :try_end_4d} :catch_65

    .line 6660
    .end local v0           #baseH:I
    .end local v1           #baseW:I
    .end local v2           #initH:I
    .end local v3           #initW:I
    .end local v4           #inner:Landroid/graphics/Rect;
    .end local v5           #outer:Landroid/graphics/Rect;
    .end local v6           #rotated:Z
    :cond_4d
    :goto_4d
    if-nez p1, :cond_52

    .line 6661
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 6666
    :cond_52
    return-void

    :cond_53
    move v6, v9

    .line 6639
    goto :goto_29

    .line 6647
    .restart local v6       #rotated:Z
    :cond_55
    :try_start_55
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 6648
    .restart local v3       #initW:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .line 6649
    .restart local v2       #initH:I
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 6650
    .restart local v1       #baseW:I
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_5e

    .restart local v0       #baseH:I
    goto :goto_33

    .line 6660
    .end local v0           #baseH:I
    .end local v1           #baseW:I
    .end local v2           #initH:I
    .end local v3           #initW:I
    .end local v6           #rotated:Z
    :catchall_5e
    move-exception v7

    if-nez p1, :cond_64

    .line 6661
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 6660
    :cond_64
    throw v7

    .line 6656
    .restart local v0       #baseH:I
    .restart local v1       #baseW:I
    .restart local v2       #initH:I
    .restart local v3       #initW:I
    .restart local v4       #inner:Landroid/graphics/Rect;
    .restart local v5       #outer:Landroid/graphics/Rect;
    .restart local v6       #rotated:Z
    :catch_65
    move-exception v7

    goto :goto_4d
.end method

.method private reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I
    .registers 10
    .parameter "curSize"
    .parameter "rotation"
    .parameter "dm"
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 5563
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, p2, p4}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(II)I

    move-result v2

    iput v2, p3, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 5564
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, p2, p5}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(II)I

    move-result v2

    iput v2, p3, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 5565
    const/4 v2, 0x0

    invoke-static {p3, v2}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    .line 5566
    .local v0, scale:F
    iget v2, p3, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    iget v3, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 5567
    .local v1, size:I
    if-eqz p1, :cond_24

    if-ge v1, p1, :cond_25

    .line 5568
    :cond_24
    move p1, v1

    .line 5570
    :cond_25
    return p1
.end method

.method private reduceConfigWidthSize(IIFI)I
    .registers 7
    .parameter "curSize"
    .parameter "rotation"
    .parameter "density"
    .parameter "dw"

    .prologue
    .line 5534
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, p2, p4}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p3

    float-to-int v0, v1

    .line 5535
    .local v0, size:I
    if-ge v0, p1, :cond_c

    .line 5536
    move p1, v0

    .line 5538
    :cond_c
    return p1
.end method

.method private removeAppTokensLocked(Ljava/util/List;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4275
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4276
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_48

    .line 4277
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 4278
    .local v2, token:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    .line 4281
    .local v3, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 4282
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4284
    add-int/lit8 v1, v1, -0x1

    .line 4285
    add-int/lit8 v0, v0, -0x1

    .line 4276
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4288
    .end local v2           #token:Landroid/os/IBinder;
    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_48
    return-void
.end method

.method private removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    .registers 14
    .parameter "session"
    .parameter "win"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2242
    iget-boolean v5, p2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v5, :cond_8

    .line 2336
    :goto_7
    return-void

    .line 2247
    :cond_8
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v2, v5, v8

    .local v2, i:I
    :goto_10
    if-ltz v2, :cond_44

    .line 2248
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2249
    .local v1, cwin:Lcom/android/server/wm/WindowState;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force-removing child win "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-direct {p0, v5, v1}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 2247
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 2254
    .end local v1           #cwin:Lcom/android/server/wm/WindowState;
    :cond_44
    iput-boolean v8, p2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    .line 2256
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_4d

    .line 2257
    invoke-virtual {p0, v10}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 2266
    :cond_4d
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5, p2}, Landroid/view/WindowManagerPolicy;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2267
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->removeLocked()V

    .line 2270
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v6}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2271
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2272
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2273
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 2276
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_c8

    .line 2277
    iput-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2282
    :cond_72
    :goto_72
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2283
    .local v4, token:Lcom/android/server/wm/WindowToken;
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2285
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v5, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2286
    if-eqz v0, :cond_82

    .line 2287
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2292
    :cond_82
    iget-object v5, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_95

    .line 2293
    iget-boolean v5, v4, Lcom/android/server/wm/WindowToken;->explicit:Z

    if-nez v5, :cond_d6

    .line 2294
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2300
    :cond_95
    :goto_95
    if-eqz v0, :cond_9d

    .line 2301
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_db

    .line 2302
    iput-object v9, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 2319
    :cond_9d
    :goto_9d
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dd

    if-ne v5, v6, :cond_103

    .line 2320
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 2321
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 2326
    :cond_ac
    :goto_ac
    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    if-nez v5, :cond_c1

    .line 2327
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 2328
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 2329
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2330
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_c1

    .line 2331
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2335
    :cond_c1
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    goto/16 :goto_7

    .line 2278
    .end local v0           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v4           #token:Lcom/android/server/wm/WindowToken;
    :cond_c8
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dc

    if-ne v5, v6, :cond_72

    .line 2279
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_72

    .line 2295
    .restart local v0       #atoken:Lcom/android/server/wm/AppWindowToken;
    .restart local v4       #token:Lcom/android/server/wm/WindowToken;
    :cond_d6
    if-eqz v0, :cond_95

    .line 2296
    iput-boolean v10, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    goto :goto_95

    .line 2303
    :cond_db
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_ea

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v5, :cond_ea

    .line 2306
    iput-object v9, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    goto :goto_9d

    .line 2307
    :cond_ea
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v8, :cond_9d

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    if-eqz v5, :cond_9d

    .line 2314
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2315
    .local v3, m:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9d

    .line 2322
    .end local v3           #m:Landroid/os/Message;
    :cond_103
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x10

    and-int/2addr v5, v6

    if-eqz v5, :cond_ac

    .line 2323
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    goto :goto_ac
.end method

.method private reportInjectionResult(I)Z
    .registers 5
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 6020
    packed-switch p1, :pswitch_data_28

    .line 6033
    :pswitch_4
    const-string v0, "WindowManager"

    const-string v1, "Input event injection failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 6034
    :goto_c
    return v0

    .line 6022
    :pswitch_d
    const-string v0, "WindowManager"

    const-string v1, "Input event injection permission denied."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6023
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6027
    :pswitch_1c
    const/4 v0, 0x1

    goto :goto_c

    .line 6029
    :pswitch_1e
    const-string v0, "WindowManager"

    const-string v1, "Input event injection timed out."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 6030
    goto :goto_c

    .line 6020
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_d
        :pswitch_4
        :pswitch_1e
    .end packed-switch
.end method

.method private setForcedDisplaySizeLocked(II)V
    .registers 9
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6689
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using new display size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6691
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 6692
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    .line 6693
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManagerPolicy;->setInitialDisplaySize(II)V

    .line 6695
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 6697
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v0

    .line 6698
    .local v0, configChanged:Z
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 6699
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 6700
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 6701
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_57

    .line 6702
    const/4 v0, 0x1

    .line 6706
    :cond_57
    if-eqz v0, :cond_65

    .line 6707
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 6708
    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    .line 6709
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 6712
    :cond_65
    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->rebuildBlackFrame(Z)V

    .line 6714
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 6715
    return-void
.end method

.method private shouldAllowDisableKeyguard()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4423
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d

    .line 4424
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 4426
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_1d

    .line 4427
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    if-nez v1, :cond_23

    move v1, v3

    :goto_1b
    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    .line 4432
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_1d
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    if-ne v1, v3, :cond_25

    move v1, v3

    :goto_22
    return v1

    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_23
    move v1, v4

    .line 4427
    goto :goto_1b

    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_25
    move v1, v4

    .line 4432
    goto :goto_22
.end method

.method private startFreezingDisplayLocked(Z)V
    .registers 11
    .parameter "inTransaction"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 8690
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v2, :cond_8

    .line 8739
    :cond_7
    :goto_7
    return-void

    .line 8694
    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 8696
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 8698
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/server/wm/WindowManagerService;->mFreezeGcPending:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_74

    .line 8699
    iget-wide v2, p0, Lcom/android/server/wm/WindowManagerService;->mFreezeGcPending:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_32

    .line 8701
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 8702
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 8703
    iput-wide v0, p0, Lcom/android/server/wm/WindowManagerService;->mFreezeGcPending:J

    .line 8709
    :cond_32
    :goto_32
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 8711
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v2}, Lcom/android/server/wm/InputMonitor;->freezeInputDispatchingLw()V

    .line 8713
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v2, v6, :cond_43

    .line 8714
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    .line 8715
    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 8716
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 8725
    :cond_43
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 8726
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 8727
    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 8729
    :cond_56
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-nez v2, :cond_67

    .line 8730
    new-instance v2, Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v2, v3, v4, v5, p1}, Lcom/android/server/wm/ScreenRotationAnimation;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/SurfaceSession;Z)V

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 8733
    :cond_67
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v2

    if-nez v2, :cond_7

    .line 8734
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/Surface;->freezeDisplay(I)V

    goto :goto_7

    .line 8706
    :cond_74
    iput-wide v0, p0, Lcom/android/server/wm/WindowManagerService;->mFreezeGcPending:J

    goto :goto_32
.end method

.method private stopFreezingDisplayLocked()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xf

    const/4 v7, 0x0

    .line 8742
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_9

    .line 8806
    :cond_8
    :goto_8
    return-void

    .line 8746
    :cond_9
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-nez v2, :cond_8

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-gtz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    if-nez v2, :cond_8

    .line 8750
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 8751
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 8756
    const/4 v1, 0x0

    .line 8758
    .local v1, updateRotation:Z
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 8760
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-wide/16 v4, 0x2710

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wm/ScreenRotationAnimation;->dismiss(Landroid/view/SurfaceSession;JF)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 8762
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->requestAnimationLocked(J)V

    .line 8776
    :goto_3e
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v2}, Lcom/android/server/wm/InputMonitor;->thawInputDispatchingLw()V

    .line 8784
    invoke-virtual {p0, v7}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v0

    .line 8791
    .local v0, configChanged:Z
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 8792
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v8}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8795
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 8797
    if-eqz v1, :cond_67

    .line 8799
    const/16 v2, -0x3e8

    invoke-virtual {p0, v2, v7, v7}, Lcom/android/server/wm/WindowManagerService;->setRotationUncheckedLocked(IIZ)Z

    move-result v2

    or-int/2addr v0, v2

    .line 8803
    :cond_67
    if-eqz v0, :cond_8

    .line 8804
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 8764
    .end local v0           #configChanged:Z
    :cond_71
    iput-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 8765
    const/4 v1, 0x1

    goto :goto_3e

    .line 8768
    :cond_75
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v2, :cond_80

    .line 8769
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 8770
    iput-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 8772
    :cond_80
    const/4 v1, 0x1

    .line 8773
    invoke-static {v7}, Landroid/view/Surface;->unfreezeDisplay(I)V

    goto :goto_3e
.end method

.method private tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z
    .registers 9
    .parameter "token"

    .prologue
    const/4 v6, 0x1

    .line 4103
    iget-object v5, p1, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4104
    .local v0, NW:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v0, :cond_34

    .line 4105
    iget-object v5, p1, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 4107
    .local v4, win:Lcom/android/server/wm/WindowState;
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4108
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 4109
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4110
    .local v3, j:I
    :goto_1f
    if-lez v3, :cond_31

    .line 4111
    add-int/lit8 v3, v3, -0x1

    .line 4112
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4115
    .local v1, cwin:Lcom/android/server/wm/WindowState;
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 4104
    .end local v1           #cwin:Lcom/android/server/wm/WindowState;
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4118
    .end local v3           #j:I
    .end local v4           #win:Lcom/android/server/wm/WindowState;
    :cond_34
    if-lez v0, :cond_38

    move v5, v6

    :goto_37
    return v5

    :cond_38
    const/4 v5, 0x0

    goto :goto_37
.end method

.method private tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I
    .registers 8
    .parameter "interestingPos"
    .parameter "win"

    .prologue
    .line 1241
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1242
    .local v3, wpos:I
    if-ltz v3, :cond_38

    .line 1243
    if-ge v3, p1, :cond_c

    add-int/lit8 p1, p1, -0x1

    .line 1245
    :cond_c
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1246
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1247
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1248
    .local v0, NC:I
    :cond_1a
    :goto_1a
    if-lez v0, :cond_38

    .line 1249
    add-int/lit8 v0, v0, -0x1

    .line 1250
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1251
    .local v2, cw:Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1252
    .local v1, cpos:I
    if-ltz v1, :cond_1a

    .line 1253
    if-ge v1, p1, :cond_32

    add-int/lit8 p1, p1, -0x1

    .line 1256
    :cond_32
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1a

    .line 1260
    .end local v0           #NC:I
    .end local v1           #cpos:I
    .end local v2           #cw:Lcom/android/server/wm/WindowState;
    :cond_38
    return p1
.end method

.method private updateFocusedWindowLocked(IZ)Z
    .registers 16
    .parameter "mode"
    .parameter "updateInputWindows"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    .line 8541
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->computeFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 8542
    .local v4, newFocus:Lcom/android/server/wm/WindowState;
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v8, v4, :cond_95

    .line 8545
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 8546
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 8549
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 8550
    .local v5, oldFocus:Lcom/android/server/wm/WindowState;
    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 8551
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8553
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 8554
    .local v3, imWindow:Lcom/android/server/wm/WindowState;
    if-eq v4, v3, :cond_37

    if-eq v5, v3, :cond_37

    .line 8555
    if-eq p1, v10, :cond_88

    if-eq p1, v12, :cond_88

    move v8, v10

    :goto_2a
    invoke-virtual {p0, v8}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 8558
    iput-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 8560
    :cond_32
    if-ne p1, v9, :cond_8a

    .line 8561
    invoke-direct {p0, v10, p2}, Lcom/android/server/wm/WindowManagerService;->performLayoutLockedInner(ZZ)I

    .line 8569
    :cond_37
    :goto_37
    if-eq p1, v10, :cond_3c

    .line 8572
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->finishUpdateFocusedWindowAfterAssignLayersLocked(Z)V

    .line 8580
    :cond_3c
    sget-boolean v8, Lcom/android/server/wm/WindowManagerService;->DEBUG_SSI_AUTOTEST:Z

    if-ne v8, v10, :cond_86

    .line 8581
    const-string v8, "SystemCallbacks"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/ISystemCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISystemCallbacks;

    move-result-object v1

    .line 8584
    .local v1, callbacks:Landroid/os/ISystemCallbacks;
    const/4 v0, 0x0

    .line 8585
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 8586
    .local v7, windowName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 8587
    .local v6, token:Landroid/view/IApplicationToken;
    if-eqz v1, :cond_86

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_86

    .line 8588
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8589
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v8, "event"

    const-string v9, "windowFocusChanged"

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8591
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v6

    .line 8592
    if-eqz v6, :cond_72

    .line 8593
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 8594
    if-eqz v7, :cond_72

    .line 8595
    const-string v8, "windowName"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8599
    :cond_72
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_83

    .line 8600
    const-string v8, "windowType"

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8604
    :cond_83
    :try_start_83
    invoke-interface {v1, v0}, Landroid/os/ISystemCallbacks;->onNotify(Landroid/os/Bundle;)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_86} :catch_90

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #callbacks:Landroid/os/ISystemCallbacks;
    .end local v6           #token:Landroid/view/IApplicationToken;
    .end local v7           #windowName:Ljava/lang/String;
    :cond_86
    :goto_86
    move v8, v10

    .line 8613
    .end local v3           #imWindow:Lcom/android/server/wm/WindowState;
    .end local v5           #oldFocus:Lcom/android/server/wm/WindowState;
    :goto_87
    return v8

    .restart local v3       #imWindow:Lcom/android/server/wm/WindowState;
    .restart local v5       #oldFocus:Lcom/android/server/wm/WindowState;
    :cond_88
    move v8, v11

    .line 8555
    goto :goto_2a

    .line 8562
    :cond_8a
    if-ne p1, v12, :cond_37

    .line 8565
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    goto :goto_37

    .line 8605
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #callbacks:Landroid/os/ISystemCallbacks;
    .restart local v6       #token:Landroid/view/IApplicationToken;
    .restart local v7       #windowName:Ljava/lang/String;
    :catch_90
    move-exception v2

    .line 8606
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_86

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #callbacks:Landroid/os/ISystemCallbacks;
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #imWindow:Lcom/android/server/wm/WindowState;
    .end local v5           #oldFocus:Lcom/android/server/wm/WindowState;
    .end local v6           #token:Landroid/view/IApplicationToken;
    .end local v7           #windowName:Ljava/lang/String;
    :cond_95
    move v8, v11

    .line 8613
    goto :goto_87
.end method

.method private updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .registers 9
    .parameter "currentConfig"
    .parameter "freezeThisOneIfNeeded"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3331
    const/4 v0, 0x0

    .line 3333
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 3334
    if-eqz p2, :cond_16

    .line 3335
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 3337
    .local v1, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_16

    .line 3338
    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;I)V

    .line 3342
    .end local v1           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3361
    :cond_1a
    :goto_1a
    return-object v0

    .line 3344
    :cond_1b
    if-eqz p1, :cond_1a

    .line 3349
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 3350
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v3, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 3351
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3352
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_1a

    .line 3353
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 3354
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 3355
    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    .line 3356
    new-instance v0, Landroid/content/res/Configuration;

    .end local v0           #config:Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .restart local v0       #config:Landroid/content/res/Configuration;
    goto :goto_1a
.end method


# virtual methods
.method public addAppToken(ILandroid/view/IApplicationToken;IIZ)V
    .registers 14
    .parameter "addPos"
    .parameter "token"
    .parameter "groupId"
    .parameter "requestedOrientation"
    .parameter "fullscreen"

    .prologue
    .line 3149
    const-string v4, "android.permission.MANAGE_APP_TOKENS"

    const-string v5, "addAppToken()"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 3151
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3162
    :cond_12
    :try_start_12
    invoke-interface {p2}, Landroid/view/IApplicationToken;->getKeyDispatchingTimeout()J
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_42

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    mul-long v1, v4, v6

    .line 3168
    .local v1, inputDispatchingTimeoutNanos:J
    :goto_1b
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3169
    :try_start_1e
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    .line 3170
    .local v3, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v3, :cond_50

    .line 3171
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to add existing app token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_73

    .line 3189
    :goto_41
    return-void

    .line 3163
    .end local v1           #inputDispatchingTimeoutNanos:J
    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catch_42
    move-exception v0

    .line 3164
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "Could not get dispatching timeout."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3165
    const-wide v1, 0x12a05f200L

    .restart local v1       #inputDispatchingTimeoutNanos:J
    goto :goto_1b

    .line 3174
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_50
    :try_start_50
    new-instance v3, Lcom/android/server/wm/AppWindowToken;

    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    invoke-direct {v3, p0, p2}, Lcom/android/server/wm/AppWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;)V

    .line 3175
    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iput-wide v1, v3, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    .line 3176
    iput p3, v3, Lcom/android/server/wm/AppWindowToken;->groupId:I

    .line 3177
    iput-boolean p5, v3, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    .line 3178
    iput p4, v3, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 3180
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3181
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3184
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    .line 3185
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 3188
    monitor-exit v4

    goto :goto_41

    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_73
    move-exception v5

    monitor-exit v4
    :try_end_75
    .catchall {:try_start_50 .. :try_end_75} :catchall_73

    throw v5
.end method

.method addInputMethodWindowToListLocked(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .parameter "win"

    .prologue
    const/4 v2, 0x1

    .line 1198
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    .line 1199
    .local v0, pos:I
    if-ltz v0, :cond_1a

    .line 1200
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v1, p1, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1203
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1204
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1205
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1211
    :goto_19
    return-void

    .line 1208
    :cond_1a
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1209
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 1210
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_19
.end method

.method public addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I
    .registers 32
    .parameter "session"
    .parameter "client"
    .parameter "attrs"
    .parameter "viewVisibility"
    .parameter "outContentInsets"
    .parameter "outInputChannel"

    .prologue
    .line 1952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I

    move-result v22

    .line 1953
    .local v22, res:I
    if-eqz v22, :cond_11

    move/from16 v6, v22

    .line 2156
    :goto_10
    return v6

    .line 1957
    :cond_11
    const/16 v21, 0x0

    .line 1958
    .local v21, reportNewConfig:Z
    const/4 v10, 0x0

    .line 1959
    .local v10, attachedWindow:Lcom/android/server/wm/WindowState;
    const/16 v23, 0x0

    .line 1962
    .local v23, win:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 1963
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v6, v0

    if-nez v6, :cond_31

    .line 1964
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Display has not been initialialized"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_2c

    .line 2148
    :catchall_2c
    move-exception v6

    move-object/from16 v5, v23

    .end local v23           #win:Lcom/android/server/wm/WindowState;
    .local v5, win:Lcom/android/server/wm/WindowState;
    :goto_2f
    :try_start_2f
    monitor-exit v24
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_1dd

    throw v6

    .line 1967
    .end local v5           #win:Lcom/android/server/wm/WindowState;
    .restart local v23       #win:Lcom/android/server/wm/WindowState;
    :cond_31
    :try_start_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v6, v0

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 1968
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Window "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is already added"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    const/4 v6, -0x5

    monitor-exit v24

    goto :goto_10

    .line 1972
    :cond_64
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_e6

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7cf

    if-gt v6, v7, :cond_e6

    .line 1973
    const/4 v6, 0x0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v10

    .line 1974
    if-nez v10, :cond_af

    .line 1975
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with token that is not a window: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    const/4 v6, -0x2

    monitor-exit v24

    goto/16 :goto_10

    .line 1979
    :cond_af
    iget-object v6, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_e6

    iget-object v6, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-gt v6, v7, :cond_e6

    .line 1981
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with token that is a sub-window: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    const/4 v6, -0x2

    monitor-exit v24

    goto/16 :goto_10

    .line 1987
    :cond_e6
    const/4 v13, 0x0

    .line 1988
    .local v13, addToken:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowToken;

    .line 1989
    .local v9, token:Lcom/android/server/wm/WindowToken;
    if-nez v9, :cond_1e0

    .line 1990
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x1

    if-lt v6, v7, :cond_131

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x63

    if-gt v6, v7, :cond_131

    .line 1992
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add application window with unknown token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    const/4 v6, -0x1

    monitor-exit v24

    goto/16 :goto_10

    .line 1996
    :cond_131
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_161

    .line 1997
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add input method window with unknown token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    const/4 v6, -0x1

    monitor-exit v24

    goto/16 :goto_10

    .line 2001
    :cond_161
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_191

    .line 2002
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add wallpaper window with unknown token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    const/4 v6, -0x1

    monitor-exit v24

    goto/16 :goto_10

    .line 2006
    :cond_191
    new-instance v9, Lcom/android/server/wm/WindowToken;

    .end local v9           #token:Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v6, v0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 2007
    .restart local v9       #token:Lcom/android/server/wm/WindowToken;
    const/4 v13, 0x1

    .line 2040
    :cond_1a4
    new-instance v5, Lcom/android/server/wm/WindowState;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v5 .. v12}, Lcom/android/server/wm/WindowState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;I)V
    :try_end_1b3
    .catchall {:try_start_31 .. :try_end_1b3} :catchall_2c

    .line 2042
    .end local v23           #win:Lcom/android/server/wm/WindowState;
    .restart local v5       #win:Lcom/android/server/wm/WindowState;
    :try_start_1b3
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    if-nez v6, :cond_2b9

    .line 2045
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding window client "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " that is dead, aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    const/4 v6, -0x4

    monitor-exit v24
    :try_end_1db
    .catchall {:try_start_1b3 .. :try_end_1db} :catchall_1dd

    goto/16 :goto_10

    .line 2148
    .end local v9           #token:Lcom/android/server/wm/WindowToken;
    .end local v13           #addToken:Z
    :catchall_1dd
    move-exception v6

    goto/16 :goto_2f

    .line 2008
    .end local v5           #win:Lcom/android/server/wm/WindowState;
    .restart local v9       #token:Lcom/android/server/wm/WindowToken;
    .restart local v13       #addToken:Z
    .restart local v23       #win:Lcom/android/server/wm/WindowState;
    :cond_1e0
    :try_start_1e0
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x1

    if-lt v6, v7, :cond_24d

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x63

    if-gt v6, v7, :cond_24d

    .line 2010
    iget-object v14, v9, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 2011
    .local v14, atoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v14, :cond_217

    .line 2012
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with non-application token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    const/4 v6, -0x3

    monitor-exit v24

    goto/16 :goto_10

    .line 2015
    :cond_217
    iget-boolean v6, v14, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v6, :cond_23d

    .line 2016
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with exiting application token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    const/4 v6, -0x4

    monitor-exit v24

    goto/16 :goto_10

    .line 2020
    :cond_23d
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1a4

    iget-boolean v6, v14, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v6, :cond_1a4

    .line 2024
    const/4 v6, -0x6

    monitor-exit v24

    goto/16 :goto_10

    .line 2026
    .end local v14           #atoken:Lcom/android/server/wm/AppWindowToken;
    :cond_24d
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_283

    .line 2027
    iget v6, v9, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v7, 0x7db

    if-eq v6, v7, :cond_1a4

    .line 2028
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add input method window with bad token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    const/4 v6, -0x1

    monitor-exit v24

    goto/16 :goto_10

    .line 2032
    :cond_283
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_1a4

    .line 2033
    iget v6, v9, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v7, 0x7dd

    if-eq v6, v7, :cond_1a4

    .line 2034
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add wallpaper window with bad token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    const/4 v6, -0x1

    monitor-exit v24
    :try_end_2b7
    .catchall {:try_start_1e0 .. :try_end_2b7} :catchall_2c

    goto/16 :goto_10

    .line 2050
    .end local v23           #win:Lcom/android/server/wm/WindowState;
    .restart local v5       #win:Lcom/android/server/wm/WindowState;
    :cond_2b9
    :try_start_2b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    .line 2052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v22

    .line 2053
    if-eqz v22, :cond_2d7

    .line 2054
    monitor-exit v24

    move/from16 v6, v22

    goto/16 :goto_10

    .line 2057
    :cond_2d7
    if-eqz p6, :cond_2fb

    .line 2058
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->makeInputChannelName()Ljava/lang/String;

    move-result-object v18

    .line 2059
    .local v18, name:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v17

    .line 2060
    .local v17, inputChannels:[Landroid/view/InputChannel;
    const/4 v6, 0x0

    aget-object v6, v17, v6

    iput-object v6, v5, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 2061
    const/4 v6, 0x1

    aget-object v6, v17, v6

    move-object v0, v6

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/view/InputChannel;->transferToBinderOutParameter(Landroid/view/InputChannel;)V

    .line 2063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    move-object v6, v0

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/InputManager;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;)V

    .line 2068
    .end local v17           #inputChannels:[Landroid/view/InputChannel;
    .end local v18           #name:Ljava/lang/String;
    :cond_2fb
    const/16 v22, 0x0

    .line 2070
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 2072
    .local v19, origId:J
    if-eqz v13, :cond_310

    .line 2073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v7, v0

    invoke-virtual {v6, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2075
    :cond_310
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->attach()V

    .line 2076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v6, v0

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2078
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_32f

    iget-object v6, v9, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_32f

    .line 2080
    iget-object v6, v9, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v5, v6, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 2083
    :cond_32f
    const/16 v16, 0x1

    .line 2085
    .local v16, imMayMove:Z
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_3c8

    .line 2086
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2087
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->addInputMethodWindowToListLocked(Lcom/android/server/wm/WindowState;)V

    .line 2088
    const/16 v16, 0x0

    .line 2104
    :cond_347
    :goto_347
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    .line 2106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V

    .line 2108
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    move v6, v0

    if-eqz v6, :cond_360

    .line 2109
    or-int/lit8 v22, v22, 0x1

    .line 2111
    :cond_360
    if-eqz v5, :cond_36c

    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_36c

    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v6, v6, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-nez v6, :cond_36e

    .line 2112
    :cond_36c
    or-int/lit8 v22, v22, 0x2

    .line 2115
    :cond_36e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 2117
    const/4 v15, 0x0

    .line 2118
    .local v15, focusChanged:Z
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v6

    if-eqz v6, :cond_38b

    .line 2119
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v15

    .line 2121
    if-eqz v15, :cond_38b

    .line 2122
    const/16 v16, 0x0

    .line 2126
    :cond_38b
    if-eqz v16, :cond_394

    .line 2127
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 2130
    :cond_394
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 2136
    if-eqz v15, :cond_3a0

    .line 2137
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowManagerService;->finishUpdateFocusedWindowAfterAssignLayersLocked(Z)V

    .line 2139
    :cond_3a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2145
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v6

    if-eqz v6, :cond_3bb

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v6

    if-eqz v6, :cond_3bb

    .line 2146
    const/16 v21, 0x1

    .line 2148
    :cond_3bb
    monitor-exit v24
    :try_end_3bc
    .catchall {:try_start_2b9 .. :try_end_3bc} :catchall_1dd

    .line 2150
    if-eqz v21, :cond_3c1

    .line 2151
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 2154
    :cond_3c1
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v6, v22

    .line 2156
    goto/16 :goto_10

    .line 2089
    .end local v15           #focusChanged:Z
    :cond_3c8
    :try_start_3c8
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7dc

    if-ne v6, v7, :cond_3e8

    .line 2090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2091
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 2092
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustInputMethodDialogsLocked()V

    .line 2093
    const/16 v16, 0x0

    goto/16 :goto_347

    .line 2095
    :cond_3e8
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 2096
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_405

    .line 2097
    const-wide/16 v6, 0x0

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 2098
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    goto/16 :goto_347

    .line 2099
    :cond_405
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v6, v0

    const/high16 v7, 0x10

    and-int/2addr v6, v7

    if-eqz v6, :cond_347

    .line 2100
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I
    :try_end_412
    .catchall {:try_start_3c8 .. :try_end_412} :catchall_1dd

    goto/16 :goto_347
.end method

.method public addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 5441
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5442
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5443
    monitor-exit v0

    .line 5444
    return-void

    .line 5443
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public addWindowToken(Landroid/os/IBinder;I)V
    .registers 8
    .parameter "token"
    .parameter "type"

    .prologue
    .line 3075
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "addWindowToken()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3077
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3080
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3081
    :try_start_15
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 3082
    .local v0, wtoken:Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_39

    .line 3083
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add existing input method token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3084
    monitor-exit v1

    .line 3092
    :goto_38
    return-void

    .line 3086
    :cond_39
    new-instance v0, Lcom/android/server/wm/WindowToken;

    .end local v0           #wtoken:Lcom/android/server/wm/WindowToken;
    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 3087
    .restart local v0       #wtoken:Lcom/android/server/wm/WindowToken;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3088
    const/16 v2, 0x7dd

    if-ne p2, v2, :cond_4d

    .line 3089
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3091
    :cond_4d
    monitor-exit v1

    goto :goto_38

    .end local v0           #wtoken:Lcom/android/server/wm/WindowToken;
    :catchall_4f
    move-exception v2

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_15 .. :try_end_51} :catchall_4f

    throw v2
.end method

.method adjustInputMethodDialogsLocked()V
    .registers 2

    .prologue
    .line 1430
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1431
    return-void
.end method

.method adjustWallpaperWindowsLocked()I
    .registers 34

    .prologue
    .line 1451
    const/4 v6, 0x0

    .line 1453
    .local v6, changed:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move v10, v0

    .line 1454
    .local v10, dw:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    move v9, v0

    .line 1458
    .local v9, dh:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v15, v0

    .line 1459
    .local v15, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1460
    .local v5, N:I
    const/16 v27, 0x0

    .line 1461
    .local v27, w:Lcom/android/server/wm/WindowState;
    const/4 v13, 0x0

    .line 1462
    .local v13, foundW:Lcom/android/server/wm/WindowState;
    const/4 v12, 0x0

    .line 1463
    .local v12, foundI:I
    const/16 v24, 0x0

    .line 1464
    .local v24, topCurW:Lcom/android/server/wm/WindowState;
    const/16 v23, 0x0

    .line 1465
    .local v23, topCurI:I
    const/16 v30, -0x1

    .line 1466
    .local v30, windowDetachedI:I
    move v14, v5

    .line 1467
    .local v14, i:I
    :cond_1f
    :goto_1f
    if-lez v14, :cond_d7

    .line 1468
    add-int/lit8 v14, v14, -0x1

    .line 1469
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27           #w:Lcom/android/server/wm/WindowState;
    check-cast v27, Lcom/android/server/wm/WindowState;

    .line 1470
    .restart local v27       #w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v31, v0

    const/16 v32, 0x7dd

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_44

    .line 1471
    if-nez v24, :cond_1f

    .line 1472
    move-object/from16 v24, v27

    .line 1473
    move/from16 v23, v14

    goto :goto_1f

    .line 1477
    :cond_44
    const/16 v24, 0x0

    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_76

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_76

    .line 1481
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    move/from16 v31, v0

    if-eqz v31, :cond_76

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1f

    .line 1490
    :cond_76
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v31, v0

    const/high16 v32, 0x10

    and-int v31, v31, v32

    if-eqz v31, :cond_106

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v31

    if-eqz v31, :cond_106

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_aa

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    move/from16 v31, v0

    if-nez v31, :cond_106

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    move/from16 v31, v0

    if-nez v31, :cond_106

    .line 1495
    :cond_aa
    move-object/from16 v13, v27

    .line 1496
    move v12, v14

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_d7

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_cf

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-nez v31, :cond_1f

    :cond_cf
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-nez v31, :cond_1f

    .line 1513
    :cond_d7
    if-nez v13, :cond_df

    if-ltz v30, :cond_df

    .line 1516
    move-object/from16 v13, v27

    .line 1517
    move/from16 v12, v30

    .line 1520
    :cond_df
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_122

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-eqz v31, :cond_116

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_116

    .line 1532
    const/16 v31, 0x0

    .line 1763
    .end local v5           #N:I
    :goto_105
    return v31

    .line 1508
    .restart local v5       #N:I
    :cond_106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_1f

    .line 1509
    move/from16 v30, v14

    goto/16 :goto_1f

    .line 1534
    :cond_116
    if-eqz v13, :cond_122

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_122

    .line 1537
    const/16 v31, 0x0

    goto :goto_105

    .line 1541
    :cond_122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object v1, v13

    if-eq v0, v1, :cond_3ba

    .line 1547
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1548
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    .line 1551
    .local v21, oldW:Lcom/android/server/wm/WindowState;
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1555
    if-eqz v13, :cond_1c8

    if-eqz v21, :cond_1c8

    .line 1556
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-nez v31, :cond_16a

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3a1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3a1

    :cond_16a
    const/16 v31, 0x1

    move/from16 v18, v31

    .line 1558
    .local v18, oldAnim:Z
    :goto_16e
    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-nez v31, :cond_189

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3a7

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3a7

    :cond_189
    const/16 v31, 0x1

    move/from16 v11, v31

    .line 1564
    .local v11, foundAnim:Z
    :goto_18d
    if-eqz v11, :cond_1c8

    if-eqz v18, :cond_1c8

    .line 1565
    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 1569
    .local v19, oldI:I
    if-ltz v19, :cond_1c8

    .line 1577
    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1b4

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1b4

    .line 1581
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1587
    :cond_1b4
    move v0, v12

    move/from16 v1, v19

    if-le v0, v1, :cond_3ad

    .line 1592
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1593
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1594
    move-object/from16 v13, v21

    .line 1595
    move/from16 v12, v19

    .line 1625
    .end local v11           #foundAnim:Z
    .end local v18           #oldAnim:Z
    .end local v19           #oldI:I
    .end local v21           #oldW:Lcom/android/server/wm/WindowState;
    :cond_1c8
    :goto_1c8
    if-eqz v13, :cond_44a

    const/16 v31, 0x1

    move/from16 v26, v31

    .line 1626
    .local v26, visible:Z
    :goto_1ce
    if-eqz v26, :cond_277

    .line 1629
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v26

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-nez v31, :cond_450

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_450

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    move/from16 v31, v0

    :goto_1f1
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Landroid/view/WindowManagerPolicy;->getMaxWallpaperLayer()I

    move-result v31

    move/from16 v0, v31

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v31, v0

    move/from16 v0, v31

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    .line 1647
    .local v17, maxLayer:I
    :goto_20d
    if-lez v12, :cond_277

    .line 1648
    const/16 v31, 0x1

    sub-int v31, v12, v31

    move-object v0, v15

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/WindowState;

    .line 1649
    .local v29, wb:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v17

    if-ge v0, v1, :cond_454

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object v1, v13

    if-eq v0, v1, :cond_454

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-eqz v31, :cond_24b

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_454

    :cond_24b
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_277

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_277

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v31, v0

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_454

    .line 1666
    .end local v17           #maxLayer:I
    .end local v29           #wb:Lcom/android/server/wm/WindowState;
    :cond_277
    if-nez v13, :cond_45a

    if-eqz v24, :cond_45a

    .line 1669
    move-object/from16 v13, v24

    .line 1670
    add-int/lit8 v12, v23, 0x1

    .line 1677
    .end local v5           #N:I
    :goto_27f
    if-eqz v26, :cond_2ed

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_2b7

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    .line 1682
    :cond_2b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_2ed

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    .line 1690
    :cond_2ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1691
    .local v7, curTokenIndex:I
    :cond_2f7
    if-lez v7, :cond_4ac

    .line 1692
    add-int/lit8 v7, v7, -0x1

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/WindowToken;

    .line 1694
    .local v22, token:Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v26

    if-ne v0, v1, :cond_32a

    .line 1695
    or-int/lit8 v6, v6, 0x4

    .line 1696
    if-nez v26, :cond_471

    const/16 v31, 0x1

    :goto_31c
    move/from16 v0, v31

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 1699
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1702
    :cond_32a
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1703
    .local v8, curWallpaperIndex:I
    :goto_334
    if-lez v8, :cond_2f7

    .line 1704
    add-int/lit8 v8, v8, -0x1

    .line 1705
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/wm/WindowState;

    .line 1707
    .local v28, wallpaper:Lcom/android/server/wm/WindowState;
    if-eqz v26, :cond_356

    .line 1708
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move v2, v10

    move v3, v9

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 1713
    :cond_356
    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v26

    if-eq v0, v1, :cond_375

    .line 1714
    move/from16 v0, v26

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    .line 1719
    :try_start_368
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_375
    .catch Landroid/os/RemoteException; {:try_start_368 .. :try_end_375} :catch_4b0

    .line 1724
    :cond_375
    :goto_375
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    .line 1730
    move-object/from16 v0, v28

    move-object v1, v13

    if-ne v0, v1, :cond_47b

    .line 1731
    add-int/lit8 v12, v12, -0x1

    .line 1732
    if-lez v12, :cond_475

    const/16 v31, 0x1

    sub-int v31, v12, v31

    move-object v0, v15

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    move-object v13, v5

    .line 1734
    :goto_3a0
    goto :goto_334

    .line 1556
    .end local v7           #curTokenIndex:I
    .end local v8           #curWallpaperIndex:I
    .end local v22           #token:Lcom/android/server/wm/WindowToken;
    .end local v26           #visible:Z
    .end local v28           #wallpaper:Lcom/android/server/wm/WindowState;
    .restart local v5       #N:I
    .restart local v21       #oldW:Lcom/android/server/wm/WindowState;
    :cond_3a1
    const/16 v31, 0x0

    move/from16 v18, v31

    goto/16 :goto_16e

    .line 1558
    .restart local v18       #oldAnim:Z
    :cond_3a7
    const/16 v31, 0x0

    move/from16 v11, v31

    goto/16 :goto_18d

    .line 1601
    .restart local v11       #foundAnim:Z
    .restart local v19       #oldI:I
    :cond_3ad
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1602
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto/16 :goto_1c8

    .line 1608
    .end local v11           #foundAnim:Z
    .end local v18           #oldAnim:Z
    .end local v19           #oldI:I
    .end local v21           #oldW:Lcom/android/server/wm/WindowState;
    :cond_3ba
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1c8

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-nez v31, :cond_3f2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_440

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-eqz v31, :cond_440

    :cond_3f2
    const/16 v31, 0x1

    move/from16 v16, v31

    .line 1613
    .local v16, lowerAnimating:Z
    :goto_3f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-nez v31, :cond_426

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_445

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-eqz v31, :cond_445

    :cond_426
    const/16 v31, 0x1

    move/from16 v25, v31

    .line 1616
    .local v25, upperAnimating:Z
    :goto_42a
    if-eqz v16, :cond_42e

    if-nez v25, :cond_1c8

    .line 1620
    :cond_42e
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1621
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto/16 :goto_1c8

    .line 1610
    .end local v16           #lowerAnimating:Z
    .end local v25           #upperAnimating:Z
    :cond_440
    const/16 v31, 0x0

    move/from16 v16, v31

    goto :goto_3f6

    .line 1613
    .restart local v16       #lowerAnimating:Z
    :cond_445
    const/16 v31, 0x0

    move/from16 v25, v31

    goto :goto_42a

    .line 1625
    .end local v16           #lowerAnimating:Z
    :cond_44a
    const/16 v31, 0x0

    move/from16 v26, v31

    goto/16 :goto_1ce

    .line 1635
    .restart local v26       #visible:Z
    :cond_450
    const/16 v31, 0x0

    goto/16 :goto_1f1

    .line 1659
    .restart local v17       #maxLayer:I
    .restart local v29       #wb:Lcom/android/server/wm/WindowState;
    :cond_454
    move-object/from16 v13, v29

    .line 1660
    add-int/lit8 v12, v12, -0x1

    .line 1661
    goto/16 :goto_20d

    .line 1674
    .end local v17           #maxLayer:I
    .end local v29           #wb:Lcom/android/server/wm/WindowState;
    :cond_45a
    if-lez v12, :cond_46c

    const/16 v31, 0x1

    sub-int v31, v12, v31

    move-object v0, v15

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #N:I
    check-cast v5, Lcom/android/server/wm/WindowState;

    move-object v13, v5

    :goto_46a
    goto/16 :goto_27f

    .restart local v5       #N:I
    :cond_46c
    const/16 v31, 0x0

    move-object/from16 v13, v31

    goto :goto_46a

    .line 1696
    .end local v5           #N:I
    .restart local v7       #curTokenIndex:I
    .restart local v22       #token:Lcom/android/server/wm/WindowToken;
    :cond_471
    const/16 v31, 0x0

    goto/16 :goto_31c

    .line 1732
    .restart local v8       #curWallpaperIndex:I
    .restart local v28       #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_475
    const/16 v31, 0x0

    move-object/from16 v13, v31

    goto/16 :goto_3a0

    .line 1740
    :cond_47b
    move-object v0, v15

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v20

    .line 1741
    .local v20, oldIndex:I
    if-ltz v20, :cond_499

    .line 1744
    move-object v0, v15

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1745
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1746
    move/from16 v0, v20

    move v1, v12

    if-ge v0, v1, :cond_499

    .line 1747
    add-int/lit8 v12, v12, -0x1

    .line 1757
    :cond_499
    move-object v0, v15

    move v1, v12

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1758
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1759
    or-int/lit8 v6, v6, 0x2

    .line 1760
    goto/16 :goto_334

    .end local v8           #curWallpaperIndex:I
    .end local v20           #oldIndex:I
    .end local v22           #token:Lcom/android/server/wm/WindowToken;
    .end local v28           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_4ac
    move/from16 v31, v6

    .line 1763
    goto/16 :goto_105

    .line 1720
    .restart local v8       #curWallpaperIndex:I
    .restart local v22       #token:Lcom/android/server/wm/WindowToken;
    .restart local v28       #wallpaper:Lcom/android/server/wm/WindowState;
    :catch_4b0
    move-exception v31

    goto/16 :goto_375
.end method

.method applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z
    .registers 9
    .parameter "win"
    .parameter "transit"
    .parameter "isEntrance"

    .prologue
    const/4 v4, 0x1

    .line 2836
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mLocalAnimating:Z

    if-eqz v3, :cond_b

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mAnimationIsEntrance:Z

    if-ne v3, p3, :cond_b

    move v3, v4

    .line 2891
    :goto_a
    return v3

    .line 2846
    :cond_b
    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v3, :cond_48

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 2847
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3, p1, p2}, Landroid/view/WindowManagerPolicy;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v1

    .line 2848
    .local v1, anim:I
    const/4 v2, -0x1

    .line 2849
    .local v2, attr:I
    const/4 v0, 0x0

    .line 2850
    .local v0, a:Landroid/view/animation/Animation;
    if-eqz v1, :cond_34

    .line 2851
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2875
    :cond_27
    :goto_27
    if-eqz v0, :cond_2e

    .line 2884
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2885
    iput-boolean p3, p1, Lcom/android/server/wm/WindowState;->mAnimationIsEntrance:Z

    .line 2891
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #anim:I
    .end local v2           #attr:I
    :cond_2e
    :goto_2e
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_4c

    move v3, v4

    goto :goto_a

    .line 2853
    .restart local v0       #a:Landroid/view/animation/Animation;
    .restart local v1       #anim:I
    .restart local v2       #attr:I
    :cond_34
    sparse-switch p2, :sswitch_data_4e

    .line 2867
    :goto_37
    if-ltz v2, :cond_27

    .line 2868
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_27

    .line 2855
    :sswitch_40
    const/4 v2, 0x0

    .line 2856
    goto :goto_37

    .line 2858
    :sswitch_42
    const/4 v2, 0x1

    .line 2859
    goto :goto_37

    .line 2861
    :sswitch_44
    const/4 v2, 0x2

    .line 2862
    goto :goto_37

    .line 2864
    :sswitch_46
    const/4 v2, 0x3

    goto :goto_37

    .line 2888
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #anim:I
    .end local v2           #attr:I
    :cond_48
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->clearAnimation()V

    goto :goto_2e

    .line 2891
    :cond_4c
    const/4 v3, 0x0

    goto :goto_a

    .line 2853
    :sswitch_data_4e
    .sparse-switch
        0x1001 -> :sswitch_40
        0x1003 -> :sswitch_44
        0x2002 -> :sswitch_42
        0x2004 -> :sswitch_46
    .end sparse-switch
.end method

.method applyEnterAnimationLocked(Lcom/android/server/wm/WindowState;)V
    .registers 4
    .parameter "win"

    .prologue
    .line 2825
    const/16 v0, 0x1003

    .line 2826
    .local v0, transit:I
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    if-eqz v1, :cond_b

    .line 2827
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    .line 2828
    const/16 v0, 0x1001

    .line 2831
    :cond_b
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    .line 2832
    return-void
.end method

.method public canStatusBarHide()Z
    .registers 2

    .prologue
    .line 6726
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->canStatusBarHide()Z

    move-result v0

    return v0
.end method

.method checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "permission"
    .parameter "func"

    .prologue
    const/4 v3, 0x1

    .line 3050
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_d

    move v1, v3

    .line 3063
    :goto_c
    return v1

    .line 3054
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_17

    move v1, v3

    .line 3056
    goto :goto_c

    .line 3058
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3062
    .local v0, msg:Ljava/lang/String;
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public clearForcedDisplaySize()V
    .registers 5

    .prologue
    .line 6718
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 6719
    :try_start_3
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(II)V

    .line 6720
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_size_forced"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6722
    monitor-exit v0

    .line 6723
    return-void

    .line 6722
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .registers 7
    .parameter "reason"

    .prologue
    .line 4506
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4507
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_c
    if-ltz v0, :cond_22

    .line 4508
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4509
    .local v1, w:Lcom/android/server/wm/WindowState;
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_24

    if-eqz v3, :cond_1f

    .line 4511
    :try_start_1a
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3, p1}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_24
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_27

    .line 4507
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 4516
    .end local v1           #w:Lcom/android/server/wm/WindowState;
    :cond_22
    :try_start_22
    monitor-exit v2

    .line 4517
    return-void

    .line 4516
    .end local v0           #i:I
    :catchall_24
    move-exception v3

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_24

    throw v3

    .line 4512
    .restart local v0       #i:I
    .restart local v1       #w:Lcom/android/server/wm/WindowState;
    :catch_27
    move-exception v3

    goto :goto_1f
.end method

.method computeForcedAppOrientationLocked()I
    .registers 3

    .prologue
    .line 3403
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getOrientationFromWindowsLocked()I

    move-result v0

    .line 3404
    .local v0, req:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 3405
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getOrientationFromAppTokensLocked()I

    move-result v0

    .line 3407
    :cond_b
    return v0
.end method

.method public computeNewConfiguration()Landroid/content/res/Configuration;
    .registers 4

    .prologue
    .line 5514
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5515
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v0

    .line 5516
    .local v0, config:Landroid/content/res/Configuration;
    if-nez v0, :cond_13

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v2, :cond_13

    .line 5518
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 5519
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 5521
    :cond_13
    monitor-exit v1

    return-object v0

    .line 5522
    .end local v0           #config:Landroid/content/res/Configuration;
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v2
.end method

.method computeNewConfigurationLocked()Landroid/content/res/Configuration;
    .registers 3

    .prologue
    .line 5526
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 5527
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 5528
    const/4 v1, 0x0

    .line 5530
    :goto_c
    return-object v1

    :cond_d
    move-object v1, v0

    goto :goto_c
.end method

.method computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z
    .registers 26
    .parameter "config"

    .prologue
    .line 5592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v21, v0

    if-nez v21, :cond_b

    .line 5593
    const/16 v21, 0x0

    .line 5750
    :goto_a
    return v21

    .line 5596
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputManager;->getInputConfiguration(Landroid/content/res/Configuration;)V

    .line 5599
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2e6

    :cond_34
    const/16 v21, 0x1

    move/from16 v15, v21

    .line 5601
    .local v15, rotated:Z
    :goto_38
    if-eqz v15, :cond_2ec

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    move/from16 v21, v0

    move/from16 v14, v21

    .line 5602
    .local v14, realdw:I
    :goto_42
    if-eqz v15, :cond_2f6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    move/from16 v21, v0

    move/from16 v13, v21

    .line 5604
    .local v13, realdh:I
    :goto_4c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    move/from16 v21, v0

    if-eqz v21, :cond_316

    .line 5605
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 5606
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    .line 5607
    if-le v14, v13, :cond_300

    .line 5609
    move v0, v13

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3fa66666

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move v11, v0

    .line 5610
    .local v11, maxw:I
    if-ge v11, v14, :cond_74

    .line 5611
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 5625
    .end local v11           #maxw:I
    :cond_74
    :goto_74
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    move v7, v0

    .line 5626
    .local v7, dw:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    move v5, v0

    .line 5628
    .local v5, dh:I
    const/4 v12, 0x3

    .line 5629
    .local v12, orientation:I
    if-ge v7, v5, :cond_322

    .line 5630
    const/4 v12, 0x1

    .line 5634
    :cond_82
    :goto_82
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 5636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object v6, v0

    .line 5637
    .local v6, dm:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 5641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v7

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move/from16 v0, v21

    move-object v1, v6

    iput v0, v1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    move/from16 v0, v21

    move-object v1, v6

    iput v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 5643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    move/from16 v0, v21

    move-object v1, v6

    iput v0, v1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    move/from16 v0, v21

    move-object v1, v6

    iput v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    .line 5649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v7

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(II)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object v0, v6

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 5650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(II)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object v0, v6

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 5651
    move-object v0, v6

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    move v1, v15

    move v2, v7

    move v3, v5

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->computeSmallestWidth(ZIIF)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 5653
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 5654
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 5655
    move-object/from16 v0, p0

    move v1, v15

    move-object v2, v6

    move v3, v7

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->computeCompatSmallestWidth(ZLandroid/util/DisplayMetrics;II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 5662
    if-eqz v15, :cond_327

    .line 5663
    move/from16 v20, v5

    .line 5664
    .local v20, unrotDw:I
    move/from16 v19, v7

    .line 5669
    .local v19, unrotDh:I
    :goto_1b5
    const/16 v21, 0x0

    move-object v0, v6

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFI)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 5671
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move-object v0, v6

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFI)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 5673
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move-object v0, v6

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFI)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 5675
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move-object v0, v6

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFI)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 5680
    move v9, v7

    .line 5681
    .local v9, longSize:I
    move/from16 v17, v5

    .line 5682
    .local v17, shortSize:I
    move v0, v9

    move/from16 v1, v17

    if-ge v0, v1, :cond_241

    .line 5683
    move/from16 v18, v9

    .line 5684
    .local v18, tmp:I
    move/from16 v9, v17

    .line 5685
    move/from16 v17, v18

    .line 5687
    .end local v18           #tmp:I
    :cond_241
    move v0, v9

    int-to-float v0, v0

    move/from16 v21, v0

    move-object v0, v6

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move v9, v0

    .line 5688
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    move-object v0, v6

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v17, v0

    .line 5694
    const/16 v21, 0x1d6

    move v0, v9

    move/from16 v1, v21

    if-ge v0, v1, :cond_32d

    .line 5697
    const/16 v16, 0x11

    .line 5728
    .local v16, screenLayout:I
    :goto_26a
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 5731
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_37c

    const/16 v21, 0x1

    move/from16 v8, v21

    .line 5732
    .local v8, hardKeyboardAvailable:Z
    :goto_282
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    move/from16 v21, v0

    move v0, v8

    move/from16 v1, v21

    if-eq v0, v1, :cond_2ad

    .line 5733
    move v0, v8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .line 5734
    move v0, v8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    .line 5736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v21, v0

    const/16 v22, 0x16

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 5737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v21, v0

    const/16 v22, 0x16

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 5739
    :cond_2ad
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    move/from16 v21, v0

    if-nez v21, :cond_2bd

    .line 5740
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/res/Configuration;->keyboard:I

    .line 5746
    :cond_2bd
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 5747
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 5748
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 5749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;)V

    .line 5750
    const/16 v21, 0x1

    goto/16 :goto_a

    .line 5599
    .end local v5           #dh:I
    .end local v6           #dm:Landroid/util/DisplayMetrics;
    .end local v7           #dw:I
    .end local v8           #hardKeyboardAvailable:Z
    .end local v9           #longSize:I
    .end local v12           #orientation:I
    .end local v13           #realdh:I
    .end local v14           #realdw:I
    .end local v15           #rotated:Z
    .end local v16           #screenLayout:I
    .end local v17           #shortSize:I
    .end local v19           #unrotDh:I
    .end local v20           #unrotDw:I
    :cond_2e6
    const/16 v21, 0x0

    move/from16 v15, v21

    goto/16 :goto_38

    .line 5601
    .restart local v15       #rotated:Z
    :cond_2ec
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    move/from16 v21, v0

    move/from16 v14, v21

    goto/16 :goto_42

    .line 5602
    .restart local v14       #realdw:I
    :cond_2f6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    move/from16 v21, v0

    move/from16 v13, v21

    goto/16 :goto_4c

    .line 5615
    .restart local v13       #realdh:I
    :cond_300
    move v0, v14

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3fa66666

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move v10, v0

    .line 5616
    .local v10, maxh:I
    if-ge v10, v13, :cond_74

    .line 5617
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    goto/16 :goto_74

    .line 5621
    .end local v10           #maxh:I
    :cond_316
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 5622
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    goto/16 :goto_74

    .line 5631
    .restart local v5       #dh:I
    .restart local v7       #dw:I
    .restart local v12       #orientation:I
    :cond_322
    if-le v7, v5, :cond_82

    .line 5632
    const/4 v12, 0x2

    goto/16 :goto_82

    .line 5666
    .restart local v6       #dm:Landroid/util/DisplayMetrics;
    :cond_327
    move/from16 v20, v7

    .line 5667
    .restart local v20       #unrotDw:I
    move/from16 v19, v5

    .restart local v19       #unrotDh:I
    goto/16 :goto_1b5

    .line 5701
    .restart local v9       #longSize:I
    .restart local v17       #shortSize:I
    :cond_32d
    const/16 v21, 0x3c0

    move v0, v9

    move/from16 v1, v21

    if-lt v0, v1, :cond_363

    const/16 v21, 0x2d0

    move/from16 v0, v17

    move/from16 v1, v21

    if-lt v0, v1, :cond_363

    .line 5704
    const/16 v16, 0x4

    .line 5716
    .restart local v16       #screenLayout:I
    :goto_33e
    const/16 v21, 0x141

    move/from16 v0, v17

    move/from16 v1, v21

    if-gt v0, v1, :cond_34d

    const/16 v21, 0x23a

    move v0, v9

    move/from16 v1, v21

    if-le v0, v1, :cond_351

    .line 5717
    :cond_34d
    const/high16 v21, 0x1000

    or-int v16, v16, v21

    .line 5721
    :cond_351
    mul-int/lit8 v21, v9, 0x3

    div-int/lit8 v21, v21, 0x5

    const/16 v22, 0x1

    sub-int v22, v17, v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_378

    .line 5723
    or-int/lit8 v16, v16, 0x20

    goto/16 :goto_26a

    .line 5705
    .end local v16           #screenLayout:I
    :cond_363
    const/16 v21, 0x280

    move v0, v9

    move/from16 v1, v21

    if-lt v0, v1, :cond_375

    const/16 v21, 0x1e0

    move/from16 v0, v17

    move/from16 v1, v21

    if-lt v0, v1, :cond_375

    .line 5708
    const/16 v16, 0x3

    .restart local v16       #screenLayout:I
    goto :goto_33e

    .line 5710
    .end local v16           #screenLayout:I
    :cond_375
    const/16 v16, 0x2

    .restart local v16       #screenLayout:I
    goto :goto_33e

    .line 5725
    :cond_378
    or-int/lit8 v16, v16, 0x10

    goto/16 :goto_26a

    .line 5731
    :cond_37c
    const/16 v21, 0x0

    move/from16 v8, v21

    goto/16 :goto_282
.end method

.method createWatermark()V
    .registers 10

    .prologue
    .line 8828
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v6, :cond_5

    .line 8854
    :cond_4
    :goto_4
    return-void

    .line 8832
    :cond_5
    new-instance v0, Ljava/io/File;

    const-string v6, "/system/etc/setup.conf"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8833
    .local v0, file:Ljava/io/File;
    const/4 v1, 0x0

    .line 8835
    .local v1, in:Ljava/io/FileInputStream;
    :try_start_d
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_41
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_4a

    .line 8836
    .end local v1           #in:Ljava/io/FileInputStream;
    .local v2, in:Ljava/io/FileInputStream;
    :try_start_12
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 8837
    .local v3, ind:Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 8838
    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_33

    .line 8839
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 8840
    .local v5, toks:[Ljava/lang/String;
    if-eqz v5, :cond_33

    array-length v6, v5

    if-lez v6, :cond_33

    .line 8841
    new-instance v6, Lcom/android/server/wm/Watermark;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v6, v7, v8, v5}, Lcom/android/server/wm/Watermark;-><init>(Landroid/view/Display;Landroid/view/SurfaceSession;[Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_55
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_33} :catch_5b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_33} :catch_58

    .line 8847
    .end local v5           #toks:[Ljava/lang/String;
    :cond_33
    if-eqz v2, :cond_38

    .line 8849
    :try_start_35
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_53

    :cond_38
    :goto_38
    move-object v1, v2

    .line 8853
    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_4

    .line 8847
    .end local v3           #ind:Ljava/io/DataInputStream;
    .end local v4           #line:Ljava/lang/String;
    :catchall_3a
    move-exception v6

    :goto_3b
    if-eqz v1, :cond_40

    .line 8849
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_51

    .line 8847
    :cond_40
    :goto_40
    throw v6

    .line 8844
    :catch_41
    move-exception v6

    .line 8847
    :goto_42
    if-eqz v1, :cond_4

    .line 8849
    :try_start_44
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_4

    .line 8850
    :catch_48
    move-exception v6

    goto :goto_4

    .line 8845
    :catch_4a
    move-exception v6

    .line 8847
    :goto_4b
    if-eqz v1, :cond_4

    .line 8849
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_50} :catch_48

    goto :goto_4

    .line 8850
    :catch_51
    move-exception v7

    goto :goto_40

    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v3       #ind:Ljava/io/DataInputStream;
    .restart local v4       #line:Ljava/lang/String;
    :catch_53
    move-exception v6

    goto :goto_38

    .line 8847
    .end local v3           #ind:Ljava/io/DataInputStream;
    .end local v4           #line:Ljava/lang/String;
    :catchall_55
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_3b

    .line 8845
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_58
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_4b

    .line 8844
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_5b
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_42
.end method

.method public detectSafeMode()Z
    .registers 4

    .prologue
    .line 6062
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/InputMonitor;->waitForInputDevicesReady(J)Z

    move-result v0

    if-nez v0, :cond_11

    .line 6064
    const-string v0, "WindowManager"

    const-string v1, "Devices still not ready after waiting 1000 milliseconds before attempting to detect safe mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6069
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->detectSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    .line 6070
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    return v0
.end method

.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .parameter "token"
    .parameter "tag"

    .prologue
    .line 4436
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 4438
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4441
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v0

    .line 4442
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1, p1, p2}, Landroid/os/TokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 4443
    monitor-exit v0

    .line 4444
    return-void

    .line 4443
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v8, 0x1

    .line 8876
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_34

    .line 8878
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump WindowManager from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9117
    :goto_33
    return-void

    .line 8884
    :cond_34
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v6, p2}, Lcom/android/server/wm/InputManager;->dump(Ljava/io/PrintWriter;)V

    .line 8885
    const-string v6, " "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8887
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 8888
    :try_start_41
    const-string v7, "Current Window Manager state:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8889
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    .local v0, i:I
    :goto_4e
    if-ltz v0, :cond_75

    .line 8890
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 8891
    .local v5, w:Lcom/android/server/wm/WindowState;
    const-string v7, "  Window #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 8892
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8893
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8889
    add-int/lit8 v0, v0, -0x1

    goto :goto_4e

    .line 8895
    .end local v5           #w:Lcom/android/server/wm/WindowState;
    :cond_75
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_ac

    .line 8896
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8897
    const-string v7, "  Input method dialogs:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8898
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    :goto_8f
    if-ltz v0, :cond_ac

    .line 8899
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 8900
    .restart local v5       #w:Lcom/android/server/wm/WindowState;
    const-string v7, "  IM Dialog #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8898
    add-int/lit8 v0, v0, -0x1

    goto :goto_8f

    .line 8903
    .end local v5           #w:Lcom/android/server/wm/WindowState;
    :cond_ac
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_ed

    .line 8904
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8905
    const-string v7, "  Remove pending for:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8906
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    :goto_c6
    if-ltz v0, :cond_ed

    .line 8907
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 8908
    .restart local v5       #w:Lcom/android/server/wm/WindowState;
    const-string v7, "  Remove #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 8909
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8910
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8906
    add-int/lit8 v0, v0, -0x1

    goto :goto_c6

    .line 8913
    .end local v5           #w:Lcom/android/server/wm/WindowState;
    :cond_ed
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v7, :cond_132

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_132

    .line 8914
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8915
    const-string v7, "  Windows force removing:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8916
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    :goto_10b
    if-ltz v0, :cond_132

    .line 8917
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 8918
    .restart local v5       #w:Lcom/android/server/wm/WindowState;
    const-string v7, "  Removing #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 8919
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8920
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8916
    add-int/lit8 v0, v0, -0x1

    goto :goto_10b

    .line 8923
    .end local v5           #w:Lcom/android/server/wm/WindowState;
    :cond_132
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_173

    .line 8924
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8925
    const-string v7, "  Windows waiting to destroy their surface:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8926
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    :goto_14c
    if-ltz v0, :cond_173

    .line 8927
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 8928
    .restart local v5       #w:Lcom/android/server/wm/WindowState;
    const-string v7, "  Destroy #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 8929
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8930
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8926
    add-int/lit8 v0, v0, -0x1

    goto :goto_14c

    .line 8933
    .end local v5           #w:Lcom/android/server/wm/WindowState;
    :cond_173
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1b4

    .line 8934
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8935
    const-string v7, "  Windows losing focus:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8936
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    :goto_18d
    if-ltz v0, :cond_1b4

    .line 8937
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 8938
    .restart local v5       #w:Lcom/android/server/wm/WindowState;
    const-string v7, "  Losing #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 8939
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8940
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8936
    add-int/lit8 v0, v0, -0x1

    goto :goto_18d

    .line 8943
    .end local v5           #w:Lcom/android/server/wm/WindowState;
    :cond_1b4
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1f5

    .line 8944
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8945
    const-string v7, "  Windows waiting to resize:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8946
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    :goto_1ce
    if-ltz v0, :cond_1f5

    .line 8947
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 8948
    .restart local v5       #w:Lcom/android/server/wm/WindowState;
    const-string v7, "  Resizing #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 8949
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8950
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8946
    add-int/lit8 v0, v0, -0x1

    goto :goto_1ce

    .line 8953
    .end local v5           #w:Lcom/android/server/wm/WindowState;
    :cond_1f5
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_22f

    .line 8954
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8955
    const-string v7, "  All active sessions:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8956
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 8957
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/Session;>;"
    :goto_20d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22f

    .line 8958
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Session;

    .line 8959
    .local v3, s:Lcom/android/server/wm/Session;
    const-string v7, "  Session "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 8960
    const-string v7, "    "

    invoke-virtual {v3, p2, v7}, Lcom/android/server/wm/Session;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_20d

    .line 9116
    .end local v0           #i:I
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/Session;>;"
    .end local v3           #s:Lcom/android/server/wm/Session;
    :catchall_22c
    move-exception v7

    monitor-exit v6
    :try_end_22e
    .catchall {:try_start_41 .. :try_end_22e} :catchall_22c

    throw v7

    .line 8963
    .restart local v0       #i:I
    :cond_22f
    :try_start_22f
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_26c

    .line 8964
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8965
    const-string v7, "  All tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8966
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 8967
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/WindowToken;>;"
    :goto_24b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_26c

    .line 8968
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    .line 8969
    .local v4, token:Lcom/android/server/wm/WindowToken;
    const-string v7, "  Token "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 8970
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_24b

    .line 8973
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/WindowToken;>;"
    .end local v4           #token:Lcom/android/server/wm/WindowToken;
    :cond_26c
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2ad

    .line 8974
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8975
    const-string v7, "  Wallpaper tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8976
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    :goto_286
    if-ltz v0, :cond_2ad

    .line 8977
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    .line 8978
    .restart local v4       #token:Lcom/android/server/wm/WindowToken;
    const-string v7, "  Wallpaper #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8979
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 8980
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8976
    add-int/lit8 v0, v0, -0x1

    goto :goto_286

    .line 8983
    .end local v4           #token:Lcom/android/server/wm/WindowToken;
    :cond_2ad
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2e2

    .line 8984
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8985
    const-string v7, "  Application tokens in Z order:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8986
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    :goto_2c7
    if-ltz v0, :cond_2e2

    .line 8987
    const-string v7, "  App #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8988
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8986
    add-int/lit8 v0, v0, -0x1

    goto :goto_2c7

    .line 8991
    :cond_2e2
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_323

    .line 8992
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8993
    const-string v7, "  Finishing start of application tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8994
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    :goto_2fc
    if-ltz v0, :cond_323

    .line 8995
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    .line 8996
    .restart local v4       #token:Lcom/android/server/wm/WindowToken;
    const-string v7, "  Finished Starting #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8997
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 8998
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8994
    add-int/lit8 v0, v0, -0x1

    goto :goto_2fc

    .line 9001
    .end local v4           #token:Lcom/android/server/wm/WindowToken;
    :cond_323
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_364

    .line 9002
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9003
    const-string v7, "  Exiting tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9004
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    :goto_33d
    if-ltz v0, :cond_364

    .line 9005
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    .line 9006
    .restart local v4       #token:Lcom/android/server/wm/WindowToken;
    const-string v7, "  Exiting #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9007
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 9008
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9004
    add-int/lit8 v0, v0, -0x1

    goto :goto_33d

    .line 9011
    .end local v4           #token:Lcom/android/server/wm/WindowToken;
    :cond_364
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3a5

    .line 9012
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9013
    const-string v7, "  Exiting application tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9014
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    :goto_37e
    if-ltz v0, :cond_3a5

    .line 9015
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    .line 9016
    .restart local v4       #token:Lcom/android/server/wm/WindowToken;
    const-string v7, "  Exiting App #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9017
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 9018
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9014
    add-int/lit8 v0, v0, -0x1

    goto :goto_37e

    .line 9021
    .end local v4           #token:Lcom/android/server/wm/WindowToken;
    :cond_3a5
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9022
    const-string v7, "  mCurrentFocus="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9023
    const-string v7, "  mLastFocus="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9024
    const-string v7, "  mFocusedApp="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9025
    const-string v7, "  mInputMethodTarget="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9026
    const-string v7, "  mInputMethodWindow="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9027
    const-string v7, "  mWallpaperTarget="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9028
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_402

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_402

    .line 9029
    const-string v7, "  mLowerWallpaperTarget="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9030
    const-string v7, "  mUpperWallpaperTarget="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9032
    :cond_402
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_410

    .line 9033
    const-string v7, "  mWindowDetachedWallpaper="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9035
    :cond_410
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v7, :cond_420

    .line 9036
    const-string v7, "  mWindowAnimationBackgroundSurface:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9037
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    const-string v8, "    "

    invoke-virtual {v7, v8, p2}, Lcom/android/server/wm/DimSurface;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 9039
    :cond_420
    const-string v7, "  mCurConfiguration="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9040
    const-string v7, "  mInTouchMode="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 9041
    const-string v7, " mLayoutSeq="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 9042
    const-string v7, "  mSystemBooted="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 9043
    const-string v7, " mDisplayEnabled="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 9044
    const-string v7, "  mLayoutNeeded="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 9045
    const-string v7, " mBlurShown="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 9046
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v7, :cond_677

    .line 9047
    const-string v7, "  mDimAnimator:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9048
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    const-string v8, "    "

    invoke-virtual {v7, v8, p2}, Lcom/android/server/wm/DimAnimator;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 9052
    :goto_476
    const-string v7, "  mInputMethodAnimLayerAdjustment="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9053
    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 9054
    const-string v7, "  mWallpaperAnimLayerAdjustment="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9055
    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 9056
    const-string v7, "  mLastWallpaperX="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(F)V

    .line 9057
    const-string v7, " mLastWallpaperY="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(F)V

    .line 9058
    const-string v7, "  mDisplayFrozen="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 9059
    const-string v7, " mWindowsFreezingScreen="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 9060
    const-string v7, " mAppsFreezingScreen="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 9061
    const-string v7, " mWaitingForConfig="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 9062
    const-string v7, "  mRotation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 9063
    const-string v7, " mRequestedRotation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mRequestedRotation:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 9064
    const-string v7, " mAltOrientation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 9065
    const-string v7, "  mLastWindowForcedOrientation"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 9066
    const-string v7, " mForcedAppOrientation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 9067
    const-string v7, "  mDeferredRotation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotation:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 9068
    const-string v7, ", mDeferredRotationAnimFlags="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationAnimFlags:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 9069
    const-string v7, "  mAnimationPending="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 9070
    const-string v7, " mWindowAnimationScale="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(F)V

    .line 9071
    const-string v7, " mTransitionWindowAnimationScale="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(F)V

    .line 9072
    const-string v7, "  mNextAppTransition=0x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9073
    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9074
    const-string v7, " mAppTransitionReady="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 9075
    const-string v7, "  mAppTransitionRunning="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 9076
    const-string v7, " mAppTransitionTimeout="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 9077
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v7, :cond_580

    .line 9078
    const-string v7, "  mNextAppTransitionPackage="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9079
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9080
    const-string v7, " mNextAppTransitionEnter=0x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9081
    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionEnter:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9082
    const-string v7, " mNextAppTransitionExit=0x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9083
    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionExit:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9085
    :cond_580
    const-string v7, "  mStartingIconInTransition="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 9086
    const-string v7, ", mSkipAppTransitionAnimation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 9087
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5a6

    .line 9088
    const-string v7, "  mOpeningApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9090
    :cond_5a6
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5b8

    .line 9091
    const-string v7, "  mClosingApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9093
    :cond_5b8
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5ca

    .line 9094
    const-string v7, "  mToTopApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9096
    :cond_5ca
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5dc

    .line 9097
    const-string v7, "  mToBottomApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9099
    :cond_5dc
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v7, :cond_67e

    .line 9100
    const-string v7, "  Display: init="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, "x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9101
    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " base="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9102
    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, "x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 9103
    const-string v7, " cur="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9104
    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, "x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 9105
    const-string v7, " app="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9106
    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, "x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 9107
    const-string v7, " real="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRealWidth()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 9108
    const-string v7, "x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRealHeight()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 9109
    const-string v7, " raw="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRawWidth()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 9110
    const-string v7, "x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRawHeight()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 9114
    :goto_668
    const-string v7, "  Policy:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9115
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const-string v8, "    "

    invoke-interface {v7, v8, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 9116
    monitor-exit v6

    goto/16 :goto_33

    .line 9050
    :cond_677
    const-string v7, "  no DimAnimator "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_476

    .line 9112
    :cond_67e
    const-string v7, "  NO DISPLAY"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_683
    .catchall {:try_start_22f .. :try_end_683} :catchall_22c

    goto :goto_668
.end method

.method dumpAppTokensLocked()V
    .registers 5

    .prologue
    .line 4122
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_3a

    .line 4123
    const-string v2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4122
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 4125
    :cond_3a
    return-void
.end method

.method dumpWindowsLocked()V
    .registers 5

    .prologue
    .line 4128
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_36

    .line 4129
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4128
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 4131
    :cond_36
    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 3

    .prologue
    .line 4675
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4676
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_9

    .line 4677
    monitor-exit v0

    .line 4683
    :goto_8
    return-void

    .line 4679
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    .line 4680
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 4682
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto :goto_8

    .line 4680
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public enableScreenIfNeededLocked()V
    .registers 4

    .prologue
    .line 4686
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_5

    .line 4693
    :cond_4
    :goto_4
    return-void

    .line 4689
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v0, :cond_4

    .line 4692
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method public executeAppTransition()V
    .registers 6

    .prologue
    .line 3538
    const-string v2, "android.permission.MANAGE_APP_TOKENS"

    const-string v3, "executeAppTransition()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 3540
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3543
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3550
    :try_start_15
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_27

    .line 3551
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 3552
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3553
    .local v0, origId:J
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3554
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3556
    .end local v0           #origId:J
    :cond_27
    monitor-exit v2

    .line 3557
    return-void

    .line 3556
    :catchall_29
    move-exception v3

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_29

    throw v3
.end method

.method public exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 4478
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 4480
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4482
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowManagerService$4;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 4491
    return-void
.end method

.method findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .registers 4
    .parameter "token"

    .prologue
    .line 3067
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 3068
    .local v0, wtoken:Lcom/android/server/wm/WindowToken;
    if-nez v0, :cond_c

    .line 3069
    const/4 v1, 0x0

    .line 3071
    :goto_b
    return-object v1

    :cond_c
    iget-object v1, v0, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_b
.end method

.method findDesiredInputMethodWindowIndexLocked(Z)I
    .registers 15
    .parameter "willMove"

    .prologue
    .line 1050
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 1051
    .local v5, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1052
    .local v0, N:I
    const/4 v8, 0x0

    .line 1053
    .local v8, w:Lcom/android/server/wm/WindowState;
    move v4, v0

    .line 1054
    .local v4, i:I
    :cond_8
    if-lez v4, :cond_3b

    .line 1055
    add-int/lit8 v4, v4, -0x1

    .line 1056
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #w:Lcom/android/server/wm/WindowState;
    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 1060
    .restart local v8       #w:Lcom/android/server/wm/WindowState;
    invoke-static {v8}, Lcom/android/server/wm/WindowManagerService;->canBeImeTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1068
    if-nez p1, :cond_3b

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3b

    if-lez v4, :cond_3b

    .line 1071
    const/4 v11, 0x1

    sub-int v11, v4, v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 1072
    .local v9, wb:Lcom/android/server/wm/WindowState;
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v11, v12, :cond_3b

    invoke-static {v9}, Lcom/android/server/wm/WindowManagerService;->canBeImeTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v11

    if-eqz v11, :cond_3b

    .line 1073
    add-int/lit8 v4, v4, -0x1

    .line 1074
    move-object v8, v9

    .line 1089
    .end local v9           #wb:Lcom/android/server/wm/WindowState;
    :cond_3b
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v11, :cond_5d

    if-eqz v8, :cond_5d

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v11

    if-eqz v11, :cond_5d

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-boolean v11, v11, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v11, :cond_5d

    .line 1092
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget v11, v11, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v12, v8, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_5d

    .line 1093
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1094
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1102
    :cond_5d
    if-eqz p1, :cond_ba

    if-eqz v8, :cond_ba

    .line 1103
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1104
    .local v1, curTarget:Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_ba

    iget-object v11, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_ba

    .line 1110
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1111
    .local v7, token:Lcom/android/server/wm/AppWindowToken;
    const/4 v3, 0x0

    .line 1112
    .local v3, highestTarget:Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    .line 1113
    .local v2, highestPos:I
    iget-boolean v11, v7, Lcom/android/server/wm/AppWindowToken;->animating:Z

    if-nez v11, :cond_75

    iget-object v11, v7, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v11, :cond_86

    .line 1114
    :cond_75
    const/4 v6, 0x0

    .line 1115
    .local v6, pos:I
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 1116
    :goto_7a
    if-ltz v6, :cond_86

    .line 1117
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 1118
    .local v10, win:Lcom/android/server/wm/WindowState;
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v11, v7, :cond_95

    .line 1132
    .end local v6           #pos:I
    .end local v10           #win:Lcom/android/server/wm/WindowState;
    :cond_86
    if-eqz v3, :cond_ba

    .line 1139
    iget v11, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_a6

    .line 1142
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    .line 1143
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1144
    add-int/lit8 v11, v2, 0x1

    .line 1194
    .end local v1           #curTarget:Lcom/android/server/wm/WindowState;
    .end local v2           #highestPos:I
    .end local v3           #highestTarget:Lcom/android/server/wm/WindowState;
    .end local v7           #token:Lcom/android/server/wm/AppWindowToken;
    :goto_94
    return v11

    .line 1121
    .restart local v1       #curTarget:Lcom/android/server/wm/WindowState;
    .restart local v2       #highestPos:I
    .restart local v3       #highestTarget:Lcom/android/server/wm/WindowState;
    .restart local v6       #pos:I
    .restart local v7       #token:Lcom/android/server/wm/AppWindowToken;
    .restart local v10       #win:Lcom/android/server/wm/WindowState;
    :cond_95
    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v11, :cond_a3

    .line 1122
    if-eqz v3, :cond_a1

    iget v11, v10, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v12, v3, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_a3

    .line 1124
    :cond_a1
    move-object v3, v10

    .line 1125
    move v2, v6

    .line 1128
    :cond_a3
    add-int/lit8 v6, v6, -0x1

    .line 1129
    goto :goto_7a

    .line 1145
    .end local v6           #pos:I
    .end local v10           #win:Lcom/android/server/wm/WindowState;
    :cond_a6
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v11

    if-eqz v11, :cond_ba

    iget v11, v3, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v12, v8, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_ba

    .line 1151
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    .line 1152
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1153
    add-int/lit8 v11, v2, 0x1

    goto :goto_94

    .line 1160
    .end local v1           #curTarget:Lcom/android/server/wm/WindowState;
    .end local v2           #highestPos:I
    .end local v3           #highestTarget:Lcom/android/server/wm/WindowState;
    .end local v7           #token:Lcom/android/server/wm/AppWindowToken;
    :cond_ba
    if-eqz v8, :cond_d6

    .line 1161
    if-eqz p1, :cond_ce

    .line 1171
    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1172
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    .line 1173
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_d1

    .line 1174
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v11, v11, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 1179
    :cond_ce
    :goto_ce
    add-int/lit8 v11, v4, 0x1

    goto :goto_94

    .line 1176
    :cond_d1
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    goto :goto_ce

    .line 1181
    :cond_d6
    if-eqz p1, :cond_df

    .line 1191
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1192
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 1194
    :cond_df
    const/4 v11, -0x1

    goto :goto_94
.end method

.method public finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .registers 9
    .parameter "session"
    .parameter "client"

    .prologue
    .line 2774
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2775
    .local v0, origId:J
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 2776
    const/4 v4, 0x0

    :try_start_8
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2777
    .local v2, win:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->finishDrawingLocked()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 2778
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x10

    and-int/2addr v4, v5

    if-eqz v4, :cond_20

    .line 2779
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 2781
    :cond_20
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 2782
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2784
    :cond_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2b

    .line 2785
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2786
    return-void

    .line 2784
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :catchall_2b
    move-exception v4

    :try_start_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v4
.end method

.method public freezeRotation()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 4920
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "freezeRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 4922
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4927
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->setUserRotationMode(II)V

    .line 4928
    const/16 v0, -0x3e8

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/server/wm/WindowManagerService;->setRotationUnchecked(IZI)V

    .line 4929
    return-void
.end method

.method public getAnimationScale(I)F
    .registers 3
    .parameter "which"

    .prologue
    .line 4563
    packed-switch p1, :pswitch_data_c

    .line 4567
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 4564
    :pswitch_5
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_4

    .line 4565
    :pswitch_8
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_4

    .line 4563
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public getAnimationScales()[F
    .registers 4

    .prologue
    .line 4571
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getAppOrientation(Landroid/view/IApplicationToken;)I
    .registers 5
    .parameter "token"

    .prologue
    .line 3441
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3442
    :try_start_3
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3443
    .local v0, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_11

    .line 3444
    const/4 v2, -0x1

    monitor-exit v1

    move v1, v2

    .line 3447
    :goto_10
    return v1

    :cond_11
    iget v2, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    monitor-exit v1

    move v1, v2

    goto :goto_10

    .line 3448
    .end local v0           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v2
.end method

.method public getDPadKeycodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4647
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getDPadKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4649
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4651
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, 0x201

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getDPadScancodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4615
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getDPadScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4617
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4619
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, 0x201

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getDisplaySize(Landroid/graphics/Point;)V
    .registers 4
    .parameter "size"

    .prologue
    .line 6591
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 6592
    :try_start_3
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 6593
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 6594
    monitor-exit v0

    .line 6595
    return-void

    .line 6594
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .registers 3
    .parameter "deviceId"

    .prologue
    .line 4667
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public getInputDeviceIds()[I
    .registers 2

    .prologue
    .line 4671
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0}, Lcom/android/server/wm/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getKeycodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4623
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4625
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4627
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getKeycodeStateForDevice(II)I
    .registers 5
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4631
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getKeycodeStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4633
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4635
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/16 v1, -0x100

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getMaximumSizeDimension()I
    .registers 4

    .prologue
    .line 6598
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 6600
    :try_start_3
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    if-le v1, v2, :cond_d

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    :goto_b
    monitor-exit v0

    return v1

    :cond_d
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    goto :goto_b

    .line 6602
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public getOrientationFromAppTokensLocked()I
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x3

    .line 3241
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int v6, v8, v11

    .line 3242
    .local v6, pos:I
    const/4 v0, 0x0

    .line 3243
    .local v0, curGroup:I
    const/4 v4, -0x1

    .line 3244
    .local v4, lastOrientation:I
    const/4 v1, 0x0

    .line 3245
    .local v1, findingBehind:Z
    const/4 v2, 0x0

    .line 3246
    .local v2, haveGroup:Z
    const/4 v3, 0x0

    .line 3247
    .local v3, lastFullscreen:Z
    :cond_10
    :goto_10
    if-ltz v6, :cond_56

    .line 3248
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    .line 3249
    .local v7, wtoken:Lcom/android/server/wm/AppWindowToken;
    add-int/lit8 v6, v6, -0x1

    .line 3255
    if-nez v1, :cond_26

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v8, :cond_26

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v8, :cond_10

    .line 3262
    :cond_26
    if-nez v2, :cond_3f

    .line 3264
    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v8, :cond_10

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    if-nez v8, :cond_10

    .line 3269
    const/4 v2, 0x1

    .line 3270
    iget v0, v7, Lcom/android/server/wm/AppWindowToken;->groupId:I

    .line 3271
    iget v4, v7, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 3285
    :cond_35
    iget v5, v7, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 3289
    .local v5, or:I
    iget-boolean v3, v7, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    .line 3290
    if-eqz v3, :cond_49

    if-eq v5, v9, :cond_49

    move v8, v5

    .line 3307
    .end local v5           #or:I
    .end local v7           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :goto_3e
    return v8

    .line 3272
    .restart local v7       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_3f
    iget v8, v7, Lcom/android/server/wm/AppWindowToken;->groupId:I

    if-eq v0, v8, :cond_35

    .line 3278
    if-eq v4, v9, :cond_35

    if-eqz v3, :cond_35

    move v8, v4

    .line 3282
    goto :goto_3e

    .line 3298
    .restart local v5       #or:I
    :cond_49
    if-eq v5, v10, :cond_4f

    if-eq v5, v9, :cond_4f

    move v8, v5

    .line 3302
    goto :goto_3e

    .line 3304
    :cond_4f
    if-ne v5, v9, :cond_54

    move v8, v11

    :goto_52
    or-int/2addr v1, v8

    .line 3305
    goto :goto_10

    .line 3304
    :cond_54
    const/4 v8, 0x0

    goto :goto_52

    .end local v5           #or:I
    .end local v7           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_56
    move v8, v10

    .line 3307
    goto :goto_3e
.end method

.method public getOrientationFromWindowsLocked()I
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 3208
    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_15

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_18

    .line 3214
    :cond_15
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    .line 3237
    :goto_17
    return v3

    .line 3217
    :cond_18
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .line 3218
    .local v0, pos:I
    :cond_21
    if-ltz v0, :cond_4c

    .line 3219
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3220
    .local v2, wtoken:Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    .line 3221
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_35

    .line 3224
    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    move v3, v5

    goto :goto_17

    .line 3226
    :cond_35
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_21

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v3, :cond_21

    .line 3229
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3230
    .local v1, req:I
    if-eq v1, v5, :cond_21

    const/4 v3, 0x3

    if-eq v1, v3, :cond_21

    .line 3234
    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    move v3, v1

    goto :goto_17

    .line 3237
    .end local v1           #req:I
    .end local v2           #wtoken:Lcom/android/server/wm/WindowState;
    :cond_4c
    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    move v3, v5

    goto :goto_17
.end method

.method public getPendingAppTransition()I
    .registers 2

    .prologue
    .line 3525
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    return v0
.end method

.method public getRotation()I
    .registers 2

    .prologue
    .line 5121
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    return v0
.end method

.method public getScancodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4591
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4593
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4595
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getScancodeStateForDevice(II)I
    .registers 5
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4599
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getScancodeStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4601
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4603
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/16 v1, -0x100

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getSwitchState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4575
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getSwitchState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4577
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4579
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/high16 v2, -0x8000

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public getSwitchStateForDevice(II)I
    .registers 5
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4583
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getSwitchStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4585
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4587
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/high16 v1, -0x8000

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/InputManager;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public getTrackballKeycodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4639
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getTrackballKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4641
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4643
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const v2, 0x10004

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getTrackballScancodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4607
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getTrackballScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4609
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4611
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const v2, 0x10004

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getWindowDisplayFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .registers 7
    .parameter "session"
    .parameter "client"
    .parameter "outDisplayFrame"

    .prologue
    .line 2402
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2403
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2404
    .local v0, win:Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_f

    .line 2405
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 2406
    monitor-exit v1

    .line 2410
    :goto_e
    return-void

    .line 2408
    :cond_f
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2409
    monitor-exit v1

    goto :goto_e

    .end local v0           #win:Lcom/android/server/wm/WindowState;
    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw v2
.end method

.method public hasKeys([I[Z)Z
    .registers 6
    .parameter "keycodes"
    .parameter "keyExists"

    .prologue
    .line 4655
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/wm/InputManager;->hasKeys(II[I[Z)Z

    move-result v0

    return v0
.end method

.method public inKeyguardRestrictedInputMode()Z
    .registers 2

    .prologue
    .line 4494
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    return v0
.end method

.method public injectInputEventNoWait(Landroid/view/InputEvent;)Z
    .registers 11
    .parameter "ev"

    .prologue
    .line 6007
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 6008
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 6009
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6011
    .local v6, ident:J
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v4, 0x0

    const/16 v5, 0x7530

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v8

    .line 6015
    .local v8, result:I
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6016
    invoke-direct {p0, v8}, Lcom/android/server/wm/WindowManagerService;->reportInjectionResult(I)Z

    move-result v0

    return v0
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .registers 28
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 5903
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    .line 5904
    .local v3, downTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    .line 5906
    .local v5, eventTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    .line 5907
    .local v7, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    .line 5908
    .local v8, code:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    .line 5909
    .local v9, repeatCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v10

    .line 5910
    .local v10, metaState:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v11

    .line 5911
    .local v11, deviceId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v12

    .line 5912
    .local v12, scancode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    .line 5913
    .local v14, source:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v21

    .line 5915
    .local v21, flags:I
    if-nez v14, :cond_2c

    .line 5916
    const/16 v14, 0x101

    .line 5919
    :cond_2c
    const-wide/16 v15, 0x0

    cmp-long v13, v5, v15

    if-nez v13, :cond_36

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 5920
    :cond_36
    const-wide/16 v15, 0x0

    cmp-long v13, v3, v15

    if-nez v13, :cond_3d

    move-wide v3, v5

    .line 5922
    :cond_3d
    new-instance v2, Landroid/view/KeyEvent;

    or-int/lit8 v13, v21, 0x8

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 5925
    .local v2, newEvent:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 5926
    .local v17, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    .line 5927
    .local v18, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 5929
    .local v22, ident:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    move-object v15, v0

    if-eqz p2, :cond_6e

    const/4 v13, 0x2

    move/from16 v19, v13

    :goto_5a
    const/16 v20, 0x7530

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v20}, Lcom/android/server/wm/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v24

    .line 5934
    .local v24, result:I
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5935
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowManagerService;->reportInjectionResult(I)Z

    move-result v13

    return v13

    .line 5929
    .end local v24           #result:I
    :cond_6e
    const/4 v13, 0x1

    move/from16 v19, v13

    goto :goto_5a
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .registers 12
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 5950
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 5951
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5952
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 5954
    .local v6, ident:J
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 5955
    .local v1, newEvent:Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1d

    .line 5956
    const/16 v0, 0x1002

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 5959
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    if-eqz p2, :cond_30

    const/4 v4, 0x2

    :goto_22
    const/16 v5, 0x7530

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v8

    .line 5964
    .local v8, result:I
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5965
    invoke-direct {p0, v8}, Lcom/android/server/wm/WindowManagerService;->reportInjectionResult(I)Z

    move-result v0

    return v0

    .line 5959
    .end local v8           #result:I
    :cond_30
    const/4 v4, 0x1

    goto :goto_22
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .registers 12
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 5980
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 5981
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5982
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 5984
    .local v6, ident:J
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 5985
    .local v1, newEvent:Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1e

    .line 5986
    const v0, 0x10004

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 5989
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    if-eqz p2, :cond_31

    const/4 v4, 0x2

    :goto_23
    const/16 v5, 0x7530

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v8

    .line 5994
    .local v8, result:I
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5995
    invoke-direct {p0, v8}, Lcom/android/server/wm/WindowManagerService;->reportInjectionResult(I)Z

    move-result v0

    return v0

    .line 5989
    .end local v8           #result:I
    :cond_31
    const/4 v4, 0x1

    goto :goto_23
.end method

.method public inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .registers 11
    .parameter "client"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 6536
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6539
    const/4 v5, 0x0

    :try_start_6
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v1

    .line 6541
    .local v1, idx:I
    if-lez v1, :cond_74

    .line 6542
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    sub-int v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 6546
    .local v2, imFocus:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_74

    .line 6549
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3b

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_3b

    .line 6553
    const/4 v0, 0x0

    .local v0, i:I
    :goto_24
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3b

    .line 6554
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 6555
    .local v3, w:Lcom/android/server/wm/WindowState;
    if-eq v3, v2, :cond_52

    .line 6557
    move-object v2, v3

    .line 6567
    .end local v0           #i:I
    .end local v3           #w:Lcom/android/server/wm/WindowState;
    :cond_3b
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v5, v5, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v5, :cond_55

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v5, v5, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v5}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v5, v6, :cond_55

    .line 6569
    monitor-exit v4

    move v4, v7

    .line 6587
    .end local v2           #imFocus:Lcom/android/server/wm/WindowState;
    :goto_51
    return v4

    .line 6553
    .restart local v0       #i:I
    .restart local v2       #imFocus:Lcom/android/server/wm/WindowState;
    .restart local v3       #w:Lcom/android/server/wm/WindowState;
    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 6580
    .end local v0           #i:I
    .end local v3           #w:Lcom/android/server/wm/WindowState;
    :cond_55
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_74

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v5, v5, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v5, :cond_74

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v5, v5, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v5}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v5, v6, :cond_74

    .line 6582
    monitor-exit v4

    move v4, v7

    goto :goto_51

    .line 6586
    .end local v2           #imFocus:Lcom/android/server/wm/WindowState;
    :cond_74
    monitor-exit v4

    move v4, v8

    .line 6587
    goto :goto_51

    .line 6586
    .end local v1           #idx:I
    :catchall_77
    move-exception v5

    monitor-exit v4
    :try_end_79
    .catchall {:try_start_6 .. :try_end_79} :catchall_77

    throw v5
.end method

.method public isAsusEpKeyguardSecure()Z
    .registers 2

    .prologue
    .line 9131
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isAsusEpKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method public isHardKeyboardAvailable()Z
    .registers 3

    .prologue
    .line 5754
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5755
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    monitor-exit v0

    return v1

    .line 5756
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isHardKeyboardEnabled()Z
    .registers 3

    .prologue
    .line 5760
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5761
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    monitor-exit v0

    return v1

    .line 5762
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isKeyguardLocked()Z
    .registers 2

    .prologue
    .line 4498
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .registers 2

    .prologue
    .line 4502
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method public isViewServerRunning()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 5233
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 5241
    :goto_8
    return v0

    .line 5237
    :cond_9
    const-string v0, "android.permission.DUMP"

    const-string v1, "isViewServerRunning"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v2

    .line 5238
    goto :goto_8

    .line 5241
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_8

    :cond_23
    move v0, v2

    goto :goto_8
.end method

.method final isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .parameter "wallpaperTarget"

    .prologue
    .line 1440
    if-eqz p1, :cond_10

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_18

    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method logWindowList(Ljava/lang/String;)V
    .registers 6
    .parameter "prefix"

    .prologue
    .line 1279
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1280
    .local v0, N:I
    :goto_6
    if-lez v0, :cond_37

    .line 1281
    add-int/lit8 v0, v0, -0x1

    .line 1282
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1284
    :cond_37
    return-void
.end method

.method public monitor()V
    .registers 3

    .prologue
    .line 9121
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_9

    .line 9122
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v0

    :try_start_7
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_c

    .line 9123
    return-void

    .line 9121
    :catchall_9
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v1

    .line 9122
    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .registers 4
    .parameter "inputChannelName"

    .prologue
    .line 4659
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "monitorInput()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4661
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4663
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    return-object v0
.end method

.method public moveAppToken(ILandroid/os/IBinder;)V
    .registers 10
    .parameter "index"
    .parameter "token"

    .prologue
    .line 4229
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "moveAppToken()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 4231
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4234
    :cond_12
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4237
    :try_start_15
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 4241
    .local v2, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_23

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 4242
    :cond_23
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4244
    monitor-exit v3

    .line 4269
    :goto_4c
    return-void

    .line 4246
    :cond_4d
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4251
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4254
    .local v0, origId:J
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 4257
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v4

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    .line 4260
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 4262
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 4263
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 4264
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4265
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 4267
    :cond_79
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4268
    monitor-exit v3

    goto :goto_4c

    .end local v0           #origId:J
    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_7e
    move-exception v4

    monitor-exit v3
    :try_end_80
    .catchall {:try_start_15 .. :try_end_80} :catchall_7e

    throw v4
.end method

.method public moveAppTokensToBottom(Ljava/util/List;)V
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v8, -0x1

    .line 4381
    const-string v6, "android.permission.MANAGE_APP_TOKENS"

    const-string v7, "moveAppTokensToBottom()"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 4383
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4386
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4387
    .local v2, origId:J
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 4388
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    .line 4389
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4390
    .local v0, N:I
    const/4 v4, 0x0

    .line 4391
    .local v4, pos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_23
    if-ge v1, v0, :cond_54

    .line 4392
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    .line 4393
    .local v5, wt:Lcom/android/server/wm/AppWindowToken;
    if-eqz v5, :cond_51

    .line 4396
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4397
    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v6, v8, :cond_4f

    .line 4398
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4399
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4400
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4401
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->sendingToTop:Z

    .line 4402
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    .line 4404
    :cond_4f
    add-int/lit8 v4, v4, 0x1

    .line 4391
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 4408
    .end local v5           #wt:Lcom/android/server/wm/AppWindowToken;
    :cond_54
    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-ne v6, v8, :cond_5c

    .line 4409
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/android/server/wm/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    .line 4411
    :cond_5c
    monitor-exit v7
    :try_end_5d
    .catchall {:try_start_1a .. :try_end_5d} :catchall_61

    .line 4412
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4413
    return-void

    .line 4411
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v4           #pos:I
    :catchall_61
    move-exception v6

    :try_start_62
    monitor-exit v7
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v6
.end method

.method public moveAppTokensToTop(Ljava/util/List;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v7, -0x1

    .line 4348
    const-string v5, "android.permission.MANAGE_APP_TOKENS"

    const-string v6, "moveAppTokensToTop()"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 4350
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4353
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4354
    .local v2, origId:J
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 4355
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    .line 4356
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4357
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    if-ge v1, v0, :cond_51

    .line 4358
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v4

    .line 4359
    .local v4, wt:Lcom/android/server/wm/AppWindowToken;
    if-eqz v4, :cond_4e

    .line 4362
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4363
    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v5, v7, :cond_4e

    .line 4364
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4365
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4366
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4367
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    .line 4368
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/wm/AppWindowToken;->sendingToTop:Z

    .line 4357
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 4373
    .end local v4           #wt:Lcom/android/server/wm/AppWindowToken;
    :cond_51
    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-ne v5, v7, :cond_5e

    .line 4374
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    .line 4376
    :cond_5e
    monitor-exit v6
    :try_end_5f
    .catchall {:try_start_1a .. :try_end_5f} :catchall_63

    .line 4377
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4378
    return-void

    .line 4376
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_63
    move-exception v5

    :try_start_64
    monitor-exit v6
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v5
.end method

.method moveInputMethodDialogsLocked(I)V
    .registers 9
    .parameter "pos"

    .prologue
    .line 1287
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    .line 1289
    .local v1, dialogs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1291
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v0, :cond_16

    .line 1292
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, p1, v6}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result p1

    .line 1291
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1299
    :cond_16
    if-ltz p1, :cond_44

    .line 1300
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1301
    .local v3, targetAppToken:Lcom/android/server/wm/AppWindowToken;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p1, v6, :cond_32

    .line 1302
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 1303
    .local v5, wp:Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, v6, :cond_32

    .line 1304
    add-int/lit8 p1, p1, 0x1

    .line 1308
    .end local v5           #wp:Lcom/android/server/wm/WindowState;
    :cond_32
    const/4 v2, 0x0

    :goto_33
    if-ge v2, v0, :cond_56

    .line 1309
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1310
    .local v4, win:Lcom/android/server/wm/WindowState;
    iput-object v3, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1311
    invoke-direct {p0, p1, v4}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result p1

    .line 1308
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 1319
    .end local v3           #targetAppToken:Lcom/android/server/wm/AppWindowToken;
    .end local v4           #win:Lcom/android/server/wm/WindowState;
    :cond_44
    const/4 v2, 0x0

    :goto_45
    if-ge v2, v0, :cond_56

    .line 1320
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1321
    .restart local v4       #win:Lcom/android/server/wm/WindowState;
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1322
    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V

    .line 1319
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 1328
    .end local v4           #win:Lcom/android/server/wm/WindowState;
    :cond_56
    return-void
.end method

.method moveInputMethodWindowsIfNeededLocked(Z)Z
    .registers 15
    .parameter "needAssignLayers"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 1331
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 1332
    .local v6, imWin:Lcom/android/server/wm/WindowState;
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1333
    .local v0, DN:I
    if-nez v6, :cond_12

    if-nez v0, :cond_12

    move v8, v9

    .line 1426
    :goto_11
    return v8

    .line 1337
    :cond_12
    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v5

    .line 1338
    .local v5, imPos:I
    if-ltz v5, :cond_9b

    .line 1344
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1345
    .local v1, N:I
    if-ge v5, v1, :cond_67

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    move-object v4, v8

    .line 1350
    .local v4, firstImWin:Lcom/android/server/wm/WindowState;
    :goto_29
    if-eqz v6, :cond_69

    move-object v2, v6

    .line 1352
    .local v2, baseImWin:Lcom/android/server/wm/WindowState;
    :goto_2c
    iget-object v8, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_41

    .line 1353
    iget-object v8, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 1354
    .local v3, cw:Lcom/android/server/wm/WindowState;
    iget v8, v3, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-gez v8, :cond_41

    move-object v2, v3

    .line 1357
    .end local v3           #cw:Lcom/android/server/wm/WindowState;
    :cond_41
    if-ne v4, v2, :cond_79

    .line 1360
    add-int/lit8 v7, v5, 0x1

    .line 1361
    .local v7, pos:I
    :goto_45
    if-ge v7, v1, :cond_53

    .line 1362
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v8, :cond_73

    .line 1367
    :cond_53
    add-int/lit8 v7, v7, 0x1

    .line 1369
    :goto_55
    if-ge v7, v1, :cond_63

    .line 1370
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v8, :cond_76

    .line 1375
    :cond_63
    if-lt v7, v1, :cond_79

    move v8, v9

    .line 1377
    goto :goto_11

    .end local v2           #baseImWin:Lcom/android/server/wm/WindowState;
    .end local v4           #firstImWin:Lcom/android/server/wm/WindowState;
    .end local v7           #pos:I
    :cond_67
    move-object v4, v12

    .line 1345
    goto :goto_29

    .line 1350
    .restart local v4       #firstImWin:Lcom/android/server/wm/WindowState;
    :cond_69
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    move-object v2, v8

    goto :goto_2c

    .line 1365
    .restart local v2       #baseImWin:Lcom/android/server/wm/WindowState;
    .restart local v7       #pos:I
    :cond_73
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 1373
    :cond_76
    add-int/lit8 v7, v7, 0x1

    goto :goto_55

    .line 1381
    .end local v7           #pos:I
    :cond_79
    if-eqz v6, :cond_97

    .line 1386
    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result v5

    .line 1391
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v8, v6, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1392
    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    .line 1397
    if-lez v0, :cond_8f

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1422
    .end local v1           #N:I
    .end local v2           #baseImWin:Lcom/android/server/wm/WindowState;
    .end local v4           #firstImWin:Lcom/android/server/wm/WindowState;
    :cond_8f
    :goto_8f
    if-eqz p1, :cond_94

    .line 1423
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    :cond_94
    move v8, v11

    .line 1426
    goto/16 :goto_11

    .line 1399
    .restart local v1       #N:I
    .restart local v2       #baseImWin:Lcom/android/server/wm/WindowState;
    .restart local v4       #firstImWin:Lcom/android/server/wm/WindowState;
    :cond_97
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_8f

    .line 1406
    .end local v1           #N:I
    .end local v2           #baseImWin:Lcom/android/server/wm/WindowState;
    .end local v4           #firstImWin:Lcom/android/server/wm/WindowState;
    :cond_9b
    if-eqz v6, :cond_ab

    .line 1408
    invoke-direct {p0, v9, v6}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    .line 1409
    iput-object v12, v6, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1410
    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V

    .line 1415
    if-lez v0, :cond_8f

    invoke-virtual {p0, v10}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_8f

    .line 1417
    :cond_ab
    invoke-virtual {p0, v10}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_8f
.end method

.method notifyHardKeyboardStatusChange()V
    .registers 6

    .prologue
    .line 5784
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 5785
    :try_start_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

    .line 5786
    .local v2, listener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .line 5787
    .local v0, available:Z
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    .line 5788
    .local v1, enabled:Z
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    .line 5789
    if-eqz v2, :cond_f

    .line 5790
    invoke-interface {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;->onHardKeyboardStatusChange(ZZ)V

    .line 5792
    :cond_f
    return-void

    .line 5788
    .end local v0           #available:Z
    .end local v1           #enabled:Z
    .end local v2           #listener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;
    :catchall_10
    move-exception v4

    :try_start_11
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v4
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 775
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 776
    :catch_5
    move-exception v0

    .line 779
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 780
    const-string v1, "WindowManager"

    const-string v2, "Window Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    :cond_11
    throw v0
.end method

.method public openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;
    .registers 6
    .parameter "client"
    .parameter "inputContext"

    .prologue
    .line 6529
    if-nez p1, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null client"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6530
    :cond_a
    if-nez p2, :cond_14

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null inputContext"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6531
    :cond_14
    new-instance v0, Lcom/android/server/wm/Session;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/Session;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V

    .line 6532
    .local v0, session:Lcom/android/server/wm/Session;
    return-object v0
.end method

.method public outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z
    .registers 9
    .parameter "session"
    .parameter "client"

    .prologue
    const/4 v5, 0x0

    .line 2758
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2761
    .local v0, origId:J
    :try_start_5
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_25

    .line 2762
    const/4 v4, 0x0

    :try_start_9
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2763
    .local v2, win:Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_15

    .line 2764
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_22

    .line 2769
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v5

    .line 2766
    :goto_14
    return v3

    :cond_15
    :try_start_15
    const-string v4, "from-client"

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    move-result v4

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_22

    .line 2769
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    .line 2766
    goto :goto_14

    .line 2767
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :catchall_22
    move-exception v4

    :try_start_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    throw v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    .line 2769
    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public overridePendingAppTransition(Ljava/lang/String;II)V
    .registers 6
    .parameter "packageName"
    .parameter "enterAnim"
    .parameter "exitAnim"

    .prologue
    .line 3530
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 3531
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 3532
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionEnter:I

    .line 3533
    iput p3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionExit:I

    .line 3535
    :cond_b
    return-void
.end method

.method public pauseKeyDispatching(Landroid/os/IBinder;)V
    .registers 5
    .parameter "_token"

    .prologue
    .line 5854
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "pauseKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 5856
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5859
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5860
    :try_start_15
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 5861
    .local v0, token:Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_24

    .line 5862
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/InputMonitor;->pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    .line 5864
    :cond_24
    monitor-exit v1

    .line 5865
    return-void

    .line 5864
    .end local v0           #token:Lcom/android/server/wm/WindowToken;
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public performEnableScreen()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 4696
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 4697
    :try_start_4
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v7, :cond_a

    .line 4698
    monitor-exit v6

    .line 4742
    :goto_9
    return-void

    .line 4700
    :cond_a
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v7, :cond_13

    .line 4701
    monitor-exit v6

    goto :goto_9

    .line 4735
    :catchall_10
    move-exception v7

    monitor-exit v6
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v7

    .line 4706
    :cond_13
    :try_start_13
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4707
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1a
    if-ge v3, v0, :cond_39

    .line 4708
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 4709
    .local v5, w:Lcom/android/server/wm/WindowState;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_36

    iget-boolean v7, v5, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v7, :cond_36

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v7

    if-nez v7, :cond_36

    .line 4710
    monitor-exit v6

    goto :goto_9

    .line 4707
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 4714
    .end local v5           #w:Lcom/android/server/wm/WindowState;
    :cond_39
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_10

    .line 4723
    :try_start_3c
    const-string v7, "SurfaceFlinger"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 4724
    .local v4, surfaceFlinger:Landroid/os/IBinder;
    if-eqz v4, :cond_56

    .line 4726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4727
    .local v1, data:Landroid/os/Parcel;
    const-string v7, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4728
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v4, v7, v1, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4730
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_56
    .catchall {:try_start_3c .. :try_end_56} :catchall_10
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_56} :catch_66

    .line 4735
    .end local v1           #data:Landroid/os/Parcel;
    .end local v4           #surfaceFlinger:Landroid/os/IBinder;
    :cond_56
    :goto_56
    :try_start_56
    monitor-exit v6
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_10

    .line 4737
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->enableScreenAfterBoot()V

    .line 4740
    const/16 v6, -0x3e8

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mLastRotationFlags:I

    or-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v6, v10, v7}, Lcom/android/server/wm/WindowManagerService;->setRotationUnchecked(IZI)V

    goto :goto_9

    .line 4732
    :catch_66
    move-exception v7

    move-object v2, v7

    .line 4733
    .local v2, ex:Landroid/os/RemoteException;
    :try_start_68
    const-string v7, "WindowManager"

    const-string v8, "Boot completed: SurfaceFlinger is dead!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_10

    goto :goto_56
.end method

.method public prepareAppTransition(IZ)V
    .registers 8
    .parameter "transit"
    .parameter "alwaysKeepCurrent"

    .prologue
    .line 3489
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "prepareAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3491
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3494
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3498
    :try_start_15
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v1, :cond_4e

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 3499
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2a

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-nez v1, :cond_50

    .line 3501
    :cond_2a
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    .line 3513
    :cond_2c
    :goto_2c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 3514
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    .line 3515
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    .line 3516
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 3517
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 3518
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3521
    :cond_4e
    monitor-exit v0

    .line 3522
    return-void

    .line 3502
    :cond_50
    if-nez p2, :cond_2c

    .line 3503
    const/16 v1, 0x1008

    if-ne p1, v1, :cond_62

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/16 v2, 0x2009

    if-ne v1, v2, :cond_62

    .line 3506
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    goto :goto_2c

    .line 3521
    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_15 .. :try_end_61} :catchall_5f

    throw v1

    .line 3507
    :cond_62
    const/16 v1, 0x1006

    if-ne p1, v1, :cond_2c

    :try_start_66
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/16 v2, 0x2007

    if-ne v1, v2, :cond_2c

    .line 3510
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I
    :try_end_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_5f

    goto :goto_2c
.end method

.method prepareDragSurface(Landroid/view/IWindow;Landroid/view/SurfaceSession;IIILandroid/view/Surface;)Landroid/os/IBinder;
    .registers 24
    .parameter "window"
    .parameter "session"
    .parameter "flags"
    .parameter "width"
    .parameter "height"
    .parameter "outSurface"

    .prologue
    .line 5806
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 5807
    .local v4, callerPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 5808
    .local v13, origId:J
    const/4 v15, 0x0

    .line 5811
    .local v15, token:Landroid/os/IBinder;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_ce

    .line 5813
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object v3, v0

    if-nez v3, :cond_7c

    .line 5814
    new-instance v2, Landroid/view/Surface;

    const-string v5, "drag surface"

    const/4 v6, 0x0

    const/4 v9, -0x3

    const/4 v10, 0x4

    move-object/from16 v3, p2

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v10}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    .line 5818
    .local v2, surface:Landroid/view/Surface;
    move-object/from16 v0, p6

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V

    .line 5819
    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 5820
    .local v10, winBinder:Landroid/os/IBinder;
    new-instance v7, Landroid/os/Binder;

    invoke-direct {v7}, Landroid/os/Binder;-><init>()V
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_d1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_10 .. :try_end_36} :catch_85

    .line 5821
    .end local v15           #token:Landroid/os/IBinder;
    .local v7, token:Landroid/os/IBinder;
    :try_start_36
    new-instance v5, Lcom/android/server/wm/DragState;

    const/4 v9, 0x0

    move-object/from16 v6, p0

    move-object v8, v2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Landroid/view/Surface;ILandroid/os/IBinder;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 5822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object v3, v0

    iput-object v2, v3, Lcom/android/server/wm/DragState;->mSurface:Landroid/view/Surface;

    .line 5823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object v3, v0

    new-instance v15, Landroid/os/Binder;

    invoke-direct {v15}, Landroid/os/Binder;-><init>()V

    iput-object v15, v3, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;
    :try_end_57
    .catchall {:try_start_36 .. :try_end_57} :catchall_c6
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_36 .. :try_end_57} :catch_d4

    .line 5826
    .end local v7           #token:Landroid/os/IBinder;
    .restart local v15       #token:Landroid/os/IBinder;
    :try_start_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object v3, v0

    const/16 v4, 0x14

    invoke-virtual {v3, v4, v10}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 5827
    .end local v4           #callerPid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object v3, v0

    const/16 v4, 0x14

    invoke-virtual {v3, v4, v10}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 5828
    .local v12, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object v3, v0

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v12, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_76
    .catchall {:try_start_57 .. :try_end_76} :catchall_d1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_57 .. :try_end_76} :catch_85

    move-object v7, v15

    .line 5839
    .end local v2           #surface:Landroid/view/Surface;
    .end local v10           #winBinder:Landroid/os/IBinder;
    .end local v12           #msg:Landroid/os/Message;
    .end local v15           #token:Landroid/os/IBinder;
    .restart local v7       #token:Landroid/os/IBinder;
    :cond_77
    :goto_77
    :try_start_77
    monitor-exit v16
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_c6

    .line 5841
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5844
    return-object v7

    .line 5830
    .end local v7           #token:Landroid/os/IBinder;
    .restart local v4       #callerPid:I
    .restart local v15       #token:Landroid/os/IBinder;
    :cond_7c
    :try_start_7c
    const-string v3, "WindowManager"

    const-string v4, "Drag already in progress"

    .end local v4           #callerPid:I
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_d1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_7c .. :try_end_83} :catch_85

    move-object v7, v15

    .end local v15           #token:Landroid/os/IBinder;
    .restart local v7       #token:Landroid/os/IBinder;
    goto :goto_77

    .line 5832
    .end local v7           #token:Landroid/os/IBinder;
    .restart local v15       #token:Landroid/os/IBinder;
    :catch_85
    move-exception v3

    move-object v11, v3

    move-object v7, v15

    .line 5833
    .end local v15           #token:Landroid/os/IBinder;
    .restart local v7       #token:Landroid/os/IBinder;
    .local v11, e:Landroid/view/Surface$OutOfResourcesException;
    :goto_88
    :try_start_88
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t allocate drag surface w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object v3, v0

    if-eqz v3, :cond_77

    .line 5835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/server/wm/DragState;->reset()V

    .line 5836
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    goto :goto_77

    .line 5839
    .end local v11           #e:Landroid/view/Surface$OutOfResourcesException;
    :catchall_c6
    move-exception v3

    :goto_c7
    monitor-exit v16
    :try_end_c8
    .catchall {:try_start_88 .. :try_end_c8} :catchall_c6

    :try_start_c8
    throw v3
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c9

    .line 5841
    :catchall_c9
    move-exception v3

    :goto_ca
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .end local v7           #token:Landroid/os/IBinder;
    .restart local v4       #callerPid:I
    .restart local v15       #token:Landroid/os/IBinder;
    :catchall_ce
    move-exception v3

    move-object v7, v15

    .end local v15           #token:Landroid/os/IBinder;
    .restart local v7       #token:Landroid/os/IBinder;
    goto :goto_ca

    .line 5839
    .end local v4           #callerPid:I
    .end local v7           #token:Landroid/os/IBinder;
    .restart local v15       #token:Landroid/os/IBinder;
    :catchall_d1
    move-exception v3

    move-object v7, v15

    .end local v15           #token:Landroid/os/IBinder;
    .restart local v7       #token:Landroid/os/IBinder;
    goto :goto_c7

    .line 5832
    .restart local v2       #surface:Landroid/view/Surface;
    .restart local v4       #callerPid:I
    .restart local v10       #winBinder:Landroid/os/IBinder;
    :catch_d4
    move-exception v3

    move-object v11, v3

    goto :goto_88
.end method

.method final rebuildAppWindowListLocked()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    .line 6767
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6769
    .local v1, NW:I
    const/4 v4, -0x1

    .line 6770
    .local v4, lastWallpaper:I
    const/4 v5, 0x0

    .line 6772
    .local v5, numRemoved:I
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    array-length v11, v11

    if-ge v11, v1, :cond_14

    .line 6773
    add-int/lit8 v11, v1, 0xa

    new-array v11, v11, [Lcom/android/server/wm/WindowState;

    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    .line 6777
    :cond_14
    const/4 v2, 0x0

    .line 6778
    .local v2, i:I
    :goto_15
    if-ge v2, v1, :cond_48

    .line 6779
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 6780
    .local v8, w:Lcom/android/server/wm/WindowState;
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_38

    .line 6781
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 6782
    .local v9, win:Lcom/android/server/wm/WindowState;
    iput-boolean v13, v9, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    .line 6783
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    aput-object v9, v11, v5

    .line 6784
    iput-boolean v13, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 6787
    add-int/lit8 v1, v1, -0x1

    .line 6788
    add-int/lit8 v5, v5, 0x1

    .line 6789
    goto :goto_15

    .line 6790
    .end local v9           #win:Lcom/android/server/wm/WindowState;
    :cond_38
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7dd

    if-ne v11, v12, :cond_45

    sub-int v11, v2, v13

    if-ne v4, v11, :cond_45

    .line 6792
    move v4, v2

    .line 6794
    :cond_45
    add-int/lit8 v2, v2, 0x1

    .line 6795
    goto :goto_15

    .line 6799
    .end local v8           #w:Lcom/android/server/wm/WindowState;
    :cond_48
    add-int/lit8 v4, v4, 0x1

    .line 6800
    move v2, v4

    .line 6806
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6807
    .local v0, NT:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_52
    if-ge v3, v0, :cond_63

    .line 6808
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowToken;

    invoke-direct {p0, v2, v11}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v2

    .line 6807
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 6812
    :cond_63
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6813
    const/4 v3, 0x0

    :goto_6a
    if-ge v3, v0, :cond_7b

    .line 6814
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowToken;

    invoke-direct {p0, v2, v11}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v2

    .line 6813
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 6817
    :cond_7b
    sub-int/2addr v2, v4

    .line 6818
    if-eq v2, v5, :cond_f5

    .line 6819
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Rebuild removed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " windows but added "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6821
    const/4 v2, 0x0

    :goto_a1
    if-ge v2, v5, :cond_e1

    .line 6822
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    aget-object v10, v11, v2

    .line 6823
    .local v10, ws:Lcom/android/server/wm/WindowState;
    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    if-eqz v11, :cond_de

    .line 6824
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 6825
    .local v7, sw:Ljava/io/StringWriter;
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 6826
    .local v6, pw:Ljava/io/PrintWriter;
    const-string v11, ""

    invoke-virtual {v10, v6, v11}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6827
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 6828
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This window was lost: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6829
    const-string v11, "WindowManager"

    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6821
    .end local v6           #pw:Ljava/io/PrintWriter;
    .end local v7           #sw:Ljava/io/StringWriter;
    :cond_de
    add-int/lit8 v2, v2, 0x1

    goto :goto_a1

    .line 6832
    .end local v10           #ws:Lcom/android/server/wm/WindowState;
    :cond_e1
    const-string v11, "WindowManager"

    const-string v12, "Current app token list:"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6833
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->dumpAppTokensLocked()V

    .line 6834
    const-string v11, "WindowManager"

    const-string v12, "Final window list:"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6835
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked()V

    .line 6837
    :cond_f5
    return-void
.end method

.method reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z
    .registers 22
    .parameter "win"
    .parameter "operation"
    .parameter "secure"

    .prologue
    .line 8445
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object v12, v0

    .line 8446
    .local v12, surface:Landroid/view/Surface;
    const/4 v9, 0x0

    .line 8447
    .local v9, leakedSurface:Z
    const/4 v8, 0x0

    .line 8449
    .local v8, killedApps:Z
    const/16 v14, 0x7918

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object p2, v15, v16

    invoke-static {v14, v15}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    move-object v14, v0

    if-nez v14, :cond_40

    .line 8453
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 8456
    :cond_40
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 8461
    .local v5, callingIdentity:J
    :try_start_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 8462
    .local v4, N:I
    const-string v14, "WindowManager"

    const-string v15, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8463
    const/4 v7, 0x0

    .local v7, i:I
    :goto_55
    if-ge v7, v4, :cond_13e

    .line 8464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/WindowState;

    .line 8465
    .local v13, ws:Lcom/android/server/wm/WindowState;
    iget-object v14, v13, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v14, :cond_ec

    .line 8466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    move-object v14, v0

    iget-object v15, v13, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f0

    .line 8467
    const-string v14, "WindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "LEAKED SURFACE (session doesn\'t exist): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " surface="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " token="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " pid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " uid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/Session;->mUid:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8473
    iget-object v14, v13, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v14}, Landroid/view/Surface;->destroy()V

    .line 8474
    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    .line 8475
    const/4 v14, 0x0

    iput-object v14, v13, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    .line 8476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8477
    add-int/lit8 v7, v7, -0x1

    .line 8478
    add-int/lit8 v4, v4, -0x1

    .line 8479
    const/4 v9, 0x1

    .line 8463
    :cond_ec
    :goto_ec
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_55

    .line 8480
    :cond_f0
    iget-object v14, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v14, :cond_ec

    iget-object v14, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v14, v14, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eqz v14, :cond_ec

    .line 8481
    const-string v14, "WindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "LEAKED SURFACE (app token hidden): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " surface="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " token="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8485
    iget-object v14, v13, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v14}, Landroid/view/Surface;->destroy()V

    .line 8486
    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    .line 8487
    const/4 v14, 0x0

    iput-object v14, v13, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    .line 8488
    const/4 v9, 0x1

    goto :goto_ec

    .line 8493
    .end local v13           #ws:Lcom/android/server/wm/WindowState;
    :cond_13e
    if-nez v9, :cond_198

    .line 8494
    const-string v14, "WindowManager"

    const-string v15, "No leaked surfaces; killing applicatons!"

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8495
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    .line 8496
    .local v10, pidCandidates:Landroid/util/SparseIntArray;
    const/4 v7, 0x0

    :goto_14d
    if-ge v7, v4, :cond_16c

    .line 8497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/WindowState;

    .line 8498
    .restart local v13       #ws:Lcom/android/server/wm/WindowState;
    iget-object v14, v13, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v14, :cond_169

    .line 8499
    iget-object v14, v13, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v14, v14, Lcom/android/server/wm/Session;->mPid:I

    iget-object v15, v13, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v15, v15, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v10, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 8496
    :cond_169
    add-int/lit8 v7, v7, 0x1

    goto :goto_14d

    .line 8502
    .end local v13           #ws:Lcom/android/server/wm/WindowState;
    :cond_16c
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v14

    if-lez v14, :cond_198

    .line 8503
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v14

    new-array v11, v14, [I

    .line 8504
    .local v11, pids:[I
    const/4 v7, 0x0

    :goto_179
    array-length v14, v11

    if-ge v7, v14, :cond_185

    .line 8505
    invoke-virtual {v10, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    aput v14, v11, v7
    :try_end_182
    .catchall {:try_start_44 .. :try_end_182} :catchall_1c5

    .line 8504
    add-int/lit8 v7, v7, 0x1

    goto :goto_179

    .line 8508
    :cond_185
    :try_start_185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object v14, v0

    const-string v15, "Free memory"

    move-object v0, v14

    move-object v1, v11

    move-object v2, v15

    move/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z
    :try_end_194
    .catchall {:try_start_185 .. :try_end_194} :catchall_1c5
    .catch Landroid/os/RemoteException; {:try_start_185 .. :try_end_194} :catch_1ce

    move-result v14

    if-eqz v14, :cond_198

    .line 8509
    const/4 v8, 0x1

    .line 8516
    .end local v10           #pidCandidates:Landroid/util/SparseIntArray;
    .end local v11           #pids:[I
    :cond_198
    :goto_198
    if-nez v9, :cond_19c

    if-eqz v8, :cond_1bc

    .line 8519
    :cond_19c
    :try_start_19c
    const-string v14, "WindowManager"

    const-string v15, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8520
    if-eqz v12, :cond_1b4

    .line 8523
    invoke-virtual {v12}, Landroid/view/Surface;->destroy()V

    .line 8524
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    .line 8525
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;
    :try_end_1b4
    .catchall {:try_start_19c .. :try_end_1b4} :catchall_1c5

    .line 8529
    :cond_1b4
    :try_start_1b4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v14, v0

    invoke-interface {v14}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_1bc
    .catchall {:try_start_1b4 .. :try_end_1bc} :catchall_1c5
    .catch Landroid/os/RemoteException; {:try_start_1b4 .. :try_end_1bc} :catch_1cc

    .line 8534
    :cond_1bc
    :goto_1bc
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8537
    if-nez v9, :cond_1c3

    if-eqz v8, :cond_1ca

    :cond_1c3
    const/4 v14, 0x1

    :goto_1c4
    return v14

    .line 8534
    .end local v4           #N:I
    .end local v7           #i:I
    :catchall_1c5
    move-exception v14

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14

    .line 8537
    .restart local v4       #N:I
    .restart local v7       #i:I
    :cond_1ca
    const/4 v14, 0x0

    goto :goto_1c4

    .line 8530
    :catch_1cc
    move-exception v14

    goto :goto_1bc

    .line 8511
    .restart local v10       #pidCandidates:Landroid/util/SparseIntArray;
    .restart local v11       #pids:[I
    :catch_1ce
    move-exception v14

    goto :goto_198
.end method

.method public reenableKeyguard(Landroid/os/IBinder;)V
    .registers 5
    .parameter "token"

    .prologue
    .line 4447
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    .line 4449
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4452
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v1

    .line 4453
    :try_start_15
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v2, p1}, Landroid/os/TokenWatcher;->release(Landroid/os/IBinder;)V

    .line 4455
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v2}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v2

    if-nez v2, :cond_39

    .line 4463
    :goto_22
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_36

    if-eqz v2, :cond_39

    .line 4465
    :try_start_26
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_36
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2b} :catch_2c

    goto :goto_22

    .line 4466
    :catch_2c
    move-exception v2

    move-object v0, v2

    .line 4467
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_22

    .line 4471
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_36
    move-exception v2

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_36

    throw v2

    :cond_39
    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_36

    .line 4472
    return-void
.end method

.method public relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
    .registers 42
    .parameter "session"
    .parameter "client"
    .parameter "attrs"
    .parameter "requestedWidth"
    .parameter "requestedHeight"
    .parameter "viewVisibility"
    .parameter "insetsPending"
    .parameter "outFrame"
    .parameter "outContentInsets"
    .parameter "outVisibleInsets"
    .parameter "outConfig"
    .parameter "outSurface"

    .prologue
    .line 2471
    const/4 v9, 0x0

    .line 2476
    .local v9, displayed:Z
    if-eqz p3, :cond_33

    .line 2477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "android.permission.STATUS_BAR"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v25

    if-eqz v25, :cond_33

    .line 2479
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v25, v0

    const v26, -0xff0001

    and-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p3

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 2480
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v25, v0

    const v26, -0xff0001

    and-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p3

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 2483
    :cond_33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2485
    .local v17, origId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2486
    const/16 v26, 0x0

    :try_start_40
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v24

    .line 2487
    .local v24, win:Lcom/android/server/wm/WindowState;
    if-nez v24, :cond_54

    .line 2488
    const/16 v26, 0x0

    monitor-exit v25

    move/from16 v25, v26

    .line 2753
    :goto_53
    return v25

    .line 2490
    :cond_54
    move/from16 v0, p4

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 2491
    move/from16 v0, p5

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 2493
    if-eqz p3, :cond_6f

    .line 2494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    .line 2497
    :cond_6f
    const/4 v6, 0x0

    .line 2498
    .local v6, attrChanges:I
    const/4 v11, 0x0

    .line 2499
    .local v11, flagChanges:I
    if-eqz p3, :cond_9a

    .line 2500
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v28, v0

    xor-int v11, v27, v28

    move v0, v11

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2501
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    .line 2506
    :cond_9a
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    const/high16 v27, 0x2000

    and-int v26, v26, v27

    if-eqz v26, :cond_413

    const/16 v26, 0x1

    :goto_ae
    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    .line 2508
    move v0, v6

    and-int/lit16 v0, v0, 0x80

    move/from16 v26, v0

    if-eqz v26, :cond_c7

    .line 2509
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/wm/WindowState;->mAlpha:F

    .line 2512
    :cond_c7
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x4000

    move/from16 v26, v0

    if-eqz v26, :cond_417

    const/16 v26, 0x1

    move/from16 v20, v26

    .line 2515
    .local v20, scaledWindow:Z
    :goto_df
    if-eqz v20, :cond_425

    .line 2518
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p4

    if-eq v0, v1, :cond_41d

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    :goto_ff
    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 2520
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p5

    if-eq v0, v1, :cond_421

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    :goto_123
    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 2526
    :goto_129
    const v26, 0x20008

    and-int v26, v26, v11

    if-eqz v26, :cond_438

    const/16 v26, 0x1

    move/from16 v13, v26

    .line 2530
    .local v13, imMayMove:Z
    :goto_134
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p6

    if-ne v0, v1, :cond_14c

    and-int/lit8 v26, v11, 0x8

    if-nez v26, :cond_14c

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    move/from16 v26, v0

    if-nez v26, :cond_43e

    :cond_14c
    const/16 v26, 0x1

    move/from16 v12, v26

    .line 2534
    .local v12, focusMayChange:Z
    :goto_150
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p6

    if-eq v0, v1, :cond_444

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    const/high16 v27, 0x10

    and-int v26, v26, v27

    if-eqz v26, :cond_444

    const/16 v26, 0x1

    move/from16 v23, v26

    .line 2537
    .local v23, wallpaperMayMove:Z
    :goto_172
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 2538
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v16, v0

    .line 2539
    .local v16, oldVisibility:I
    move/from16 v0, p6

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 2540
    if-nez p6, :cond_4a8

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_19e

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    move/from16 v26, v0

    if-nez v26, :cond_4a8

    .line 2542
    :cond_19e
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v26

    if-nez v26, :cond_44a

    const/16 v26, 0x1

    move/from16 v9, v26

    .line 2543
    :goto_1a8
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mExiting:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1d1

    .line 2544
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    .line 2545
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1d1

    .line 2546
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/animation/Animation;->cancel()V

    .line 2547
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    .line 2550
    :cond_1d1
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1ee

    .line 2551
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 2552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2554
    :cond_1ee
    const/16 v26, 0x8

    move/from16 v0, v16

    move/from16 v1, v26

    if-ne v0, v1, :cond_1fe

    .line 2555
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    .line 2557
    :cond_1fe
    if-eqz v9, :cond_293

    .line 2558
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_233

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    move/from16 v26, v0

    if-nez v26, :cond_233

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    move/from16 v26, v0

    if-nez v26, :cond_233

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    move/from16 v26, v0

    if-nez v26, :cond_233

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v26

    if-eqz v26, :cond_233

    .line 2561
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->applyEnterAnimationLocked(Lcom/android/server/wm/WindowState;)V

    .line 2563
    :cond_233
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    const/high16 v27, 0x20

    and-int v26, v26, v27

    if-eqz v26, :cond_24d

    .line 2567
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    .line 2569
    :cond_24d
    const/4 v8, 0x0

    .line 2570
    .local v8, diff:I
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_293

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    if-eqz v26, :cond_27a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v8

    if-eqz v8, :cond_293

    .line 2573
    :cond_27a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 2579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, p11

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2582
    .end local v8           #diff:I
    :cond_293
    and-int/lit8 v26, v6, 0x8

    if-eqz v26, :cond_29b

    .line 2584
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->destroySurfaceLocked()V
    :try_end_29a
    .catchall {:try_start_40 .. :try_end_29a} :catchall_435

    .line 2585
    const/4 v9, 0x1

    .line 2588
    :cond_29b
    :try_start_29b
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->createSurfaceLocked()Landroid/view/Surface;

    move-result-object v21

    .line 2589
    .local v21, surface:Landroid/view/Surface;
    if-eqz v21, :cond_450

    .line 2590
    move-object/from16 v0, p12

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V

    .line 2591
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mReportDestroySurface:Z

    .line 2592
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z
    :try_end_2b8
    .catchall {:try_start_29b .. :try_end_2b8} :catchall_435
    .catch Ljava/lang/Exception; {:try_start_29b .. :try_end_2b8} :catch_455

    .line 2609
    :goto_2b8
    if-eqz v9, :cond_2bb

    .line 2610
    const/4 v12, 0x1

    .line 2612
    :cond_2bb
    :try_start_2bb
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x7db

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2de

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v26, v0

    if-nez v26, :cond_2de

    .line 2614
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2615
    const/4 v13, 0x1

    .line 2617
    :cond_2de
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_341

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_341

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v26, v0

    if-eqz v26, :cond_341

    .line 2623
    const v15, 0x480001

    .line 2627
    .local v15, mask:I
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    .line 2628
    .local v19, sa:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    const v27, -0x480002

    and-int v26, v26, v27

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const v28, 0x480001

    and-int v27, v27, v28

    or-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2686
    .end local v15           #mask:I
    .end local v19           #sa:Landroid/view/WindowManager$LayoutParams;
    .end local v21           #surface:Landroid/view/Surface;
    :cond_341
    :goto_341
    if-eqz v12, :cond_354

    .line 2688
    const/16 v26, 0x3

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v26

    if-eqz v26, :cond_354

    .line 2690
    const/4 v13, 0x0

    .line 2697
    :cond_354
    const/4 v5, 0x0

    .line 2699
    .local v5, assignLayers:Z
    if-eqz v13, :cond_366

    .line 2700
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v26

    if-nez v26, :cond_365

    if-eqz v9, :cond_366

    .line 2706
    :cond_365
    const/4 v5, 0x1

    .line 2709
    :cond_366
    if-eqz v23, :cond_371

    .line 2710
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v26

    and-int/lit8 v26, v26, 0x2

    if-eqz v26, :cond_371

    .line 2711
    const/4 v5, 0x1

    .line 2715
    :cond_371
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 2716
    move/from16 v0, p7

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 2717
    if-eqz v5, :cond_384

    .line 2718
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 2720
    :cond_384
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v7

    .line 2721
    .local v7, configChanged:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2722
    if-eqz v9, :cond_3b6

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3b6

    .line 2723
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    move/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 2725
    :cond_3b6
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3c7

    .line 2726
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2728
    :cond_3c7
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2729
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p9

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2730
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p10

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2742
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    move v14, v0

    .line 2744
    .local v14, inTouchMode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2745
    monitor-exit v25
    :try_end_3ff
    .catchall {:try_start_2bb .. :try_end_3ff} :catchall_435

    .line 2747
    if-eqz v7, :cond_404

    .line 2748
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 2751
    :cond_404
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2753
    if-eqz v14, :cond_595

    const/16 v25, 0x1

    :goto_40b
    if-eqz v9, :cond_599

    const/16 v26, 0x2

    :goto_40f
    or-int v25, v25, v26

    goto/16 :goto_53

    .line 2506
    .end local v5           #assignLayers:Z
    .end local v7           #configChanged:Z
    .end local v12           #focusMayChange:Z
    .end local v13           #imMayMove:Z
    .end local v14           #inTouchMode:Z
    .end local v16           #oldVisibility:I
    .end local v20           #scaledWindow:Z
    .end local v23           #wallpaperMayMove:Z
    :cond_413
    const/16 v26, 0x0

    goto/16 :goto_ae

    .line 2512
    :cond_417
    const/16 v26, 0x0

    move/from16 v20, v26

    goto/16 :goto_df

    .line 2518
    .restart local v20       #scaledWindow:Z
    :cond_41d
    const/high16 v26, 0x3f80

    goto/16 :goto_ff

    .line 2520
    :cond_421
    const/high16 v26, 0x3f80

    goto/16 :goto_123

    .line 2523
    :cond_425
    const/high16 v26, 0x3f80

    :try_start_427
    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    goto/16 :goto_129

    .line 2745
    .end local v6           #attrChanges:I
    .end local v11           #flagChanges:I
    .end local v20           #scaledWindow:Z
    .end local v24           #win:Lcom/android/server/wm/WindowState;
    :catchall_435
    move-exception v26

    monitor-exit v25
    :try_end_437
    .catchall {:try_start_427 .. :try_end_437} :catchall_435

    throw v26

    .line 2526
    .restart local v6       #attrChanges:I
    .restart local v11       #flagChanges:I
    .restart local v20       #scaledWindow:Z
    .restart local v24       #win:Lcom/android/server/wm/WindowState;
    :cond_438
    const/16 v26, 0x0

    move/from16 v13, v26

    goto/16 :goto_134

    .line 2530
    .restart local v13       #imMayMove:Z
    :cond_43e
    const/16 v26, 0x0

    move/from16 v12, v26

    goto/16 :goto_150

    .line 2534
    .restart local v12       #focusMayChange:Z
    :cond_444
    const/16 v26, 0x0

    move/from16 v23, v26

    goto/16 :goto_172

    .line 2542
    .restart local v16       #oldVisibility:I
    .restart local v23       #wallpaperMayMove:Z
    :cond_44a
    const/16 v26, 0x0

    move/from16 v9, v26

    goto/16 :goto_1a8

    .line 2598
    .restart local v21       #surface:Landroid/view/Surface;
    :cond_450
    :try_start_450
    invoke-virtual/range {p12 .. p12}, Landroid/view/Surface;->release()V
    :try_end_453
    .catchall {:try_start_450 .. :try_end_453} :catchall_435
    .catch Ljava/lang/Exception; {:try_start_450 .. :try_end_453} :catch_455

    goto/16 :goto_2b8

    .line 2600
    .end local v21           #surface:Landroid/view/Surface;
    :catch_455
    move-exception v26

    move-object/from16 v10, v26

    .line 2601
    .local v10, e:Ljava/lang/Exception;
    :try_start_458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2603
    const-string v26, "WindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Exception thrown when creating surface for client "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2606
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2607
    const/16 v26, 0x0

    monitor-exit v25

    move/from16 v25, v26

    goto/16 :goto_53

    .line 2631
    .end local v10           #e:Ljava/lang/Exception;
    :cond_4a8
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    .line 2632
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_505

    .line 2638
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mExiting:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4c8

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    move/from16 v26, v0

    if-eqz v26, :cond_505

    .line 2641
    :cond_4c8
    const/16 v22, 0x2002

    .line 2642
    .local v22, transit:I
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4de

    .line 2643
    const/16 v22, 0x5

    .line 2645
    :cond_4de
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    move/from16 v26, v0

    if-nez v26, :cond_532

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v26

    if-eqz v26, :cond_532

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    move-result v26

    if-eqz v26, :cond_532

    .line 2647
    const/4 v12, 0x1

    .line 2648
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    .line 2668
    .end local v22           #transit:I
    :cond_505
    :goto_505
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_525

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    const/high16 v27, 0x1000

    and-int v26, v26, v27

    if-eqz v26, :cond_525

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    move/from16 v26, v0

    if-eqz v26, :cond_576

    .line 2675
    :cond_525
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    .line 2676
    invoke-virtual/range {p12 .. p12}, Landroid/view/Surface;->release()V

    goto/16 :goto_341

    .line 2649
    .restart local v22       #transit:I
    :cond_532
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v26

    if-eqz v26, :cond_541

    .line 2652
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    goto :goto_505

    .line 2653
    :cond_541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_55e

    .line 2657
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    .line 2658
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mAnimating:Z

    goto :goto_505

    .line 2660
    :cond_55e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_572

    .line 2661
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2663
    :cond_572
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->destroySurfaceLocked()V

    goto :goto_505

    .line 2678
    .end local v22           #transit:I
    :cond_576
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_341

    .line 2681
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mReportDestroySurface:Z

    .line 2682
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    move-object/from16 v0, p12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V
    :try_end_593
    .catchall {:try_start_458 .. :try_end_593} :catchall_435

    goto/16 :goto_341

    .line 2753
    .restart local v5       #assignLayers:Z
    .restart local v7       #configChanged:Z
    .restart local v14       #inTouchMode:Z
    :cond_595
    const/16 v25, 0x0

    goto/16 :goto_40b

    :cond_599
    const/16 v26, 0x0

    goto/16 :goto_40f
.end method

.method public removeAppToken(Landroid/os/IBinder;)V
    .registers 16
    .parameter "token"

    .prologue
    const/4 v13, -0x1

    .line 4028
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "removeAppToken()"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 4030
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4033
    :cond_13
    const/4 v1, 0x0

    .line 4034
    .local v1, wtoken:Lcom/android/server/wm/AppWindowToken;
    const/4 v11, 0x0

    .line 4035
    .local v11, startingToken:Lcom/android/server/wm/AppWindowToken;
    const/4 v7, 0x0

    .line 4037
    .local v7, delayed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 4038
    .local v9, origId:J
    iget-object v12, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 4039
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .line 4040
    .local v6, basewtoken:Lcom/android/server/wm/WindowToken;
    if-eqz v6, :cond_a5

    iget-object v1, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_a5

    .line 4042
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    move-result v7

    .line 4044
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 4045
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4046
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 4047
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 4048
    const/4 v7, 0x1

    .line 4058
    :cond_48
    :goto_48
    if-eqz v7, :cond_9b

    .line 4062
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4072
    :goto_4f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4073
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    .line 4074
    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_5c

    .line 4075
    move-object v11, v1

    .line 4077
    :cond_5c
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 4078
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, v1, :cond_73

    .line 4080
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 4081
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 4082
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    .line 4088
    :cond_73
    :goto_73
    if-nez v7, :cond_7a

    if-eqz v1, :cond_7a

    .line 4089
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 4091
    :cond_7a
    monitor-exit v12
    :try_end_7b
    .catchall {:try_start_1d .. :try_end_7b} :catchall_a2

    .line 4092
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4094
    if-eqz v11, :cond_8c

    .line 4097
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v11}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 4098
    .local v8, m:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4100
    .end local v8           #m:Landroid/os/Message;
    :cond_8c
    return-void

    .line 4049
    :cond_8d
    :try_start_8d
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v0, v13, :cond_48

    .line 4050
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4051
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToHide:Z

    .line 4052
    const/4 v7, 0x1

    goto :goto_48

    .line 4067
    :cond_9b
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 4068
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->animating:Z

    goto :goto_4f

    .line 4091
    .end local v6           #basewtoken:Lcom/android/server/wm/WindowToken;
    :catchall_a2
    move-exception v0

    monitor-exit v12
    :try_end_a4
    .catchall {:try_start_8d .. :try_end_a4} :catchall_a2

    throw v0

    .line 4085
    .restart local v6       #basewtoken:Lcom/android/server/wm/WindowToken;
    :cond_a5
    :try_start_a5
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to remove non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_a5 .. :try_end_bd} :catchall_a2

    goto :goto_73
.end method

.method public removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .registers 6
    .parameter "session"
    .parameter "client"

    .prologue
    .line 2160
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2161
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2162
    .local v0, win:Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_c

    .line 2163
    monitor-exit v1

    .line 2167
    :goto_b
    return-void

    .line 2165
    :cond_c
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 2166
    monitor-exit v1

    goto :goto_b

    .end local v0           #win:Lcom/android/server/wm/WindowState;
    :catchall_11
    move-exception v2

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v2
.end method

.method public removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 5447
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5448
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5449
    monitor-exit v0

    .line 5450
    return-void

    .line 5449
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    .registers 11
    .parameter "session"
    .parameter "win"

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2179
    .local v0, origId:J
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 2191
    const/4 v3, 0x0

    .line 2196
    .local v3, wasVisible:Z
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_5c

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_5c

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 2199
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 2201
    const/16 v2, 0x2002

    .line 2202
    .local v2, transit:I
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v5, :cond_2c

    .line 2203
    const/4 v2, 0x5

    .line 2206
    :cond_2c
    invoke-virtual {p0, p2, v2, v6}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 2207
    iput-boolean v7, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    .line 2210
    .end local v2           #transit:I
    :cond_34
    iget-boolean v4, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v4, :cond_3e

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 2213
    :cond_3e
    iput-boolean v7, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    .line 2214
    iput-boolean v7, p2, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 2215
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 2216
    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 2218
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2219
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2220
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_58

    .line 2221
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2224
    :cond_58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2239
    :goto_5b
    return-void

    .line 2229
    :cond_5c
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 2232
    if-eqz v3, :cond_76

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    if-eq v4, v5, :cond_76

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 2235
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 2237
    :cond_76
    invoke-direct {p0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 2238
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5b
.end method

.method public removeWindowToken(Landroid/os/IBinder;)V
    .registers 14
    .parameter "token"

    .prologue
    .line 3095
    const-string v8, "android.permission.MANAGE_APP_TOKENS"

    const-string v9, "removeWindowToken()"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 3097
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3100
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3101
    .local v4, origId:J
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 3102
    :try_start_19
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    .line 3103
    .local v7, wtoken:Lcom/android/server/wm/WindowToken;
    if-eqz v7, :cond_82

    .line 3104
    const/4 v2, 0x0

    .line 3105
    .local v2, delayed:Z
    iget-boolean v9, v7, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v9, :cond_68

    .line 3106
    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 3108
    iget-object v9, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3109
    .local v0, N:I
    const/4 v1, 0x0

    .line 3111
    .local v1, changed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_33
    if-ge v3, v0, :cond_54

    .line 3112
    iget-object v9, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 3114
    .local v6, win:Lcom/android/server/wm/WindowState;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v9

    if-eqz v9, :cond_44

    .line 3115
    const/4 v2, 0x1

    .line 3118
    :cond_44
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v9

    if-eqz v9, :cond_51

    .line 3119
    const/16 v9, 0x2002

    const/4 v10, 0x0

    invoke-virtual {p0, v6, v9, v10}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    .line 3121
    const/4 v1, 0x1

    .line 3111
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 3125
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :cond_54
    if-eqz v1, :cond_61

    .line 3126
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 3127
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3128
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3132
    :cond_61
    if-eqz v2, :cond_73

    .line 3133
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3139
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v3           #i:I
    :cond_68
    :goto_68
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 3143
    .end local v2           #delayed:Z
    :goto_6e
    monitor-exit v8
    :try_end_6f
    .catchall {:try_start_19 .. :try_end_6f} :catchall_7f

    .line 3144
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3145
    return-void

    .line 3134
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v2       #delayed:Z
    .restart local v3       #i:I
    :cond_73
    :try_start_73
    iget v9, v7, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v10, 0x7dd

    if-ne v9, v10, :cond_68

    .line 3135
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_68

    .line 3143
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v2           #delayed:Z
    .end local v3           #i:I
    .end local v7           #wtoken:Lcom/android/server/wm/WindowToken;
    :catchall_7f
    move-exception v9

    monitor-exit v8
    :try_end_81
    .catchall {:try_start_73 .. :try_end_81} :catchall_7f

    throw v9

    .line 3141
    .restart local v7       #wtoken:Lcom/android/server/wm/WindowToken;
    :cond_82
    :try_start_82
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempted to remove non-existing token: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catchall {:try_start_82 .. :try_end_9a} :catchall_7f

    goto :goto_6e
.end method

.method requestAnimationLocked(J)V
    .registers 6
    .parameter "delay"

    .prologue
    .line 8408
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    if-nez v0, :cond_13

    .line 8409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    .line 8410
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8412
    :cond_13
    return-void
.end method

.method public resumeKeyDispatching(Landroid/os/IBinder;)V
    .registers 5
    .parameter "_token"

    .prologue
    .line 5868
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "resumeKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 5870
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5873
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5874
    :try_start_15
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 5875
    .local v0, token:Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_24

    .line 5876
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/InputMonitor;->resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    .line 5878
    :cond_24
    monitor-exit v1

    .line 5879
    return-void

    .line 5878
    .end local v0           #token:Lcom/android/server/wm/WindowToken;
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public screenshotApplications(Landroid/os/IBinder;II)Landroid/graphics/Bitmap;
    .registers 38
    .parameter "appToken"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 4798
    const-string v31, "android.permission.READ_FRAME_BUFFER"

    const-string v32, "screenshotApplications()"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_18

    .line 4800
    new-instance v31, Ljava/lang/SecurityException;

    const-string v32, "Requires READ_FRAME_BUFFER permission"

    invoke-direct/range {v31 .. v32}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 4805
    :cond_18
    const/16 v22, 0x0

    .line 4806
    .local v22, maxLayer:I
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 4812
    .local v13, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v31, v0

    monitor-enter v31

    .line 4813
    :try_start_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 4815
    .local v16, ident:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move v11, v0

    .line 4816
    .local v11, dw:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    move v10, v0

    .line 4818
    .local v10, dh:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v32, v0

    const/16 v33, 0x2

    invoke-interface/range {v32 .. v33}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v32

    move/from16 v0, v32

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v32, v0

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x3e8

    move v5, v0

    .line 4821
    .local v5, aboveAppLayer:I
    add-int/lit16 v5, v5, 0x2710

    .line 4823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    if-eqz v32, :cond_c3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v32, v0

    if-eqz v32, :cond_c3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v32, v0

    if-eqz v32, :cond_c3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_c3

    const/16 v32, 0x1

    move/from16 v19, v32

    .line 4829
    .local v19, isImeTarget:Z
    :goto_97
    const/16 v18, 0x0

    .line 4830
    .local v18, including:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    sub-int v15, v32, v33

    .local v15, i:I
    :goto_a7
    if-ltz v15, :cond_17f

    .line 4831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/wm/WindowState;

    .line 4832
    .local v30, ws:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v32, v0

    if-nez v32, :cond_c8

    .line 4830
    :cond_c0
    :goto_c0
    add-int/lit8 v15, v15, -0x1

    goto :goto_a7

    .line 4823
    .end local v15           #i:I
    .end local v18           #including:Z
    .end local v19           #isImeTarget:Z
    .end local v30           #ws:Lcom/android/server/wm/WindowState;
    :cond_c3
    const/16 v32, 0x0

    move/from16 v19, v32

    goto :goto_97

    .line 4835
    .restart local v15       #i:I
    .restart local v18       #including:Z
    .restart local v19       #isImeTarget:Z
    .restart local v30       #ws:Lcom/android/server/wm/WindowState;
    :cond_c8
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v32, v0

    move/from16 v0, v32

    move v1, v5

    if-ge v0, v1, :cond_c0

    .line 4841
    if-nez v18, :cond_fb

    if-eqz p1, :cond_fb

    .line 4845
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    move/from16 v32, v0

    if-eqz v32, :cond_e1

    if-nez v19, :cond_fb

    .line 4848
    :cond_e1
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v32, v0

    if-eqz v32, :cond_c0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_c0

    .line 4856
    :cond_fb
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    move/from16 v32, v0

    if-nez v32, :cond_17a

    move-object/from16 v0, v30

    move v1, v11

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    move-result v32

    if-nez v32, :cond_17a

    const/16 v32, 0x1

    move/from16 v18, v32

    .line 4858
    :goto_111
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move/from16 v32, v0

    move/from16 v0, v22

    move/from16 v1, v32

    if-ge v0, v1, :cond_123

    .line 4859
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move/from16 v22, v0

    .line 4863
    :cond_123
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v32, v0

    if-nez v32, :cond_c0

    .line 4864
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    .line 4865
    .local v29, wf:Landroid/graphics/Rect;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object v9, v0

    .line 4866
    .local v9, cr:Landroid/graphics/Rect;
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    move-object v0, v9

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    add-int v20, v32, v33

    .line 4867
    .local v20, left:I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    move-object v0, v9

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    add-int v28, v32, v33

    .line 4868
    .local v28, top:I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    move-object v0, v9

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    sub-int v24, v32, v33

    .line 4869
    .local v24, right:I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    move-object v0, v9

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    sub-int v7, v32, v33

    .line 4870
    .local v7, bottom:I
    move-object v0, v13

    move/from16 v1, v20

    move/from16 v2, v28

    move/from16 v3, v24

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    goto/16 :goto_c0

    .line 4900
    .end local v5           #aboveAppLayer:I
    .end local v7           #bottom:I
    .end local v9           #cr:Landroid/graphics/Rect;
    .end local v10           #dh:I
    .end local v11           #dw:I
    .end local v15           #i:I
    .end local v16           #ident:J
    .end local v18           #including:Z
    .end local v19           #isImeTarget:Z
    .end local v20           #left:I
    .end local v24           #right:I
    .end local v28           #top:I
    .end local v29           #wf:Landroid/graphics/Rect;
    .end local v30           #ws:Lcom/android/server/wm/WindowState;
    :catchall_177
    move-exception v32

    monitor-exit v31
    :try_end_179
    .catchall {:try_start_26 .. :try_end_179} :catchall_177

    throw v32

    .line 4856
    .restart local v5       #aboveAppLayer:I
    .restart local v10       #dh:I
    .restart local v11       #dw:I
    .restart local v15       #i:I
    .restart local v16       #ident:J
    .restart local v18       #including:Z
    .restart local v19       #isImeTarget:Z
    .restart local v30       #ws:Lcom/android/server/wm/WindowState;
    :cond_17a
    const/16 v32, 0x0

    move/from16 v18, v32

    goto :goto_111

    .line 4873
    .end local v30           #ws:Lcom/android/server/wm/WindowState;
    :cond_17f
    :try_start_17f
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4876
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object v0, v13

    move/from16 v1, v32

    move/from16 v2, v33

    move v3, v11

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 4878
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_198

    if-nez v22, :cond_19e

    .line 4879
    :cond_198
    const/16 v32, 0x0

    monitor-exit v31

    move-object/from16 v31, v32

    .line 4916
    :goto_19d
    return-object v31

    .line 4883
    :cond_19e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/Display;->getRotation()I

    move-result v25

    .line 4884
    .local v25, rot:I
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 4885
    .local v14, fw:I
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 4888
    .local v12, fh:I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v32, v0

    move v0, v14

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v26, v32, v33

    .line 4891
    .local v26, scale:F
    move v0, v11

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v26

    move/from16 v0, v32

    float-to-int v0, v0

    move v11, v0

    .line 4892
    move v0, v10

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v26

    move/from16 v0, v32

    float-to-int v0, v0

    move v10, v0

    .line 4893
    const/16 v32, 0x1

    move/from16 v0, v25

    move/from16 v1, v32

    if-eq v0, v1, :cond_1df

    const/16 v32, 0x3

    move/from16 v0, v25

    move/from16 v1, v32

    if-ne v0, v1, :cond_1f0

    .line 4894
    :cond_1df
    move/from16 v27, v11

    .line 4895
    .local v27, tmp:I
    move v11, v10

    .line 4896
    move/from16 v10, v27

    .line 4897
    const/16 v32, 0x1

    move/from16 v0, v25

    move/from16 v1, v32

    if-ne v0, v1, :cond_239

    const/16 v32, 0x3

    move/from16 v25, v32

    .line 4899
    .end local v27           #tmp:I
    :cond_1f0
    :goto_1f0
    const/16 v32, 0x0

    move v0, v11

    move v1, v10

    move/from16 v2, v32

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/view/Surface;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 4900
    .local v23, rawss:Landroid/graphics/Bitmap;
    monitor-exit v31
    :try_end_1fd
    .catchall {:try_start_17f .. :try_end_1fd} :catchall_177

    .line 4902
    if-nez v23, :cond_23e

    .line 4903
    const-string v31, "WindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Failure taking screenshot for ("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "x"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ") to layer "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4905
    const/16 v31, 0x0

    goto/16 :goto_19d

    .line 4897
    .end local v23           #rawss:Landroid/graphics/Bitmap;
    .restart local v27       #tmp:I
    :cond_239
    const/16 v32, 0x1

    move/from16 v25, v32

    goto :goto_1f0

    .line 4908
    .end local v27           #tmp:I
    .restart local v23       #rawss:Landroid/graphics/Bitmap;
    :cond_23e
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v31

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 4909
    .local v6, bm:Landroid/graphics/Bitmap;
    new-instance v21, Landroid/graphics/Matrix;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Matrix;-><init>()V

    .line 4910
    .local v21, matrix:Landroid/graphics/Matrix;
    move/from16 v0, v25

    move v1, v11

    move v2, v10

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 4911
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v26

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v26

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v21

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4912
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4913
    .local v8, canvas:Landroid/graphics/Canvas;
    const/16 v31, 0x0

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 4915
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v31, v6

    .line 4916
    goto/16 :goto_19d
.end method

.method sendNewConfiguration()V
    .registers 3

    .prologue
    .line 5508
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 5511
    :goto_6
    return-void

    .line 5509
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method public sendWindowWallpaperCommandLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 20
    .parameter "window"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "sync"

    .prologue
    .line 2437
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_46

    .line 2439
    :cond_c
    move/from16 v9, p7

    .line 2440
    .local v9, doWait:Z
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2441
    .local v7, curTokenIndex:I
    :cond_14
    if-lez v7, :cond_44

    .line 2442
    add-int/lit8 v7, v7, -0x1

    .line 2443
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowToken;

    .line 2444
    .local v10, token:Lcom/android/server/wm/WindowToken;
    iget-object v0, v10, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2445
    .local v8, curWallpaperIndex:I
    :goto_26
    if-lez v8, :cond_14

    .line 2446
    add-int/lit8 v8, v8, -0x1

    .line 2447
    iget-object v0, v10, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    .line 2449
    .local v11, wallpaper:Lcom/android/server/wm/WindowState;
    :try_start_32
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v0 .. v6}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_41} :catch_48

    .line 2452
    const/16 p7, 0x0

    goto :goto_26

    .line 2458
    .end local v8           #curWallpaperIndex:I
    .end local v10           #token:Lcom/android/server/wm/WindowToken;
    .end local v11           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_44
    if-eqz v9, :cond_46

    .line 2463
    .end local v7           #curTokenIndex:I
    .end local v9           #doWait:Z
    :cond_46
    const/4 v0, 0x0

    return-object v0

    .line 2453
    .restart local v7       #curTokenIndex:I
    .restart local v8       #curWallpaperIndex:I
    .restart local v9       #doWait:Z
    .restart local v10       #token:Lcom/android/server/wm/WindowToken;
    .restart local v11       #wallpaper:Lcom/android/server/wm/WindowState;
    :catch_48
    move-exception v0

    goto :goto_26
.end method

.method public setAnimationScale(IF)V
    .registers 5
    .parameter "which"
    .parameter "scale"

    .prologue
    .line 4526
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4528
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4531
    :cond_12
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2b

    const/4 p2, 0x0

    .line 4533
    :cond_18
    :goto_18
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 4534
    packed-switch p1, :pswitch_data_42

    .line 4540
    :goto_1f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4541
    return-void

    .line 4532
    :cond_2b
    const/high16 v0, 0x41a0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_18

    const/high16 p2, 0x41a0

    goto :goto_18

    .line 4535
    :pswitch_34
    invoke-static {p2}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_1f

    .line 4536
    :pswitch_3b
    invoke-static {p2}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_1f

    .line 4534
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_34
        :pswitch_3b
    .end packed-switch
.end method

.method public setAnimationScales([F)V
    .registers 5
    .parameter "scales"

    .prologue
    const/4 v2, 0x1

    .line 4544
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 4546
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4549
    :cond_13
    if-eqz p1, :cond_2d

    .line 4550
    array-length v0, p1

    if-lt v0, v2, :cond_21

    .line 4551
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    .line 4553
    :cond_21
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2d

    .line 4554
    aget v0, p1, v2

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    .line 4559
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4560
    return-void
.end method

.method public setAppGroupId(Landroid/os/IBinder;I)V
    .registers 8
    .parameter "token"
    .parameter "groupId"

    .prologue
    .line 3192
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppStartingIcon()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3194
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3197
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3198
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3199
    .local v0, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_35

    .line 3200
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set group id of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    monitor-exit v1

    .line 3205
    :goto_34
    return-void

    .line 3203
    :cond_35
    iput p2, v0, Lcom/android/server/wm/AppWindowToken;->groupId:I

    .line 3204
    monitor-exit v1

    goto :goto_34

    .end local v0           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_39
    move-exception v2

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_15 .. :try_end_3b} :catchall_39

    throw v2
.end method

.method public setAppOrientation(Landroid/view/IApplicationToken;I)V
    .registers 8
    .parameter "token"
    .parameter "requestedOrientation"

    .prologue
    .line 3424
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppOrientation()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3426
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3429
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3430
    :try_start_15
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3431
    .local v0, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_39

    .line 3432
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set orientation of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    monitor-exit v1

    .line 3438
    :goto_38
    return-void

    .line 3436
    :cond_39
    iput p2, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 3437
    monitor-exit v1

    goto :goto_38

    .end local v0           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_3d
    move-exception v2

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_15 .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method public setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V
    .registers 31
    .parameter "token"
    .parameter "pkg"
    .parameter "theme"
    .parameter "compatInfo"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "windowFlags"
    .parameter "transferFrom"
    .parameter "createIfNeeded"

    .prologue
    .line 3563
    const-string v4, "android.permission.MANAGE_APP_TOKENS"

    const-string v5, "setAppStartingIcon()"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 3565
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3568
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3573
    :try_start_1d
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v18

    .line 3574
    .local v18, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v18, :cond_40

    .line 3575
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to set icon of non-existing app token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    monitor-exit v19

    .line 3719
    :goto_3f
    return-void

    .line 3582
    :cond_40
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    move v4, v0

    if-nez v4, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v4, v0

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_57

    .line 3583
    :cond_52
    monitor-exit v19

    goto :goto_3f

    .line 3718
    .end local v18           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_54
    move-exception v4

    monitor-exit v19
    :try_end_56
    .catchall {:try_start_1d .. :try_end_56} :catchall_54

    throw v4

    .line 3586
    .restart local v18       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_57
    :try_start_57
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object v4, v0

    if-eqz v4, :cond_60

    .line 3587
    monitor-exit v19

    goto :goto_3f

    .line 3590
    :cond_60
    if-eqz p9, :cond_1ca

    .line 3591
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v17

    .line 3592
    .local v17, ttoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v17, :cond_1ca

    .line 3593
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v16, v0

    .line 3594
    .local v16, startingWindow:Lcom/android/server/wm/WindowState;
    if-eqz v16, :cond_194

    .line 3595
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    move v4, v0

    if-eqz v4, :cond_81

    .line 3599
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 3604
    :cond_81
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 3608
    .local v14, origId:J
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 3609
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 3610
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 3611
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 3612
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 3613
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 3614
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 3615
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 3616
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    .line 3617
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 3620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3621
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 3624
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3625
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3626
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 3633
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    move v4, v0

    if-eqz v4, :cond_106

    .line 3634
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 3636
    :cond_106
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    move v4, v0

    if-eqz v4, :cond_113

    .line 3637
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 3639
    :cond_113
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    move v4, v0

    if-nez v4, :cond_12c

    .line 3640
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    .line 3641
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 3642
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    .line 3644
    :cond_12c
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    move v4, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    move v5, v0

    if-eq v4, v5, :cond_145

    .line 3645
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    move v4, v0

    move v0, v4

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    .line 3646
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    .line 3648
    :cond_145
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object v4, v0

    if-eqz v4, :cond_17c

    .line 3649
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3650
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->animating:Z

    move v4, v0

    move v0, v4

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->animating:Z

    .line 3651
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    move v4, v0

    move v0, v4

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    .line 3652
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3653
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    .line 3654
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/AppWindowToken;->updateLayers()V

    .line 3655
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/AppWindowToken;->updateLayers()V

    .line 3658
    :cond_17c
    const/4 v4, 0x3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3660
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 3661
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3662
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3663
    monitor-exit v19

    goto/16 :goto_3f

    .line 3664
    .end local v14           #origId:J
    :cond_194
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object v4, v0

    if-eqz v4, :cond_1ca

    .line 3670
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 3671
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 3672
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 3673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object v4, v0

    const/4 v5, 0x5

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 3677
    .local v13, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object v4, v0

    invoke-virtual {v4, v13}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3678
    monitor-exit v19

    goto/16 :goto_3f

    .line 3685
    .end local v13           #m:Landroid/os/Message;
    .end local v16           #startingWindow:Lcom/android/server/wm/WindowState;
    .end local v17           #ttoken:Lcom/android/server/wm/AppWindowToken;
    :cond_1ca
    if-nez p10, :cond_1cf

    .line 3686
    monitor-exit v19

    goto/16 :goto_3f

    .line 3693
    :cond_1cf
    if-eqz p3, :cond_209

    .line 3694
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->Window:[I

    move-object v0, v4

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v12

    .line 3696
    .local v12, ent:Lcom/android/server/AttributeCache$Entry;
    iget-object v4, v12, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1ee

    .line 3698
    monitor-exit v19

    goto/16 :goto_3f

    .line 3700
    :cond_1ee
    iget-object v4, v12, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1fb

    .line 3702
    monitor-exit v19

    goto/16 :goto_3f

    .line 3704
    :cond_1fb
    iget-object v4, v12, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_209

    .line 3706
    monitor-exit v19

    goto/16 :goto_3f

    .line 3710
    .end local v12           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_209
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    .line 3711
    new-instance v4, Lcom/android/server/wm/StartingData;

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v4 .. v11}, Lcom/android/server/wm/StartingData;-><init>(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)V

    move-object v0, v4

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 3713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object v4, v0

    const/4 v5, 0x5

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 3717
    .restart local v13       #m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object v4, v0

    invoke-virtual {v4, v13}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3718
    monitor-exit v19
    :try_end_23e
    .catchall {:try_start_57 .. :try_end_23e} :catchall_54

    goto/16 :goto_3f
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .registers 12
    .parameter "token"
    .parameter "visible"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3836
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppVisibility()"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 3838
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3843
    :cond_15
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 3844
    :try_start_18
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 3845
    .local v1, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_38

    .line 3846
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3847
    monitor-exit v8

    .line 3920
    :goto_37
    return-void

    .line 3864
    :cond_38
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_9d

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_9d

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v0, v5, :cond_9d

    .line 3867
    iget-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eq v0, p2, :cond_51

    .line 3868
    monitor-exit v8

    goto :goto_37

    .line 3919
    .end local v1           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_4e
    move-exception v0

    monitor-exit v8
    :try_end_50
    .catchall {:try_start_18 .. :try_end_50} :catchall_4e

    throw v0

    .line 3870
    .restart local v1       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_51
    if-nez p2, :cond_8e

    move v0, v4

    :goto_54
    :try_start_54
    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 3874
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->setDummyAnimation()V

    .line 3875
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3876
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3877
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToHide:Z

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 3878
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 3879
    if-eqz p2, :cond_90

    .line 3880
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3881
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 3882
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 3887
    iget-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v0, :cond_8c

    .line 3888
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 3889
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 3891
    iget-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eqz v0, :cond_8c

    .line 3898
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    .line 3899
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    .line 3911
    :cond_8c
    :goto_8c
    monitor-exit v8

    goto :goto_37

    :cond_8e
    move v0, v3

    .line 3870
    goto :goto_54

    .line 3903
    :cond_90
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3907
    iget-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v0, :cond_8c

    .line 3908
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToHide:Z

    goto :goto_8c

    .line 3914
    :cond_9d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3915
    .local v6, origId:J
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 3917
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 3918
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3919
    monitor-exit v8
    :try_end_b0
    .catchall {:try_start_54 .. :try_end_b0} :catchall_4e

    goto :goto_37
.end method

.method public setAppWillBeHidden(Landroid/os/IBinder;)V
    .registers 7
    .parameter "token"

    .prologue
    .line 3722
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppWillBeHidden()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3724
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3729
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3730
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3731
    .local v0, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_35

    .line 3732
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set will be hidden of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3733
    monitor-exit v1

    .line 3737
    :goto_34
    return-void

    .line 3735
    :cond_35
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    .line 3736
    monitor-exit v1

    goto :goto_34

    .end local v0           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public setEventDispatching(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 5882
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "resumeKeyDispatching()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 5884
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5887
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5888
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/InputMonitor;->setEventDispatchingLw(Z)V

    .line 5889
    monitor-exit v0

    .line 5890
    return-void

    .line 5889
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public setFocusedApp(Landroid/os/IBinder;Z)V
    .registers 11
    .parameter "token"
    .parameter "moveFocusNow"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3452
    const-string v4, "android.permission.MANAGE_APP_TOKENS"

    const-string v5, "setFocusedApp()"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 3454
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3457
    :cond_14
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3458
    const/4 v0, 0x0

    .line 3459
    .local v0, changed:Z
    if-nez p1, :cond_3e

    .line 3461
    :try_start_1a
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_3c

    move v0, v7

    .line 3462
    :goto_1f
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 3463
    if-eqz v0, :cond_2a

    .line 3464
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    .line 3480
    :cond_2a
    :goto_2a
    if-eqz p2, :cond_3a

    if-eqz v0, :cond_3a

    .line 3481
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3482
    .local v2, origId:J
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3483
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3485
    .end local v2           #origId:J
    :cond_3a
    monitor-exit v4

    .line 3486
    :goto_3b
    return-void

    :cond_3c
    move v0, v6

    .line 3461
    goto :goto_1f

    .line 3467
    :cond_3e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 3468
    .local v1, newFocus:Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_61

    .line 3469
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to set focus to non-existing app token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    monitor-exit v4

    goto :goto_3b

    .line 3485
    .end local v1           #newFocus:Lcom/android/server/wm/AppWindowToken;
    :catchall_5e
    move-exception v5

    monitor-exit v4
    :try_end_60
    .catchall {:try_start_1a .. :try_end_60} :catchall_5e

    throw v5

    .line 3472
    .restart local v1       #newFocus:Lcom/android/server/wm/AppWindowToken;
    :cond_61
    :try_start_61
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eq v5, v1, :cond_70

    move v0, v7

    .line 3473
    :goto_66
    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 3475
    if-eqz v0, :cond_2a

    .line 3476
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    :try_end_6f
    .catchall {:try_start_61 .. :try_end_6f} :catchall_5e

    goto :goto_2a

    :cond_70
    move v0, v6

    .line 3472
    goto :goto_66
.end method

.method public setForcedDisplaySize(II)V
    .registers 10
    .parameter "longDimen"
    .parameter "shortDimen"

    .prologue
    .line 6606
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 6608
    :try_start_3
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge v3, v4, :cond_42

    .line 6609
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    if-ge p2, v3, :cond_3a

    move v1, p2

    .line 6611
    .local v1, width:I
    :goto_e
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge p1, v3, :cond_3e

    move v0, p1

    .line 6619
    .local v0, height:I
    :goto_13
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(II)V

    .line 6620
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_size_forced"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6622
    monitor-exit v2

    .line 6623
    return-void

    .line 6609
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_3a
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    move v1, v3

    goto :goto_e

    .line 6611
    .restart local v1       #width:I
    :cond_3e
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    move v0, v3

    goto :goto_13

    .line 6614
    .end local v1           #width:I
    :cond_42
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    if-ge p1, v3, :cond_4d

    move v1, p1

    .line 6616
    .restart local v1       #width:I
    :goto_47
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge p2, v3, :cond_51

    move v0, p2

    .restart local v0       #height:I
    :goto_4c
    goto :goto_13

    .line 6614
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_4d
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    move v1, v3

    goto :goto_47

    .line 6616
    .restart local v1       #width:I
    :cond_51
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    move v0, v3

    goto :goto_4c

    .line 6622
    .end local v1           #width:I
    :catchall_55
    move-exception v3

    monitor-exit v2
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v3
.end method

.method public setHardKeyboardEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 5766
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5767
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    if-eq v1, p1, :cond_10

    .line 5768
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    .line 5769
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 5771
    :cond_10
    monitor-exit v0

    .line 5772
    return-void

    .line 5771
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method setHoldScreenLocked(Z)V
    .registers 4
    .parameter "holding"

    .prologue
    .line 8396
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 8397
    .local v0, state:Z
    if-eq p1, v0, :cond_f

    .line 8398
    if-eqz p1, :cond_10

    .line 8399
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 8405
    :cond_f
    :goto_f
    return-void

    .line 8401
    :cond_10
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->screenOnStoppedLw()V

    .line 8402
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_f
.end method

.method public setInTouchMode(Z)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 4745
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4746
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 4747
    monitor-exit v0

    .line 4748
    return-void

    .line 4747
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method setInputMethodAnimLayerAdjustment(I)V
    .registers 7
    .parameter "adj"

    .prologue
    .line 1215
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    .line 1216
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 1217
    .local v2, imw:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_23

    .line 1218
    iget v4, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v2, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    .line 1221
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1222
    .local v3, wi:I
    :goto_11
    if-lez v3, :cond_23

    .line 1223
    add-int/lit8 v3, v3, -0x1

    .line 1224
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 1225
    .local v0, cw:Lcom/android/server/wm/WindowState;
    iget v4, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_11

    .line 1230
    .end local v0           #cw:Lcom/android/server/wm/WindowState;
    .end local v3           #wi:I
    :cond_23
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1231
    .local v1, di:I
    :goto_29
    if-lez v1, :cond_3b

    .line 1232
    add-int/lit8 v1, v1, -0x1

    .line 1233
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imw:Lcom/android/server/wm/WindowState;
    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1234
    .restart local v2       #imw:Lcom/android/server/wm/WindowState;
    iget v4, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v2, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_29

    .line 1238
    :cond_3b
    return-void
.end method

.method setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 13
    .parameter "session"
    .parameter "client"
    .parameter "touchableInsets"
    .parameter "contentInsets"
    .parameter "visibleInsets"
    .parameter "touchableRegion"

    .prologue
    .line 2376
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2378
    .local v0, origId:J
    :try_start_4
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_4d

    .line 2379
    const/4 v4, 0x0

    :try_start_8
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2380
    .local v2, w:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_45

    .line 2381
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 2382
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2383
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2384
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v4, p6}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 2385
    iput p3, v2, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 2386
    iget v4, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3f

    .line 2387
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 2388
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 2389
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v4, v5}, Landroid/graphics/Region;->scale(F)V

    .line 2391
    :cond_3f
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 2392
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2394
    :cond_45
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_4a

    .line 2396
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2398
    return-void

    .line 2394
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :catchall_4a
    move-exception v4

    :try_start_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    .line 2396
    :catchall_4d
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setNewConfiguration(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "config"

    .prologue
    .line 3411
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "setNewConfiguration()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3413
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3416
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3417
    :try_start_15
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 3418
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 3419
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3420
    monitor-exit v0

    .line 3421
    return-void

    .line 3420
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 5776
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5777
    :try_start_3
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

    .line 5778
    monitor-exit v0

    .line 5779
    return-void

    .line 5778
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setPointerSpeed(I)V
    .registers 4
    .parameter "speed"

    .prologue
    .line 6043
    const-string v0, "android.permission.SET_POINTER_SPEED"

    const-string v1, "setPointerSpeed()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 6045
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_POINTER_SPEED permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6048
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputManager;->setPointerSpeed(I)V

    .line 6049
    return-void
.end method

.method public setRotation(IZI)V
    .registers 6
    .parameter "rotation"
    .parameter "alwaysSendConfiguration"
    .parameter "animFlags"

    .prologue
    .line 4945
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "setRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4947
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4950
    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->setRotationUnchecked(IZI)V

    .line 4951
    return-void
.end method

.method public setRotationUnchecked(IZI)V
    .registers 9
    .parameter "rotation"
    .parameter "alwaysSendConfiguration"
    .parameter "animFlags"

    .prologue
    .line 4960
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4962
    .local v1, origId:J
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4963
    const/4 v4, 0x0

    :try_start_8
    invoke-virtual {p0, p1, p3, v4}, Lcom/android/server/wm/WindowManagerService;->setRotationUncheckedLocked(IIZ)Z

    move-result v0

    .line 4964
    .local v0, changed:Z
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_18

    .line 4966
    if-nez v0, :cond_11

    if-eqz p2, :cond_14

    .line 4967
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 4970
    :cond_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4971
    return-void

    .line 4964
    .end local v0           #changed:Z
    :catchall_18
    move-exception v4

    :try_start_19
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v4
.end method

.method public setRotationUncheckedLocked(IIZ)Z
    .registers 16
    .parameter "rotation"
    .parameter "animFlags"
    .parameter "inTransaction"

    .prologue
    const/16 v11, 0xb

    const/16 v6, -0x3e8

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 4982
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v5, :cond_16

    .line 4986
    :cond_e
    if-eq p1, v6, :cond_14

    .line 4987
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotation:I

    .line 4988
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationAnimFlags:I

    :cond_14
    move v5, v10

    .line 5117
    :goto_15
    return v5

    .line 4994
    :cond_16
    if-ne p1, v6, :cond_c7

    .line 4995
    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotation:I

    if-eq v5, v6, :cond_24

    .line 4996
    iget p1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotation:I

    .line 4997
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mRequestedRotation:I

    .line 4998
    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationAnimFlags:I

    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastRotationFlags:I

    .line 5000
    :cond_24
    iget p1, p0, Lcom/android/server/wm/WindowManagerService;->mRequestedRotation:I

    .line 5005
    :goto_26
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotation:I

    .line 5007
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-interface {v5, v6, v7, v8}, Landroid/view/WindowManagerPolicy;->rotationForOrientationLw(IIZ)I

    move-result p1

    .line 5011
    move v1, p1

    .line 5012
    .local v1, desiredRotation:I
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->getLockedRotationLw()I

    move-result v3

    .line 5013
    .local v3, lockedRotation:I
    if-ltz v3, :cond_43

    if-eq p1, v3, :cond_43

    .line 5021
    move p1, v3

    .line 5027
    packed-switch v3, :pswitch_data_114

    .line 5051
    :cond_43
    :goto_43
    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v5, :cond_e3

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    if-eq v5, p1, :cond_e3

    move v0, v9

    .line 5052
    .local v0, changed:Z
    :goto_4c
    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    if-eq p1, v1, :cond_e6

    move v6, v9

    :goto_51
    if-eq v5, v6, :cond_59

    .line 5053
    const/4 v0, 0x1

    .line 5054
    if-eq p1, v1, :cond_e9

    move v5, v9

    :goto_57
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    .line 5057
    :cond_59
    if-eqz v0, :cond_10f

    .line 5063
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .line 5064
    iput-boolean v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 5065
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v5, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 5066
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v11}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5068
    iput-boolean v9, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 5069
    iput-boolean v9, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 5070
    invoke-direct {p0, p3}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    .line 5072
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v5, v10, p1}, Lcom/android/server/wm/InputManager;->setDisplayOrientation(II)V

    .line 5073
    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v5, :cond_ac

    .line 5076
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v5, :cond_f3

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v5}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v5

    if-eqz v5, :cond_f3

    .line 5078
    invoke-static {v10}, Landroid/view/Surface;->freezeDisplay(I)V

    .line 5079
    if-nez p3, :cond_95

    .line 5082
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 5085
    :cond_95
    :try_start_95
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v5, :cond_9e

    .line 5086
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(I)V
    :try_end_9e
    .catchall {:try_start_95 .. :try_end_9e} :catchall_ec

    .line 5089
    :cond_9e
    if-nez p3, :cond_a3

    .line 5090
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 5095
    :cond_a3
    invoke-static {v10, p1, p2}, Landroid/view/Surface;->setOrientation(III)V

    .line 5096
    invoke-static {v10}, Landroid/view/Surface;->unfreezeDisplay(I)V

    .line 5100
    :goto_a9
    invoke-direct {p0, p3}, Lcom/android/server/wm/WindowManagerService;->rebuildBlackFrame(Z)V

    .line 5103
    :cond_ac
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v2, v5, v9

    .local v2, i:I
    :goto_b4
    if-ltz v2, :cond_f7

    .line 5104
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 5105
    .local v4, w:Lcom/android/server/wm/WindowState;
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_c4

    .line 5106
    iput-boolean v9, v4, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 5103
    :cond_c4
    add-int/lit8 v2, v2, -0x1

    goto :goto_b4

    .line 5002
    .end local v0           #changed:Z
    .end local v1           #desiredRotation:I
    .end local v2           #i:I
    .end local v3           #lockedRotation:I
    .end local v4           #w:Lcom/android/server/wm/WindowState;
    :cond_c7
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mRequestedRotation:I

    .line 5003
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mLastRotationFlags:I

    goto/16 :goto_26

    .line 5029
    .restart local v1       #desiredRotation:I
    .restart local v3       #lockedRotation:I
    :pswitch_cd
    const/4 v5, 0x2

    if-ne p1, v5, :cond_43

    .line 5030
    move v1, v3

    goto/16 :goto_43

    .line 5034
    :pswitch_d3
    const/4 v5, 0x3

    if-ne p1, v5, :cond_43

    .line 5035
    move v1, v3

    goto/16 :goto_43

    .line 5039
    :pswitch_d9
    if-nez p1, :cond_43

    .line 5040
    move v1, v3

    goto/16 :goto_43

    .line 5044
    :pswitch_de
    if-ne p1, v9, :cond_43

    .line 5045
    move v1, v3

    goto/16 :goto_43

    :cond_e3
    move v0, v10

    .line 5051
    goto/16 :goto_4c

    .restart local v0       #changed:Z
    :cond_e6
    move v6, v10

    .line 5052
    goto/16 :goto_51

    :cond_e9
    move v5, v10

    .line 5054
    goto/16 :goto_57

    .line 5089
    :catchall_ec
    move-exception v5

    if-nez p3, :cond_f2

    .line 5090
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 5089
    :cond_f2
    throw v5

    .line 5098
    :cond_f3
    invoke-static {v10, p1, p2}, Landroid/view/Surface;->setOrientation(III)V

    goto :goto_a9

    .line 5109
    .restart local v2       #i:I
    :cond_f7
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v2, v5, v9

    :goto_ff
    if-ltz v2, :cond_10f

    .line 5111
    :try_start_101
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/IRotationWatcher;

    invoke-interface {v5, p1}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_10c
    .catch Landroid/os/RemoteException; {:try_start_101 .. :try_end_10c} :catch_112

    .line 5109
    :goto_10c
    add-int/lit8 v2, v2, -0x1

    goto :goto_ff

    .end local v2           #i:I
    :cond_10f
    move v5, v0

    .line 5117
    goto/16 :goto_15

    .line 5112
    .restart local v2       #i:I
    :catch_112
    move-exception v5

    goto :goto_10c

    .line 5027
    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_cd
        :pswitch_d3
        :pswitch_d9
        :pswitch_de
    .end packed-switch
.end method

.method public setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 4786
    const-string v0, "persist.sys.strictmode.visual"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4787
    return-void
.end method

.method setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z
    .registers 15
    .parameter "wtoken"
    .parameter "lp"
    .parameter "visible"
    .parameter "transit"
    .parameter "performLayout"

    .prologue
    .line 3741
    const/4 v2, 0x0

    .line 3743
    .local v2, delayed:Z
    iget-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-ne v7, p3, :cond_d

    .line 3744
    if-nez p3, :cond_44

    const/4 v7, 0x1

    :goto_8
    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    .line 3745
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    .line 3748
    :cond_d
    const/4 v7, 0x0

    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    .line 3749
    iget-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-ne v7, p3, :cond_97

    .line 3750
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3751
    .local v0, N:I
    const/4 v1, 0x0

    .line 3756
    .local v1, changed:Z
    const/4 v4, 0x0

    .line 3758
    .local v4, runningAppAnimation:Z
    const/4 v7, -0x1

    if-eq p4, v7, :cond_32

    .line 3759
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    sget-object v8, Lcom/android/server/wm/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v7, v8, :cond_28

    .line 3760
    const/4 v7, 0x0

    iput-object v7, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3762
    :cond_28
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z

    .line 3763
    const/4 v1, 0x1

    .line 3764
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v7, :cond_32

    .line 3765
    const/4 v4, 0x1

    move v2, v4

    .line 3769
    :cond_32
    const/4 v3, 0x0

    .local v3, i:I
    :goto_33
    if-ge v3, v0, :cond_6f

    .line 3770
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 3771
    .local v6, win:Lcom/android/server/wm/WindowState;
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v6, v7, :cond_46

    .line 3769
    :cond_41
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 3744
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v3           #i:I
    .end local v4           #runningAppAnimation:Z
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :cond_44
    const/4 v7, 0x0

    goto :goto_8

    .line 3775
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v3       #i:I
    .restart local v4       #runningAppAnimation:Z
    .restart local v6       #win:Lcom/android/server/wm/WindowState;
    :cond_46
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 3776
    const/4 v2, 0x1

    .line 3781
    :cond_4d
    if-eqz p3, :cond_5f

    .line 3782
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v7

    if-nez v7, :cond_41

    .line 3783
    if-nez v4, :cond_5d

    .line 3784
    const/16 v7, 0x1001

    const/4 v8, 0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    .line 3787
    :cond_5d
    const/4 v1, 0x1

    goto :goto_41

    .line 3789
    :cond_5f
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v7

    if-eqz v7, :cond_41

    .line 3790
    if-nez v4, :cond_6d

    .line 3791
    const/16 v7, 0x2002

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    .line 3794
    :cond_6d
    const/4 v1, 0x1

    goto :goto_41

    .line 3798
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :cond_6f
    if-nez p3, :cond_9d

    const/4 v7, 0x1

    :goto_72
    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    .line 3799
    if-nez p3, :cond_9f

    .line 3800
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v7, v8}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 3816
    :cond_7d
    :goto_7d
    if-eqz v1, :cond_97

    .line 3817
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 3818
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v7}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 3819
    if-eqz p5, :cond_91

    .line 3820
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3822
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3824
    :cond_91
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 3828
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v3           #i:I
    .end local v4           #runningAppAnimation:Z
    :cond_97
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v7, :cond_9c

    .line 3829
    const/4 v2, 0x1

    .line 3832
    :cond_9c
    return v2

    .line 3798
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v3       #i:I
    .restart local v4       #runningAppAnimation:Z
    :cond_9d
    const/4 v7, 0x0

    goto :goto_72

    .line 3804
    :cond_9f
    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 3805
    .local v5, swin:Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_7d

    iget-boolean v7, v5, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-nez v7, :cond_ab

    iget-boolean v7, v5, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-eqz v7, :cond_7d

    .line 3807
    :cond_ab
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 3808
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    goto :goto_7d
.end method

.method setTransparentRegionWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 9
    .parameter "session"
    .parameter "client"
    .parameter "region"

    .prologue
    .line 2349
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2351
    .local v0, origId:J
    :try_start_4
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_2a

    .line 2352
    const/4 v4, 0x0

    :try_start_8
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2353
    .local v2, w:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_1d

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_1d

    .line 2356
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_27

    .line 2360
    :try_start_15
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, p3}, Landroid/view/Surface;->setTransparentRegionHint(Landroid/graphics/Region;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_22

    .line 2362
    :try_start_1a
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 2367
    :cond_1d
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_27

    .line 2369
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2371
    return-void

    .line 2362
    :catchall_22
    move-exception v4

    :try_start_23
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v4

    .line 2367
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :catchall_27
    move-exception v4

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_27

    :try_start_29
    throw v4
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 2369
    :catchall_2a
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method setWallpaperAnimLayerAdjustmentLocked(I)V
    .registers 7
    .parameter "adj"

    .prologue
    .line 1769
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    .line 1770
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1771
    .local v0, curTokenIndex:I
    :cond_8
    if-lez v0, :cond_2c

    .line 1772
    add-int/lit8 v0, v0, -0x1

    .line 1773
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 1774
    .local v2, token:Lcom/android/server/wm/WindowToken;
    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1775
    .local v1, curWallpaperIndex:I
    :goto_1a
    if-lez v1, :cond_8

    .line 1776
    add-int/lit8 v1, v1, -0x1

    .line 1777
    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 1778
    .local v3, wallpaper:Lcom/android/server/wm/WindowState;
    iget v4, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v3, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_1a

    .line 1783
    .end local v1           #curWallpaperIndex:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    .end local v3           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_2c
    return-void
.end method

.method public setWindowWallpaperPositionLocked(Lcom/android/server/wm/WindowState;FFFF)V
    .registers 7
    .parameter "window"
    .parameter "x"
    .parameter "y"
    .parameter "xStep"
    .parameter "yStep"

    .prologue
    .line 2414
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_c

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1e

    .line 2415
    :cond_c
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 2416
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 2417
    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 2418
    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 2419
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2420
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2423
    :cond_1e
    return-void
.end method

.method public showStrictModeViolation(Z)V
    .registers 10
    .parameter "on"

    .prologue
    .line 4753
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 4754
    .local v2, pid:I
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 4758
    if-eqz p1, :cond_2d

    .line 4759
    const/4 v1, 0x0

    .line 4760
    .local v1, isVisible:Z
    :try_start_a
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 4761
    .local v3, ws:Lcom/android/server/wm/WindowState;
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v5, v5, Lcom/android/server/wm/Session;->mPid:I

    if-ne v5, v2, :cond_10

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 4762
    const/4 v1, 0x1

    .line 4766
    .end local v3           #ws:Lcom/android/server/wm/WindowState;
    :cond_29
    if-nez v1, :cond_2d

    .line 4767
    monitor-exit v4

    .line 4783
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #isVisible:Z
    :goto_2c
    return-void

    .line 4772
    :cond_2d
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_49

    .line 4774
    :try_start_30
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-nez v5, :cond_3f

    .line 4775
    new-instance v5, Lcom/android/server/wm/StrictModeFlash;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v5, v6, v7}, Lcom/android/server/wm/StrictModeFlash;-><init>(Landroid/view/Display;Landroid/view/SurfaceSession;)V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    .line 4777
    :cond_3f
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/StrictModeFlash;->setVisibility(Z)V
    :try_end_44
    .catchall {:try_start_30 .. :try_end_44} :catchall_4c

    .line 4779
    :try_start_44
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 4782
    monitor-exit v4

    goto :goto_2c

    :catchall_49
    move-exception v5

    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_49

    throw v5

    .line 4779
    :catchall_4c
    move-exception v5

    :try_start_4d
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v5
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_49
.end method

.method showSurfaceRobustlyLocked(Lcom/android/server/wm/WindowState;)Z
    .registers 8
    .parameter "win"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 8424
    :try_start_2
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_18

    .line 8425
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    .line 8426
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->show()V

    .line 8427
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v1, :cond_18

    .line 8430
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    .line 8431
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_18} :catch_1a

    :cond_18
    move v1, v4

    .line 8441
    :goto_19
    return v1

    .line 8435
    :catch_1a
    move-exception v1

    move-object v0, v1

    .line 8436
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure showing surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8439
    const-string v1, "show"

    invoke-virtual {p0, p1, v1, v4}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    move v1, v5

    .line 8441
    goto :goto_19
.end method

.method public startAppFreezingScreen(Landroid/os/IBinder;I)V
    .registers 10
    .parameter "token"
    .parameter "configChanges"

    .prologue
    .line 3986
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 3988
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3991
    :cond_12
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3992
    if-nez p2, :cond_25

    :try_start_17
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_25

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 3994
    monitor-exit v3

    .line 4006
    :goto_24
    return-void

    .line 3997
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 3998
    .local v2, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_2f

    iget-object v4, v2, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v4, :cond_4c

    .line 3999
    :cond_2f
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to freeze screen with non-existing app token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4000
    monitor-exit v3

    goto :goto_24

    .line 4005
    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_49
    move-exception v4

    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_17 .. :try_end_4b} :catchall_49

    throw v4

    .line 4002
    .restart local v2       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_4c
    :try_start_4c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4003
    .local v0, origId:J
    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;I)V

    .line 4004
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4005
    monitor-exit v3
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_49

    goto :goto_24
.end method

.method public startAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;I)V
    .registers 11
    .parameter "wtoken"
    .parameter "configChanges"

    .prologue
    const/16 v5, 0x11

    const/4 v7, 0x1

    .line 3966
    iget-boolean v3, p1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v3, :cond_43

    .line 3967
    iget-boolean v3, p1, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-nez v3, :cond_2d

    .line 3968
    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    .line 3969
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 3970
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-ne v3, v7, :cond_2d

    .line 3971
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    .line 3972
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 3973
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3977
    :cond_2d
    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3978
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_34
    if-ge v1, v0, :cond_43

    .line 3979
    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3980
    .local v2, w:Lcom/android/server/wm/WindowState;
    iput-boolean v7, v2, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 3978
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 3983
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_43
    return-void
.end method

.method public startViewServer(I)Z
    .registers 6
    .parameter "port"

    .prologue
    const/4 v3, 0x0

    .line 5165
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v3

    .line 5194
    :goto_8
    return v1

    .line 5169
    :cond_9
    const-string v1, "android.permission.DUMP"

    const-string v2, "startViewServer"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    move v1, v3

    .line 5170
    goto :goto_8

    .line 5173
    :cond_15
    const/16 v1, 0x400

    if-ge p1, v1, :cond_1b

    move v1, v3

    .line 5174
    goto :goto_8

    .line 5177
    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v1, :cond_39

    .line 5178
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v1

    if-nez v1, :cond_37

    .line 5180
    :try_start_27
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/wm/ViewServer;->start()Z
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_2e

    move-result v1

    goto :goto_8

    .line 5181
    :catch_2e
    move-exception v1

    move-object v0, v1

    .line 5182
    .local v0, e:Ljava/io/IOException;
    const-string v1, "WindowManager"

    const-string v2, "View server did not start"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/io/IOException;
    :cond_37
    move v1, v3

    .line 5185
    goto :goto_8

    .line 5189
    :cond_39
    :try_start_39
    new-instance v1, Lcom/android/server/wm/ViewServer;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/ViewServer;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    .line 5190
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/wm/ViewServer;->start()Z
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_45} :catch_47

    move-result v1

    goto :goto_8

    .line 5191
    :catch_47
    move-exception v1

    move-object v0, v1

    .line 5192
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "WindowManager"

    const-string v2, "View server did not start"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 5194
    goto :goto_8
.end method

.method public statusBarVisibilityChanged(I)V
    .registers 7
    .parameter "visibility"

    .prologue
    .line 8858
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/InputManager;->setSystemUiVisibility(I)V

    .line 8859
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8860
    :try_start_8
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8861
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v0, :cond_29

    .line 8862
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_2b

    .line 8864
    .local v2, ws:Lcom/android/server/wm/WindowState;
    :try_start_19
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget-boolean v4, v4, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v4, :cond_26

    .line 8865
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4, p1}, Landroid/view/IWindow;->dispatchSystemUiVisibilityChanged(I)V
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_2b
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_26} :catch_2e

    .line 8861
    :cond_26
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 8871
    .end local v2           #ws:Lcom/android/server/wm/WindowState;
    :cond_29
    :try_start_29
    monitor-exit v3

    .line 8872
    return-void

    .line 8871
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_2b
    move-exception v4

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2b

    throw v4

    .line 8867
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v2       #ws:Lcom/android/server/wm/WindowState;
    :catch_2e
    move-exception v4

    goto :goto_26
.end method

.method public stopAppFreezingScreen(Landroid/os/IBinder;Z)V
    .registers 8
    .parameter "token"
    .parameter "force"

    .prologue
    .line 4009
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 4011
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4014
    :cond_12
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4015
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 4016
    .local v2, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_1f

    iget-object v4, v2, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v4, :cond_21

    .line 4017
    :cond_1f
    monitor-exit v3

    .line 4025
    :goto_20
    return-void

    .line 4019
    :cond_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4022
    .local v0, origId:J
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4, p2}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 4023
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4024
    monitor-exit v3

    goto :goto_20

    .end local v0           #origId:J
    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_2e
    move-exception v4

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_2e

    throw v4
.end method

.method public stopViewServer()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 5211
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 5222
    :goto_8
    return v0

    .line 5215
    :cond_9
    const-string v0, "android.permission.DUMP"

    const-string v1, "stopViewServer"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v2

    .line 5216
    goto :goto_8

    .line 5219
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v0, :cond_20

    .line 5220
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->stop()Z

    move-result v0

    goto :goto_8

    :cond_20
    move v0, v2

    .line 5222
    goto :goto_8
.end method

.method public systemReady()V
    .registers 9

    .prologue
    .line 6074
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 6075
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v4, :cond_12

    .line 6076
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Display already initialized"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6094
    :catchall_f
    move-exception v4

    monitor-exit v3
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v4

    .line 6078
    :cond_12
    :try_start_12
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 6079
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    .line 6080
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRealWidth()I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 6081
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRealHeight()I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .line 6082
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 6083
    .local v0, rot:I
    const/4 v4, 0x1

    if-eq v0, v4, :cond_3e

    const/4 v4, 0x3

    if-ne v0, v4, :cond_46

    .line 6086
    :cond_3e
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 6087
    .local v1, tmp:I
    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 6088
    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .line 6090
    .end local v1           #tmp:I
    :cond_46
    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 6091
    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    .line 6092
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getRawWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRawHeight()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/InputManager;->setDisplaySize(III)V

    .line 6093
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManagerPolicy;->setInitialDisplaySize(II)V

    .line 6094
    monitor-exit v3
    :try_end_72
    .catchall {:try_start_12 .. :try_end_72} :catchall_f

    .line 6097
    :try_start_72
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_78} :catch_88

    .line 6101
    :goto_78
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->systemReady()V

    .line 6103
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 6104
    :try_start_80
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->readForcedDisplaySizeLocked()V

    .line 6105
    monitor-exit v3

    .line 6106
    return-void

    .line 6105
    :catchall_85
    move-exception v4

    monitor-exit v3
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_85

    throw v4

    .line 6098
    :catch_88
    move-exception v3

    goto :goto_78
.end method

.method public thawRotation()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 4932
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "thawRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 4934
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4939
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x309

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManagerPolicy;->setUserRotationMode(II)V

    .line 4940
    const/16 v0, -0x3e8

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/server/wm/WindowManagerService;->setRotationUnchecked(IZI)V

    .line 4941
    return-void
.end method

.method unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V
    .registers 11
    .parameter "wtoken"
    .parameter "unfreezeSurfaceNow"
    .parameter "force"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3924
    iget-boolean v4, p1, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-eqz v4, :cond_43

    .line 3927
    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3928
    .local v0, N:I
    const/4 v2, 0x0

    .line 3929
    .local v2, unfrozeWindows:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v0, :cond_2c

    .line 3930
    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 3931
    .local v3, w:Lcom/android/server/wm/WindowState;
    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-eqz v4, :cond_29

    .line 3932
    iput-boolean v6, v3, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 3933
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_28

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-nez v4, :cond_28

    .line 3934
    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 3936
    :cond_28
    const/4 v2, 0x1

    .line 3929
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3939
    .end local v3           #w:Lcom/android/server/wm/WindowState;
    :cond_2c
    if-nez p3, :cond_30

    if-eqz v2, :cond_37

    .line 3941
    :cond_30
    iput-boolean v6, p1, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    .line 3942
    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 3944
    :cond_37
    if-eqz p2, :cond_43

    .line 3945
    if-eqz v2, :cond_40

    .line 3946
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 3947
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3949
    :cond_40
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 3952
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #unfrozeWindows:Z
    :cond_43
    return-void
.end method

.method public updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .registers 8
    .parameter "currentConfig"
    .parameter "freezeThisOneIfNeeded"

    .prologue
    .line 3312
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "updateOrientationFromAppTokens()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 3314
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3317
    :cond_12
    const/4 v0, 0x0

    .line 3318
    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3320
    .local v1, ident:J
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3321
    :try_start_1a
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 3323
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_23

    .line 3325
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3326
    return-object v0

    .line 3323
    :catchall_23
    move-exception v4

    :try_start_24
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v4
.end method

.method updateOrientationFromAppTokensLocked(Z)Z
    .registers 8
    .parameter "inTransaction"

    .prologue
    .line 3379
    const/4 v0, 0x0

    .line 3380
    .local v0, changed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3382
    .local v1, ident:J
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v3

    .line 3384
    .local v3, req:I
    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    if-eq v3, v4, :cond_21

    .line 3385
    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    .line 3388
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, v3}, Landroid/view/WindowManagerPolicy;->setCurrentOrientationLw(I)V

    .line 3389
    const/16 v4, -0x3e8

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastRotationFlags:I

    or-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/wm/WindowManagerService;->setRotationUncheckedLocked(IIZ)Z
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_25

    move-result v4

    if-eqz v4, :cond_21

    .line 3392
    const/4 v0, 0x1

    .line 3398
    :cond_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3396
    return v0

    .line 3398
    .end local v3           #req:I
    :catchall_25
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z
    .registers 25
    .parameter "wallpaperWin"
    .parameter "dw"
    .parameter "dh"
    .parameter "sync"

    .prologue
    .line 1787
    const/4 v11, 0x0

    .line 1788
    .local v11, changed:Z
    const/4 v13, 0x0

    .line 1789
    .local v13, rawChanged:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_156

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    move v3, v0

    move/from16 v16, v3

    .line 1790
    .local v16, wpx:F
    :goto_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_15c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    move v3, v0

    move/from16 v17, v3

    .line 1791
    .local v17, wpxs:F
    :goto_24
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    sub-int v10, v3, p2

    .line 1792
    .local v10, availw:I
    if-lez v10, :cond_162

    int-to-float v3, v10

    mul-float v3, v3, v16

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    move v12, v3

    .line 1793
    .local v12, offset:I
    :goto_40
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move v3, v0

    if-eq v3, v12, :cond_166

    const/4 v3, 0x1

    move v11, v3

    .line 1794
    :goto_49
    if-eqz v11, :cond_50

    .line 1797
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 1799
    :cond_50
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move v3, v0

    cmpl-float v3, v3, v16

    if-nez v3, :cond_62

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move v3, v0

    cmpl-float v3, v3, v17

    if-eqz v3, :cond_6f

    .line 1800
    :cond_62
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 1801
    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 1802
    const/4 v13, 0x1

    .line 1805
    :cond_6f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_16a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    move v3, v0

    move/from16 v18, v3

    .line 1806
    .local v18, wpy:F
    :goto_80
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_170

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    move v3, v0

    move/from16 v19, v3

    .line 1807
    .local v19, wpys:F
    :goto_91
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int v9, v3, p3

    .line 1808
    .local v9, availh:I
    if-lez v9, :cond_176

    int-to-float v3, v9

    mul-float v3, v3, v18

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    move v12, v3

    .line 1809
    :goto_ad
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move v3, v0

    if-eq v3, v12, :cond_ba

    .line 1812
    const/4 v11, 0x1

    .line 1813
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 1815
    :cond_ba
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move v3, v0

    cmpl-float v3, v3, v18

    if-nez v3, :cond_cc

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move v3, v0

    cmpl-float v3, v3, v19

    if-eqz v3, :cond_d9

    .line 1816
    :cond_cc
    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 1817
    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 1818
    const/4 v13, 0x1

    .line 1821
    :cond_d9
    if-eqz v13, :cond_155

    .line 1826
    if-eqz p4, :cond_e3

    .line 1827
    :try_start_dd
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 1829
    :cond_e3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move v7, v0

    move/from16 v8, p4

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFZ)V

    .line 1832
    if-eqz p4, :cond_155

    .line 1833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    move-object v3, v0

    if-eqz v3, :cond_155

    .line 1834
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 1835
    .local v14, start:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    move-wide v3, v0
    :try_end_113
    .catch Landroid/os/RemoteException; {:try_start_dd .. :try_end_113} :catch_17a

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    cmp-long v3, v3, v14

    if-gez v3, :cond_14f

    .line 1840
    :try_start_11a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v3, v0

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_124
    .catch Ljava/lang/InterruptedException; {:try_start_11a .. :try_end_124} :catch_17c
    .catch Landroid/os/RemoteException; {:try_start_11a .. :try_end_124} :catch_17a

    .line 1844
    :goto_124
    const-wide/16 v3, 0x96

    add-long/2addr v3, v14

    :try_start_127
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_14f

    .line 1846
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 1851
    :cond_14f
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_155
    .catch Landroid/os/RemoteException; {:try_start_127 .. :try_end_155} :catch_17a

    .line 1858
    .end local v14           #start:J
    :cond_155
    :goto_155
    return v11

    .line 1789
    .end local v9           #availh:I
    .end local v10           #availw:I
    .end local v12           #offset:I
    .end local v16           #wpx:F
    .end local v17           #wpxs:F
    .end local v18           #wpy:F
    .end local v19           #wpys:F
    :cond_156
    const/high16 v3, 0x3f00

    move/from16 v16, v3

    goto/16 :goto_13

    .line 1790
    .restart local v16       #wpx:F
    :cond_15c
    const/high16 v3, -0x4080

    move/from16 v17, v3

    goto/16 :goto_24

    .line 1792
    .restart local v10       #availw:I
    .restart local v17       #wpxs:F
    :cond_162
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_40

    .line 1793
    .restart local v12       #offset:I
    :cond_166
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_49

    .line 1805
    :cond_16a
    const/high16 v3, 0x3f00

    move/from16 v18, v3

    goto/16 :goto_80

    .line 1806
    .restart local v18       #wpy:F
    :cond_170
    const/high16 v3, -0x4080

    move/from16 v19, v3

    goto/16 :goto_91

    .line 1808
    .restart local v9       #availh:I
    .restart local v19       #wpys:F
    :cond_176
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_ad

    .line 1854
    :catch_17a
    move-exception v3

    goto :goto_155

    .line 1841
    .restart local v14       #start:J
    :catch_17c
    move-exception v3

    goto :goto_124
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)Z
    .registers 13
    .parameter "changingTarget"
    .parameter "sync"

    .prologue
    const/4 v9, 0x0

    .line 1872
    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 1873
    .local v4, dw:I
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 1875
    .local v3, dh:I
    const/4 v0, 0x0

    .line 1877
    .local v0, changed:Z
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1878
    .local v5, target:Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_1e

    .line 1879
    iget v8, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_4e

    .line 1880
    iget v8, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    .line 1884
    :cond_14
    :goto_14
    iget v8, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_59

    .line 1885
    iget v8, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    .line 1891
    :cond_1e
    :goto_1e
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1892
    .local v1, curTokenIndex:I
    :cond_24
    if-lez v1, :cond_64

    .line 1893
    add-int/lit8 v1, v1, -0x1

    .line 1894
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .line 1895
    .local v6, token:Lcom/android/server/wm/WindowToken;
    iget-object v8, v6, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1896
    .local v2, curWallpaperIndex:I
    :cond_36
    :goto_36
    if-lez v2, :cond_24

    .line 1897
    add-int/lit8 v2, v2, -0x1

    .line 1898
    iget-object v8, v6, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 1899
    .local v7, wallpaper:Lcom/android/server/wm/WindowState;
    invoke-virtual {p0, v7, v4, v3, p2}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 1900
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->computeShownFrameLocked()V

    .line 1901
    const/4 v0, 0x1

    .line 1903
    const/4 p2, 0x0

    goto :goto_36

    .line 1881
    .end local v1           #curTokenIndex:I
    .end local v2           #curWallpaperIndex:I
    .end local v6           #token:Lcom/android/server/wm/WindowToken;
    .end local v7           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_4e
    iget v8, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_14

    .line 1882
    iget v8, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    goto :goto_14

    .line 1886
    :cond_59
    iget v8, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1e

    .line 1887
    iget v8, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    goto :goto_1e

    .line 1908
    .restart local v1       #curTokenIndex:I
    :cond_64
    return v0
.end method

.method updateWallpaperVisibilityLocked()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1912
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v7}, Lcom/android/server/wm/WindowManagerService;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    .line 1913
    .local v5, visible:Z
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 1914
    .local v3, dw:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 1916
    .local v2, dh:I
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1917
    .local v0, curTokenIndex:I
    :cond_12
    if-lez v0, :cond_50

    .line 1918
    add-int/lit8 v0, v0, -0x1

    .line 1919
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    .line 1920
    .local v4, token:Lcom/android/server/wm/WindowToken;
    iget-boolean v7, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-ne v7, v5, :cond_29

    .line 1921
    if-nez v5, :cond_4e

    move v7, v9

    :goto_25
    iput-boolean v7, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 1924
    iput-boolean v9, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1927
    :cond_29
    iget-object v7, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1928
    .local v1, curWallpaperIndex:I
    :cond_2f
    :goto_2f
    if-lez v1, :cond_12

    .line 1929
    add-int/lit8 v1, v1, -0x1

    .line 1930
    iget-object v7, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 1931
    .local v6, wallpaper:Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_40

    .line 1932
    invoke-virtual {p0, v6, v3, v2, v8}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 1935
    :cond_40
    iget-boolean v7, v6, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eq v7, v5, :cond_2f

    .line 1936
    iput-boolean v5, v6, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    .line 1941
    :try_start_46
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v7, v5}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4b} :catch_4c

    goto :goto_2f

    .line 1942
    :catch_4c
    move-exception v7

    goto :goto_2f

    .end local v1           #curWallpaperIndex:I
    .end local v6           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_4e
    move v7, v8

    .line 1921
    goto :goto_25

    .line 1947
    .end local v4           #token:Lcom/android/server/wm/WindowToken;
    :cond_50
    return-void
.end method

.method public validateAppTokens(Ljava/util/List;)V
    .registers 8
    .parameter "tokens"

    .prologue
    const/4 v4, 0x1

    .line 3020
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int v1, v3, v4

    .line 3021
    .local v1, v:I
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v0, v3, v4

    .line 3022
    .local v0, m:I
    :goto_f
    if-ltz v1, :cond_6b

    if-ltz v0, :cond_6b

    .line 3023
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 3024
    .local v2, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v3, :cond_22

    .line 3025
    add-int/lit8 v0, v0, -0x1

    .line 3026
    goto :goto_f

    .line 3028
    :cond_22
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    if-eq v3, v4, :cond_66

    .line 3029
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tokens out of sync: external is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", internal is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    :cond_66
    add-int/lit8 v1, v1, -0x1

    .line 3033
    add-int/lit8 v0, v0, -0x1

    .line 3034
    goto :goto_f

    .line 3035
    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_6b
    :goto_6b
    if-ltz v1, :cond_96

    .line 3036
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "External token not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    add-int/lit8 v1, v1, -0x1

    goto :goto_6b

    .line 3039
    :cond_96
    :goto_96
    if-ltz v0, :cond_cb

    .line 3040
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 3041
    .restart local v2       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v3, :cond_c8

    .line 3042
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid internal token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    :cond_c8
    add-int/lit8 v0, v0, -0x1

    .line 3045
    goto :goto_96

    .line 3046
    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_cb
    return-void
.end method

.method viewServerGetFocusedWindow(Ljava/net/Socket;)Z
    .registers 10
    .parameter "client"

    .prologue
    .line 5307
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 5308
    const/4 v6, 0x0

    .line 5341
    :goto_7
    return v6

    .line 5311
    :cond_8
    const/4 v5, 0x1

    .line 5313
    .local v5, result:Z
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 5315
    .local v2, focusedWindow:Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    .line 5319
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_e
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 5320
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_55
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_49

    .line 5322
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    if-eqz v2, :cond_39

    .line 5323
    :try_start_20
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5324
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 5325
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 5327
    :cond_39
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 5328
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_41
    .catchall {:try_start_20 .. :try_end_41} :catchall_62
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_41} :catch_65

    .line 5332
    if-eqz v4, :cond_46

    .line 5334
    :try_start_43
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_5f

    :cond_46
    :goto_46
    move-object v3, v4

    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :cond_47
    :goto_47
    move v6, v5

    .line 5341
    goto :goto_7

    .line 5329
    :catch_49
    move-exception v6

    move-object v1, v6

    .line 5330
    .local v1, e:Ljava/lang/Exception;
    :goto_4b
    const/4 v5, 0x0

    .line 5332
    if-eqz v3, :cond_47

    .line 5334
    :try_start_4e
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_47

    .line 5335
    :catch_52
    move-exception v1

    .line 5336
    .local v1, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_47

    .line 5332
    .end local v1           #e:Ljava/io/IOException;
    :catchall_55
    move-exception v6

    :goto_56
    if-eqz v3, :cond_5b

    .line 5334
    :try_start_58
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 5332
    :cond_5b
    :goto_5b
    throw v6

    .line 5335
    :catch_5c
    move-exception v1

    .line 5336
    .restart local v1       #e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_5b

    .line 5335
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_5f
    move-exception v1

    .line 5336
    .restart local v1       #e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_46

    .line 5332
    .end local v1           #e:Ljava/io/IOException;
    :catchall_62
    move-exception v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_56

    .line 5329
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_65
    move-exception v6

    move-object v1, v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_4b
.end method

.method viewServerListWindows(Ljava/net/Socket;)Z
    .registers 14
    .parameter "client"

    .prologue
    .line 5254
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 5255
    const/4 v9, 0x0

    .line 5296
    :goto_7
    return v9

    .line 5258
    :cond_8
    const/4 v6, 0x1

    .line 5261
    .local v6, result:Z
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 5263
    :try_start_c
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/android/server/wm/WindowState;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/wm/WindowState;

    .line 5264
    .local v8, windows:[Lcom/android/server/wm/WindowState;
    monitor-exit v9
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_55

    .line 5266
    const/4 v4, 0x0

    .line 5270
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_1e
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 5271
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v10, 0x2000

    invoke-direct {v5, v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2e} :catch_68

    .line 5273
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v5, out:Ljava/io/BufferedWriter;
    :try_start_2e
    array-length v1, v8

    .line 5274
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_30
    if-ge v3, v1, :cond_58

    .line 5275
    aget-object v7, v8, v3

    .line 5276
    .local v7, w:Lcom/android/server/wm/WindowState;
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5277
    const/16 v9, 0x20

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V

    .line 5278
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 5279
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_52
    .catchall {:try_start_2e .. :try_end_52} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_52} :catch_84

    .line 5274
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 5264
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v5           #out:Ljava/io/BufferedWriter;
    .end local v7           #w:Lcom/android/server/wm/WindowState;
    .end local v8           #windows:[Lcom/android/server/wm/WindowState;
    :catchall_55
    move-exception v10

    :try_start_56
    monitor-exit v9
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v10

    .line 5282
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    .restart local v8       #windows:[Lcom/android/server/wm/WindowState;
    :cond_58
    :try_start_58
    const-string v9, "DONE.\n"

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5283
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_60} :catch_84

    .line 5287
    if-eqz v5, :cond_65

    .line 5289
    :try_start_62
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_7e

    :cond_65
    :goto_65
    move-object v4, v5

    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_66
    :goto_66
    move v9, v6

    .line 5296
    goto :goto_7

    .line 5284
    :catch_68
    move-exception v9

    move-object v2, v9

    .line 5285
    .local v2, e:Ljava/lang/Exception;
    :goto_6a
    const/4 v6, 0x0

    .line 5287
    if-eqz v4, :cond_66

    .line 5289
    :try_start_6d
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_66

    .line 5290
    :catch_71
    move-exception v2

    .line 5291
    .local v2, e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_66

    .line 5287
    .end local v2           #e:Ljava/io/IOException;
    :catchall_74
    move-exception v9

    :goto_75
    if-eqz v4, :cond_7a

    .line 5289
    :try_start_77
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    .line 5287
    :cond_7a
    :goto_7a
    throw v9

    .line 5290
    :catch_7b
    move-exception v2

    .line 5291
    .restart local v2       #e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_7a

    .line 5290
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_7e
    move-exception v2

    .line 5291
    .restart local v2       #e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_65

    .line 5287
    .end local v1           #count:I
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #i:I
    :catchall_81
    move-exception v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_75

    .line 5284
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_84
    move-exception v9

    move-object v2, v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_6a
.end method

.method viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 21
    .parameter "client"
    .parameter "command"
    .parameter "parameters"

    .prologue
    .line 5365
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 5366
    const/4 v14, 0x0

    .line 5437
    :cond_7
    :goto_7
    return v14

    .line 5369
    :cond_8
    const/4 v12, 0x1

    .line 5370
    .local v12, success:Z
    const/4 v5, 0x0

    .line 5371
    .local v5, data:Landroid/os/Parcel;
    const/4 v11, 0x0

    .line 5373
    .local v11, reply:Landroid/os/Parcel;
    const/4 v9, 0x0

    .line 5378
    .local v9, out:Ljava/io/BufferedWriter;
    const/16 v14, 0x20

    :try_start_e
    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 5379
    .local v8, index:I
    const/4 v14, -0x1

    if-ne v8, v14, :cond_1c

    .line 5380
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v8

    .line 5382
    :cond_1c
    const/4 v14, 0x0

    move-object/from16 v0, p3

    move v1, v14

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 5383
    .local v4, code:Ljava/lang/String;
    const/16 v14, 0x10

    invoke-static {v4, v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v14

    long-to-int v7, v14

    .line 5386
    .local v7, hashCode:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v8, v14, :cond_51

    .line 5387
    add-int/lit8 v14, v8, 0x1

    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 5392
    :goto_3b
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowManagerService;->findWindow(I)Lcom/android/server/wm/WindowState;
    :try_end_41
    .catchall {:try_start_e .. :try_end_41} :catchall_f3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_41} :catch_b6

    move-result-object v13

    .line 5393
    .local v13, window:Lcom/android/server/wm/WindowState;
    if-nez v13, :cond_54

    .line 5394
    const/4 v14, 0x0

    .line 5422
    if-eqz v5, :cond_48

    .line 5423
    throw v5

    .line 5425
    :cond_48
    if-eqz v11, :cond_4b

    .line 5426
    throw v11

    .line 5428
    :cond_4b
    if-eqz v9, :cond_7

    .line 5430
    :try_start_4d
    throw v9
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4e} :catch_4f

    goto :goto_7

    .line 5431
    :catch_4f
    move-exception v15

    goto :goto_7

    .line 5389
    .end local v13           #window:Lcom/android/server/wm/WindowState;
    :cond_51
    :try_start_51
    const-string p3, ""

    goto :goto_3b

    .line 5397
    .restart local v13       #window:Lcom/android/server/wm/WindowState;
    :cond_54
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 5398
    const-string v14, "android.view.IWindow"

    invoke-virtual {v5, v14}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5399
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5400
    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5401
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 5402
    invoke-static/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v5, v15}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 5406
    iget-object v14, v13, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v14}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 5408
    .local v3, binder:Landroid/os/IBinder;
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-interface {v3, v14, v5, v11, v15}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5410
    invoke-virtual {v11}, Landroid/os/Parcel;->readException()V

    .line 5412
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v14

    if-nez v14, :cond_a4

    .line 5413
    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v14, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v10, v14}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_9b
    .catchall {:try_start_51 .. :try_end_9b} :catchall_f3
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_9b} :catch_b6

    .line 5414
    .end local v9           #out:Ljava/io/BufferedWriter;
    .local v10, out:Ljava/io/BufferedWriter;
    :try_start_9b
    const-string v14, "DONE\n"

    invoke-virtual {v10, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5415
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->flush()V
    :try_end_a3
    .catchall {:try_start_9b .. :try_end_a3} :catchall_106
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a3} :catch_109

    move-object v9, v10

    .line 5422
    .end local v10           #out:Ljava/io/BufferedWriter;
    .restart local v9       #out:Ljava/io/BufferedWriter;
    :cond_a4
    if-eqz v5, :cond_a9

    .line 5423
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 5425
    :cond_a9
    if-eqz v11, :cond_ae

    .line 5426
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 5428
    :cond_ae
    if-eqz v9, :cond_b3

    .line 5430
    :try_start_b0
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_f1

    .end local v3           #binder:Landroid/os/IBinder;
    .end local v4           #code:Ljava/lang/String;
    .end local v7           #hashCode:I
    .end local v8           #index:I
    .end local v13           #window:Lcom/android/server/wm/WindowState;
    :cond_b3
    :goto_b3
    move v14, v12

    .line 5437
    goto/16 :goto_7

    .line 5418
    :catch_b6
    move-exception v14

    move-object v6, v14

    .line 5419
    .local v6, e:Ljava/lang/Exception;
    :goto_b8
    :try_start_b8
    const-string v14, "WindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not send command "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " with parameters "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e0
    .catchall {:try_start_b8 .. :try_end_e0} :catchall_f3

    .line 5420
    const/4 v12, 0x0

    .line 5422
    if-eqz v5, :cond_e6

    .line 5423
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 5425
    :cond_e6
    if-eqz v11, :cond_eb

    .line 5426
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 5428
    :cond_eb
    if-eqz v9, :cond_b3

    .line 5430
    :try_start_ed
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_f1

    goto :goto_b3

    .line 5431
    .end local v6           #e:Ljava/lang/Exception;
    :catch_f1
    move-exception v14

    goto :goto_b3

    .line 5422
    :catchall_f3
    move-exception v14

    :goto_f4
    if-eqz v5, :cond_f9

    .line 5423
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 5425
    :cond_f9
    if-eqz v11, :cond_fe

    .line 5426
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 5428
    :cond_fe
    if-eqz v9, :cond_103

    .line 5430
    :try_start_100
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_103} :catch_104

    .line 5422
    :cond_103
    :goto_103
    throw v14

    .line 5431
    :catch_104
    move-exception v15

    goto :goto_103

    .line 5422
    .end local v9           #out:Ljava/io/BufferedWriter;
    .restart local v3       #binder:Landroid/os/IBinder;
    .restart local v4       #code:Ljava/lang/String;
    .restart local v7       #hashCode:I
    .restart local v8       #index:I
    .restart local v10       #out:Ljava/io/BufferedWriter;
    .restart local v13       #window:Lcom/android/server/wm/WindowState;
    :catchall_106
    move-exception v14

    move-object v9, v10

    .end local v10           #out:Ljava/io/BufferedWriter;
    .restart local v9       #out:Ljava/io/BufferedWriter;
    goto :goto_f4

    .line 5418
    .end local v9           #out:Ljava/io/BufferedWriter;
    .restart local v10       #out:Ljava/io/BufferedWriter;
    :catch_109
    move-exception v14

    move-object v6, v14

    move-object v9, v10

    .end local v10           #out:Ljava/io/BufferedWriter;
    .restart local v9       #out:Ljava/io/BufferedWriter;
    goto :goto_b8
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5
    .parameter "window"
    .parameter "result"

    .prologue
    .line 2426
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2427
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_19

    .line 2429
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 2430
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2432
    :cond_19
    monitor-exit v0

    .line 2433
    return-void

    .line 2432
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 4
    .parameter "window"

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1863
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_19

    .line 1865
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 1866
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1868
    :cond_19
    monitor-exit v0

    .line 1869
    return-void

    .line 1868
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public watchRotation(Landroid/view/IRotationWatcher;)I
    .registers 7
    .parameter "watcher"

    .prologue
    .line 5125
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 5126
    .local v1, watcherBinder:Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/wm/WindowManagerService$5;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowManagerService$5;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V

    .line 5142
    .local v0, dr:Landroid/os/IBinder$DeathRecipient;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 5144
    :try_start_c
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 5145
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_19} :catch_20

    .line 5150
    :goto_19
    :try_start_19
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    monitor-exit v2

    return v3

    .line 5151
    :catchall_1d
    move-exception v3

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_1d

    throw v3

    .line 5146
    :catch_20
    move-exception v3

    goto :goto_19
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;
    .registers 9
    .parameter "session"
    .parameter "client"
    .parameter "throwOnError"

    .prologue
    const/4 v4, 0x0

    .line 6740
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 6743
    .local v1, win:Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_35

    .line 6744
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 6746
    .local v0, ex:Ljava/lang/RuntimeException;
    if-eqz p3, :cond_2c

    .line 6747
    throw v0

    .line 6749
    :cond_2c
    const-string v2, "WindowManager"

    const-string v3, "Failed looking up window"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 6763
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :goto_34
    return-object v2

    .line 6752
    :cond_35
    if-eqz p1, :cond_75

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    if-eq v2, p1, :cond_75

    .line 6753
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 6756
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    if-eqz p3, :cond_6c

    .line 6757
    throw v0

    .line 6759
    :cond_6c
    const-string v2, "WindowManager"

    const-string v3, "Failed looking up window"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 6760
    goto :goto_34

    .end local v0           #ex:Ljava/lang/RuntimeException;
    :cond_75
    move-object v2, v1

    .line 6763
    goto :goto_34
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;
    .registers 5
    .parameter "session"
    .parameter "client"
    .parameter "throwOnError"

    .prologue
    .line 6735
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method
