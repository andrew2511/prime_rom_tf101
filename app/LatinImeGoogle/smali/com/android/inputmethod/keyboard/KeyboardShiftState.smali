.class public Lcom/android/inputmethod/keyboard/KeyboardShiftState;
.super Ljava/lang/Object;
.source "KeyboardShiftState.java"


# instance fields
.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    return-void
.end method

.method private static toString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 123
    packed-switch p0, :pswitch_data_0

    .line 130
    const-string v0, "UKNOWN"

    :goto_0
    return-object v0

    .line 124
    :pswitch_0
    const-string v0, "NORMAL"

    goto :goto_0

    .line 125
    :pswitch_1
    const-string v0, "MANUAL_SHIFTED"

    goto :goto_0

    .line 126
    :pswitch_2
    const-string v0, "MANUAL_SHIFTED_FROM_AUTO"

    goto :goto_0

    .line 127
    :pswitch_3
    const-string v0, "AUTO_SHIFTED"

    goto :goto_0

    .line 128
    :pswitch_4
    const-string v0, "SHIFT_LOCKED"

    goto :goto_0

    .line 129
    :pswitch_5
    const-string v0, "SHIFT_LOCK_SHIFTED"

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public isAutomaticTemporaryUpperCase()Z
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManualTemporaryUpperCase()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 109
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManualTemporaryUpperCaseFromAuto()Z
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShiftLocked()Z
    .locals 2

    .prologue
    .line 101
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShiftedOrShiftLocked()Z
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutomaticTemporaryUpperCase()V
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    .line 91
    .local v0, oldState:I
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    .line 94
    return-void
.end method

.method public setShiftLocked(Z)V
    .locals 2
    .parameter "newShiftLockState"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    .line 67
    .local v0, oldState:I
    if-eqz p1, :cond_0

    .line 68
    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 73
    :pswitch_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    goto :goto_0

    .line 77
    :cond_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 80
    :pswitch_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 77
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setShifted(Z)Z
    .locals 4
    .parameter "newShiftState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    .line 36
    .local v0, oldState:I
    if-eqz p1, :cond_0

    .line 37
    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    :pswitch_0
    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    if-eq v1, v0, :cond_1

    move v1, v3

    :goto_1
    return v1

    .line 39
    :pswitch_1
    iput v3, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    goto :goto_0

    .line 42
    :pswitch_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    goto :goto_0

    .line 45
    :pswitch_3
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    goto :goto_0

    .line 49
    :cond_0
    packed-switch v0, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    .line 53
    :pswitch_5
    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    goto :goto_0

    .line 56
    :pswitch_6
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    goto :goto_0

    :cond_1
    move v1, v2

    .line 62
    goto :goto_1

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 49
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->mState:I

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
