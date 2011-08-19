.class public Lcom/android/inputmethod/keyboard/LatinKeyboardView;
.super Lcom/android/inputmethod/keyboard/KeyboardView;
.source "LatinKeyboardView.java"


# static fields
.field private static DEBUG_MODE:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDisableDisambiguation:Z

.field private mDroppingEvents:Z

.field private mJumpThresholdSquare:I

.field private mLastRowY:I

.field private mLastX:I

.field private mLastY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->TAG:Ljava/lang/String;

    .line 33
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->DEBUG_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mJumpThresholdSquare:I

    .line 55
    return-void
.end method

.method private getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 86
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    instance-of v1, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    if-eqz v1, :cond_0

    .line 87
    check-cast v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    .end local v0           #keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    move-object v1, v0

    .line 89
    :goto_0
    return-object v1

    .restart local v0       #keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleSuddenJump(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "me"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->hasDistinctMultitouch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 214
    :goto_0
    return v0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    const/4 v0, 0x0

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 153
    .local v8, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v12, v0

    .line 154
    .local v12, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v13, v0

    .line 155
    .local v13, y:I
    const/4 v10, 0x0

    .line 158
    .local v10, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mDisableDisambiguation:Z

    .line 161
    :cond_2
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mDisableDisambiguation:Z

    if-eqz v0, :cond_4

    .line 163
    const/4 v0, 0x1

    if-ne v8, v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mDisableDisambiguation:Z

    .line 164
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 167
    :cond_4
    packed-switch v8, :pswitch_data_0

    .line 212
    :cond_5
    :goto_1
    iput v12, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mLastX:I

    .line 213
    iput v13, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mLastY:I

    move v0, v10

    .line 214
    goto :goto_0

    .line 170
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mDroppingEvents:Z

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mDisableDisambiguation:Z

    goto :goto_1

    .line 175
    :pswitch_1
    iget v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mLastX:I

    sub-int/2addr v0, v12

    iget v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mLastX:I

    sub-int/2addr v1, v12

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mLastY:I

    sub-int/2addr v1, v13

    iget v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mLastY:I

    sub-int/2addr v2, v13

    mul-int/2addr v1, v2

    add-int v9, v0, v1

    .line 179
    .local v9, distanceSquare:I
    iget v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mJumpThresholdSquare:I

    if-le v9, v0, :cond_8

    iget v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mLastY:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mLastRowY:I

    if-lt v0, v1, :cond_6

    iget v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mLastRowY:I

    if-ge v13, v0, :cond_8

    .line 182
    :cond_6
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mDroppingEvents:Z

    if-nez v0, :cond_7

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mDroppingEvents:Z

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mLastX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mLastY:I

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 188
    .local v11, translated:Landroid/view/MotionEvent;
    invoke-super {p0, v11}, Lcom/android/inputmethod/keyboard/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 189
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 191
    .end local v11           #translated:Landroid/view/MotionEvent;
    :cond_7
    const/4 v10, 0x1

    goto :goto_1

    .line 192
    :cond_8
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mDroppingEvents:Z

    if-eqz v0, :cond_5

    .line 194
    const/4 v10, 0x1

    goto :goto_1

    .line 198
    .end local v9           #distanceSquare:I
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mDroppingEvents:Z

    if-eqz v0, :cond_5

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x0

    int-to-float v5, v12

    int-to-float v6, v13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 204
    .restart local v11       #translated:Landroid/view/MotionEvent;
    invoke-super {p0, v11}, Lcom/android/inputmethod/keyboard/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 205
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mDroppingEvents:Z

    goto :goto_1

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private invokeOnKey(I)Z
    .locals 3
    .parameter "primaryCode"

    .prologue
    const/4 v2, -0x1

    .line 115
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getOnKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v2, v2}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCodeInput(I[III)V

    .line 118
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "label"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 124
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isAlphaKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isShiftedOrShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 130
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 252
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$GCUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/Utils$GCUtils;->reset()V

    .line 253
    const/4 v2, 0x1

    .line 254
    .local v2, tryGC:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    if-eqz v2, :cond_0

    .line 256
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    const/4 v2, 0x0

    .line 254
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$GCUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;

    move-result-object v3

    const-string v4, "LatinKeyboardView"

    invoke-virtual {v3, v4, v0}, Lcom/android/inputmethod/latin/Utils$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v2

    goto :goto_1

    .line 262
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 267
    invoke-static {}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->getInstance()Lcom/android/inputmethod/voice/VoiceIMEConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->onAttachedToWindow()V

    .line 268
    return-void
.end method

.method protected onLongPress(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z
    .locals 2
    .parameter "key"
    .parameter "tracker"

    .prologue
    .line 103
    iget v0, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 104
    .local v0, primaryCode:I
    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 105
    const/16 v1, -0x65

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invokeOnKey(I)Z

    move-result v1

    .line 110
    :goto_0
    return v1

    .line 106
    :cond_0
    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isPhoneKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const/16 v1, 0x2b

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invokeOnKey(I)Z

    move-result v1

    goto :goto_0

    .line 110
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView;->onLongPress(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "me"

    .prologue
    const/4 v5, 0x1

    .line 219
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 220
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-nez v0, :cond_0

    move v2, v5

    .line 247
    :goto_0
    return v2

    .line 223
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->handleSuddenJump(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    sget-boolean v2, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->DEBUG_MODE:Z

    if-eqz v2, :cond_1

    .line 225
    sget-object v2, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent: ignore sudden jump "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v2, v5

    .line 226
    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 231
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->keyReleased()V

    .line 234
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 235
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getLanguageChangeDirection()I

    move-result v1

    .line 236
    .local v1, languageDirection:I
    if-eqz v1, :cond_5

    .line 237
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getOnKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v2

    if-ne v1, v5, :cond_4

    const/16 v3, -0x68

    :goto_1
    const/4 v4, 0x0

    iget v5, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mLastX:I

    iget v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mLastY:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCodeInput(I[III)V

    .line 241
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 242
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->keyReleased()V

    .line 243
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 237
    :cond_4
    const/16 v3, -0x69

    goto :goto_1

    .line 247
    .end local v1           #languageDirection:I
    :cond_5
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 3
    .parameter "newKeyboard"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 72
    .local v0, oldKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->keyReleased()V

    .line 76
    :cond_0
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 78
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Keyboard;->getMinWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x7

    iput v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mJumpThresholdSquare:I

    .line 79
    iget v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mJumpThresholdSquare:I

    iget v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mJumpThresholdSquare:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mJumpThresholdSquare:I

    .line 81
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Keyboard;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mLastRowY:I

    .line 82
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 2
    .parameter "previewEnabled"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 60
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isPhoneKeyboard()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isNumberKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    :cond_0
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->setPreviewEnabled(Z)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->setPreviewEnabled(Z)V

    goto :goto_0
.end method

.method public setSpacebarTextFadeFactor(FLcom/android/inputmethod/keyboard/LatinKeyboard;)V
    .locals 1
    .parameter "fadeFactor"
    .parameter "oldKeyboard"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 97
    .local v0, currentKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_0

    if-ne v0, p2, :cond_0

    .line 98
    invoke-virtual {v0, p1, p0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setSpacebarTextFadeFactor(FLcom/android/inputmethod/keyboard/LatinKeyboardView;)V

    .line 99
    :cond_0
    return-void
.end method
