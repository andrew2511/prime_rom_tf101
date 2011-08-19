.class public Lcom/android/commands/monkey/MonkeyKeyEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyKeyEvent.java"


# instance fields
.field private keyEvent:Landroid/view/KeyEvent;

.field private mAction:I

.field private mDeviceId:I

.field private mDownTime:J

.field private mEventTime:J

.field private mKeyCode:I

.field private mMetaState:I

.field private mRepeatCount:I

.field private mScancode:I


# direct methods
.method public constructor <init>(II)V
    .registers 7
    .parameter "action"
    .parameter "keycode"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 27
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    .line 28
    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mMetaState:I

    .line 29
    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    .line 30
    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    .line 31
    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mScancode:I

    .line 32
    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mRepeatCount:I

    .line 33
    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    .line 34
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->keyEvent:Landroid/view/KeyEvent;

    .line 40
    iput p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    .line 41
    iput p2, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    .line 42
    return-void
.end method

.method public constructor <init>(JJIIIIII)V
    .registers 15
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "code"
    .parameter "repeat"
    .parameter "metaState"
    .parameter "device"
    .parameter "scancode"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 27
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    .line 28
    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mMetaState:I

    .line 29
    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    .line 30
    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    .line 31
    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mScancode:I

    .line 32
    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mRepeatCount:I

    .line 33
    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    .line 34
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->keyEvent:Landroid/view/KeyEvent;

    .line 54
    iput p5, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    .line 55
    iput p6, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    .line 56
    iput p8, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mMetaState:I

    .line 57
    iput p10, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mScancode:I

    .line 58
    iput p7, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mRepeatCount:I

    .line 59
    iput p9, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    .line 60
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    .line 61
    iput-wide p3, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;)V
    .registers 6
    .parameter "e"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 27
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    .line 28
    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mMetaState:I

    .line 29
    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    .line 30
    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    .line 31
    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mScancode:I

    .line 32
    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mRepeatCount:I

    .line 33
    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    .line 34
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->keyEvent:Landroid/view/KeyEvent;

    .line 46
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->keyEvent:Landroid/view/KeyEvent;

    .line 47
    return-void
.end method

.method private getEvent()Landroid/view/KeyEvent;
    .registers 12

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->keyEvent:Landroid/view/KeyEvent;

    if-nez v0, :cond_13

    .line 93
    iget v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    if-gez v0, :cond_16

    .line 94
    new-instance v0, Landroid/view/KeyEvent;

    iget v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    iget v2, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->keyEvent:Landroid/view/KeyEvent;

    .line 101
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->keyEvent:Landroid/view/KeyEvent;

    return-object v0

    .line 97
    :cond_16
    new-instance v0, Landroid/view/KeyEvent;

    iget-wide v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    iget-wide v3, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    iget v5, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    iget v6, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    iget v7, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mRepeatCount:I

    iget v8, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mMetaState:I

    iget v9, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    iget v10, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mScancode:I

    invoke-direct/range {v0 .. v10}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->keyEvent:Landroid/view/KeyEvent;

    goto :goto_13
.end method


# virtual methods
.method public getAction()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    return v0
.end method

.method public getDownTime()J
    .registers 3

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    return-wide v0
.end method

.method public getEventTime()J
    .registers 3

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    return-wide v0
.end method

.method public getKeyCode()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    return v0
.end method

.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 12
    .parameter "iwm"
    .parameter "iam"
    .parameter "verbose"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 111
    if-le p3, v6, :cond_3e

    .line 113
    iget v3, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    if-ne v3, v6, :cond_4b

    .line 114
    const-string v2, "ACTION_UP"

    .line 120
    .local v2, note:Ljava/lang/String;
    :goto_a
    :try_start_a
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":Sending Key ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    // "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    invoke-static {v5}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_3e} :catch_4e

    .line 131
    .end local v2           #note:Ljava/lang/String;
    :cond_3e
    :goto_3e
    :try_start_3e
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEvent()Landroid/view/KeyEvent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_46} :catch_7b

    move-result v3

    if-nez v3, :cond_7f

    move v3, v7

    .line 138
    :goto_4a
    return v3

    .line 116
    :cond_4b
    const-string v2, "ACTION_DOWN"

    .restart local v2       #note:Ljava/lang/String;
    goto :goto_a

    .line 123
    :catch_4e
    move-exception v3

    move-object v0, v3

    .line 124
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":Sending Key ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    // Unknown key event"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3e

    .line 134
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2           #note:Ljava/lang/String;
    :catch_7b
    move-exception v3

    move-object v1, v3

    .line 135
    .local v1, ex:Landroid/os/RemoteException;
    const/4 v3, -0x1

    goto :goto_4a

    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_7f
    move v3, v6

    .line 138
    goto :goto_4a
.end method

.method public isThrottlable()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 106
    invoke-virtual {p0}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setDownTime(J)V
    .registers 3
    .parameter "downTime"

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    .line 82
    return-void
.end method

.method public setEventTime(J)V
    .registers 3
    .parameter "eventTime"

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    .line 86
    return-void
.end method
