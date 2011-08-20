.class public Lcom/android/internal/policy/impl/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PassFunctionKey;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field static final APPLICATION_LAYER:I = 0x2

.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field private static final BTN_MOUSE:I = 0x110

.field static final DEBUG:Z = false

.field static final DEBUG_FALLBACK:Z = false

.field static final DEBUG_LAYOUT:Z = false

#the value of this static final field might be set in the static constructor
.field static final DEBUG_SSI_LOGADV:Z = false

.field static final DEFAULT_ACCELEROMETER_ROTATION:I = 0x0

.field static final DRAG_LAYER:I = 0x11

.field static final INPUT_METHOD_DIALOG_LAYER:I = 0xe

.field static final INPUT_METHOD_LAYER:I = 0xd

.field static final KEYGUARD_DIALOG_LAYER:I = 0x10

.field static final KEYGUARD_LAYER:I = 0xf

.field private static final LID_ABSENT:I = -0x1

.field private static final LID_CLOSED:I = 0x0

.field private static final LID_OPEN:I = 0x1

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_ACTIVITY:I = 0x2

.field static final LONG_PRESS_HOME_RECENT_DIALOG:I = 0x1

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final PHONE_LAYER:I = 0x3

.field static final POINTER_LAYER:I = 0x14

.field static final PRINT_ANIM:Z = false

.field static final PRIORITY_PHONE_LAYER:I = 0xa

.field static final SEARCH_BAR_LAYER:I = 0x4

.field static final SECURE_SYSTEM_OVERLAY_LAYER:I = 0x13

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field private static final SLEEP_DOCK:I = 0x2

.field private static final SLEEP_LID:I = 0x1

.field static final STATUS_BAR_LAYER:I = 0x8

.field static final STATUS_BAR_PANEL_LAYER:I = 0x9

.field static final STATUS_BAR_SUB_PANEL_LAYER:I = 0x5

.field private static final SW_LID:I = 0x0

.field static final SYSTEM_ALERT_LAYER:I = 0xb

.field static final SYSTEM_DIALOG_LAYER:I = 0x6

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_ERROR_LAYER:I = 0xc

.field static final SYSTEM_OVERLAY_LAYER:I = 0x12

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TOAST_LAYER:I = 0x7

.field static final WALLPAPER_LAYER:I = 0x2

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static final localLOGV:Z

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;


# instance fields
.field mAccelerometerDefault:I

.field mAllowAllRotations:Z

.field mAllowLockscreenWhenOn:Z

.field mBroadcastDone:Landroid/content/BroadcastReceiver;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field mConsumeShortcutKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDismissKeyguard:Z

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field mEnableShiftMenuBugReports:Z

.field mEndcallBehavior:I

.field final mFallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;

.field mFancyRotationAnimation:I

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mForceStatusBar:Z

.field mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field mHandler:Landroid/os/Handler;

.field mHasDockFeature:Z

.field mHasHallSensorFeature:Z

.field mHasSoftInput:Z

.field mHdmiPlugged:Z

.field mHideLockScreen:Z

.field mHomeIntent:Landroid/content/Intent;

.field mHomeLongPress:Ljava/lang/Runnable;

.field mHomePressed:Z

.field mIncallPowerBehavior:I

.field mKeyboardDockEnablesAccelerometer:Z

.field mKeyboardDockRotation:I

.field mKeyboardTapVibePattern:[J

.field mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

.field mLandscapeRotation:I

.field mLastTopAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpen:I

.field mLidOpenRotation:I

.field final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mPointerLocationInputChannel:Landroid/view/InputChannel;

.field private final mPointerLocationInputHandler:Landroid/view/InputHandler;

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field volatile mPowerKeyHandled:Z

.field private final mPowerLongPress:Ljava/lang/Runnable;

.field mPowerManager:Landroid/os/LocalPowerManager;

.field mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

.field mRestrictedScreenHeight:I

.field mRestrictedScreenLeft:I

.field mRestrictedScreenTop:I

.field mRestrictedScreenWidth:I

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field mScreenLockTimeout:Ljava/lang/Runnable;

.field mScreenOn:Z

.field mSeascapeRotation:I

.field mShortcutKeyPressed:I

.field mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mStatusBarCanHide:Z

.field mStatusBarHeight:I

.field final mStatusBarPanels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSystemReady:Z

.field mTopAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mUiMode:I

.field mUnrestrictedScreenHeight:I

.field mUnrestrictedScreenLeft:I

.field mUnrestrictedScreenTop:I

.field mUnrestrictedScreenWidth:I

.field mUpsideDownRotation:I

.field mUserRotation:I

.field mUserRotationMode:I

.field mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J

.field mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 154
    const-string v0, "ssi.key.recording"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_32

    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_SSI_LOGADV:Z

    .line 340
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 341
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 342
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 343
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 1404
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_34

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    :cond_32
    move v0, v1

    .line 154
    goto :goto_b

    .line 1404
    :array_34
    .array-data 0x4
        0xd3t 0x7t 0x0t 0x0t
        0xdat 0x7t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 237
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 240
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    .line 244
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 255
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    .line 266
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    .line 267
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 271
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardDockRotation:I

    .line 273
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 274
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 279
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardDockEnablesAccelerometer:Z

    .line 282
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 283
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    .line 284
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 285
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 287
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    .line 288
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 290
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 291
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 297
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputHandler:Landroid/view/InputHandler;

    .line 356
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutKeyPressed:I

    .line 371
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 372
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 373
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 374
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 380
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 385
    new-instance v0, Landroid/view/KeyCharacterMap$FallbackAction;

    invoke-direct {v0}, Landroid/view/KeyCharacterMap$FallbackAction;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 387
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 574
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    .line 623
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    .line 2759
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 2765
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 3097
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnHome()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goToSleepWhenLidClose(I)Z

    move-result v0

    return v0
.end method

.method private determineHiddenState(III)I
    .registers 7
    .parameter "mode"
    .parameter "hiddenValue"
    .parameter "visibleValue"

    .prologue
    const/4 v2, 0x1

    .line 1039
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 1040
    packed-switch p1, :pswitch_data_1c

    :cond_9
    move v0, p3

    .line 1047
    :goto_a
    return v0

    .line 1042
    :pswitch_b
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    if-ne v0, v2, :cond_11

    move v0, p3

    goto :goto_a

    :cond_11
    move v0, p2

    goto :goto_a

    .line 1044
    :pswitch_13
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    if-ne v0, v2, :cond_19

    move v0, p2

    goto :goto_a

    :cond_19
    move v0, p3

    goto :goto_a

    .line 1040
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_b
        :pswitch_13
    .end packed-switch
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .registers 3

    .prologue
    .line 1392
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 1394
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_13

    .line 1395
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :cond_13
    return-object v0
.end method

.method private getCurrentLandscapeRotation(I)I
    .registers 5
    .parameter "lastRotation"

    .prologue
    .line 2961
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 2962
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2963
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 2979
    :goto_f
    return v1

    .line 2966
    :cond_10
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    goto :goto_f

    .line 2970
    :cond_13
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getCurrentRotation(I)I

    move-result v0

    .line 2971
    .local v0, sensorRotation:I
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_21

    move v1, v0

    .line 2972
    goto :goto_f

    .line 2975
    :cond_21
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_29

    move v1, p1

    .line 2976
    goto :goto_f

    .line 2979
    :cond_29
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    goto :goto_f
.end method

.method private getCurrentPortraitRotation(I)I
    .registers 5
    .parameter "lastRotation"

    .prologue
    .line 2988
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 2989
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2990
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 3006
    :goto_f
    return v1

    .line 2993
    :cond_10
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    goto :goto_f

    .line 2997
    :cond_13
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getCurrentRotation(I)I

    move-result v0

    .line 2998
    .local v0, sensorRotation:I
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_21

    move v1, v0

    .line 2999
    goto :goto_f

    .line 3002
    :cond_21
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_29

    move v1, p1

    .line 3003
    goto :goto_f

    .line 3006
    :cond_29
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    goto :goto_f
.end method

.method private getFallbackAction(Landroid/view/KeyCharacterMap;IILandroid/view/KeyCharacterMap$FallbackAction;)Z
    .registers 6
    .parameter "kcm"
    .parameter "keyCode"
    .parameter "metaState"
    .parameter "outFallbackAction"

    .prologue
    .line 1659
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/KeyCharacterMap;->getFallbackAction(IILandroid/view/KeyCharacterMap$FallbackAction;)Z

    move-result v0

    return v0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 7
    .parameter "r"
    .parameter "resid"

    .prologue
    .line 3059
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 3060
    .local v0, ar:[I
    if-nez v0, :cond_8

    .line 3061
    const/4 v3, 0x0

    .line 3067
    :goto_7
    return-object v3

    .line 3063
    :cond_8
    array-length v3, v0

    new-array v2, v3, [J

    .line 3064
    .local v2, out:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    array-length v3, v0

    if-ge v1, v3, :cond_17

    .line 3065
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 3064
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_17
    move-object v3, v2

    .line 3067
    goto :goto_7
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .registers 3

    .prologue
    .line 1383
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1385
    .local v0, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_13

    .line 1386
    const-string v1, "WindowManager"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :cond_13
    return-object v0
.end method

.method private goToSleepWhenLidClose(I)Z
    .registers 7
    .parameter "reason"

    .prologue
    .line 2209
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    if-eqz v0, :cond_34

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    if-nez v0, :cond_34

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_34

    .line 2210
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lid is closed, go to sleep, reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Landroid/os/LocalPowerManager;->goToSleep(J)V

    .line 2212
    const/4 v0, 0x1

    .line 2215
    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method private handleLongPressOnHome()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 631
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-gez v2, :cond_20

    .line 632
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 634
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v2, :cond_1e

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-le v2, v6, :cond_20

    .line 636
    :cond_1e
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 640
    :cond_20
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eqz v2, :cond_2f

    .line 641
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 642
    const-string v2, "recentapps"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 646
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 649
    :cond_2f
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v2, v5, :cond_37

    .line 650
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(IZ)V

    .line 664
    :cond_36
    :goto_36
    return-void

    .line 651
    :cond_37
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v2, v6, :cond_36

    .line 653
    :try_start_3b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 654
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.recent.RecentApplicationsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    const/high16 v2, 0x1080

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 658
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_51
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3b .. :try_end_51} :catch_52

    goto :goto_36

    .line 660
    .end local v1           #intent:Landroid/content/Intent;
    :catch_52
    move-exception v2

    move-object v0, v2

    .line 661
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "WindowManager"

    const-string v3, "Failed to launch RecentAppsIntent"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36
.end method

.method private interceptPowerKeyDown(Z)V
    .registers 6
    .parameter "handled"

    .prologue
    .line 558
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 559
    if-nez p1, :cond_f

    .line 560
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 562
    :cond_f
    return-void
.end method

.method private interceptPowerKeyUp(Z)Z
    .registers 6
    .parameter "canceled"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 565
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_13

    .line 566
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 567
    if-nez p1, :cond_11

    move v0, v3

    .line 570
    :goto_10
    return v0

    :cond_11
    move v0, v2

    .line 567
    goto :goto_10

    .line 569
    :cond_13
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    move v0, v2

    .line 570
    goto :goto_10
.end method

.method private isAnyPortrait(I)Z
    .registers 3
    .parameter "sensorRotation"

    .prologue
    .line 3010
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v0, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isLandscapeOrSeascape(I)Z
    .registers 3
    .parameter "sensorRotation"

    .prologue
    .line 2983
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v0, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private keyguardIsShowingTq()Z
    .registers 2

    .prologue
    .line 2833
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    return v0
.end method

.method private readRotation(I)I
    .registers 4
    .parameter "resID"

    .prologue
    .line 924
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_9} :catch_17

    move-result v0

    .line 925
    .local v0, rotation:I
    sparse-switch v0, :sswitch_data_1a

    .line 938
    .end local v0           #rotation:I
    :goto_d
    const/4 v1, -0x1

    :goto_e
    return v1

    .line 927
    .restart local v0       #rotation:I
    :sswitch_f
    const/4 v1, 0x0

    goto :goto_e

    .line 929
    :sswitch_11
    const/4 v1, 0x1

    goto :goto_e

    .line 931
    :sswitch_13
    const/4 v1, 0x2

    goto :goto_e

    .line 933
    :sswitch_15
    const/4 v1, 0x3

    goto :goto_e

    .line 935
    .end local v0           #rotation:I
    :catch_17
    move-exception v1

    goto :goto_d

    .line 925
    nop

    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_f
        0x5a -> :sswitch_11
        0xb4 -> :sswitch_13
        0x10e -> :sswitch_15
    .end sparse-switch
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 2866
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2868
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 2872
    :cond_d
    :goto_d
    return-void

    .line 2869
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method private updateLockScreenTimeout()V
    .registers 7

    .prologue
    .line 3108
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    monitor-enter v1

    .line 3109
    :try_start_3
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v2, :cond_29

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    move v0, v2

    .line 3110
    .local v0, enable:Z
    :goto_15
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v2, v0, :cond_27

    .line 3111
    if-eqz v0, :cond_2c

    .line 3113
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3118
    :goto_25
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 3120
    :cond_27
    monitor-exit v1

    .line 3121
    return-void

    .line 3109
    .end local v0           #enable:Z
    :cond_29
    const/4 v2, 0x0

    move v0, v2

    goto :goto_15

    .line 3116
    .restart local v0       #enable:Z
    :cond_2c
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_25

    .line 3120
    .end local v0           #enable:Z
    :catchall_34
    move-exception v2

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v2
.end method

.method private updateSystemUiVisibility()V
    .registers 5

    .prologue
    .line 3307
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1a

    .line 3308
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3309
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v1, v2, v3

    .line 3310
    .local v1, visibility:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/impl/PhoneWindowManager$13;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3331
    .end local v0           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #visibility:I
    :cond_1a
    return-void
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)Landroid/view/View;
    .registers 22
    .parameter "appToken"
    .parameter "packageName"
    .parameter "theme"
    .parameter "compatInfo"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "windowFlags"

    .prologue
    .line 1194
    if-nez p2, :cond_4

    .line 1195
    const/4 v10, 0x0

    .line 1283
    :goto_3
    return-object v10

    .line 1199
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1202
    .local v3, context:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getThemeResId()I
    :try_end_9
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_9} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9} :catch_d0

    move-result v10

    move/from16 v0, p3

    move v1, v10

    if-ne v0, v1, :cond_11

    if-eqz p6, :cond_1c

    .line 1204
    :cond_11
    const/4 v10, 0x0

    :try_start_12
    invoke-virtual {v3, p2, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 1205
    move-object v0, v3

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_1c} :catch_eb
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_12 .. :try_end_1c} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1c} :catch_d0

    .line 1211
    :cond_1c
    :goto_1c
    :try_start_1c
    invoke-static {v3}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v8

    .line 1212
    .local v8, win:Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v10

    const/16 v11, 0xc

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_2f

    .line 1214
    const/4 v10, 0x0

    goto :goto_3

    .line 1217
    :cond_2f
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1218
    .local v6, r:Landroid/content/res/Resources;
    move-object v0, v6

    move/from16 v1, p6

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 1220
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/view/Window;->setType(I)V

    .line 1226
    or-int/lit8 v10, p8, 0x10

    or-int/lit8 v10, v10, 0x8

    const/high16 v11, 0x2

    or-int/2addr v10, v11

    or-int/lit8 v11, p8, 0x10

    or-int/lit8 v11, v11, 0x8

    const/high16 v12, 0x2

    or-int/2addr v11, v12

    invoke-virtual {v8, v10, v11}, Landroid/view/Window;->setFlags(II)V

    .line 1236
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v10

    if-nez v10, :cond_5f

    .line 1237
    const/high16 v10, 0x2000

    invoke-virtual {v8, v10}, Landroid/view/Window;->addFlags(I)V

    .line 1240
    :cond_5f
    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v8, v10, v11}, Landroid/view/Window;->setLayout(II)V

    .line 1243
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 1244
    .local v5, params:Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1245
    iput-object p2, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1246
    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1248
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1250
    const-string v10, "window"

    invoke-virtual {v3, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 1251
    .local v9, wm:Landroid/view/WindowManager;
    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 1253
    .local v7, view:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/Window;->isFloating()Z

    move-result v10

    if-eqz v10, :cond_a4

    .line 1260
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1268
    :cond_a4
    invoke-interface {v9, v7, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1272
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_aa
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1c .. :try_end_aa} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_aa} :catch_d0

    move-result-object v10

    if-eqz v10, :cond_b0

    move-object v10, v7

    goto/16 :goto_3

    :cond_b0
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1273
    .end local v3           #context:Landroid/content/Context;
    .end local v5           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v7           #view:Landroid/view/View;
    .end local v8           #win:Landroid/view/Window;
    .end local v9           #wm:Landroid/view/WindowManager;
    :catch_b3
    move-exception v10

    move-object v4, v10

    .line 1275
    .local v4, e:Landroid/view/WindowManager$BadTokenException;
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " already running, starting window not displayed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    .end local v4           #e:Landroid/view/WindowManager$BadTokenException;
    :goto_cd
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1276
    :catch_d0
    move-exception v10

    move-object v4, v10

    .line 1280
    .local v4, e:Ljava/lang/RuntimeException;
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed creating starting window"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cd

    .line 1206
    .end local v4           #e:Ljava/lang/RuntimeException;
    .restart local v3       #context:Landroid/content/Context;
    :catch_eb
    move-exception v10

    goto/16 :goto_1c
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter "config"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1052
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 1054
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    if-ne v1, v3, :cond_6e

    move v1, v3

    :goto_c
    invoke-interface {v0, v1}, Landroid/os/LocalPowerManager;->setKeyboardVisibility(Z)V

    .line 1056
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v0, v3, :cond_70

    .line 1057
    iput v4, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1062
    :goto_15
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustConfigurationLw, config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLidOpen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHasDockFeature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasDockFeature:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHasHallSensorFeature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasHallSensorFeature:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " config.hardKeyboardHidden:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-ne v0, v3, :cond_79

    .line 1069
    iput v4, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1075
    :goto_63
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_6b

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v3, :cond_82

    .line 1076
    :cond_6b
    iput v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1080
    :goto_6d
    return-void

    .line 1054
    :cond_6e
    const/4 v1, 0x0

    goto :goto_c

    .line 1059
    :cond_70
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0, v4, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->determineHiddenState(III)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    goto :goto_15

    .line 1071
    :cond_79
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0, v4, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->determineHiddenState(III)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    goto :goto_63

    .line 1078
    :cond_82
    iput v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    goto :goto_6d
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .parameter "attrs"

    .prologue
    .line 980
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_e

    .line 989
    :goto_5
    return-void

    .line 985
    :sswitch_6
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5

    .line 980
    nop

    :sswitch_data_e
    .sparse-switch
        0x7d5 -> :sswitch_6
        0x7d6 -> :sswitch_6
        0x7df -> :sswitch_6
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .registers 2

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2167
    const/4 v0, 0x0

    .line 2194
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public allowKeyRepeat()Z
    .registers 2

    .prologue
    .line 3301
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    return v0
.end method

