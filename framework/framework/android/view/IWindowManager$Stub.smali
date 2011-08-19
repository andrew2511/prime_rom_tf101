.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final TRANSACTION_addAppToken:I = 0x14

.field static final TRANSACTION_addWindowToken:I = 0x12

.field static final TRANSACTION_canStatusBarHide:I = 0xa

.field static final TRANSACTION_clearForcedDisplaySize:I = 0x9

.field static final TRANSACTION_closeSystemDialogs:I = 0x2e

.field static final TRANSACTION_disableKeyguard:I = 0x28

.field static final TRANSACTION_executeAppTransition:I = 0x1c

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x2a

.field static final TRANSACTION_freezeRotation:I = 0x47

.field static final TRANSACTION_getAnimationScale:I = 0x2f

.field static final TRANSACTION_getAnimationScales:I = 0x30

.field static final TRANSACTION_getAppOrientation:I = 0x17

.field static final TRANSACTION_getDPadKeycodeState:I = 0x3c

.field static final TRANSACTION_getDPadScancodeState:I = 0x38

.field static final TRANSACTION_getDisplaySize:I = 0x6

.field static final TRANSACTION_getInputDevice:I = 0x3f

.field static final TRANSACTION_getInputDeviceIds:I = 0x40

.field static final TRANSACTION_getKeycodeState:I = 0x39

.field static final TRANSACTION_getKeycodeStateForDevice:I = 0x3a

.field static final TRANSACTION_getMaximumSizeDimension:I = 0x7

.field static final TRANSACTION_getPendingAppTransition:I = 0x1a

.field static final TRANSACTION_getRotation:I = 0x45

.field static final TRANSACTION_getScancodeState:I = 0x35

.field static final TRANSACTION_getScancodeStateForDevice:I = 0x36

.field static final TRANSACTION_getSwitchState:I = 0x33

.field static final TRANSACTION_getSwitchStateForDevice:I = 0x34

.field static final TRANSACTION_getTrackballKeycodeState:I = 0x3b

.field static final TRANSACTION_getTrackballScancodeState:I = 0x37

.field static final TRANSACTION_hasKeys:I = 0x3e

.field static final TRANSACTION_inKeyguardRestrictedInputMode:I = 0x2d

.field static final TRANSACTION_injectInputEventNoWait:I = 0xe

.field static final TRANSACTION_injectKeyEvent:I = 0xb

.field static final TRANSACTION_injectPointerEvent:I = 0xc

.field static final TRANSACTION_injectTrackballEvent:I = 0xd

.field static final TRANSACTION_inputMethodClientHasFocus:I = 0x5

.field static final TRANSACTION_isAsusEpKeyguardSecure:I = 0x4c

.field static final TRANSACTION_isKeyguardLocked:I = 0x2b

.field static final TRANSACTION_isKeyguardSecure:I = 0x2c

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_monitorInput:I = 0x3d

.field static final TRANSACTION_moveAppToken:I = 0x23

.field static final TRANSACTION_moveAppTokensToBottom:I = 0x25

.field static final TRANSACTION_moveAppTokensToTop:I = 0x24

.field static final TRANSACTION_openSession:I = 0x4

.field static final TRANSACTION_overridePendingAppTransition:I = 0x1b

.field static final TRANSACTION_pauseKeyDispatching:I = 0xf

.field static final TRANSACTION_popCompassCalibrationDialog:I = 0x4d

.field static final TRANSACTION_prepareAppTransition:I = 0x19

.field static final TRANSACTION_reenableKeyguard:I = 0x29

.field static final TRANSACTION_removeAppToken:I = 0x22

.field static final TRANSACTION_removeWindowToken:I = 0x13

.field static final TRANSACTION_resumeKeyDispatching:I = 0x10

.field static final TRANSACTION_screenshotApplications:I = 0x49

.field static final TRANSACTION_setAnimationScale:I = 0x31

.field static final TRANSACTION_setAnimationScales:I = 0x32

.field static final TRANSACTION_setAppGroupId:I = 0x15

.field static final TRANSACTION_setAppOrientation:I = 0x16

.field static final TRANSACTION_setAppStartingWindow:I = 0x1d

.field static final TRANSACTION_setAppVisibility:I = 0x1f

.field static final TRANSACTION_setAppWillBeHidden:I = 0x1e

.field static final TRANSACTION_setEventDispatching:I = 0x11

.field static final TRANSACTION_setFocusedApp:I = 0x18

