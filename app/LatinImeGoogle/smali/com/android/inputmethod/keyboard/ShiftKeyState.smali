.class public Lcom/android/inputmethod/keyboard/ShiftKeyState;
.super Lcom/android/inputmethod/keyboard/ModifierKeyState;
.source "ShiftKeyState.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/ModifierKeyState;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public isIgnoring()Z
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lcom/android/inputmethod/keyboard/ShiftKeyState;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPressingOnShifted()Z
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/android/inputmethod/keyboard/ShiftKeyState;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOtherKeyPressed()V
    .locals 2

    .prologue
    .line 31
    iget v0, p0, Lcom/android/inputmethod/keyboard/ShiftKeyState;->mState:I

    .line 32
    .local v0, oldState:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 33
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/inputmethod/keyboard/ShiftKeyState;->mState:I

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 35
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/inputmethod/keyboard/ShiftKeyState;->mState:I

    goto :goto_0
.end method

.method public onPressOnShifted()V
    .locals 2

    .prologue
    .line 42
    iget v0, p0, Lcom/android/inputmethod/keyboard/ShiftKeyState;->mState:I

    .line 43
    .local v0, oldState:I
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/inputmethod/keyboard/ShiftKeyState;->mState:I

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/android/inputmethod/keyboard/ShiftKeyState;->mState:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/ShiftKeyState;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 63
    packed-switch p1, :pswitch_data_0

    .line 66
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/ModifierKeyState;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 64
    :pswitch_0
    const-string v0, "PRESSING_ON_SHIFTED"

    goto :goto_0

    .line 65
    :pswitch_1
    const-string v0, "IGNORING"

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
