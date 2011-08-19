.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"


# instance fields
.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTempInputApplication:Lcom/android/server/wm/InputApplication;

.field private mTempInputWindows:Lcom/android/server/wm/InputWindowList;

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .parameter "service"

    .prologue
    const/4 v0, 0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 45
    new-instance v0, Lcom/android/server/wm/InputWindowList;

    invoke-direct {v0}, Lcom/android/server/wm/InputWindowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTempInputWindows:Lcom/android/server/wm/InputWindowList;

    .line 48
    new-instance v0, Lcom/android/server/wm/InputApplication;

    invoke-direct {v0}, Lcom/android/server/wm/InputApplication;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTempInputApplication:Lcom/android/server/wm/InputApplication;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 56
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 57
    return-void
.end method

.method private addDragInputWindowLw(Lcom/android/server/wm/InputWindowList;)V
    .registers 7
    .parameter "windowList"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    invoke-virtual {p1}, Lcom/android/server/wm/InputWindowList;->add()Lcom/android/server/wm/InputWindow;

    move-result-object v0

    .line 118
    .local v0, inputWindow:Lcom/android/server/wm/InputWindow;
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    iput-object v1, v0, Lcom/android/server/wm/InputWindow;->inputChannel:Landroid/view/InputChannel;

    .line 119
    const-string v1, "drag"

    iput-object v1, v0, Lcom/android/server/wm/InputWindow;->name:Ljava/lang/String;

    .line 120
    iput v3, v0, Lcom/android/server/wm/InputWindow;->layoutParamsFlags:I

    .line 121
    const/16 v1, 0x7e0

    iput v1, v0, Lcom/android/server/wm/InputWindow;->layoutParamsType:I

    .line 122
    const-wide v1, 0x12a05f200L

    iput-wide v1, v0, Lcom/android/server/wm/InputWindow;->dispatchingTimeoutNanos:J

    .line 123
    iput-boolean v4, v0, Lcom/android/server/wm/InputWindow;->visible:Z

    .line 124
    iput-boolean v3, v0, Lcom/android/server/wm/InputWindow;->canReceiveKeys:Z

    .line 125
    iput-boolean v4, v0, Lcom/android/server/wm/InputWindow;->hasFocus:Z

    .line 126
    iput-boolean v3, v0, Lcom/android/server/wm/InputWindow;->hasWallpaper:Z

    .line 127
    iput-boolean v3, v0, Lcom/android/server/wm/InputWindow;->paused:Z

    .line 128
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1}, Lcom/android/server/wm/DragState;->getDragLayerLw()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/InputWindow;->layer:I

    .line 129
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/InputWindow;->ownerPid:I

    .line 130
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/InputWindow;->ownerUid:I

    .line 133
    iput v3, v0, Lcom/android/server/wm/InputWindow;->frameLeft:I

    .line 134
    iput v3, v0, Lcom/android/server/wm/InputWindow;->frameTop:I

    .line 135
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRealWidth()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/InputWindow;->frameRight:I

    .line 136
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRealHeight()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/InputWindow;->frameBottom:I

    .line 139
    iget-object v1, v0, Lcom/android/server/wm/InputWindow;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 140
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .registers 4

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/InputManager;->setInputDispatchMode(ZZ)V

    .line 392
    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Lcom/android/server/wm/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 6
    .parameter "focus"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 290
    if-eqz p1, :cond_10

    iget-object v1, p1, Lcom/android/server/wm/InputWindowHandle;->windowState:Landroid/view/WindowManagerPolicy$WindowState;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 291
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    :goto_7
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1

    .line 290
    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :cond_10
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_7
.end method

.method public freezeInputDispatchingLw()V
    .registers 2

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-nez v0, :cond_a

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 364
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 366
    :cond_a
    return-void
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/wm/InputWindowHandle;Landroid/view/KeyEvent;I)Z
    .registers 6
    .parameter "focus"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 282
    if-eqz p1, :cond_10

    iget-object v1, p1, Lcom/android/server/wm/InputWindowHandle;->windowState:Landroid/view/WindowManagerPolicy$WindowState;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 283
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    :goto_7
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v1

    return v1

    .line 282
    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :cond_10
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_7
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .registers 5
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    return v0
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .registers 3
    .parameter "policyFlags"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->interceptMotionBeforeQueueingWhenScreenOff(I)I

    move-result v0

    return v0