.field static final TRANSACTION_setForcedDisplaySize:I = 0x8

.field static final TRANSACTION_setInTouchMode:I = 0x41

.field static final TRANSACTION_setNewConfiguration:I = 0x27

.field static final TRANSACTION_setPointerSpeed:I = 0x4b

.field static final TRANSACTION_setRotation:I = 0x44

.field static final TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x43

.field static final TRANSACTION_showStrictModeViolation:I = 0x42

.field static final TRANSACTION_startAppFreezingScreen:I = 0x20

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_statusBarVisibilityChanged:I = 0x4a

.field static final TRANSACTION_stopAppFreezingScreen:I = 0x21

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_thawRotation:I = 0x48

.field static final TRANSACTION_updateOrientationFromAppTokens:I = 0x26

.field static final TRANSACTION_watchRotation:I = 0x46


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_3
    return-object v1

    .line 31
    :cond_4
    const-string v1, "android.view.IWindowManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Landroid/view/IWindowManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/view/IWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
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
    .line 43
    sparse-switch p1, :sswitch_data_a5e

    .line 901
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_7
    return v4

    .line 47
    :sswitch_8
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v4, 0x1

    goto :goto_7

    .line 52
    :sswitch_12
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 55
    .local v5, _arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v16

    .line 56
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v16, :cond_33

    const/4 v4, 0x1

    :goto_2b
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v4, 0x1

    goto :goto_7

    .line 57
    :cond_33
    const/4 v4, 0x0

    goto :goto_2b

    .line 62
    .end local v5           #_arg0:I
    .end local v16           #_result:Z
    :sswitch_35
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v16

    .line 64
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v16, :cond_4f

    const/4 v4, 0x1

    :goto_47
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v4, 0x1

    goto :goto_7

    .line 65
    :cond_4f
    const/4 v4, 0x0

    goto :goto_47

    .line 70
    .end local v16           #_result:Z
    :sswitch_51
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v16

    .line 72
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v16, :cond_6b

    const/4 v4, 0x1

    :goto_63
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/4 v4, 0x1

    goto :goto_7

    .line 73
    :cond_6b
    const/4 v4, 0x0

    goto :goto_63

    .line 78
    .end local v16           #_result:Z
    :sswitch_6d
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v5

    .line 82
    .local v5, _arg0:Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v6

    .line 83
    .local v6, _arg1:Lcom/android/internal/view/IInputContext;
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v16

    .line 84
    .local v16, _result:Landroid/view/IWindowSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v16, :cond_9f

    invoke-interface/range {v16 .. v16}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_96
    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 86
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 85
    :cond_9f
    const/4 v4, 0x0

    goto :goto_96

    .line 90
    .end local v5           #_arg0:Lcom/android/internal/view/IInputMethodClient;
    .end local v6           #_arg1:Lcom/android/internal/view/IInputContext;
    .end local v16           #_result:Landroid/view/IWindowSession;
    :sswitch_a1
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v5

    .line 93
    .restart local v5       #_arg0:Lcom/android/internal/view/IInputMethodClient;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v16

    .line 94
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v16, :cond_c7

    const/4 v4, 0x1

    :goto_be
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 95
    :cond_c7
    const/4 v4, 0x0

    goto :goto_be

    .line 100
    .end local v5           #_arg0:Lcom/android/internal/view/IInputMethodClient;
    .end local v16           #_result:Z
    :sswitch_c9
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 103
    .local v5, _arg0:Landroid/graphics/Point;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getDisplaySize(Landroid/graphics/Point;)V

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v5, :cond_f3

    .line 106
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    const/4 v4, 0x1

    move-object v0, v5

    move-object/from16 v1, p3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 112
    :goto_f0
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 110
    :cond_f3
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f0

    .line 116
    .end local v5           #_arg0:Landroid/graphics/Point;
    :sswitch_fb
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getMaximumSizeDimension()I

    move-result v16

    .line 118
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 124
    .end local v16           #_result:I
    :sswitch_114
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 128
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 129
    .local v6, _arg1:I
    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(II)V

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 135
    .end local v5           #_arg0:I
    .end local v6           #_arg1:I
    :sswitch_131
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize()V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 142
    :sswitch_142
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->canStatusBarHide()Z

    move-result v16

    .line 144
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v16, :cond_15d

    const/4 v4, 0x1

    :goto_154
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 145
    :cond_15d
    const/4 v4, 0x0

    goto :goto_154

    .line 150
    .end local v16           #_result:Z
    :sswitch_15f
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_197

    .line 153
    sget-object v4, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/KeyEvent;

    .line 159
    .local v5, _arg0:Landroid/view/KeyEvent;
    :goto_178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_199

    const/4 v4, 0x1

    move v6, v4

    .line 160
    .local v6, _arg1:Z
    :goto_180
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v16

    .line 161
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v16, :cond_19c

    const/4 v4, 0x1

    :goto_18e
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 156
    .end local v5           #_arg0:Landroid/view/KeyEvent;
    .end local v6           #_arg1:Z
    .end local v16           #_result:Z
    :cond_197
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/view/KeyEvent;
    goto :goto_178

    .line 159
    :cond_199
    const/4 v4, 0x0

    move v6, v4

    goto :goto_180

    .line 162
    .restart local v6       #_arg1:Z
    .restart local v16       #_result:Z
    :cond_19c
    const/4 v4, 0x0

    goto :goto_18e

    .line 167
    .end local v5           #_arg0:Landroid/view/KeyEvent;
    .end local v6           #_arg1:Z
    .end local v16           #_result:Z
    :sswitch_19e
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d6

    .line 170
    sget-object v4, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/MotionEvent;

    .line 176
    .local v5, _arg0:Landroid/view/MotionEvent;
    :goto_1b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d8

    const/4 v4, 0x1

    move v6, v4

    .line 177
    .restart local v6       #_arg1:Z
    :goto_1bf
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z

    move-result v16

    .line 178
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v16, :cond_1db

    const/4 v4, 0x1

    :goto_1cd
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 173
    .end local v5           #_arg0:Landroid/view/MotionEvent;
    .end local v6           #_arg1:Z
    .end local v16           #_result:Z
    :cond_1d6
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/view/MotionEvent;
    goto :goto_1b7

    .line 176
    :cond_1d8
    const/4 v4, 0x0

    move v6, v4

    goto :goto_1bf

    .line 179
    .restart local v6       #_arg1:Z
    .restart local v16       #_result:Z
    :cond_1db
    const/4 v4, 0x0

    goto :goto_1cd

    .line 184
    .end local v5           #_arg0:Landroid/view/MotionEvent;
    .end local v6           #_arg1:Z
    .end local v16           #_result:Z
    :sswitch_1dd
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_215

    .line 187
    sget-object v4, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/MotionEvent;

    .line 193
    .restart local v5       #_arg0:Landroid/view/MotionEvent;
    :goto_1f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_217

    const/4 v4, 0x1

    move v6, v4

    .line 194
    .restart local v6       #_arg1:Z
    :goto_1fe
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->injectTrackballEvent(Landroid/view/MotionEvent;Z)Z

    move-result v16

    .line 195
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v16, :cond_21a

    const/4 v4, 0x1

    :goto_20c
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 190
    .end local v5           #_arg0:Landroid/view/MotionEvent;
    .end local v6           #_arg1:Z
    .end local v16           #_result:Z
    :cond_215
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/view/MotionEvent;
    goto :goto_1f6

    .line 193
    :cond_217
    const/4 v4, 0x0

    move v6, v4

    goto :goto_1fe

    .line 196
    .restart local v6       #_arg1:Z
    .restart local v16       #_result:Z
    :cond_21a
    const/4 v4, 0x0

    goto :goto_20c

    .line 201
    .end local v5           #_arg0:Landroid/view/MotionEvent;
    .end local v6           #_arg1:Z
    .end local v16           #_result:Z
    :sswitch_21c
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_24b

    .line 204
    sget-object v4, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InputEvent;

    .line 209
    .local v5, _arg0:Landroid/view/InputEvent;
    :goto_235
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->injectInputEventNoWait(Landroid/view/InputEvent;)Z

    move-result v16

    .line 210
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v16, :cond_24d

    const/4 v4, 0x1

    :goto_242
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 207
    .end local v5           #_arg0:Landroid/view/InputEvent;
    .end local v16           #_result:Z
    :cond_24b
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/view/InputEvent;
    goto :goto_235

    .line 211
    .restart local v16       #_result:Z
    :cond_24d
    const/4 v4, 0x0

    goto :goto_242

    .line 216
    .end local v5           #_arg0:Landroid/view/InputEvent;
    .end local v16           #_result:Z
    :sswitch_24f
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 219
    .local v5, _arg0:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->pauseKeyDispatching(Landroid/os/IBinder;)V

    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 225
    .end local v5           #_arg0:Landroid/os/IBinder;
    :sswitch_267
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 228
    .restart local v5       #_arg0:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->resumeKeyDispatching(Landroid/os/IBinder;)V

    .line 229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 234
    .end local v5           #_arg0:Landroid/os/IBinder;
    :sswitch_27f
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29b

    const/4 v4, 0x1

    move v5, v4

    .line 237
    .local v5, _arg0:Z
    :goto_28f
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 236
    .end local v5           #_arg0:Z
    :cond_29b
    const/4 v4, 0x0

    move v5, v4

    goto :goto_28f

    .line 243
    :sswitch_29e
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 247
    .local v5, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 248
    .local v6, _arg1:I
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;I)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 254
    .end local v5           #_arg0:Landroid/os/IBinder;
    .end local v6           #_arg1:I
    :sswitch_2bb
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 257
    .restart local v5       #_arg0:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;)V

    .line 258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 263
    .end local v5           #_arg0:Landroid/os/IBinder;
    :sswitch_2d3
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 267
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v6

    .line 269
    .local v6, _arg1:Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 271
    .local v7, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 273
    .local v8, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_302

    const/4 v4, 0x1

    move v9, v4

    .local v9, _arg4:Z
    :goto_2f7
    move-object/from16 v4, p0

    .line 274
    invoke-virtual/range {v4 .. v9}, Landroid/view/IWindowManager$Stub;->addAppToken(ILandroid/view/IApplicationToken;IIZ)V

    .line 275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 273
    .end local v9           #_arg4:Z
    :cond_302
    const/4 v4, 0x0

    move v9, v4

    goto :goto_2f7

    .line 280
    .end local v5           #_arg0:I
    .end local v6           #_arg1:Landroid/view/IApplicationToken;
    .end local v7           #_arg2:I
    .end local v8           #_arg3:I
    :sswitch_305
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 284
    .local v5, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 285
    .local v6, _arg1:I
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 291
    .end local v5           #_arg0:Landroid/os/IBinder;
    .end local v6           #_arg1:I
    :sswitch_322
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v5

    .line 295
    .local v5, _arg0:Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 296
    .restart local v6       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAppOrientation(Landroid/view/IApplicationToken;I)V

    .line 297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 302
    .end local v5           #_arg0:Landroid/view/IApplicationToken;
    .end local v6           #_arg1:I
    :sswitch_343
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v5

    .line 305
    .restart local v5       #_arg0:Landroid/view/IApplicationToken;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getAppOrientation(Landroid/view/IApplicationToken;)I

    move-result v16

    .line 306
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 312
    .end local v5           #_arg0:Landroid/view/IApplicationToken;
    .end local v16           #_result:I
    :sswitch_367
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 316
    .local v5, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_388

    const/4 v4, 0x1

    move v6, v4

    .line 317
    .local v6, _arg1:Z
    :goto_37b
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setFocusedApp(Landroid/os/IBinder;Z)V

    .line 318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 316
    .end local v6           #_arg1:Z
    :cond_388
    const/4 v4, 0x0

    move v6, v4

    goto :goto_37b

    .line 323
    .end local v5           #_arg0:Landroid/os/IBinder;
    :sswitch_38b
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 327
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3ac

    const/4 v4, 0x1

    move v6, v4

    .line 328
    .restart local v6       #_arg1:Z
    :goto_39f
    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->prepareAppTransition(IZ)V

    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 327
    .end local v6           #_arg1:Z
    :cond_3ac
    const/4 v4, 0x0

    move v6, v4

    goto :goto_39f

    .line 334
    .end local v5           #_arg0:I
    :sswitch_3af
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getPendingAppTransition()I

    move-result v16

    .line 336
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 342
    .end local v16           #_result:I
    :sswitch_3c8
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 346
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 348
    .local v6, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 349
    .restart local v7       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransition(Ljava/lang/String;II)V

    .line 350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 355
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:I
    .end local v7           #_arg2:I
    :sswitch_3ea
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->executeAppTransition()V

    .line 357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 362
    :sswitch_3fb
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 366
    .local v5, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 368
    .local v6, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 370
    .restart local v7       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_454

    .line 371
    sget-object v4, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/CompatibilityInfo;

    .line 377
    .local v8, _arg3:Landroid/content/res/CompatibilityInfo;
    :goto_420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_456

    .line 378
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    .line 384
    .local v9, _arg4:Ljava/lang/CharSequence;
    :goto_431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 386
    .local v10, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 388
    .local v11, _arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 390
    .local v12, _arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 392
    .local v13, _arg8:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_458

    const/4 v4, 0x1

    move v14, v4

    .local v14, _arg9:Z
    :goto_449
    move-object/from16 v4, p0

    .line 393
    invoke-virtual/range {v4 .. v14}, Landroid/view/IWindowManager$Stub;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    .line 394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 374
    .end local v8           #_arg3:Landroid/content/res/CompatibilityInfo;
    .end local v9           #_arg4:Ljava/lang/CharSequence;
    .end local v10           #_arg5:I
    .end local v11           #_arg6:I
    .end local v12           #_arg7:I
    .end local v13           #_arg8:Landroid/os/IBinder;
    .end local v14           #_arg9:Z
    :cond_454
    const/4 v8, 0x0

    .restart local v8       #_arg3:Landroid/content/res/CompatibilityInfo;
    goto :goto_420

    .line 381
    :cond_456
    const/4 v9, 0x0

    .restart local v9       #_arg4:Ljava/lang/CharSequence;
    goto :goto_431

    .line 392
    .restart local v10       #_arg5:I
    .restart local v11       #_arg6:I
    .restart local v12       #_arg7:I
    .restart local v13       #_arg8:Landroid/os/IBinder;
    :cond_458
    const/4 v4, 0x0

    move v14, v4

    goto :goto_449

    .line 399
    .end local v5           #_arg0:Landroid/os/IBinder;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v7           #_arg2:I
    .end local v8           #_arg3:Landroid/content/res/CompatibilityInfo;
    .end local v9           #_arg4:Ljava/lang/CharSequence;
    .end local v10           #_arg5:I
    .end local v11           #_arg6:I
    .end local v12           #_arg7:I
    .end local v13           #_arg8:Landroid/os/IBinder;
    :sswitch_45b
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 402
    .restart local v5       #_arg0:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 408
    .end local v5           #_arg0:Landroid/os/IBinder;
    :sswitch_473
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 412
    .restart local v5       #_arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_494

    const/4 v4, 0x1

    move v6, v4

    .line 413
    .local v6, _arg1:Z
    :goto_487
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 412
    .end local v6           #_arg1:Z
    :cond_494
    const/4 v4, 0x0

    move v6, v4

    goto :goto_487

    .line 419
    .end local v5           #_arg0:Landroid/os/IBinder;
    :sswitch_497
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 423
    .restart local v5       #_arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 424
    .local v6, _arg1:I
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    .line 425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 430
    .end local v5           #_arg0:Landroid/os/IBinder;
    .end local v6           #_arg1:I
    :sswitch_4b4
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 434
    .restart local v5       #_arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4d5

    const/4 v4, 0x1

    move v6, v4

    .line 435
    .local v6, _arg1:Z
    :goto_4c8
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 434
    .end local v6           #_arg1:Z
    :cond_4d5
    const/4 v4, 0x0

    move v6, v4

    goto :goto_4c8

    .line 441
    .end local v5           #_arg0:Landroid/os/IBinder;
    :sswitch_4d8
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 444
    .restart local v5       #_arg0:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeAppToken(Landroid/os/IBinder;)V

    .line 445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 450
    .end local v5           #_arg0:Landroid/os/IBinder;
    :sswitch_4f0
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 454
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 455
    .local v6, _arg1:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->moveAppToken(ILandroid/os/IBinder;)V

    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 461
    .end local v5           #_arg0:I
    .end local v6           #_arg1:Landroid/os/IBinder;
    :sswitch_50d
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 464
    .local v15, _arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->moveAppTokensToTop(Ljava/util/List;)V

    .line 465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 470
    .end local v15           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_525
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 473
    .restart local v15       #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->moveAppTokensToBottom(Ljava/util/List;)V

    .line 474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 479
    .end local v15           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_53d
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_57a

    .line 482
    sget-object v4, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Configuration;

    .line 488
    .local v5, _arg0:Landroid/content/res/Configuration;
    :goto_556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 489
    .restart local v6       #_arg1:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v16

    .line 490
    .local v16, _result:Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    if-eqz v16, :cond_57c

    .line 492
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 498
    :goto_577
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 485
    .end local v5           #_arg0:Landroid/content/res/Configuration;
    .end local v6           #_arg1:Landroid/os/IBinder;
    .end local v16           #_result:Landroid/content/res/Configuration;
    :cond_57a
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/res/Configuration;
    goto :goto_556

    .line 496
    .restart local v6       #_arg1:Landroid/os/IBinder;
    .restart local v16       #_result:Landroid/content/res/Configuration;
    :cond_57c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_577

    .line 502
    .end local v5           #_arg0:Landroid/content/res/Configuration;
    .end local v6           #_arg1:Landroid/os/IBinder;
    .end local v16           #_result:Landroid/content/res/Configuration;
    :sswitch_584
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5a9

    .line 505
    sget-object v4, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Configuration;

    .line 510
    .restart local v5       #_arg0:Landroid/content/res/Configuration;
    :goto_59d
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setNewConfiguration(Landroid/content/res/Configuration;)V

    .line 511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 508
    .end local v5           #_arg0:Landroid/content/res/Configuration;
    :cond_5a9
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/content/res/Configuration;
    goto :goto_59d

    .line 516
    .end local v5           #_arg0:Landroid/content/res/Configuration;
    :sswitch_5ab
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 520
    .local v5, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 521
    .local v6, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 527
    .end local v5           #_arg0:Landroid/os/IBinder;
    .end local v6           #_arg1:Ljava/lang/String;
    :sswitch_5c8
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 530
    .restart local v5       #_arg0:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 536
    .end local v5           #_arg0:Landroid/os/IBinder;
    :sswitch_5e0
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v5

    .line 539
    .local v5, _arg0:Landroid/view/IOnKeyguardExitResult;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 545
    .end local v5           #_arg0:Landroid/view/IOnKeyguardExitResult;
    :sswitch_5fc
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result v16

    .line 547
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    if-eqz v16, :cond_617

    const/4 v4, 0x1

    :goto_60e
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 548
    :cond_617
    const/4 v4, 0x0

    goto :goto_60e

    .line 553
    .end local v16           #_result:Z
    :sswitch_619
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure()Z

    move-result v16

    .line 555
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    if-eqz v16, :cond_634

    const/4 v4, 0x1

    :goto_62b
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 556
    :cond_634
    const/4 v4, 0x0

    goto :goto_62b

    .line 561
    .end local v16           #_result:Z
    :sswitch_636
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->inKeyguardRestrictedInputMode()Z

    move-result v16

    .line 563
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    if-eqz v16, :cond_651

    const/4 v4, 0x1

    :goto_648
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 564
    :cond_651
    const/4 v4, 0x0

    goto :goto_648

    .line 569
    .end local v16           #_result:Z
    :sswitch_653
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 572
    .local v5, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 578
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_66b
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 581
    .local v5, _arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v16

    .line 582
    .local v16, _result:F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 584
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 588
    .end local v5           #_arg0:I
    .end local v16           #_result:F
    :sswitch_68b
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v16

    .line 590
    .local v16, _result:[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 592
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 596
    .end local v16           #_result:[F
    :sswitch_6a4
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 600
    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 601
    .local v6, _arg1:F
    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 602
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 607
    .end local v5           #_arg0:I
    .end local v6           #_arg1:F
    :sswitch_6c1
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v5

    .line 610
    .local v5, _arg0:[F
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 611
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 616
    .end local v5           #_arg0:[F
    :sswitch_6d9
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 619
    .local v5, _arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getSwitchState(I)I

    move-result v16

    .line 620
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 626
    .end local v5           #_arg0:I
    .end local v16           #_result:I
    :sswitch_6f9
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 630
    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 631
    .local v6, _arg1:I
    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->getSwitchStateForDevice(II)I

    move-result v16

    .line 632
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 638
    .end local v5           #_arg0:I
    .end local v6           #_arg1:I
    .end local v16           #_result:I
    :sswitch_71e
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 641
    .restart local v5       #_arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getScancodeState(I)I

    move-result v16

    .line 642
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 648
    .end local v5           #_arg0:I
    .end local v16           #_result:I
    :sswitch_73e
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 652
    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 653
    .restart local v6       #_arg1:I
    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->getScancodeStateForDevice(II)I

    move-result v16

    .line 654
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 660
    .end local v5           #_arg0:I
    .end local v6           #_arg1:I
    .end local v16           #_result:I
    :sswitch_763
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 663
    .restart local v5       #_arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getTrackballScancodeState(I)I

    move-result v16

    .line 664
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 670
    .end local v5           #_arg0:I
    .end local v16           #_result:I
    :sswitch_783
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 673
    .restart local v5       #_arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getDPadScancodeState(I)I

    move-result v16

    .line 674
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 680
    .end local v5           #_arg0:I
    .end local v16           #_result:I
    :sswitch_7a3
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 683
    .restart local v5       #_arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getKeycodeState(I)I

    move-result v16

    .line 684
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 690
    .end local v5           #_arg0:I
    .end local v16           #_result:I
    :sswitch_7c3
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 694
    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 695
    .restart local v6       #_arg1:I
    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->getKeycodeStateForDevice(II)I

    move-result v16

    .line 696
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 702
    .end local v5           #_arg0:I
    .end local v6           #_arg1:I
    .end local v16           #_result:I
    :sswitch_7e8
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 705
    .restart local v5       #_arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getTrackballKeycodeState(I)I

    move-result v16

    .line 706
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 712
    .end local v5           #_arg0:I
    .end local v16           #_result:I
    :sswitch_808
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 715
    .restart local v5       #_arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getDPadKeycodeState(I)I

    move-result v16

    .line 716
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 718
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 722
    .end local v5           #_arg0:I
    .end local v16           #_result:I
    :sswitch_828
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 725
    .local v5, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v16

    .line 726
    .local v16, _result:Landroid/view/InputChannel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    if-eqz v16, :cond_853

    .line 728
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 734
    :goto_850
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 732
    :cond_853
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_850

    .line 738
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Landroid/view/InputChannel;
    :sswitch_85b
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 742
    .local v5, _arg0:[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v6

    .line 743
    .local v6, _arg1:[Z
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->hasKeys([I[Z)Z

    move-result v16

    .line 744
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    if-eqz v16, :cond_888

    const/4 v4, 0x1

    :goto_879
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    move-object/from16 v0, p3

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 747
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 745
    :cond_888
    const/4 v4, 0x0

    goto :goto_879

    .line 751
    .end local v5           #_arg0:[I
    .end local v6           #_arg1:[Z
    .end local v16           #_result:Z
    :sswitch_88a
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 754
    .local v5, _arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v16

    .line 755
    .local v16, _result:Landroid/view/InputDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    if-eqz v16, :cond_8b5

    .line 757
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 763
    :goto_8b2
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 761
    :cond_8b5
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8b2

    .line 767
    .end local v5           #_arg0:I
    .end local v16           #_result:Landroid/view/InputDevice;
    :sswitch_8bd
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getInputDeviceIds()[I

    move-result-object v16

    .line 769
    .local v16, _result:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 771
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 775
    .end local v16           #_result:[I
    :sswitch_8d6
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8f2

    const/4 v4, 0x1

    move v5, v4

    .line 778
    .local v5, _arg0:Z
    :goto_8e6
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    .line 779
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 777
    .end local v5           #_arg0:Z
    :cond_8f2
    const/4 v4, 0x0

    move v5, v4

    goto :goto_8e6

    .line 784
    :sswitch_8f5
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_911

    const/4 v4, 0x1

    move v5, v4

    .line 787
    .restart local v5       #_arg0:Z
    :goto_905
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    .line 788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 786
    .end local v5           #_arg0:Z
    :cond_911
    const/4 v4, 0x0

    move v5, v4

    goto :goto_905

    .line 793
    :sswitch_914
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 796
    .local v5, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 802
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_92c
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 806
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_952

    const/4 v4, 0x1

    move v6, v4

    .line 808
    .local v6, _arg1:Z
    :goto_940
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 809
    .restart local v7       #_arg2:I
    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->setRotation(IZI)V

    .line 810
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 806
    .end local v6           #_arg1:Z
    .end local v7           #_arg2:I
    :cond_952
    const/4 v4, 0x0

    move v6, v4

    goto :goto_940

    .line 815
    .end local v5           #_arg0:I
    :sswitch_955
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getRotation()I

    move-result v16

    .line 817
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 823
    .end local v16           #_result:I
    :sswitch_96e
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v5

    .line 826
    .local v5, _arg0:Landroid/view/IRotationWatcher;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v16

    .line 827
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 833
    .end local v5           #_arg0:Landroid/view/IRotationWatcher;
    .end local v16           #_result:I
    :sswitch_992
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->freezeRotation()V

    .line 835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 840
    :sswitch_9a3
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    .line 842
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 847
    :sswitch_9b4
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 851
    .local v5, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 853
    .local v6, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 854
    .restart local v7       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->screenshotApplications(Landroid/os/IBinder;II)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 855
    .local v16, _result:Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    if-eqz v16, :cond_9e9

    .line 857
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 863
    :goto_9e6
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 861
    :cond_9e9
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9e6

    .line 867
    .end local v5           #_arg0:Landroid/os/IBinder;
    .end local v6           #_arg1:I
    .end local v7           #_arg2:I
    .end local v16           #_result:Landroid/graphics/Bitmap;
    :sswitch_9f1
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 870
    .local v5, _arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->statusBarVisibilityChanged(I)V

    .line 871
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 876
    .end local v5           #_arg0:I
    :sswitch_a09
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 879
    .restart local v5       #_arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setPointerSpeed(I)V

    .line 880
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 885
    .end local v5           #_arg0:I
    :sswitch_a21
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isAsusEpKeyguardSecure()Z

    move-result v16

    .line 887
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    if-eqz v16, :cond_a3c

    const/4 v4, 0x1

    :goto_a33
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 888
    :cond_a3c
    const/4 v4, 0x0

    goto :goto_a33

    .line 893
    .end local v16           #_result:Z
    :sswitch_a3e
    const-string v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a5a

    const/4 v4, 0x1

    move v5, v4

    .line 896
    .local v5, _arg0:Z
    :goto_a4e
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->popCompassCalibrationDialog(Z)V

    .line 897
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 895
    .end local v5           #_arg0:Z
    :cond_a5a
    const/4 v4, 0x0

    move v5, v4

    goto :goto_a4e

    .line 43
    nop

    :sswitch_data_a5e
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_35
        0x3 -> :sswitch_51
        0x4 -> :sswitch_6d
        0x5 -> :sswitch_a1
        0x6 -> :sswitch_c9
        0x7 -> :sswitch_fb
        0x8 -> :sswitch_114
        0x9 -> :sswitch_131
        0xa -> :sswitch_142
        0xb -> :sswitch_15f
        0xc -> :sswitch_19e
        0xd -> :sswitch_1dd
        0xe -> :sswitch_21c
        0xf -> :sswitch_24f
        0x10 -> :sswitch_267
        0x11 -> :sswitch_27f
        0x12 -> :sswitch_29e
        0x13 -> :sswitch_2bb
        0x14 -> :sswitch_2d3
        0x15 -> :sswitch_305
        0x16 -> :sswitch_322
        0x17 -> :sswitch_343
        0x18 -> :sswitch_367
        0x19 -> :sswitch_38b
        0x1a -> :sswitch_3af
        0x1b -> :sswitch_3c8
        0x1c -> :sswitch_3ea
        0x1d -> :sswitch_3fb
        0x1e -> :sswitch_45b
        0x1f -> :sswitch_473
        0x20 -> :sswitch_497
        0x21 -> :sswitch_4b4
        0x22 -> :sswitch_4d8
        0x23 -> :sswitch_4f0
        0x24 -> :sswitch_50d
        0x25 -> :sswitch_525
        0x26 -> :sswitch_53d
        0x27 -> :sswitch_584
        0x28 -> :sswitch_5ab
        0x29 -> :sswitch_5c8
        0x2a -> :sswitch_5e0
        0x2b -> :sswitch_5fc
        0x2c -> :sswitch_619
        0x2d -> :sswitch_636
        0x2e -> :sswitch_653
        0x2f -> :sswitch_66b
        0x30 -> :sswitch_68b
        0x31 -> :sswitch_6a4
        0x32 -> :sswitch_6c1
        0x33 -> :sswitch_6d9
        0x34 -> :sswitch_6f9
        0x35 -> :sswitch_71e
        0x36 -> :sswitch_73e
        0x37 -> :sswitch_763
        0x38 -> :sswitch_783
        0x39 -> :sswitch_7a3
        0x3a -> :sswitch_7c3
        0x3b -> :sswitch_7e8
        0x3c -> :sswitch_808
        0x3d -> :sswitch_828
        0x3e -> :sswitch_85b
        0x3f -> :sswitch_88a
        0x40 -> :sswitch_8bd
        0x41 -> :sswitch_8d6
        0x42 -> :sswitch_8f5
        0x43 -> :sswitch_914
        0x44 -> :sswitch_92c
        0x45 -> :sswitch_955
        0x46 -> :sswitch_96e
        0x47 -> :sswitch_992
        0x48 -> :sswitch_9a3
        0x49 -> :sswitch_9b4
        0x4a -> :sswitch_9f1
        0x4b -> :sswitch_a09
        0x4c -> :sswitch_a21
        0x4d -> :sswitch_a3e
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
