.class public Lcom/android/inputmethod/keyboard/ModifierKeyState;
.super Ljava/lang/Object;
.source "ModifierKeyState.java"


# instance fields
.field protected final mName:Ljava/lang/String;

.field protected mState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/keyboard/ModifierKeyState;->mState:I

    .line 33
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/ModifierKeyState;->mName:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public isMomentary()Z
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/android/inputmethod/keyboard/ModifierKeyState;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPressing()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 59
    iget v0, p0, Lcom/android/inputmethod/keyboard/ModifierKeyState;->mState:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReleasing()Z
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/inputmethod/keyboard/ModifierKeyState;->mState:I

    if-nez v0, :cond_0

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
    .line 51
    iget v0, p0, Lcom/android/inputmethod/keyboard/ModifierKeyState;->mState:I

    .line 52
    .local v0, oldState:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 53
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/inputmethod/keyboard/ModifierKeyState;->mState:I

    .line 56
    :cond_0
    return-void
.end method

.method public onPress()V
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lcom/android/inputmethod/keyboard/ModifierKeyState;->mState:I

    .line 38
    .local v0, oldState:I
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/inputmethod/keyboard/ModifierKeyState;->mState:I

    .line 41
    return-void
.end method

.method public onRelease()V
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/android/inputmethod/keyboard/ModifierKeyState;->mState:I

    .line 45
    .local v0, oldState:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/inputmethod/keyboard/ModifierKeyState;->mState:I

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/android/inputmethod/keyboard/ModifierKeyState;->mState:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/ModifierKeyState;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 76
    packed-switch p1, :pswitch_data_0

    .line 80
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 77
    :pswitch_0
    const-string v0, "RELEASING"

    goto :goto_0

    .line 78
    :pswitch_1
    const-string v0, "PRESSING"

    goto :goto_0

    .line 79
    :pswitch_2
    const-string v0, "MOMENTARY"

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