.end method

.method public notifyANR(Lcom/android/server/wm/InputApplicationHandle;Lcom/android/server/wm/InputWindowHandle;)J
    .registers 10
    .parameter "inputApplicationHandle"
    .parameter "inputWindowHandle"

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, appWindowToken:Lcom/android/server/wm/AppWindowToken;
    if-eqz p2, :cond_2f

    .line 84
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 85
    :try_start_8
    iget-object v2, p2, Lcom/android/server/wm/InputWindowHandle;->windowState:Landroid/view/WindowManagerPolicy$WindowState;

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 86
    .local v2, windowState:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_2e

    .line 87
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Input event dispatching timed out sending to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 91
    :cond_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_60

    .line 94
    .end local v2           #windowState:Lcom/android/server/wm/WindowState;
    :cond_2f
    if-nez v1, :cond_4f

    if-eqz p1, :cond_4f

    .line 95
    iget-object v1, p1, Lcom/android/server/wm/InputApplicationHandle;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 96
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input event dispatching timed out sending to application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_4f
    if-eqz v1, :cond_64

    iget-object v3, v1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v3, :cond_64

    .line 104
    :try_start_55
    iget-object v3, v1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v3}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut()Z

    move-result v0

    .line 105
    .local v0, abort:Z
    if-nez v0, :cond_64

    .line 108
    iget-wide v3, v1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5f} :catch_63

    .line 113
    .end local v0           #abort:Z
    :goto_5f
    return-wide v3

    .line 91
    :catchall_60
    move-exception v4

    :try_start_61
    monitor-exit v3
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v4

    .line 110
    :catch_63
    move-exception v3

    .line 113
    :cond_64
    const-wide/16 v3, 0x0

    goto :goto_5f
.end method

.method public notifyConfigurationChanged()V
    .registers 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_8
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    if-nez v1, :cond_14

    .line 240
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    .line 241
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 243
    :cond_14
    monitor-exit v0

    .line 244
    return-void

    .line 243
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public notifyInputChannelBroken(Lcom/android/server/wm/InputWindowHandle;)V
    .registers 7
    .parameter "inputWindowHandle"

    .prologue
    .line 64
    if-nez p1, :cond_3

    .line 73
    :goto_2
    return-void

    .line 68
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 69
    :try_start_8
    iget-object v0, p1, Lcom/android/server/wm/InputWindowHandle;->windowState:Landroid/view/WindowManagerPolicy$WindowState;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 70
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 72
    monitor-exit v1

    goto :goto_2

    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :catchall_2d
    move-exception v2

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 5
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    .line 262
    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 4
    .parameter "window"

    .prologue
    const/4 v1, 0x1

    .line 336
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_a

    .line 341
    iput-boolean v1, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 342
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 344
    :cond_a
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 3
    .parameter "window"

    .prologue
    .line 347
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_b

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 353
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 355
    :cond_b
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_9

    .line 385
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    .line 386
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 388
    :cond_9
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .registers 5
    .parameter "newApp"

    .prologue
    .line 321
    if-nez p1, :cond_b

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputManager;->setFocusedApplication(Lcom/android/server/wm/InputApplication;)V

    .line 333
    :goto_a
    return-void

    .line 324
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTempInputApplication:Lcom/android/server/wm/InputApplication;

    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    iput-object v1, v0, Lcom/android/server/wm/InputApplication;->inputApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    .line 325
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTempInputApplication:Lcom/android/server/wm/InputApplication;

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/InputApplication;->name:Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTempInputApplication:Lcom/android/server/wm/InputApplication;

    iget-wide v1, p1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput-wide v1, v0, Lcom/android/server/wm/InputApplication;->dispatchingTimeoutNanos:J

    .line 329
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mTempInputApplication:Lcom/android/server/wm/InputApplication;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputManager;->setFocusedApplication(Lcom/android/server/wm/InputApplication;)V

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTempInputApplication:Lcom/android/server/wm/InputApplication;

    invoke-virtual {v0}, Lcom/android/server/wm/InputApplication;->recycle()V

    goto :goto_a
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .registers 5
    .parameter "newWindow"
    .parameter "updateInputWindows"

    .prologue
    const/4 v1, 0x0

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_1b

    .line 303
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 307
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 310
    :cond_11
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 311
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 313
    if-eqz p2, :cond_1b

    .line 314
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 317
    :cond_1b
    return-void
