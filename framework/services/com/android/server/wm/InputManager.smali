.class public Lcom/android/server/wm/InputManager;
.super Ljava/lang/Object;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InputManager$Callbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final INPUT_EVENT_INJECTION_FAILED:I = 0x2

.field static final INPUT_EVENT_INJECTION_PERMISSION_DENIED:I = 0x1

.field static final INPUT_EVENT_INJECTION_SUCCEEDED:I = 0x0

.field static final INPUT_EVENT_INJECTION_SYNC_NONE:I = 0x0

.field static final INPUT_EVENT_INJECTION_SYNC_WAIT_FOR_FINISH:I = 0x2

.field static final INPUT_EVENT_INJECTION_SYNC_WAIT_FOR_RESULT:I = 0x1

.field static final INPUT_EVENT_INJECTION_TIMED_OUT:I = 0x3

.field public static final KEY_STATE_DOWN:I = 0x1

.field public static final KEY_STATE_UNKNOWN:I = -0x1

.field public static final KEY_STATE_UP:I = 0x0

.field public static final KEY_STATE_VIRTUAL:I = 0x2

.field static final TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final mCallbacks:Lcom/android/server/wm/InputManager$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 7
    .parameter "context"
    .parameter "windowManagerService"

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 127
    new-instance v1, Lcom/android/server/wm/InputManager$Callbacks;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/InputManager$Callbacks;-><init>(Lcom/android/server/wm/InputManager;Lcom/android/server/wm/InputManager$1;)V

    iput-object v1, p0, Lcom/android/server/wm/InputManager;->mCallbacks:Lcom/android/server/wm/InputManager$Callbacks;

    .line 129
    iget-object v1, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 131
    .local v0, looper:Landroid/os/Looper;
    const-string v1, "InputManager"

    const-string v2, "Initializing input manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/InputManager;->mCallbacks:Lcom/android/server/wm/InputManager$Callbacks;

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/InputManager;->nativeInit(Landroid/content/Context;Lcom/android/server/wm/InputManager$Callbacks;Landroid/os/MessageQueue;)V

    .line 133
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/InputManager;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/InputManager;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getPointerSpeedSetting(I)I
    .registers 5
    .parameter "defaultValue"

    .prologue
    .line 405
    move v0, p1

    .line 407
    .local v0, speed:I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_speed"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    .line 411
    :goto_d
    return v0

    .line 409
    :catch_e
    move-exception v1

    goto :goto_d
.end method

.method private getTouchpadModeSetting(I)I
    .registers 5
    .parameter "defaultValue"

    .prologue
    .line 431
    move v0, p1

    .line 433
    .local v0, mode:I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "touchpad_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    .line 437
    :goto_d
    return v0

    .line 435
    :catch_e
    move-exception v1

    goto :goto_d
.end method

.method private static native nativeDump()Ljava/lang/String;
.end method

.method private static native nativeGetInputConfiguration(Landroid/content/res/Configuration;)V
.end method

.method private static native nativeGetInputDevice(I)Landroid/view/InputDevice;
.end method