.method public animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 7
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/16 v3, 0x63

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 2017
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_4a

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2019
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_16

    .line 2020
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 2022
    :cond_16
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v2, :cond_4a

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-gt v0, v3, :cond_4a

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_4a

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_4a

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v1, :cond_4a

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_4a

    .line 2028
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2029
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_39

    .line 2031
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 2033
    :cond_39
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    if-eqz v0, :cond_42

    .line 2035
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    .line 2037
    :cond_42
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4a

    .line 2038
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 2042
    :cond_4a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_5e

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 2043
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v2, :cond_5e

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-gt v0, v3, :cond_5e

    .line 2045
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2048
    :cond_5e
    return-void
.end method

.method public beginAnimationLw(II)V
    .registers 5
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2005
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2006
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2007
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 2009
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 2010
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 2011
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    .line 2012
    return-void
.end method

.method public beginLayoutLw(II)V
    .registers 10
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/4 v5, 0x0

    .line 1726
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 1727
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 1728
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 1729
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 1730
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 1731
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 1732
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    .line 1733
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 1734
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 1735
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 1736
    const/high16 v4, 0x1000

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 1739
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_7c

    .line 1740
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 1741
    .local v1, pf:Landroid/graphics/Rect;
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 1742
    .local v0, df:Landroid/graphics/Rect;
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 1743
    .local v3, vf:Landroid/graphics/Rect;
    iput v5, v3, Landroid/graphics/Rect;->left:I

    iput v5, v0, Landroid/graphics/Rect;->left:I

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 1744
    iput v5, v3, Landroid/graphics/Rect;->top:I

    iput v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 1745
    iput p1, v3, Landroid/graphics/Rect;->right:I

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 1746
    iput p2, v3, Landroid/graphics/Rect;->bottom:I

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1748
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v1, v0, v3, v3}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1749
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 1752
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    .line 1753
    .local v2, r:Landroid/graphics/Rect;
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    if-eqz v4, :cond_88

    .line 1757
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    if-ne v4, v5, :cond_7d

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 1759
    :cond_70
    :goto_70
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 1760
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 1785
    .end local v0           #df:Landroid/graphics/Rect;
    .end local v1           #pf:Landroid/graphics/Rect;
    .end local v2           #r:Landroid/graphics/Rect;
    .end local v3           #vf:Landroid/graphics/Rect;
    :cond_7c
    :goto_7c
    return-void

    .line 1758
    .restart local v0       #df:Landroid/graphics/Rect;
    .restart local v1       #pf:Landroid/graphics/Rect;
    .restart local v2       #r:Landroid/graphics/Rect;
    .restart local v3       #vf:Landroid/graphics/Rect;
    :cond_7d
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v5, :cond_70

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    goto :goto_70

    .line 1770
    :cond_88
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    if-ne v4, v5, :cond_b0

    .line 1771
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    .line 1772
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 1776
    :cond_9c
    :goto_9c
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 1777
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    goto :goto_7c

    .line 1773
    :cond_b0
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v5, :cond_9c

    .line 1774
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    goto :goto_9c
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 1183
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_e

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public canStatusBarHide()Z
    .registers 2

    .prologue
    .line 1153
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    return v0
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I
    .registers 6
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 943
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 945
    .local v1, type:I
    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_b

    const/16 v2, 0xbb7

    if-le v1, v2, :cond_d

    :cond_b
    move v2, v3

    .line 976
    :goto_c
    return v2

    .line 949
    :cond_d
    const/4 v0, 0x0

    .line 950
    .local v0, permission:Ljava/lang/String;
    packed-switch v1, :pswitch_data_24

    .line 968
    :pswitch_11
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 970
    :goto_13
    :pswitch_13
    if-eqz v0, :cond_22

    .line 971
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_22

    .line 973
    const/4 v2, -0x8

    goto :goto_c

    .line 965
    :pswitch_1f
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 966
    goto :goto_13

    :cond_22
    move v2, v3

    .line 976
    goto :goto_c

    .line 950
    :pswitch_data_24
    .packed-switch 0x7d2
        :pswitch_1f
        :pswitch_1f
        :pswitch_11
        :pswitch_13
        :pswitch_1f
        :pswitch_1f
        :pswitch_11
        :pswitch_11
        :pswitch_1f
        :pswitch_13
        :pswitch_11
        :pswitch_13
    .end packed-switch
.end method

.method public createForceHideEnterAnimation()Landroid/view/animation/Animation;
    .registers 3

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a001d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 3164
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_18

    .line 3165
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 3172
    .local v1, intent:Landroid/content/Intent;
    :goto_8
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 3174
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_22

    move-object v3, v5

    .line 3184
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_17
    return-object v3

    .line 3166
    :cond_18
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_20

    .line 3167
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_8

    .end local v1           #intent:Landroid/content/Intent;
    :cond_20
    move-object v3, v5

    .line 3169
    goto :goto_17

    .line 3178
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_22
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_3e

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.dock_home"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 3179
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3180
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v3, v2

    .line 3181
    goto :goto_17

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_3e
    move-object v3, v5

    .line 3184
    goto :goto_17
.end method