.end method

.method public setUpdateInputWindowsNeededLw()V
    .registers 2

    .prologue
    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 144
    return-void
.end method

.method public thawInputDispatchingLw()V
    .registers 2

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_a

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 375
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 377
    :cond_a
    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .registers 16
    .parameter "force"

    .prologue
    .line 148
    if-nez p1, :cond_7

    iget-boolean v12, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-nez v12, :cond_7

    .line 232
    :goto_6
    return-void

    .line 151
    :cond_7
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 158
    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v12, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 161
    .local v11, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v12, :cond_37

    const/4 v12, 0x1

    move v7, v12

    .line 162
    .local v7, inDrag:Z
    :goto_16
    if-eqz v7, :cond_1d

    .line 166
    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mTempInputWindows:Lcom/android/server/wm/InputWindowList;

    invoke-direct {p0, v12}, Lcom/android/server/wm/InputMonitor;->addDragInputWindowLw(Lcom/android/server/wm/InputWindowList;)V

    .line 169
    :cond_1d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 170
    .local v0, N:I
    const/4 v12, 0x1

    sub-int v6, v0, v12

    .local v6, i:I
    :goto_24
    if-ltz v6, :cond_dd

    .line 171
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 172
    .local v1, child:Lcom/android/server/wm/WindowState;
    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v12, :cond_34

    iget-boolean v12, v1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v12, :cond_3a

    .line 170
    :cond_34
    :goto_34
    add-int/lit8 v6, v6, -0x1

    goto :goto_24

    .line 161
    .end local v0           #N:I
    .end local v1           #child:Lcom/android/server/wm/WindowState;
    .end local v6           #i:I
    .end local v7           #inDrag:Z
    :cond_37
    const/4 v12, 0x0

    move v7, v12

    goto :goto_16

    .line 177
    .restart local v0       #N:I
    .restart local v1       #child:Lcom/android/server/wm/WindowState;
    .restart local v6       #i:I
    .restart local v7       #inDrag:Z
    :cond_3a
    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 178
    .local v2, flags:I
    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 180
    .local v10, type:I
    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-ne v1, v12, :cond_cf

    const/4 v12, 0x1

    move v4, v12

    .line 181
    .local v4, hasFocus:Z
    :goto_48
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v9

    .line 182
    .local v9, isVisible:Z
    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v1, v12, :cond_d3

    const/16 v12, 0x7d4

    if-eq v10, v12, :cond_d3

    const/4 v12, 0x1

    move v5, v12

    .line 187
    .local v5, hasWallpaper:Z
    :goto_58
    if-eqz v7, :cond_63

    if-eqz v9, :cond_63

    .line 188
    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v12, v1}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    .line 192
    :cond_63
    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mTempInputWindows:Lcom/android/server/wm/InputWindowList;

    invoke-virtual {v12}, Lcom/android/server/wm/InputWindowList;->add()Lcom/android/server/wm/InputWindow;

    move-result-object v8

    .line 193
    .local v8, inputWindow:Lcom/android/server/wm/InputWindow;
    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput-object v12, v8, Lcom/android/server/wm/InputWindow;->inputWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    .line 194
    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iput-object v12, v8, Lcom/android/server/wm/InputWindow;->inputChannel:Landroid/view/InputChannel;

    .line 195
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/android/server/wm/InputWindow;->name:Ljava/lang/String;

    .line 196
    iput v2, v8, Lcom/android/server/wm/InputWindow;->layoutParamsFlags:I

    .line 197
    iput v10, v8, Lcom/android/server/wm/InputWindow;->layoutParamsType:I

    .line 198
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v12

    iput-wide v12, v8, Lcom/android/server/wm/InputWindow;->dispatchingTimeoutNanos:J

    .line 199
    iput-boolean v9, v8, Lcom/android/server/wm/InputWindow;->visible:Z

    .line 200
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v12

    iput-boolean v12, v8, Lcom/android/server/wm/InputWindow;->canReceiveKeys:Z

    .line 201
    iput-boolean v4, v8, Lcom/android/server/wm/InputWindow;->hasFocus:Z

    .line 202
    iput-boolean v5, v8, Lcom/android/server/wm/InputWindow;->hasWallpaper:Z

    .line 203
    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v12, :cond_d6

    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v12, v12, Lcom/android/server/wm/AppWindowToken;->paused:Z

    :goto_95
    iput-boolean v12, v8, Lcom/android/server/wm/InputWindow;->paused:Z

    .line 204
    iget v12, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v12, v8, Lcom/android/server/wm/InputWindow;->layer:I

    .line 205
    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v12, v12, Lcom/android/server/wm/Session;->mPid:I

    iput v12, v8, Lcom/android/server/wm/InputWindow;->ownerPid:I

    .line 206
    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v12, v12, Lcom/android/server/wm/Session;->mUid:I

    iput v12, v8, Lcom/android/server/wm/InputWindow;->ownerUid:I

    .line 208
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 209
    .local v3, frame:Landroid/graphics/Rect;
    iget v12, v3, Landroid/graphics/Rect;->left:I

    iput v12, v8, Lcom/android/server/wm/InputWindow;->frameLeft:I

    .line 210
    iget v12, v3, Landroid/graphics/Rect;->top:I

    iput v12, v8, Lcom/android/server/wm/InputWindow;->frameTop:I

    .line 211
    iget v12, v3, Landroid/graphics/Rect;->right:I

    iput v12, v8, Lcom/android/server/wm/InputWindow;->frameRight:I

    .line 212
    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    iput v12, v8, Lcom/android/server/wm/InputWindow;->frameBottom:I

    .line 214
    iget v12, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v13, 0x3f80

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_d8

    .line 218
    const/high16 v12, 0x3f80

    iget v13, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float/2addr v12, v13

    iput v12, v8, Lcom/android/server/wm/InputWindow;->scaleFactor:F

    .line 223
    :goto_c8
    iget-object v12, v8, Lcom/android/server/wm/InputWindow;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    goto/16 :goto_34

    .line 180
    .end local v3           #frame:Landroid/graphics/Rect;
    .end local v4           #hasFocus:Z
    .end local v5           #hasWallpaper:Z
    .end local v8           #inputWindow:Lcom/android/server/wm/InputWindow;
    .end local v9           #isVisible:Z
    :cond_cf
    const/4 v12, 0x0

    move v4, v12

    goto/16 :goto_48

    .line 182
    .restart local v4       #hasFocus:Z
    .restart local v9       #isVisible:Z
    :cond_d3
    const/4 v12, 0x0

    move v5, v12

    goto :goto_58

    .line 203
    .restart local v5       #hasWallpaper:Z
    .restart local v8       #inputWindow:Lcom/android/server/wm/InputWindow;
    :cond_d6
    const/4 v12, 0x0

    goto :goto_95

    .line 220
    .restart local v3       #frame:Landroid/graphics/Rect;
    :cond_d8
    const/high16 v12, 0x3f80

    iput v12, v8, Lcom/android/server/wm/InputWindow;->scaleFactor:F

    goto :goto_c8

    .line 227
    .end local v1           #child:Lcom/android/server/wm/WindowState;
    .end local v2           #flags:I
    .end local v3           #frame:Landroid/graphics/Rect;
    .end local v4           #hasFocus:Z
    .end local v5           #hasWallpaper:Z
    .end local v8           #inputWindow:Lcom/android/server/wm/InputWindow;
    .end local v9           #isVisible:Z
    .end local v10           #type:I
    :cond_dd
    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-object v13, p0, Lcom/android/server/wm/InputMonitor;->mTempInputWindows:Lcom/android/server/wm/InputWindowList;

    invoke-virtual {v13}, Lcom/android/server/wm/InputWindowList;->toNullTerminatedArray()[Lcom/android/server/wm/InputWindow;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wm/InputManager;->setInputWindows([Lcom/android/server/wm/InputWindow;)V

    .line 231
    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mTempInputWindows:Lcom/android/server/wm/InputWindowList;

    invoke-virtual {v12}, Lcom/android/server/wm/InputWindowList;->clear()V

    goto/16 :goto_6
.end method

.method public waitForInputDevicesReady(J)Z
    .registers 5
    .parameter "timeoutMillis"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-nez v1, :cond_c

    .line 251
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_13

    .line 255
    :cond_c
    :goto_c
    :try_start_c
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    monitor-exit v0

    return v1

    .line 256
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v1

    .line 252
    :catch_13
    move-exception v1

    goto :goto_c
.end method