.method private static native nativeGetInputDeviceIds()[I
.end method

.method private static native nativeGetKeyCodeState(III)I
.end method

.method private static native nativeGetScanCodeState(III)I
.end method

.method private static native nativeGetSwitchState(III)I
.end method

.method private static native nativeHasKeys(II[I[Z)Z
.end method

.method private static native nativeInit(Landroid/content/Context;Lcom/android/server/wm/InputManager$Callbacks;Landroid/os/MessageQueue;)V
.end method

.method private static native nativeInjectInputEvent(Landroid/view/InputEvent;IIII)I
.end method

.method private static native nativeRegisterInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;Z)V
.end method

.method private static native nativeSetDisplayOrientation(II)V
.end method

.method private static native nativeSetDisplaySize(III)V
.end method

.method private static native nativeSetFocusedApplication(Lcom/android/server/wm/InputApplication;)V
.end method

.method private static native nativeSetInputDispatchMode(ZZ)V
.end method

.method private static native nativeSetInputWindows([Lcom/android/server/wm/InputWindow;)V
.end method

.method private static native nativeSetPointerSpeed(I)V
.end method

.method private static native nativeSetSystemUiVisibility(I)V
.end method

.method private static native nativeSetTouchpadMode(I)V
.end method

.method private static native nativeStart()V
.end method

.method private static native nativeTransferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
.end method

.method private static native nativeUnregisterInputChannel(Landroid/view/InputChannel;)V
.end method

.method private registerPointerSpeedSettingObserver()V
    .registers 6

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/wm/InputManager$1;

    iget-object v4, p0, Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/InputManager$1;-><init>(Lcom/android/server/wm/InputManager;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 402
    return-void
.end method

.method private registerTouchpadModeSettingObserver()V
    .registers 6

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "touchpad_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/wm/InputManager$2;

    iget-object v4, p0, Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/InputManager$2;-><init>(Lcom/android/server/wm/InputManager;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 450
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 3
    .parameter "pw"

    .prologue
    .line 454
    invoke-static {}, Lcom/android/server/wm/InputManager;->nativeDump()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, dumpStr:Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 456
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    :cond_9
    return-void
.end method

.method public getInputConfiguration(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "config"

    .prologue
    .line 171
    if-nez p1, :cond_a

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_a
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeGetInputConfiguration(Landroid/content/res/Configuration;)V

    .line 176
    return-void
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .registers 3
    .parameter "deviceId"

    .prologue
    .line 328
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeGetInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public getInputDeviceIds()[I
    .registers 2

    .prologue
    .line 336
    invoke-static {}, Lcom/android/server/wm/InputManager;->nativeGetInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getKeyCodeState(III)I
    .registers 5
    .parameter "deviceId"
    .parameter "sourceMask"
    .parameter "keyCode"

    .prologue
    .line 188
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/InputManager;->nativeGetKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getScanCodeState(III)I
    .registers 5
    .parameter "deviceId"
    .parameter "sourceMask"
    .parameter "scanCode"

    .prologue
    .line 201
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/InputManager;->nativeGetScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getSwitchState(III)I
    .registers 5
    .parameter "deviceId"
    .parameter "sourceMask"
    .parameter "switchCode"

    .prologue
    .line 214
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/InputManager;->nativeGetSwitchState(III)I

    move-result v0

    return v0
.end method

.method public hasKeys(II[I[Z)Z
    .registers 7
    .parameter "deviceId"
    .parameter "sourceMask"
    .parameter "keyCodes"
    .parameter "keyExists"

    .prologue
    .line 230
    if-nez p3, :cond_a

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyCodes must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_a
    if-eqz p4, :cond_10

    array-length v0, p4

    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 234
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyExists must not be null and must be at least as large as keyCodes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_18
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/wm/InputManager;->nativeHasKeys(II[I[Z)Z

    move-result v0

    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;IIII)I
    .registers 8
    .parameter "event"
    .parameter "injectorPid"
    .parameter "injectorUid"
    .parameter "syncMode"
    .parameter "timeoutMillis"

    .prologue
    .line 309
    if-nez p1, :cond_a

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_a
    if-ltz p2, :cond_e

    if-gez p3, :cond_16

    .line 313
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "injectorPid and injectorUid must not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_16
    if-gtz p5, :cond_20

    .line 316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeoutMillis must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_20
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/wm/InputManager;->nativeInjectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v0

    return v0
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .registers 7
    .parameter "inputChannelName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 247
    if-nez p1, :cond_c

    .line 248
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "inputChannelName must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_c
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 252
    .local v0, inputChannels:[Landroid/view/InputChannel;
    aget-object v1, v0, v3

    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Lcom/android/server/wm/InputManager;->nativeRegisterInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;Z)V

    .line 253
    aget-object v1, v0, v3

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 254
    aget-object v1, v0, v4

    return-object v1
.end method

.method public registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;)V
    .registers 5
    .parameter "inputChannel"
    .parameter "inputWindowHandle"

    .prologue
    .line 265
    if-nez p1, :cond_a

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_a
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/server/wm/InputManager;->nativeRegisterInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;Z)V

    .line 270
    return-void
.end method

.method public setDisplayOrientation(II)V
    .registers 5
    .parameter "displayId"
    .parameter "rotation"

    .prologue
    .line 160
    if-ltz p2, :cond_5

    const/4 v0, 0x3

    if-le p2, v0, :cond_d

    .line 161
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid rotation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_d
    invoke-static {p1, p2}, Lcom/android/server/wm/InputManager;->nativeSetDisplayOrientation(II)V

    .line 168
    return-void
.end method

.method public setDisplaySize(III)V
    .registers 6
    .parameter "displayId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 149
    if-lez p2, :cond_4

    if-gtz p3, :cond_c

    .line 150
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid display id or dimensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_c
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/InputManager;->nativeSetDisplaySize(III)V

    .line 157
    return-void
.end method

.method public setFocusedApplication(Lcom/android/server/wm/InputApplication;)V
    .registers 2
    .parameter "application"

    .prologue
    .line 344
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetFocusedApplication(Lcom/android/server/wm/InputApplication;)V

    .line 345
    return-void
.end method

.method public setInputDispatchMode(ZZ)V
    .registers 3
    .parameter "enabled"
    .parameter "frozen"

    .prologue
    .line 348
    invoke-static {p1, p2}, Lcom/android/server/wm/InputManager;->nativeSetInputDispatchMode(ZZ)V

    .line 349
    return-void
.end method

.method public setInputWindows([Lcom/android/server/wm/InputWindow;)V
    .registers 2
    .parameter "windows"

    .prologue
    .line 340
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetInputWindows([Lcom/android/server/wm/InputWindow;)V

    .line 341
    return-void
.end method

.method public setPointerSpeed(I)V
    .registers 4
    .parameter "speed"

    .prologue
    .line 384
    const/4 v0, -0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 385
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetPointerSpeed(I)V

    .line 386
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 352
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetSystemUiVisibility(I)V

    .line 353
    return-void
.end method

.method public setTouchpadMode(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 417
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    .line 418
    const/4 p1, 0x0

    .line 420
    :cond_6
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetTouchpadMode(I)V

    .line 421
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 136
    const-string v0, "InputManager"

    const-string v1, "Starting input manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Lcom/android/server/wm/InputManager;->nativeStart()V

    .line 139
    invoke-direct {p0}, Lcom/android/server/wm/InputManager;->registerPointerSpeedSettingObserver()V

    .line 140
    invoke-virtual {p0}, Lcom/android/server/wm/InputManager;->updatePointerSpeedFromSettings()V

    .line 143
    invoke-direct {p0}, Lcom/android/server/wm/InputManager;->registerTouchpadModeSettingObserver()V

    .line 144
    invoke-virtual {p0}, Lcom/android/server/wm/InputManager;->updateTouchpadModeFromSettings()V

    .line 146
    return-void
.end method

.method public transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .registers 5
    .parameter "fromChannel"
    .parameter "toChannel"

    .prologue
    .line 369
    if-nez p1, :cond_a

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_a
    if-nez p2, :cond_14

    .line 373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "toChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_14
    invoke-static {p1, p2}, Lcom/android/server/wm/InputManager;->nativeTransferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v0

    return v0
.end method

.method public unregisterInputChannel(Landroid/view/InputChannel;)V
    .registers 4
    .parameter "inputChannel"

    .prologue
    .line 277
    if-nez p1, :cond_a

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_a
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeUnregisterInputChannel(Landroid/view/InputChannel;)V

    .line 282
    return-void
.end method

.method public updatePointerSpeedFromSettings()V
    .registers 3

    .prologue
    .line 389
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wm/InputManager;->getPointerSpeedSetting(I)I

    move-result v0

    .line 390
    .local v0, speed:I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputManager;->setPointerSpeed(I)V

    .line 391
    return-void
.end method

.method public updateTouchpadModeFromSettings()V
    .registers 3

    .prologue
    .line 425
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wm/InputManager;->getTouchpadModeSetting(I)I

    move-result v0

    .line 426
    .local v0, mode:I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputManager;->setTouchpadMode(I)V

    .line 427
    return-void
.end method