.method public detectSafeMode()Z
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 3035
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v7, 0x52

    invoke-interface {v6, v7}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v2

    .line 3036
    .local v2, menuState:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v7, 0x2f

    invoke-interface {v6, v7}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    .line 3037
    .local v3, sState:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v7, 0x17

    invoke-interface {v6, v7}, Landroid/view/IWindowManager;->getDPadKeycodeState(I)I

    move-result v0

    .line 3038
    .local v0, dpadState:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v7, 0x110

    invoke-interface {v6, v7}, Landroid/view/IWindowManager;->getTrackballScancodeState(I)I

    move-result v4

    .line 3039
    .local v4, trackballState:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v7, 0x19

    invoke-interface {v6, v7}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v5

    .line 3040
    .local v5, volumeDownState:I
    if-gtz v2, :cond_33

    if-gtz v3, :cond_33

    if-gtz v0, :cond_33

    if-gtz v4, :cond_33

    if-lez v5, :cond_84

    :cond_33
    move v6, v8

    :goto_34
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    .line 3042
    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    if-eqz v7, :cond_86

    const/16 v7, 0x2711

    :goto_3d
    const/4 v8, 0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 3045
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    if-eqz v6, :cond_89

    .line 3046
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SAFE MODE ENABLED (menu="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " s="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dpad="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " trackball="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    :goto_81
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    return v6

    .line 3040
    :cond_84
    const/4 v6, 0x0

    goto :goto_34

    .line 3042
    :cond_86
    const/16 v7, 0x2710

    goto :goto_3d

    .line 3049
    :cond_89
    const-string v6, "WindowManager"

    const-string v7, "SAFE MODE not enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_90} :catch_91

    goto :goto_81

    .line 3052
    .end local v0           #dpadState:I
    .end local v2           #menuState:I
    .end local v3           #sState:I
    .end local v4           #trackballState:I
    .end local v5           #volumeDownState:I
    :catch_91
    move-exception v6

    move-object v1, v6

    .line 3054
    .local v1, e:Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "window manager dead"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 31
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 1584
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_11d

    .line 1585
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v22

    .line 1586
    .local v22, kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v23

    .line 1587
    .local v23, keyCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v24

    .line 1588
    .local v24, metaState:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_56

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_56

    const/4 v5, 0x1

    move/from16 v21, v5

    .line 1591
    .local v21, initialDown:Z
    :goto_23
    if-eqz v21, :cond_ae

    .line 1593
    const/high16 v5, 0x1

    and-int v5, v5, v24

    if-eqz v5, :cond_7e

    .line 1594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object v5, v0

    const v6, -0x70001

    and-int v6, v6, v24

    move-object v0, v5

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v26

    .line 1597
    .local v26, shortcutIntent:Landroid/content/Intent;
    if-eqz v26, :cond_7e

    .line 1598
    const/high16 v5, 0x1000

    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1600
    :try_start_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_54
    .catch Landroid/content/ActivityNotFoundException; {:try_start_49 .. :try_end_54} :catch_5a

    .line 1606
    :goto_54
    const/4 v5, 0x0

    .line 1652
    .end local v21           #initialDown:Z
    .end local v22           #kcm:Landroid/view/KeyCharacterMap;
    .end local v23           #keyCode:I
    .end local v24           #metaState:I
    .end local v26           #shortcutIntent:Landroid/content/Intent;
    :goto_55
    return-object v5

    .line 1588
    .restart local v22       #kcm:Landroid/view/KeyCharacterMap;
    .restart local v23       #keyCode:I
    .restart local v24       #metaState:I
    :cond_56
    const/4 v5, 0x0

    move/from16 v21, v5

    goto :goto_23

    .line 1601
    .restart local v21       #initialDown:Z
    .restart local v26       #shortcutIntent:Landroid/content/Intent;
    :catch_5a
    move-exception v5

    move-object/from16 v19, v5

    .line 1602
    .local v19, ex:Landroid/content/ActivityNotFoundException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v23 .. v23}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    .line 1611
    .end local v19           #ex:Landroid/content/ActivityNotFoundException;
    .end local v26           #shortcutIntent:Landroid/content/Intent;
    :cond_7e
    const/16 v5, 0x3d

    move/from16 v0, v23

    move v1, v5

    if-ne v0, v1, :cond_ae

    .line 1612
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, -0xc2

    move/from16 v25, v0

    .line 1613
    .local v25, shiftlessModifiers:I
    const/4 v5, 0x2

    move/from16 v0, v25

    move v1, v5

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v5

    if-nez v5, :cond_a3

    const/high16 v5, 0x1

    move/from16 v0, v25

    move v1, v5

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 1616
    :cond_a3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(IZ)V

    .line 1617
    const/4 v5, 0x0

    goto :goto_55

    .line 1623
    .end local v25           #shiftlessModifiers:I
    :cond_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getFallbackAction(Landroid/view/KeyCharacterMap;IILandroid/view/KeyCharacterMap$FallbackAction;)Z

    move-result v5

    if-eqz v5, :cond_11d

    .line 1629
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    or-int/lit16 v15, v5, 0x400

    .line 1630
    .local v15, flags:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;

    move-object v10, v0

    iget v10, v10, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;

    move-object v12, v0

    iget v12, v12, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v16

    const/16 v17, 0x0

    invoke-static/range {v5 .. v17}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v20

    .line 1636
    .local v20, fallbackEvent:Landroid/view/KeyEvent;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p3

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v18

    .line 1637
    .local v18, actions:I
    and-int/lit8 v5, v18, 0x1

    if-eqz v5, :cond_11a

    .line 1638
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v5

    if-nez v5, :cond_11a

    move-object/from16 v5, v20

    .line 1642
    goto/16 :goto_55

    .line 1645
    :cond_11a
    invoke-virtual/range {v20 .. v20}, Landroid/view/KeyEvent;->recycle()V

    .line 1652
    .end local v15           #flags:I
    .end local v18           #actions:I
    .end local v20           #fallbackEvent:Landroid/view/KeyEvent;
    .end local v21           #initialDown:Z
    .end local v22           #kcm:Landroid/view/KeyCharacterMap;
    .end local v23           #keyCode:I
    .end local v24           #metaState:I
    :cond_11d
    const/4 v5, 0x0

    goto/16 :goto_55
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 1179
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .parameter "prefix"
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 3334
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSafeMode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3335
    const-string v0, " mSystemRead="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3336
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidOpen="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3337
    const-string v0, " mLidOpenRotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3338
    const-string v0, " mHdmiPlugged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3339
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUiMode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3340
    const-string v0, " mDockMode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3341
    const-string v0, " mCarDockRotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3342
    const-string v0, " mDeskDockRotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3343
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUserRotationMode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3344
    const-string v0, " mUserRotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3345
    const-string v0, " mAllowAllRotations="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3346
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAccelerometerDefault="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3347
    const-string v0, " mCurrentAppOrientation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3348
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3349
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3350
    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3351
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3352
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidKeyboardAccessibility="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3353
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3354
    const-string v0, " mLidNavigationAccessibility="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3355
    const-string v0, " mLongPressOnPowerBehavior="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3356
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScreenOn="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3357
    const-string v0, " mOrientationSensorEnabled="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3358
    const-string v0, " mHasSoftInput="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3359
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUnrestrictedScreen=("

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3360
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3361
    const-string v0, ") "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3362
    const-string v0, "x"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3363
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRestrictedScreen=("

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3364
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3365
    const-string v0, ") "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3366
    const-string v0, "x"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3367
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCur=("

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3368
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3369
    const-string v0, ")-("

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3370
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3371
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContent=("

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3372
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3373
    const-string v0, ")-("

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3374
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3375
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDock=("

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3376
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3377
    const-string v0, ")-("

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3378
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3379
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockLayer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3380
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3381
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3382
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopIsFullscreen="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3383
    const-string v0, " mForceStatusBar="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3384
    const-string v0, " mHideLockScreen="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3385
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDismissKeyguard="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3386
    const-string v0, " mHomePressed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3387
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3388
    const-string v0, " mLockScreenTimeout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3389
    const-string v0, " mLockScreenTimerActive="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3390
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEndcallBehavior="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3391
    const-string v0, " mIncallPowerBehavior="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3392
    const-string v0, " mLongPressOnHomeBehavior="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3393
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLandscapeRotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3394
    const-string v0, " mSeascapeRotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3395
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPortraitRotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3396
    const-string v0, " mUpsideDownRotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3397
    return-void
.end method

.method public enableKeyguard(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 2824
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    .line 2825
    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 2

    .prologue
    .line 3125
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 3126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    .line 3127
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 2829
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 2830
    return-void
.end method

.method public finishAnimationLw()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2052
    const/4 v0, 0x0

    .line 2053
    .local v0, changes:I
    const/4 v2, 0x0

    .line 2055
    .local v2, topIsFullscreen:Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_7c

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    move-object v1, v4

    .line 2059
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    :goto_f
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_21

    .line 2062
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    if-eqz v4, :cond_7f

    .line 2064
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v4

    if-eqz v4, :cond_21

    or-int/lit8 v0, v0, 0x1

    .line 2091
    :cond_21
    :goto_21
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    .line 2093
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_49

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v4, v5, :cond_49

    .line 2094
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2096
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x800

    and-int/2addr v4, v5

    if-eqz v4, :cond_a9

    move v3, v6

    .line 2099
    .local v3, topNeedsMenu:Z
    :goto_3f
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$7;

    invoke-direct {v5, p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2124
    .end local v3           #topNeedsMenu:Z
    :cond_49
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_75

    .line 2126
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    if-eqz v4, :cond_ab

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v4

    if-nez v4, :cond_ab

    .line 2127
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 2128
    or-int/lit8 v0, v0, 0x7

    .line 2132
    :cond_63
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 2133
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$8;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2156
    :cond_75
    :goto_75
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibility()V

    .line 2159
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 2160
    return v0

    .line 2055
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_7c
    const/4 v4, 0x0

    move-object v1, v4

    goto :goto_f

    .line 2065
    .restart local v1       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_7f
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_21

    .line 2072
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_9b

    move v2, v6

    .line 2077
    :goto_8a
    if-eqz v2, :cond_9d

    .line 2078
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    if-eqz v4, :cond_21

    .line 2080
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v4

    if-eqz v4, :cond_21

    or-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_9b
    move v2, v7

    .line 2072
    goto :goto_8a

    .line 2086
    :cond_9d
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v4

    if-eqz v4, :cond_21

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_21

    :cond_a9
    move v3, v7

    .line 2096
    goto :goto_3f

    .line 2139
    :cond_ab
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v4, :cond_bf

    .line 2140
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 2141
    or-int/lit8 v0, v0, 0x7

    .line 2145
    :cond_b9
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setHidden(Z)V

    goto :goto_75

    .line 2147
    :cond_bf
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 2148
    or-int/lit8 v0, v0, 0x7

    .line 2152
    :cond_c9
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setHidden(Z)V

    goto :goto_75
.end method

.method public finishLayoutLw()I
    .registers 2

    .prologue
    .line 2000
    const/4 v0, 0x0

    return v0
.end method

.method public focusChanged(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 3
    .parameter "lastFocus"
    .parameter "newFocus"

    .prologue
    .line 2198
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2199
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibility()V

    .line 2200
    return-void
.end method

.method public getConfigDisplayHeight(II)I
    .registers 6
    .parameter "rotation"
    .parameter "fullHeight"

    .prologue
    .line 1172
    const-string v1, "sys.config.backwardcompat"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1173
    .local v0, isBackCompat:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, p2

    .line 1175
    :goto_11
    return v1

    :cond_12
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    sub-int v1, p2, v1

    goto :goto_11
.end method

.method public getConfigDisplayWidth(II)I
    .registers 3
    .parameter "rotation"
    .parameter "fullWidth"

    .prologue
    .line 1168
    return p2
.end method

.method public getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .registers 9
    .parameter "attrs"
    .parameter "contentInset"

    .prologue
    .line 1712
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1714
    .local v0, fl:I
    const v1, 0x10500

    and-int/2addr v1, v0

    const v2, 0x10100

    if-ne v1, v2, :cond_23

    .line 1716
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1722
    :goto_22
    return-void

    .line 1720
    :cond_23
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_22
.end method

.method public getLockedRotationLw()I
    .registers 3

    .prologue
    .line 2940
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2955
    const/4 v1, -0x1

    :try_start_4
    monitor-exit v0

    return v1

    .line 2956
    :catchall_6
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_6

    throw v1
.end method

.method public getMaxWallpaperLayer()I
    .registers 2

    .prologue
    .line 1149
    const/16 v0, 0x8

    return v0
.end method

.method public getNonDecorDisplayHeight(II)I
    .registers 6
    .parameter "rotation"
    .parameter "fullHeight"

    .prologue
    .line 1161
    const-string v1, "sys.config.backwardcompat"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1162
    .local v0, isBackCompat:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, p2

    .line 1164
    :goto_11
    return v1

    :cond_12
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    if-eqz v1, :cond_18

    move v1, p2

    goto :goto_11

    :cond_18
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    sub-int v1, p2, v1

    goto :goto_11
.end method

.method public getNonDecorDisplayWidth(II)I
    .registers 3
    .parameter "rotation"
    .parameter "fullWidth"

    .prologue
    .line 1157
    return p2
.end method

.method goHome()Z
    .registers 16

    .prologue
    .line 3216
    :try_start_0
    const-string v0, "persist.sys.uts-test-mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 3218
    const-string v0, "WindowManager"

    const-string v1, "UTS-TEST-MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    :cond_11
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface/range {v3 .. v13}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I

    move-result v14

    .line 3237
    .local v14, result:I
    const/4 v0, 0x1

    if-ne v14, v0, :cond_64

    .line 3238
    const/4 v0, 0x0

    .line 3244
    .end local v14           #result:I
    :goto_33
    return v0

    .line 3220
    :cond_34
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 3221
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 3222
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v2

    .line 3223
    .local v2, dock:Landroid/content/Intent;
    if-eqz v2, :cond_11

    .line 3224
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5d} :catch_63

    move-result v14

    .line 3228
    .restart local v14       #result:I
    const/4 v0, 0x1

    if-ne v14, v0, :cond_11

    .line 3229
    const/4 v0, 0x0

    goto :goto_33

    .line 3240
    .end local v2           #dock:Landroid/content/Intent;
    .end local v14           #result:I
    :catch_63
    move-exception v0

    .line 3244
    :cond_64
    const/4 v0, 0x1

    goto :goto_33
.end method

.method handleFunctionKey(Landroid/view/KeyEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 2382
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2383
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$PassFunctionKey;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$PassFunctionKey;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2384
    return-void
.end method

.method handleVolumeKey(II)V
    .registers 8
    .parameter "stream"
    .parameter "keycode"

    .prologue
    .line 2359
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2360
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_7

    .line 2379
    :goto_6
    return-void

    .line 2368
    :cond_7
    :try_start_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2369
    const/16 v2, 0x18

    if-ne p2, v2, :cond_1b

    const/4 v2, 0x1

    :goto_11
    const/4 v3, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/media/IAudioService;->adjustStreamVolume(III)V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_3d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_1d

    .line 2377
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6

    .line 2369
    :cond_1b
    const/4 v2, -0x1

    goto :goto_11

    .line 2374
    :catch_1d
    move-exception v2

    move-object v1, v2

    .line 2375
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1f
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAudioService.adjustStreamVolume() threw RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_3d

    .line 2377
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_3d
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .registers 2

    .prologue
    .line 2854
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/os/LocalPowerManager;)V
    .registers 14
    .parameter "context"
    .parameter "windowManager"
    .parameter "powerManager"

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x1020

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 692
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 693
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 694
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    .line 695
    new-instance v4, Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {v4, p1, p0, p3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    .line 696
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 697
    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    .line 698
    new-instance v3, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    .line 699
    .local v3, settingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->observe()V

    .line 700
    new-instance v4, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p1, v5}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    .line 701
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    .line 702
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 703
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 706
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 707
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.CAR_DOCK"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 710
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 711
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.DESK_DOCK"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 715
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 716
    .local v2, pm:Landroid/os/PowerManager;
    const-string v4, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v2, v7, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 718
    const-string v4, "1"

    const-string v5, "ro.debuggable"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 719
    const v4, 0x10e0008

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 721
    const v4, 0x10e000a

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    .line 723
    const v4, 0x10e0009

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    .line 725
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:Z

    .line 727
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 729
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 731
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 733
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 736
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 737
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v4, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 738
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 739
    sget-object v4, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 740
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 741
    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 742
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 743
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_12b

    .line 745
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 748
    :cond_12b
    new-instance v4, Landroid/os/Vibrator;

    invoke-direct {v4}, Landroid/os/Vibrator;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 749
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070014

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 751
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070015

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 753
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070016

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 755
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070017

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 757
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070018

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 761
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_191

    .line 762
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v5, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 764
    :cond_191
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readHdmiState()Z

    move-result v4

    if-nez v4, :cond_1c5

    move v4, v7

    :goto_198
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 765
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v4, :cond_1c7

    move v4, v7

    :goto_19f
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setHdmiPlugged(Z)V

    .line 768
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readDockState()I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 769
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "asus.hardware.dock"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasDockFeature:Z

    .line 771
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "asus.hardware.hall_sensor"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasHallSensorFeature:Z

    .line 774
    return-void

    :cond_1c5
    move v4, v6

    .line 764
    goto :goto_198

    :cond_1c7
    move v4, v6

    .line 765
    goto :goto_19f
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .registers 29
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 1412
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v14

    .line 1413
    .local v14, keyguardOn:Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    .line 1414
    .local v13, keyCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v16

    .line 1415
    .local v16, repeatCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v15

    .line 1416
    .local v15, metaState:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v21

    if-nez v21, :cond_61

    const/16 v21, 0x1

    move/from16 v7, v21

    .line 1417
    .local v7, down:Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    .line 1428
    .local v5, canceled:Z
    const/16 v21, 0x3

    move v0, v13

    move/from16 v1, v21

    if-ne v0, v1, :cond_eb

    .line 1430
    if-nez v7, :cond_36

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1436
    :cond_36
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    move/from16 v21, v0

    if-eqz v21, :cond_82

    if-nez v7, :cond_82

    .line 1437
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 1438
    if-nez v5, :cond_7a

    .line 1442
    const/4 v10, 0x0

    .line 1444
    .local v10, incomingRinging:Z
    :try_start_4b
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    .line 1445
    .local v18, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v18, :cond_55

    .line 1446
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_54} :catch_66

    move-result v10

    .line 1452
    .end local v18           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_55
    :goto_55
    if-eqz v10, :cond_76

    .line 1453
    const-string v21, "WindowManager"

    const-string v22, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    .end local v10           #incomingRinging:Z
    :goto_5e
    const/16 v21, 0x1

    .line 1567
    :goto_60
    return v21

    .line 1416
    .end local v5           #canceled:Z
    .end local v7           #down:Z
    :cond_61
    const/16 v21, 0x0

    move/from16 v7, v21

    goto :goto_1a

    .line 1448
    .restart local v5       #canceled:Z
    .restart local v7       #down:Z
    .restart local v10       #incomingRinging:Z
    :catch_66
    move-exception v21

    move-object/from16 v8, v21

    .line 1449
    .local v8, ex:Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 1455
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_76
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_5e

    .line 1458
    .end local v10           #incomingRinging:Z
    :cond_7a
    const-string v21, "WindowManager"

    const-string v22, "Ignoring HOME; event canceled."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 1465
    :cond_82
    if-eqz p1, :cond_a4

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v21

    move-object/from16 v4, v21

    .line 1466
    .local v4, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_8a
    if-eqz v4, :cond_c6

    .line 1467
    move-object v0, v4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    .line 1468
    .local v19, type:I
    const/16 v21, 0x7d4

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_a1

    const/16 v21, 0x7d9

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_a9

    .line 1471
    :cond_a1
    const/16 v21, 0x0

    goto :goto_60

    .line 1465
    .end local v4           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v19           #type:I
    :cond_a4
    const/16 v21, 0x0

    move-object/from16 v4, v21

    goto :goto_8a

    .line 1473
    .restart local v4       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v19       #type:I
    :cond_a9
    sget-object v21, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v20, v0

    .line 1474
    .local v20, typeCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_b1
    move v0, v9

    move/from16 v1, v20

    if-ge v0, v1, :cond_c6

    .line 1475
    sget-object v21, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v21, v21, v9

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_c3

    .line 1477
    const/16 v21, 0x1

    goto :goto_60

    .line 1474
    :cond_c3
    add-int/lit8 v9, v9, 0x1

    goto :goto_b1

    .line 1482
    .end local v9           #i:I
    .end local v19           #type:I
    .end local v20           #typeCount:I
    :cond_c6
    if-eqz v7, :cond_e7

    if-nez v16, :cond_e7

    .line 1483
    if-nez v14, :cond_df

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v23

    invoke-virtual/range {v21 .. v24}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1486
    :cond_df
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 1488
    :cond_e7
    const/16 v21, 0x1

    goto/16 :goto_60

    .line 1489
    .end local v4           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_eb
    const/16 v21, 0x52

    move v0, v13

    move/from16 v1, v21

    if-ne v0, v1, :cond_127

    .line 1491
    const/4 v6, 0x1

    .line 1493
    .local v6, chordBug:I
    if-eqz v7, :cond_186

    if-nez v16, :cond_186

    .line 1494
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    move/from16 v21, v0

    if-eqz v21, :cond_186

    and-int/lit8 v21, v15, 0x1

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_186

    .line 1495
    new-instance v11, Landroid/content/Intent;

    const-string v21, "android.intent.action.BUG_REPORT"

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1496
    .local v11, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object v1, v11

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1497
    const/16 v21, 0x1

    goto/16 :goto_60

    .line 1515
    .end local v6           #chordBug:I
    .end local v11           #intent:Landroid/content/Intent;
    :cond_127
    const/16 v21, 0x54

    move v0, v13

    move/from16 v1, v21

    if-ne v0, v1, :cond_16a

    .line 1516
    if-eqz v7, :cond_143

    .line 1517
    if-nez v16, :cond_13f

    .line 1518
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutKeyPressed:I

    .line 1519
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeShortcutKeyUp:Z

    .line 1528
    :cond_13f
    const/16 v21, 0x0

    goto/16 :goto_60

    .line 1521
    :cond_143
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutKeyPressed:I

    move/from16 v21, v0

    move v0, v13

    move/from16 v1, v21

    if-ne v0, v1, :cond_13f

    .line 1522
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutKeyPressed:I

    .line 1523
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeShortcutKeyUp:Z

    move/from16 v21, v0

    if-eqz v21, :cond_13f

    .line 1524
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeShortcutKeyUp:Z

    .line 1525
    const/16 v21, 0x1

    goto/16 :goto_60

    .line 1529
    :cond_16a
    const/16 v21, 0xbb

    move v0, v13

    move/from16 v1, v21

    if-ne v0, v1, :cond_186

    .line 1530
    if-eqz v7, :cond_182

    if-nez v16, :cond_182

    .line 1531
    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(IZ)V

    .line 1533
    :cond_182
    const/16 v21, 0x1

    goto/16 :goto_60

    .line 1541
    :cond_186
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutKeyPressed:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_241

    .line 1542
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v12

    .line 1543
    .local v12, kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual {v12, v13}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v21

    if-eqz v21, :cond_241

    .line 1544
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeShortcutKeyUp:Z

    .line 1545
    if-eqz v7, :cond_1d3

    if-nez v16, :cond_1d3

    if-nez v14, :cond_1d3

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v12

    move v2, v13

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v17

    .line 1547
    .local v17, shortcutIntent:Landroid/content/Intent;
    if-eqz v17, :cond_210

    .line 1548
    const/high16 v21, 0x1000

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1550
    :try_start_1c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1d3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1c6 .. :try_end_1d3} :catch_1d7

    .line 1563
    .end local v17           #shortcutIntent:Landroid/content/Intent;
    :cond_1d3
    :goto_1d3
    const/16 v21, 0x1

    goto/16 :goto_60

    .line 1551
    .restart local v17       #shortcutIntent:Landroid/content/Intent;
    :catch_1d7
    move-exception v21

    move-object/from16 v8, v21

    .line 1552
    .local v8, ex:Landroid/content/ActivityNotFoundException;
    const-string v21, "WindowManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Dropping shortcut key combination because the activity to which it is registered was not found: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutKeyPressed:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "+"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v13}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d3

    .line 1558
    .end local v8           #ex:Landroid/content/ActivityNotFoundException;
    :cond_210
    const-string v21, "WindowManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Dropping unregistered shortcut key combination: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutKeyPressed:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "+"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v13}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d3

    .line 1567
    .end local v12           #kcm:Landroid/view/KeyCharacterMap;
    .end local v17           #shortcutIntent:Landroid/content/Intent;
    :cond_241
    const/16 v21, 0x0

    goto/16 :goto_60
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .registers 17
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 2389
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_54

    const/4 v10, 0x1

    move v1, v10

    .line 2390
    .local v1, down:Z
    :goto_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 2391
    .local v0, canceled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 2393
    .local v6, keyCode:I
    const/high16 v10, 0x100

    and-int/2addr v10, p2

    if-eqz v10, :cond_57

    const/4 v10, 0x1

    move v4, v10

    .line 2399
    .local v4, isInjected:Z
    :goto_17
    if-eqz p3, :cond_5a

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v10

    move v7, v10

    .line 2408
    .local v7, keyguardActive:Z
    :goto_20
    if-eqz v1, :cond_2c

    and-int/lit16 v10, p2, 0x100

    if-eqz v10, :cond_2c

    .line 2409
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2421
    :cond_2c
    if-nez p3, :cond_30

    if-eqz v4, :cond_62

    .line 2423
    :cond_30
    const/4 v8, 0x1

    .line 2451
    .local v8, result:I
    :cond_31
    :goto_31
    and-int/lit16 v10, p2, 0x400

    if-eqz v10, :cond_d5

    .line 2454
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_8a

    .line 2455
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lid is no open, skip the key:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    const/4 v10, 0x0

    .line 2693
    :goto_53
    return v10

    .line 2389
    .end local v0           #canceled:Z
    .end local v1           #down:Z
    .end local v4           #isInjected:Z
    .end local v6           #keyCode:I
    .end local v7           #keyguardActive:Z
    .end local v8           #result:I
    :cond_54
    const/4 v10, 0x0

    move v1, v10

    goto :goto_8

    .line 2393
    .restart local v0       #canceled:Z
    .restart local v1       #down:Z
    .restart local v6       #keyCode:I
    :cond_57
    const/4 v10, 0x0

    move v4, v10

    goto :goto_17

    .line 2399
    .restart local v4       #isInjected:Z
    :cond_5a
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v10

    move v7, v10

    goto :goto_20

    .line 2427
    .restart local v7       #keyguardActive:Z
    :cond_62
    const/4 v8, 0x0

    .line 2429
    .restart local v8       #result:I
    and-int/lit8 v10, p2, 0x3

    if-eqz v10, :cond_84

    const/4 v10, 0x1

    move v5, v10

    .line 2431
    .local v5, isWakeKey:Z
    :goto_69
    if-eqz v1, :cond_31

    if-eqz v5, :cond_31

    .line 2433
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasDockFeature:Z

    if-eqz v10, :cond_7c

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/16 v11, 0xa

    if-ne v10, v11, :cond_7c

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_31

    .line 2438
    :cond_7c
    if-eqz v7, :cond_87

    .line 2440
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v10, v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)Z

    goto :goto_31

    .line 2429
    .end local v5           #isWakeKey:Z
    :cond_84
    const/4 v10, 0x0

    move v5, v10

    goto :goto_69

    .line 2443
    .restart local v5       #isWakeKey:Z
    :cond_87
    or-int/lit8 v8, v8, 0x2

    goto :goto_31

    .line 2460
    .end local v5           #isWakeKey:Z
    :cond_8a
    if-eqz v7, :cond_d5

    .line 2461
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "keyguard active key:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    or-int/lit8 v8, v8, 0x1

    .line 2464
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAsusEpKeyguardSecure()Z

    move-result v10

    if-nez v10, :cond_d5

    .line 2466
    and-int/lit8 v8, v8, -0x2

    .line 2468
    if-eqz v1, :cond_d5

    .line 2469
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unlock keyguard by key:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardBypassTq()Z

    .line 2473
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/os/LocalPowerManager;->enableUserActivity(Z)V

    .line 2474
    or-int/lit8 v8, v8, 0x2

    .line 2482
    :cond_d5
    sparse-switch v6, :sswitch_data_23c

    :cond_d8
    :goto_d8
    move v10, v8

    .line 2693
    goto/16 :goto_53

    .line 2486
    :sswitch_db
    if-eqz v1, :cond_d8

    .line 2487
    const/16 v10, 0xa4

    if-ne v6, v10, :cond_e8

    if-nez v7, :cond_e8

    .line 2488
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleFunctionKey(Landroid/view/KeyEvent;)V

    .line 2489
    and-int/lit8 v8, v8, -0x2

    .line 2492
    :cond_e8
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v9

    .line 2493
    .local v9, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v9, :cond_119

    .line 2495
    :try_start_ee
    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v10

    if-eqz v10, :cond_101

    .line 2502
    const-string v10, "WindowManager"

    const-string v11, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V

    .line 2511
    and-int/lit8 v8, v8, -0x2

    goto :goto_d8

    .line 2514
    :cond_101
    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v10

    if-eqz v10, :cond_119

    and-int/lit8 v10, v8, 0x1

    if-nez v10, :cond_119

    .line 2518
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V
    :try_end_10f
    .catch Landroid/os/RemoteException; {:try_start_ee .. :try_end_10f} :catch_110

    goto :goto_d8

    .line 2521
    :catch_110
    move-exception v10

    move-object v2, v10

    .line 2522
    .local v2, ex:Landroid/os/RemoteException;
    const-string v10, "WindowManager"

    const-string v11, "ITelephony threw RemoteException"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2526
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_119
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMusicActive()Z

    move-result v10

    if-eqz v10, :cond_d8

    and-int/lit8 v10, v8, 0x1

    if-nez v10, :cond_d8

    .line 2529
    const/4 v10, 0x3

    invoke-virtual {p0, v10, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V

    goto :goto_d8

    .line 2537
    .end local v9           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :sswitch_128
    and-int/lit8 v8, v8, -0x2

    .line 2538
    if-eqz v1, :cond_14b

    .line 2539
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v9

    .line 2540
    .restart local v9       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/4 v3, 0x0

    .line 2541
    .local v3, hungUp:Z
    if-eqz v9, :cond_137

    .line 2543
    :try_start_133
    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_136
    .catch Landroid/os/RemoteException; {:try_start_133 .. :try_end_136} :catch_140

    move-result v3

    .line 2548
    :cond_137
    :goto_137
    if-eqz p3, :cond_13b

    if-eqz v3, :cond_149

    :cond_13b
    const/4 v10, 0x1

    :goto_13c
    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto :goto_d8

    .line 2544
    :catch_140
    move-exception v2

    .line 2545
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v10, "WindowManager"

    const-string v11, "ITelephony threw RemoteException"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_137

    .line 2548
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_149
    const/4 v10, 0x0

    goto :goto_13c

    .line 2550
    .end local v3           #hungUp:Z
    .end local v9           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_14b
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v10

    if-eqz v10, :cond_d8

    .line 2551
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_15d

    .line 2553
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goHome()Z

    move-result v10

    if-nez v10, :cond_d8

    .line 2557
    :cond_15d
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_d8

    .line 2559
    and-int/lit8 v10, v8, -0x3

    or-int/lit8 v8, v10, 0x4

    goto/16 :goto_d8

    .line 2567
    :sswitch_169
    and-int/lit8 v8, v8, -0x2

    .line 2568
    if-eqz v1, :cond_1a4

    .line 2569
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v9

    .line 2570
    .restart local v9       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/4 v3, 0x0

    .line 2571
    .restart local v3       #hungUp:Z
    if-eqz v9, :cond_17d

    .line 2573
    :try_start_174
    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v10

    if-eqz v10, :cond_187

    .line 2576
    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_17d
    .catch Landroid/os/RemoteException; {:try_start_174 .. :try_end_17d} :catch_198

    .line 2588
    :cond_17d
    :goto_17d
    if-eqz p3, :cond_181

    if-eqz v3, :cond_1a2

    :cond_181
    const/4 v10, 0x1

    :goto_182
    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_d8

    .line 2577
    :cond_187
    :try_start_187
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_17d

    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v10

    if-eqz v10, :cond_17d

    .line 2582
    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_196
    .catch Landroid/os/RemoteException; {:try_start_187 .. :try_end_196} :catch_198

    move-result v3

    goto :goto_17d

    .line 2584
    :catch_198
    move-exception v10

    move-object v2, v10

    .line 2585
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v10, "WindowManager"

    const-string v11, "ITelephony threw RemoteException"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17d

    .line 2588
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_1a2
    const/4 v10, 0x0

    goto :goto_182

    .line 2590
    .end local v3           #hungUp:Z
    .end local v9           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_1a4
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v10

    if-eqz v10, :cond_d8

    .line 2591
    and-int/lit8 v10, v8, -0x3

    or-int/lit8 v8, v10, 0x4

    goto/16 :goto_d8

    .line 2600
    :sswitch_1b0
    if-eqz v1, :cond_1be

    .line 2601
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v9

    .line 2602
    .restart local v9       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v9, :cond_1be

    .line 2604
    :try_start_1b8
    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_1bb
    .catch Landroid/os/RemoteException; {:try_start_1b8 .. :try_end_1bb} :catch_1c8

    move-result v10

    if-eqz v10, :cond_d8

    .line 2623
    .end local v9           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_1be
    :goto_1be
    :sswitch_1be
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v10

    if-nez v10, :cond_1d1

    .line 2624
    and-int/lit8 v8, v8, -0x2

    .line 2625
    goto/16 :goto_d8

    .line 2609
    .restart local v9       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_1c8
    move-exception v2

    .line 2610
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v10, "WindowManager"

    const-string v11, "ITelephony threw RemoteException"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1be

    .line 2628
    .end local v2           #ex:Landroid/os/RemoteException;
    .end local v9           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_1d1
    and-int/lit8 v10, v8, 0x1

    if-nez v10, :cond_d8

    .line 2632
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2633
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;

    new-instance v12, Landroid/view/KeyEvent;

    invoke-direct {v12, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-direct {v11, p0, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_d8

    .line 2639
    :sswitch_1eb
    if-eqz v1, :cond_d8

    .line 2640
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v9

    .line 2641
    .restart local v9       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v9, :cond_d8

    .line 2643
    :try_start_1f3
    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v10

    if-eqz v10, :cond_d8

    .line 2644
    const-string v10, "WindowManager"

    const-string v11, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_203
    .catch Landroid/os/RemoteException; {:try_start_1f3 .. :try_end_203} :catch_207

    .line 2650
    and-int/lit8 v8, v8, -0x2

    goto/16 :goto_d8

    .line 2652
    :catch_207
    move-exception v10

    move-object v2, v10

    .line 2653
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v10, "WindowManager"

    const-string v11, "ITelephony threw RemoteException"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d8

    .line 2666
    .end local v2           #ex:Landroid/os/RemoteException;
    .end local v9           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :sswitch_212
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v10

    if-nez v10, :cond_21c

    .line 2667
    and-int/lit8 v8, v8, -0x2

    .line 2668
    goto/16 :goto_d8

    .line 2674
    :cond_21c
    :sswitch_21c
    if-eqz v1, :cond_d8

    if-nez v7, :cond_d8

    .line 2675
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleFunctionKey(Landroid/view/KeyEvent;)V

    .line 2676
    and-int/lit8 v8, v8, -0x2

    goto/16 :goto_d8

    .line 2684
    :sswitch_227
    if-eqz p3, :cond_237

    if-eqz v1, :cond_237

    if-eqz v7, :cond_233

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAsusEpKeyguardSecure()Z

    move-result v10

    if-eqz v10, :cond_237

    .line 2685
    :cond_233
    and-int/lit8 v8, v8, -0x3

    .line 2686
    or-int/lit8 v8, v8, 0x4

    .line 2689
    :cond_237
    and-int/lit8 v8, v8, -0x2

    goto/16 :goto_d8

    .line 2482
    nop

    :sswitch_data_23c
    .sparse-switch
        0x5 -> :sswitch_1eb
        0x6 -> :sswitch_128
        0x18 -> :sswitch_db
        0x19 -> :sswitch_db
        0x1a -> :sswitch_169
        0x40 -> :sswitch_212
        0x4f -> :sswitch_1be
        0x55 -> :sswitch_1b0
        0x56 -> :sswitch_1be
        0x57 -> :sswitch_1be
        0x58 -> :sswitch_1be
        0x59 -> :sswitch_1be
        0x5a -> :sswitch_1be
        0x5b -> :sswitch_1be
        0x7e -> :sswitch_1b0
        0x7f -> :sswitch_1b0
        0x82 -> :sswitch_1be
        0xa4 -> :sswitch_db
        0xb0 -> :sswitch_212
        0xd4 -> :sswitch_227
        0xd5 -> :sswitch_212
        0xd6 -> :sswitch_212
        0xd7 -> :sswitch_212
        0xd8 -> :sswitch_21c
        0xd9 -> :sswitch_21c
        0xda -> :sswitch_21c
        0xdb -> :sswitch_21c
    .end sparse-switch
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .registers 7
    .parameter "policyFlags"

    .prologue
    const/4 v4, 0x1

    .line 2699
    const/4 v1, 0x0

    .line 2701
    .local v1, result:I
    and-int/lit8 v2, p1, 0x3

    if-eqz v2, :cond_18

    move v0, v4

    .line 2704
    .local v0, isWakeMotion:Z
    :goto_7
    if-eqz v0, :cond_17

    .line 2706
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasDockFeature:Z

    if-eqz v2, :cond_1b

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1b

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    if-eq v2, v4, :cond_1b

    .line 2721
    :cond_17
    :goto_17
    return v1

    .line 2701
    .end local v0           #isWakeMotion:Z
    :cond_18
    const/4 v2, 0x0

    move v0, v2

    goto :goto_7

    .line 2711
    .restart local v0       #isWakeMotion:Z
    :cond_1b
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2713
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeMotionWhenKeyguardShowingTq()Z

    goto :goto_17

    .line 2716
    :cond_29
    or-int/lit8 v1, v1, 0x2

    goto :goto_17
.end method

.method public isAsusEpKeyguardSecure()Z
    .registers 2

    .prologue
    .line 2849
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isAsusEpSecure()Z

    move-result v0

    return v0
.end method

.method isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 616
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    move v0, v2

    goto :goto_10
.end method

.method public isKeyguardLocked()Z
    .registers 2

    .prologue
    .line 2839
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .registers 2

    .prologue
    .line 2844
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v0

    return v0
.end method

.method isMusicActive()Z
    .registers 4

    .prologue
    .line 2346
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2347
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_15

    .line 2348
    const-string v1, "WindowManager"

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    const/4 v1, 0x0

    .line 2351
    :goto_14
    return v1

    :cond_15
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    goto :goto_14
.end method

.method public isScreenOn()Z
    .registers 2

    .prologue
    .line 2819
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    return v0
.end method

.method keyguardOn()Z
    .registers 2

    .prologue
    .line 1401
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method launchHomeFromHotKey()V
    .registers 6

    .prologue
    .line 1667
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1709
    :cond_8
    :goto_8
    return-void

    .line 1669
    :cond_9
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v3, :cond_20

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1672
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_8

    .line 1687
    :cond_20
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_55

    .line 1690
    :goto_27
    const-string v3, "homekey"

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1691
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    .line 1693
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_SSI_LOGADV:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 1694
    const-string v3, "SystemCallbacks"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ISystemCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISystemCallbacks;

    move-result-object v1

    .line 1697
    .local v1, callbacks:Landroid/os/ISystemCallbacks;
    if-eqz v1, :cond_8

    .line 1698
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1699
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "event"

    const-string v4, "HomeHotKey"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    :try_start_4c
    invoke-interface {v1, v0}, Landroid/os/ISystemCallbacks;->onNotify(Landroid/os/Bundle;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_8

    .line 1702
    :catch_50
    move-exception v2

    .line 1703
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8

    .line 1688
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #callbacks:Landroid/os/ISystemCallbacks;
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_55
    move-exception v3

    goto :goto_27
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 30
    .parameter "win"
    .parameter "attrs"
    .parameter "attached"

    .prologue
    .line 1839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    if-ne v0, v1, :cond_b

    .line 1996
    :cond_a
    :goto_a
    return-void

    .line 1843
    :cond_b
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v7, v0

    .line 1844
    .local v7, fl:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move v8, v0

    .line 1846
    .local v8, sim:I
    sget-object v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 1847
    .local v11, pf:Landroid/graphics/Rect;
    sget-object v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 1848
    .local v12, df:Landroid/graphics/Rect;
    sget-object v13, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 1849
    .local v13, cf:Landroid/graphics/Rect;
    sget-object v14, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 1851
    .local v14, vf:Landroid/graphics/Rect;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7db

    if-ne v5, v6, :cond_e6

    .line 1852
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move v5, v0

    iput v5, v14, Landroid/graphics/Rect;->left:I

    iput v5, v13, Landroid/graphics/Rect;->left:I

    iput v5, v12, Landroid/graphics/Rect;->left:I

    iput v5, v11, Landroid/graphics/Rect;->left:I

    .line 1853
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move v5, v0

    iput v5, v14, Landroid/graphics/Rect;->top:I

    iput v5, v13, Landroid/graphics/Rect;->top:I

    iput v5, v12, Landroid/graphics/Rect;->top:I

    iput v5, v11, Landroid/graphics/Rect;->top:I

    .line 1854
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move v5, v0

    iput v5, v14, Landroid/graphics/Rect;->right:I

    iput v5, v13, Landroid/graphics/Rect;->right:I

    iput v5, v12, Landroid/graphics/Rect;->right:I

    iput v5, v11, Landroid/graphics/Rect;->right:I

    .line 1855
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move v5, v0

    iput v5, v14, Landroid/graphics/Rect;->bottom:I

    iput v5, v13, Landroid/graphics/Rect;->bottom:I

    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    iput v5, v11, Landroid/graphics/Rect;->bottom:I

    .line 1857
    const/16 v5, 0x50

    move v0, v5

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1858
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 1967
    :goto_6a
    and-int/lit16 v5, v7, 0x200

    if-eqz v5, :cond_8a

    .line 1968
    const/16 v5, -0x2710

    iput v5, v14, Landroid/graphics/Rect;->top:I

    iput v5, v14, Landroid/graphics/Rect;->left:I

    iput v5, v13, Landroid/graphics/Rect;->top:I

    iput v5, v13, Landroid/graphics/Rect;->left:I

    iput v5, v12, Landroid/graphics/Rect;->top:I

    iput v5, v12, Landroid/graphics/Rect;->left:I

    .line 1969
    const/16 v5, 0x2710

    iput v5, v14, Landroid/graphics/Rect;->bottom:I

    iput v5, v14, Landroid/graphics/Rect;->right:I

    iput v5, v13, Landroid/graphics/Rect;->bottom:I

    iput v5, v13, Landroid/graphics/Rect;->right:I

    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    iput v5, v12, Landroid/graphics/Rect;->right:I

    .line 1977
    :cond_8a
    move-object/from16 v0, p1

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1981
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7db

    if-ne v5, v6, :cond_a

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v5

    if-nez v5, :cond_a

    .line 1982
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    .line 1983
    .local v25, top:I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v25, v25, v5

    .line 1984
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move v5, v0

    move v0, v5

    move/from16 v1, v25

    if-le v0, v1, :cond_c3

    .line 1985
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 1987
    :cond_c3
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    .line 1988
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v25, v25, v5

    .line 1989
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move v5, v0

    move v0, v5

    move/from16 v1, v25

    if-le v0, v1, :cond_a

    .line 1990
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    goto/16 :goto_a

    .line 1860
    .end local v25           #top:I
    :cond_e6
    move v0, v8

    and-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    .line 1862
    .local v18, adjust:I
    const v5, 0x10500

    and-int/2addr v5, v7

    const v6, 0x10100

    if-ne v5, v6, :cond_19c

    .line 1868
    if-eqz p3, :cond_102

    .line 1871
    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v9, p3

    invoke-virtual/range {v5 .. v14}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_6a

    .line 1873
    :cond_102
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move v5, v0

    iput v5, v12, Landroid/graphics/Rect;->left:I

    iput v5, v11, Landroid/graphics/Rect;->left:I

    .line 1874
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move v5, v0

    iput v5, v12, Landroid/graphics/Rect;->top:I

    iput v5, v11, Landroid/graphics/Rect;->top:I

    .line 1875
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    move v6, v0

    add-int/2addr v5, v6

    iput v5, v12, Landroid/graphics/Rect;->right:I

    iput v5, v11, Landroid/graphics/Rect;->right:I

    .line 1876
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    move v6, v0

    add-int/2addr v5, v6

    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    iput v5, v11, Landroid/graphics/Rect;->bottom:I

    .line 1877
    const/16 v5, 0x10

    move/from16 v0, v18

    move v1, v5

    if-eq v0, v1, :cond_17a

    .line 1878
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->left:I

    .line 1879
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->top:I

    .line 1880
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->right:I

    .line 1881
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->bottom:I

    .line 1888
    :goto_155
    const/16 v5, 0x30

    move/from16 v0, v18

    move v1, v5

    if-eq v0, v1, :cond_197

    .line 1889
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move v5, v0

    iput v5, v14, Landroid/graphics/Rect;->left:I

    .line 1890
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move v5, v0

    iput v5, v14, Landroid/graphics/Rect;->top:I

    .line 1891
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move v5, v0

    iput v5, v14, Landroid/graphics/Rect;->right:I

    .line 1892
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move v5, v0

    iput v5, v14, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_6a

    .line 1883
    :cond_17a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->left:I

    .line 1884
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->top:I

    .line 1885
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->right:I

    .line 1886
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->bottom:I

    goto :goto_155

    .line 1894
    :cond_197
    invoke-virtual {v14, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_6a

    .line 1897
    :cond_19c
    and-int/lit16 v5, v7, 0x100

    if-eqz v5, :cond_244

    .line 1900
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7de

    if-ne v5, v6, :cond_206

    .line 1901
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->left:I

    iput v5, v12, Landroid/graphics/Rect;->left:I

    iput v5, v11, Landroid/graphics/Rect;->left:I

    .line 1902
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->top:I

    iput v5, v12, Landroid/graphics/Rect;->top:I

    iput v5, v11, Landroid/graphics/Rect;->top:I

    .line 1903
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move v6, v0

    add-int/2addr v5, v6

    iput v5, v13, Landroid/graphics/Rect;->right:I

    iput v5, v12, Landroid/graphics/Rect;->right:I

    iput v5, v11, Landroid/graphics/Rect;->right:I

    .line 1905
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move v6, v0

    add-int/2addr v5, v6

    iput v5, v13, Landroid/graphics/Rect;->bottom:I

    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    iput v5, v11, Landroid/graphics/Rect;->bottom:I

    .line 1914
    :goto_1e1
    const/16 v5, 0x30

    move/from16 v0, v18

    move v1, v5

    if-eq v0, v1, :cond_23f

    .line 1915
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move v5, v0

    iput v5, v14, Landroid/graphics/Rect;->left:I

    .line 1916
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move v5, v0

    iput v5, v14, Landroid/graphics/Rect;->top:I

    .line 1917
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move v5, v0

    iput v5, v14, Landroid/graphics/Rect;->right:I

    .line 1918
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move v5, v0

    iput v5, v14, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_6a

    .line 1908
    :cond_206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->left:I

    iput v5, v12, Landroid/graphics/Rect;->left:I

    iput v5, v11, Landroid/graphics/Rect;->left:I

    .line 1909
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->top:I

    iput v5, v12, Landroid/graphics/Rect;->top:I

    iput v5, v11, Landroid/graphics/Rect;->top:I

    .line 1910
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    move v6, v0

    add-int/2addr v5, v6

    iput v5, v13, Landroid/graphics/Rect;->right:I

    iput v5, v12, Landroid/graphics/Rect;->right:I

    iput v5, v11, Landroid/graphics/Rect;->right:I

    .line 1911
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    move v6, v0

    add-int/2addr v5, v6

    iput v5, v13, Landroid/graphics/Rect;->bottom:I

    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    iput v5, v11, Landroid/graphics/Rect;->bottom:I

    goto :goto_1e1

    .line 1920
    :cond_23f
    invoke-virtual {v14, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_6a

    .line 1922
    :cond_244
    if-eqz p3, :cond_25d

    .line 1925
    const/16 v20, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v17, v7

    move-object/from16 v19, p3

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    invoke-virtual/range {v15 .. v24}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_6a

    .line 1929
    :cond_25d
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7de

    if-ne v5, v6, :cond_2a0

    .line 1934
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->left:I

    iput v5, v12, Landroid/graphics/Rect;->left:I

    iput v5, v11, Landroid/graphics/Rect;->left:I

    .line 1935
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->top:I

    iput v5, v12, Landroid/graphics/Rect;->top:I

    iput v5, v11, Landroid/graphics/Rect;->top:I

    .line 1936
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    move v6, v0

    add-int/2addr v5, v6

    iput v5, v13, Landroid/graphics/Rect;->right:I

    iput v5, v12, Landroid/graphics/Rect;->right:I

    iput v5, v11, Landroid/graphics/Rect;->right:I

    .line 1937
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    move v6, v0

    add-int/2addr v5, v6

    iput v5, v13, Landroid/graphics/Rect;->bottom:I

    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    iput v5, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_6a

    .line 1940
    :cond_2a0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move v5, v0

    iput v5, v11, Landroid/graphics/Rect;->left:I

    .line 1941
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move v5, v0

    iput v5, v11, Landroid/graphics/Rect;->top:I

    .line 1942
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move v5, v0

    iput v5, v11, Landroid/graphics/Rect;->right:I

    .line 1943
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move v5, v0

    iput v5, v11, Landroid/graphics/Rect;->bottom:I

    .line 1944
    const/16 v5, 0x10

    move/from16 v0, v18

    move v1, v5

    if-eq v0, v1, :cond_30c

    .line 1945
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->left:I

    iput v5, v12, Landroid/graphics/Rect;->left:I

    .line 1946
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->top:I

    iput v5, v12, Landroid/graphics/Rect;->top:I

    .line 1947
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->right:I

    iput v5, v12, Landroid/graphics/Rect;->right:I

    .line 1948
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->bottom:I

    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    .line 1955
    :goto_2e7
    const/16 v5, 0x30

    move/from16 v0, v18

    move v1, v5

    if-eq v0, v1, :cond_331

    .line 1956
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move v5, v0

    iput v5, v14, Landroid/graphics/Rect;->left:I

    .line 1957
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move v5, v0

    iput v5, v14, Landroid/graphics/Rect;->top:I

    .line 1958
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move v5, v0

    iput v5, v14, Landroid/graphics/Rect;->right:I

    .line 1959
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move v5, v0

    iput v5, v14, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_6a

    .line 1950
    :cond_30c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->left:I

    iput v5, v12, Landroid/graphics/Rect;->left:I

    .line 1951
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->top:I

    iput v5, v12, Landroid/graphics/Rect;->top:I

    .line 1952
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->right:I

    iput v5, v12, Landroid/graphics/Rect;->right:I

    .line 1953
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->bottom:I

    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_2e7

    .line 1961
    :cond_331
    invoke-virtual {v14, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_6a
.end method

.method needSensorRunningLp()Z
    .registers 5

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 488
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v0, v3, :cond_16

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_18

    :cond_16
    move v0, v2

    .line 514
    :goto_17
    return v0

    .line 496
    :cond_18
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_31

    :cond_21
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v0, v2, :cond_31

    :cond_29
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardDockEnablesAccelerometer:Z

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v0, v3, :cond_33

    :cond_31
    move v0, v2

    .line 501
    goto :goto_17

    .line 503
    :cond_33
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-nez v0, :cond_39

    .line 512
    const/4 v0, 0x0

    goto :goto_17

    :cond_39
    move v0, v2

    .line 514
    goto :goto_17
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 10
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2223
    if-eqz p3, :cond_4d

    move v1, v4

    :goto_5
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    .line 2226
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidStateByHardwareFeature()Z

    .line 2227
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyLidSwitchChanged, lidOpen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHasDockFeature:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasDockFeature:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHasHallSensorFeature:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasHallSensorFeature:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLidOpen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goToSleepWhenLidClose(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 2262
    :cond_4c
    :goto_4c
    return-void

    :cond_4d
    move v1, v5

    .line 2223
    goto :goto_5

    .line 2237
    :cond_4f
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    if-ne v2, v4, :cond_65

    move v2, v4

    :goto_56
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doLidChangeTq(Z)Z

    move-result v0

    .line 2238
    .local v0, awakeNow:Z
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    .line 2239
    if-eqz v0, :cond_67

    .line 2243
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    goto :goto_4c

    .end local v0           #awakeNow:Z
    :cond_65
    move v2, v5

    .line 2237
    goto :goto_56

    .line 2244
    .restart local v0       #awakeNow:Z
    :cond_67
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 2245
    if-eqz p3, :cond_4c

    .line 2249
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)Z

    goto :goto_4c

    .line 2254
    :cond_77
    if-eqz p3, :cond_83

    .line 2255
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v5, v4}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_4c

    .line 2258
    :cond_83
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v5, v5}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_4c
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .registers 10
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3257
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1f

    move v0, v5

    .line 3259
    .local v0, hapticsDisabled:Z
    :goto_11
    if-nez p3, :cond_21

    if-nez v0, :cond_1d

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_1d
    move v2, v4

    .line 3289
    :goto_1e
    return v2

    .end local v0           #hapticsDisabled:Z
    :cond_1f
    move v0, v4

    .line 3257
    goto :goto_11

    .line 3262
    .restart local v0       #hapticsDisabled:Z
    :cond_21
    const/4 v1, 0x0

    .line 3263
    .local v1, pattern:[J
    sparse-switch p2, :sswitch_data_48

    move v2, v4

    .line 3280
    goto :goto_1e

    .line 3265
    :sswitch_27
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 3282
    :goto_29
    array-length v2, v1

    if-ne v2, v5, :cond_41

    .line 3284
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    aget-wide v3, v1, v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_33
    move v2, v5

    .line 3289
    goto :goto_1e

    .line 3268
    :sswitch_35
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 3269
    goto :goto_29

    .line 3271
    :sswitch_38
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 3272
    goto :goto_29

    .line 3274
    :sswitch_3b
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 3275
    goto :goto_29

    .line 3277
    :sswitch_3e
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 3278
    goto :goto_29

    .line 3287
    :cond_41
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_33

    .line 3263
    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_27
        0x1 -> :sswitch_35
        0x3 -> :sswitch_38
        0x2710 -> :sswitch_3b
        0x2711 -> :sswitch_3e
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 7
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x7

    .line 1315
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_42

    .line 1346
    :goto_6
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 1317
    :sswitch_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_17

    move v0, v3

    .line 1323
    goto :goto_7

    .line 1325
    :cond_17
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_6

    .line 1328
    :sswitch_1a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1334
    :sswitch_29
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1340
    :sswitch_38
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3e

    move v0, v3

    .line 1341
    goto :goto_7

    .line 1343
    :cond_3e
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_6

    .line 1315
    nop

    :sswitch_data_42
    .sparse-switch
        0x7d0 -> :sswitch_8
        0x7d4 -> :sswitch_38
        0x7de -> :sswitch_1a
        0x7e1 -> :sswitch_29
    .end sparse-switch
.end method

.method readDockState()I
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2314
    const-string v2, "/sys/class/switch/dock/state"

    .line 2315
    .local v2, filename:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2317
    .local v4, reader:Ljava/io/FileReader;
    :try_start_5
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/switch/dock/state"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_73
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_31
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_c} :catch_52

    .line 2318
    .end local v4           #reader:Ljava/io/FileReader;
    .local v5, reader:Ljava/io/FileReader;
    const/16 v6, 0xf

    :try_start_e
    new-array v0, v6, [C

    .line 2319
    .local v0, buf:[C
    invoke-virtual {v5, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 2320
    .local v3, n:I
    if-le v3, v8, :cond_29

    .line 2321
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    sub-int v8, v3, v8

    invoke-direct {v6, v0, v7, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_84
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_21} :catch_8b
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_21} :catch_87

    move-result v6

    .line 2332
    if-eqz v5, :cond_27

    .line 2334
    :try_start_24
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_7a

    :cond_27
    :goto_27
    move-object v4, v5

    .line 2336
    .end local v0           #buf:[C
    .end local v3           #n:I
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    :goto_28
    return v6

    .line 2332
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v0       #buf:[C
    .restart local v3       #n:I
    .restart local v5       #reader:Ljava/io/FileReader;
    :cond_29
    if-eqz v5, :cond_2e

    .line 2334
    :try_start_2b
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_7c

    :cond_2e
    :goto_2e
    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    move v6, v9

    .line 2336
    goto :goto_28

    .line 2325
    .end local v0           #buf:[C
    .end local v3           #n:I
    :catch_31
    move-exception v6

    move-object v1, v6

    .line 2326
    .local v1, ex:Ljava/io/IOException;
    :goto_33
    :try_start_33
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t read dock state from /sys/class/switch/dock/state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_73

    .line 2332
    if-eqz v4, :cond_50

    .line 2334
    :try_start_4d
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_7e

    :cond_50
    :goto_50
    move v6, v9

    .line 2336
    goto :goto_28

    .line 2328
    .end local v1           #ex:Ljava/io/IOException;
    :catch_52
    move-exception v6

    move-object v1, v6

    .line 2329
    .local v1, ex:Ljava/lang/NumberFormatException;
    :goto_54
    :try_start_54
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t read dock state from /sys/class/switch/dock/state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_54 .. :try_end_6c} :catchall_73

    .line 2332
    if-eqz v4, :cond_71

    .line 2334
    :try_start_6e
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_80

    :cond_71
    :goto_71
    move v6, v9

    .line 2336
    goto :goto_28

    .line 2332
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :catchall_73
    move-exception v6

    :goto_74
    if-eqz v4, :cond_79

    .line 2334
    :try_start_76
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_82

    .line 2336
    :cond_79
    :goto_79
    throw v6

    .line 2335
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v0       #buf:[C
    .restart local v3       #n:I
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_7a
    move-exception v7

    goto :goto_27

    :catch_7c
    move-exception v6

    goto :goto_2e

    .end local v0           #buf:[C
    .end local v3           #n:I
    .end local v5           #reader:Ljava/io/FileReader;
    .local v1, ex:Ljava/io/IOException;
    .restart local v4       #reader:Ljava/io/FileReader;
    :catch_7e
    move-exception v6

    goto :goto_50

    .local v1, ex:Ljava/lang/NumberFormatException;
    :catch_80
    move-exception v6

    goto :goto_71

    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :catch_82
    move-exception v7

    goto :goto_79

    .line 2332
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catchall_84
    move-exception v6

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_74

    .line 2328
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_87
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_54

    .line 2325
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_8b
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_33
.end method

.method readHdmiState()Z
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2285
    const-string v2, "/sys/class/switch/hdmi/state"

    .line 2286
    .local v2, filename:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2288
    .local v4, reader:Ljava/io/FileReader;
    :try_start_5
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/switch/hdmi/state"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_78
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_36
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_c} :catch_57

    .line 2289
    .end local v4           #reader:Ljava/io/FileReader;
    .local v5, reader:Ljava/io/FileReader;
    const/16 v6, 0xf

    :try_start_e
    new-array v0, v6, [C

    .line 2290
    .local v0, buf:[C
    invoke-virtual {v5, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 2291
    .local v3, n:I
    if-le v3, v10, :cond_2e

    .line 2292
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    sub-int v8, v3, v10

    invoke-direct {v6, v0, v7, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_89
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_21} :catch_90
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_21} :catch_8c

    move-result v6

    if-eqz v6, :cond_2c

    move v6, v10

    .line 2303
    :goto_25
    if-eqz v5, :cond_2a

    .line 2305
    :try_start_27
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_7f

    :cond_2a
    :goto_2a
    move-object v4, v5

    .line 2307
    .end local v0           #buf:[C
    .end local v3           #n:I
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    :goto_2b
    return v6

    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v0       #buf:[C
    .restart local v3       #n:I
    .restart local v5       #reader:Ljava/io/FileReader;
    :cond_2c
    move v6, v9

    .line 2292
    goto :goto_25

    .line 2303
    :cond_2e
    if-eqz v5, :cond_33

    .line 2305
    :try_start_30
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_81

    :cond_33
    :goto_33
    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    move v6, v9

    .line 2307
    goto :goto_2b

    .line 2296
    .end local v0           #buf:[C
    .end local v3           #n:I
    :catch_36
    move-exception v6

    move-object v1, v6

    .line 2297
    .local v1, ex:Ljava/io/IOException;
    :goto_38
    :try_start_38
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_38 .. :try_end_50} :catchall_78

    .line 2303
    if-eqz v4, :cond_55

    .line 2305
    :try_start_52
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_83

    :cond_55
    :goto_55
    move v6, v9

    .line 2307
    goto :goto_2b

    .line 2299
    .end local v1           #ex:Ljava/io/IOException;
    :catch_57
    move-exception v6

    move-object v1, v6

    .line 2300
    .local v1, ex:Ljava/lang/NumberFormatException;
    :goto_59
    :try_start_59
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_59 .. :try_end_71} :catchall_78

    .line 2303
    if-eqz v4, :cond_76

    .line 2305
    :try_start_73
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_85

    :cond_76
    :goto_76
    move v6, v9

    .line 2307
    goto :goto_2b

    .line 2303
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :catchall_78
    move-exception v6

    :goto_79
    if-eqz v4, :cond_7e

    .line 2305
    :try_start_7b
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_87

    .line 2307
    :cond_7e
    :goto_7e
    throw v6

    .line 2306
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v0       #buf:[C
    .restart local v3       #n:I
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_7f
    move-exception v7

    goto :goto_2a

    :catch_81
    move-exception v6

    goto :goto_33

    .end local v0           #buf:[C
    .end local v3           #n:I
    .end local v5           #reader:Ljava/io/FileReader;
    .local v1, ex:Ljava/io/IOException;
    .restart local v4       #reader:Ljava/io/FileReader;
    :catch_83
    move-exception v6

    goto :goto_55

    .local v1, ex:Ljava/lang/NumberFormatException;
    :catch_85
    move-exception v6

    goto :goto_76

    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :catch_87
    move-exception v7

    goto :goto_7e

    .line 2303
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catchall_89
    move-exception v6

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_79

    .line 2299
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_8c
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_59

    .line 2296
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_90
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_38
.end method

.method readLidState()V
    .registers 5

    .prologue
    .line 1018
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidStateByHardwareFeature()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1036
    :goto_6
    return-void

    .line 1024
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getSwitchState(I)I

    move-result v0

    .line 1025
    .local v0, sw:I
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readLidState, sw:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    if-lez v0, :cond_2e

    .line 1027
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    goto :goto_6

    .line 1033
    .end local v0           #sw:I
    :catch_2c
    move-exception v1

    goto :goto_6

    .line 1028
    .restart local v0       #sw:I
    :cond_2e
    if-nez v0, :cond_34

    .line 1029
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    goto :goto_6

    .line 1031
    :cond_34
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_37} :catch_2c

    goto :goto_6
.end method

.method readLidStateByHardwareFeature()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 993
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasHallSensorFeature:Z

    if-nez v0, :cond_a

    .line 995
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    move v0, v4

    .line 1011
    :goto_9
    return v0

    .line 1000
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1001
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readDockState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 1002
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readLidStateByHardwareFeature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_30
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasDockFeature:Z

    if-eqz v0, :cond_3e

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3e

    .line 1007
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    move v0, v4

    .line 1008
    goto :goto_9

    .line 1011
    :cond_3e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .registers 6
    .parameter "appToken"
    .parameter "window"

    .prologue
    .line 1294
    if-eqz p2, :cond_f

    .line 1295
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1296
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1298
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_f
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 4
    .parameter "win"

    .prologue
    const/4 v1, 0x0

    .line 1351
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_8

    .line 1352
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1359
    :goto_7
    return-void

    .line 1354
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_f

    .line 1355
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7

    .line 1357
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public rotationForOrientationLw(IIZ)I
    .registers 11
    .parameter "orientation"
    .parameter "lastRotation"
    .parameter "displayEnabled"

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2886
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2887
    packed-switch p1, :pswitch_data_92

    .line 2910
    :pswitch_b
    :try_start_b
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v2, :cond_34

    .line 2911
    monitor-exit v1

    move v1, v4

    .line 2934
    :goto_11
    return v1

    .line 2890
    :pswitch_12
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_11

    .line 2893
    :pswitch_17
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_11

    .line 2896
    :pswitch_1c
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_11

    .line 2899
    :pswitch_21
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_11

    .line 2902
    :pswitch_26
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCurrentLandscapeRotation(I)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_11

    .line 2904
    :pswitch_2d
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCurrentPortraitRotation(I)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_11

    .line 2912
    :cond_34
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    if-ne v2, v3, :cond_41

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v2, :cond_41

    .line 2913
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_11

    .line 2914
    :cond_41
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v5, :cond_4e

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v2, :cond_4e

    .line 2915
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_11

    .line 2916
    :cond_4e
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v3, :cond_5b

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v2, :cond_5b

    .line 2917
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_11

    .line 2918
    :cond_5b
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v6, :cond_68

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardDockRotation:I

    if-ltz v2, :cond_68

    .line 2919
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardDockRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_11

    .line 2920
    :cond_68
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v2, v3, :cond_71

    .line 2921
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_11

    .line 2923
    :cond_71
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->useSensorForOrientationLp(I)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 2926
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v2, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getCurrentRotation(I)I

    move-result v0

    .line 2927
    .local v0, rotation:I
    if-ne v0, v5, :cond_88

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:Z

    if-nez v2, :cond_88

    if-eq p1, v6, :cond_88

    .line 2930
    monitor-exit v1

    move v1, p2

    goto :goto_11

    .line 2932
    :cond_88
    monitor-exit v1

    move v1, v0

    goto :goto_11

    .line 2934
    .end local v0           #rotation:I
    :cond_8b
    monitor-exit v1

    move v1, v4

    goto :goto_11

    .line 2936
    :catchall_8e
    move-exception v2

    monitor-exit v1
    :try_end_90
    .catchall {:try_start_b .. :try_end_90} :catchall_8e

    throw v2

    .line 2887
    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_17
        :pswitch_12
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_26
        :pswitch_2d
        :pswitch_21
        :pswitch_1c
    .end packed-switch
.end method

.method public screenOnStoppedLw()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3293
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2}, Landroid/os/LocalPowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3294
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3295
    .local v0, curTime:J
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2, v0, v1, v3, v3}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    .line 3297
    .end local v0           #curTime:J
    :cond_1a
    return-void
.end method

.method public screenTurnedOff(I)V
    .registers 4
    .parameter "why"

    .prologue
    const/4 v1, 0x0

    .line 2797
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2798
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOff(I)V

    .line 2799
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2800
    const/4 v1, 0x0

    :try_start_10
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    .line 2801
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2802
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 2803
    monitor-exit v0

    .line 2804
    return-void

    .line 2803
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public screenTurnedOn()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2808
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2809
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOn()V

    .line 2810
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2811
    const/4 v1, 0x1

    :try_start_10
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    .line 2812
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2813
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 2814
    monitor-exit v0

    .line 2815
    return-void

    .line 2814
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .registers 4
    .parameter "win"
    .parameter "transit"

    .prologue
    .line 1367
    const/4 v0, 0x5

    if-ne p2, v0, :cond_d

    .line 1368
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1370
    const v0, 0x10a0011

    .line 1374
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method sendCloseSystemWindows()V
    .registers 3

    .prologue
    .line 2858
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 2859
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 3
    .parameter "reason"

    .prologue
    .line 2862
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 2863
    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12
    .parameter "win"
    .parameter "fl"
    .parameter "adjust"
    .parameter "attached"
    .parameter "insetDecors"
    .parameter "pf"
    .parameter "df"
    .parameter "cf"
    .parameter "vf"

    .prologue
    .line 1789
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_3c

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_3c

    .line 1797
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 1798
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 1799
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 1800
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 1831
    :goto_30
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_92

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_38
    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1833
    return-void

    .line 1808
    :cond_3c
    const/16 v0, 0x10

    if-eq p3, v0, :cond_58

    .line 1809
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1825
    :cond_47
    :goto_47
    if-eqz p5, :cond_90

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_4d
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1826
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_30

    .line 1817
    :cond_58
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1818
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_47

    .line 1819
    iget v0, p8, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_71

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    .line 1820
    :cond_71
    iget v0, p8, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_7b

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    .line 1821
    :cond_7b
    iget v0, p8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_85

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    .line 1822
    :cond_85
    iget v0, p8, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_47

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    goto :goto_47

    :cond_90
    move-object v0, p8

    .line 1825
    goto :goto_4d

    :cond_92
    move-object v0, p7

    .line 1831
    goto :goto_38
.end method

.method public setCurrentOrientationLw(I)V
    .registers 4
    .parameter "newOrientation"

    .prologue
    .line 3248
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3249
    :try_start_3
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v1, :cond_c

    .line 3250
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 3251
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 3253
    :cond_c
    monitor-exit v0

    .line 3254
    return-void

    .line 3253
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method setHdmiPlugged(Z)V
    .registers 7
    .parameter "plugged"

    .prologue
    .line 2265
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eq v1, p1, :cond_20

    .line 2266
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 2267
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    .line 2268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2269
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2270
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2271
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2279
    .end local v0           #intent:Landroid/content/Intent;
    :cond_20
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/LocalPowerManager;->userActivityWithIntent(JZ)V

    .line 2282
    return-void
.end method

.method public setInitialDisplaySize(II)V
    .registers 10
    .parameter "width"
    .parameter "height"

    .prologue
    const v6, 0x111000d

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 778
    if-le p1, p2, :cond_44

    .line 779
    move v0, p2

    .line 780
    .local v0, shortSize:I
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 781
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 782
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 784
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 785
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 807
    :goto_1e
    mul-int/lit16 v2, v0, 0xa0

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v1, v2, v3

    .line 810
    .local v1, shortSizeDp:I
    const/16 v2, 0x258

    if-ge v1, v2, :cond_5f

    move v2, v4

    :goto_29
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    .line 811
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    if-eqz v3, :cond_61

    const v3, 0x1050009

    :goto_38
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    .line 815
    return-void

    .line 787
    .end local v1           #shortSizeDp:I
    :cond_3f
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 788
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    goto :goto_1e

    .line 791
    .end local v0           #shortSize:I
    :cond_44
    move v0, p1

    .line 792
    .restart local v0       #shortSize:I
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 793
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 794
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 796
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 797
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto :goto_1e

    .line 799
    :cond_5a
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 800
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto :goto_1e

    .restart local v1       #shortSizeDp:I
    :cond_5f
    move v2, v5

    .line 810
    goto :goto_29

    .line 811
    :cond_61
    const v3, 0x105000a

    goto :goto_38
.end method

.method public setUserRotationMode(II)V
    .registers 6
    .parameter "mode"
    .parameter "rot"

    .prologue
    const/4 v2, 0x1

    .line 3016
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3019
    .local v0, res:Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_15

    .line 3020
    const-string v1, "user_rotation"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3023
    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3031
    :goto_14
    return-void

    .line 3027
    :cond_15
    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_14
.end method

.method showGlobalActionsDialog()V
    .registers 4

    .prologue
    .line 603
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    if-nez v1, :cond_d

    .line 604
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    .line 606
    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    .line 607
    .local v0, keyguardShowing:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->showDialog(ZZ)V

    .line 608
    if-eqz v0, :cond_23

    .line 611
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 613
    :cond_23
    return-void
.end method

.method showOrHideRecentAppsDialog(IZ)V
    .registers 5
    .parameter "heldModifiers"
    .parameter "dismissIfShown"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 687
    return-void
.end method

.method startDockOrHome()V
    .registers 4

    .prologue
    .line 3188
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3189
    .local v0, dock:Landroid/content/Intent;
    if-eqz v0, :cond_d

    .line 3191
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_b} :catch_c

    .line 3197
    :goto_b
    return-void

    .line 3193
    :catch_c
    move-exception v1

    .line 3196
    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_b
.end method

.method public subWindowTypeToLayerLw(I)I
    .registers 5
    .parameter "type"

    .prologue
    .line 1133
    packed-switch p1, :pswitch_data_26

    .line 1144
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    const/4 v0, 0x0

    :goto_1c
    return v0

    .line 1136
    :pswitch_1d
    const/4 v0, 0x1

    goto :goto_1c

    .line 1138
    :pswitch_1f
    const/4 v0, -0x2

    goto :goto_1c

    .line 1140
    :pswitch_21
    const/4 v0, -0x1

    goto :goto_1c

    .line 1142
    :pswitch_23
    const/4 v0, 0x2

    goto :goto_1c

    .line 1133
    nop

    :pswitch_data_26
    .packed-switch 0x3e8
        :pswitch_1d
        :pswitch_1f
        :pswitch_23
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 3073
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onSystemReady()V

    .line 3074
    const-string v0, "dev.bootcomplete"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3075
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3076
    :try_start_f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 3077
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    .line 3078
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$11;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3083
    monitor-exit v0

    .line 3084
    return-void

    .line 3083
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_21

    throw v1
.end method

.method updateOrientationListenerLp()V
    .registers 3

    .prologue
    .line 528
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_9

    .line 555
    :cond_8
    :goto_8
    return-void

    .line 537
    :cond_9
    const/4 v0, 0x1

    .line 538
    .local v0, disable:Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    if-eqz v1, :cond_21

    .line 539
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 540
    const/4 v0, 0x0

    .line 542
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_21

    .line 543
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->enable()V

    .line 545
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 550
    :cond_21
    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_8

    .line 551
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 553
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    goto :goto_8
.end method

.method updateRotation(I)V
    .registers 6
    .parameter "animFlags"

    .prologue
    const/4 v3, 0x1

    .line 3130
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    if-ne v2, v3, :cond_1b

    move v2, v3

    :goto_8
    invoke-interface {v1, v2}, Landroid/os/LocalPowerManager;->setKeyboardVisibility(Z)V

    .line 3131
    const/4 v0, 0x0

    .line 3132
    .local v0, rotation:I
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v1, :cond_1d

    .line 3133
    const/4 v0, 0x0

    .line 3146
    :cond_11
    :goto_11
    :try_start_11
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFancyRotationAnimation:I

    or-int/2addr v3, p1

    invoke-interface {v1, v0, v2, v3}, Landroid/view/IWindowManager;->setRotation(IZI)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_4c

    .line 3151
    :goto_1a
    return-void

    .line 3130
    .end local v0           #rotation:I
    :cond_1b
    const/4 v2, 0x0

    goto :goto_8

    .line 3134
    .restart local v0       #rotation:I
    :cond_1d
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    if-ne v1, v3, :cond_28

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v1, :cond_28

    .line 3135
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    goto :goto_11

    .line 3136
    :cond_28
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_34

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v1, :cond_34

    .line 3137
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    goto :goto_11

    .line 3138
    :cond_34
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v1, v3, :cond_3f

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v1, :cond_3f

    .line 3139
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    goto :goto_11

    .line 3140
    :cond_3f
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_11

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardDockRotation:I

    if-ltz v1, :cond_11

    .line 3141
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardDockRotation:I

    goto :goto_11

    .line 3148
    :catch_4c
    move-exception v1

    goto :goto_1a
.end method

.method public updateSettings()V
    .registers 16

    .prologue
    .line 818
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 819
    .local v8, resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 820
    .local v9, updateRotation:Z
    const/4 v1, 0x0

    .line 821
    .local v1, addView:Landroid/view/View;
    const/4 v7, 0x0

    .line 822
    .local v7, removeView:Landroid/view/View;
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 823
    :try_start_c
    const-string v12, "end_button_behavior"

    const/4 v13, 0x2

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    .line 826
    const-string v12, "incall_power_button_behavior"

    const/4 v13, 0x1

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 829
    const-string v12, "fancy_rotation_anim"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_10d

    const/16 v12, 0x80

    :goto_29
    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFancyRotationAnimation:I

    .line 831
    const-string v12, "accelerometer_rotation"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 835
    .local v0, accelerometerDefault:I
    if-nez v0, :cond_110

    const/4 v12, 0x1

    :goto_35
    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 838
    const-string v12, "user_rotation"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 842
    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-eq v12, v0, :cond_49

    .line 843
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    .line 844
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 847
    :cond_49
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    const-string v13, "window_orientation_listener_log"

    const/4 v14, 0x0

    invoke-static {v8, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_113

    const/4 v13, 0x1

    :goto_55
    invoke-virtual {v12, v13}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setLogEnabled(Z)V

    .line 851
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v12, :cond_80

    .line 852
    const-string v12, "pointer_location"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 854
    .local v6, pointerLocation:I
    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    if-eq v12, v6, :cond_80

    .line 855
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 856
    if-eqz v6, :cond_116

    .line 857
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v12, :cond_80

    .line 858
    new-instance v12, Lcom/android/internal/widget/PointerLocationView;

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 859
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 860
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 869
    .end local v6           #pointerLocation:I
    :cond_80
    :goto_80
    const-string v12, "screen_off_timeout"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    .line 871
    const-string v12, "default_input_method"

    invoke-static {v8, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 873
    .local v4, imId:Ljava/lang/String;
    if-eqz v4, :cond_120

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_120

    const/4 v12, 0x1

    move v3, v12

    .line 874
    .local v3, hasSoftInput:Z
    :goto_99
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v12, v3, :cond_a0

    .line 875
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 876
    const/4 v9, 0x1

    .line 878
    :cond_a0
    monitor-exit v11
    :try_end_a1
    .catchall {:try_start_c .. :try_end_a1} :catchall_11d

    .line 879
    if-eqz v9, :cond_a7

    .line 880
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    .line 882
    :cond_a7
    if-eqz v1, :cond_ec

    .line 883
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v5, v11, v12}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 886
    .local v5, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v11, 0x7df

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 887
    const/16 v11, 0x118

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 891
    const/4 v11, -0x3

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 892
    const-string v11, "PointerLocation"

    invoke-virtual {v5, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 893
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 895
    .local v10, wm:Landroid/view/WindowManager;
    invoke-interface {v10, v1, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 897
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-nez v11, :cond_ec

    .line 899
    :try_start_d1
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const-string v12, "PointerLocationView"

    invoke-interface {v11, v12}, Landroid/view/IWindowManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 901
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputHandler:Landroid/view/InputHandler;

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V
    :try_end_ec
    .catch Landroid/os/RemoteException; {:try_start_d1 .. :try_end_ec} :catch_124

    .line 909
    .end local v5           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v10           #wm:Landroid/view/WindowManager;
    :cond_ec
    :goto_ec
    if-eqz v7, :cond_10c

    .line 910
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-eqz v11, :cond_ff

    .line 911
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-static {v11}, Landroid/view/InputQueue;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 912
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v11}, Landroid/view/InputChannel;->dispose()V

    .line 913
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 916
    :cond_ff
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 918
    .restart local v10       #wm:Landroid/view/WindowManager;
    invoke-interface {v10, v7}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 920
    .end local v10           #wm:Landroid/view/WindowManager;
    :cond_10c
    return-void

    .line 829
    .end local v0           #accelerometerDefault:I
    .end local v3           #hasSoftInput:Z
    .end local v4           #imId:Ljava/lang/String;
    :cond_10d
    const/4 v12, 0x0

    goto/16 :goto_29

    .line 835
    .restart local v0       #accelerometerDefault:I
    :cond_110
    const/4 v12, 0x0

    goto/16 :goto_35

    .line 847
    :cond_113
    const/4 v13, 0x0

    goto/16 :goto_55

    .line 863
    .restart local v6       #pointerLocation:I
    :cond_116
    :try_start_116
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 864
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    goto/16 :goto_80

    .line 878
    .end local v0           #accelerometerDefault:I
    .end local v6           #pointerLocation:I
    :catchall_11d
    move-exception v12

    monitor-exit v11
    :try_end_11f
    .catchall {:try_start_116 .. :try_end_11f} :catchall_11d

    throw v12

    .line 873
    .restart local v0       #accelerometerDefault:I
    .restart local v4       #imId:Ljava/lang/String;
    :cond_120
    const/4 v12, 0x0

    move v3, v12

    goto/16 :goto_99

    .line 903
    .restart local v3       #hasSoftInput:Z
    .restart local v5       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v10       #wm:Landroid/view/WindowManager;
    :catch_124
    move-exception v11

    move-object v2, v11

    .line 904
    .local v2, ex:Landroid/os/RemoteException;
    const-string v11, "WindowManager"

    const-string v12, "Could not set up input monitoring channel for PointerLocation."

    invoke-static {v11, v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ec
.end method

.method useSensorForOrientationLp(I)Z
    .registers 7
    .parameter "appOrientation"

    .prologue
    const/16 v4, 0xa

    const/4 v3, -0x1

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 455
    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    if-eq p1, v4, :cond_10

    const/4 v0, 0x6

    if-eq p1, v0, :cond_10

    const/4 v0, 0x7

    if-ne p1, v0, :cond_12

    :cond_10
    move v0, v1

    .line 479
    :goto_11
    return v0

    .line 462
    :cond_12
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-eqz v0, :cond_1c

    if-eq p1, v2, :cond_1a

    if-ne p1, v3, :cond_1c

    :cond_1a
    move v0, v1

    .line 465
    goto :goto_11

    .line 468
    :cond_1c
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v0, v2, :cond_34

    :cond_24
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v0, v1, :cond_34

    :cond_2c
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardDockEnablesAccelerometer:Z

    if-eqz v0, :cond_3d

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v0, v4, :cond_3d

    .line 472
    :cond_34
    if-eq p1, v2, :cond_3b

    if-eq p1, v3, :cond_3b

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3d

    :cond_3b
    move v0, v1

    .line 475
    goto :goto_11

    .line 479
    :cond_3d
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public userActivity()V
    .registers 6

    .prologue
    .line 3088
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    monitor-enter v0

    .line 3089
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v1, :cond_18

    .line 3091
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3092
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3094
    :cond_18
    monitor-exit v0

    .line 3095
    return-void

    .line 3094
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public windowTypeToLayerLw(I)I
    .registers 6
    .parameter "type"

    .prologue
    const/4 v3, 0x2

    .line 1084
    const/4 v0, 0x1

    if-lt p1, v0, :cond_a

    const/16 v0, 0x63

    if-gt p1, v0, :cond_a

    move v0, v3

    .line 1128
    :goto_9
    return v0

    .line 1087
    :cond_a
    packed-switch p1, :pswitch_data_5a

    .line 1127
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1128
    goto :goto_9

    .line 1089
    :pswitch_27
    const/16 v0, 0x8

    goto :goto_9

    .line 1091
    :pswitch_2a
    const/16 v0, 0x9

    goto :goto_9

    .line 1093
    :pswitch_2d
    const/4 v0, 0x5

    goto :goto_9

    .line 1095
    :pswitch_2f
    const/4 v0, 0x6

    goto :goto_9

    .line 1097
    :pswitch_31
    const/4 v0, 0x4

    goto :goto_9

    .line 1099
    :pswitch_33
    const/4 v0, 0x3

    goto :goto_9

    .line 1101
    :pswitch_35
    const/16 v0, 0xf

    goto :goto_9

    .line 1103
    :pswitch_38
    const/16 v0, 0x10

    goto :goto_9

    .line 1105
    :pswitch_3b
    const/16 v0, 0xb

    goto :goto_9

    .line 1107
    :pswitch_3e
    const/16 v0, 0xc

    goto :goto_9

    .line 1109
    :pswitch_41
    const/16 v0, 0xd

    goto :goto_9

    .line 1111
    :pswitch_44
    const/16 v0, 0xe

    goto :goto_9

    .line 1113
    :pswitch_47
    const/16 v0, 0x12

    goto :goto_9

    .line 1115
    :pswitch_4a
    const/16 v0, 0x13

    goto :goto_9

    .line 1117
    :pswitch_4d
    const/16 v0, 0xa

    goto :goto_9

    .line 1119
    :pswitch_50
    const/4 v0, 0x7

    goto :goto_9

    :pswitch_52
    move v0, v3

    .line 1121
    goto :goto_9

    .line 1123
    :pswitch_54
    const/16 v0, 0x11

    goto :goto_9

    .line 1125
    :pswitch_57
    const/16 v0, 0x14

    goto :goto_9

    .line 1087
    :pswitch_data_5a
    .packed-switch 0x7d0
        :pswitch_27
        :pswitch_31
        :pswitch_33
        :pswitch_3b
        :pswitch_35
        :pswitch_50
        :pswitch_47
        :pswitch_4d
        :pswitch_2f
        :pswitch_38
        :pswitch_3e
        :pswitch_41
        :pswitch_44
        :pswitch_52
        :pswitch_2a
        :pswitch_4a
        :pswitch_54
        :pswitch_2d
        :pswitch_57
    .end packed-switch
.end method
