.class public Lcom/android/inputmethod/keyboard/PointerTracker;
.super Ljava/lang/Object;
.source "PointerTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/PointerTracker$UIProxy;
    }
.end annotation


# static fields
.field private static DEBUG_MODE:Z

.field private static final EMPTY_LISTENER:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mConfigSlidingKeyInputEnabled:Z

.field private final mDelayBeforeKeyRepeatStart:I

.field private final mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

.field private final mHasDistinctMultitouch:Z

.field private mIsAccessibilityEnabled:Z

.field private mIsAllowedSlidingKeyInput:Z

.field private mIsInSlidingKeyInput:Z

.field private mIsRepeatableKey:Z

.field private mKeyAlreadyProcessed:Z

.field private final mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

.field private mKeyHysteresisDistanceSquared:I

.field private mKeyQuarterWidthSquared:I

.field private final mKeyState:Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;

.field private mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

.field private mKeyboardLayoutHasBeenChanged:Z

.field private final mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

.field private mKeys:[Lcom/android/inputmethod/keyboard/Key;

.field private mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field private final mLongPressKeyTimeout:I

.field private final mLongPressShiftKeyTimeout:I

.field public final mPointerId:I

.field private mPreviousKey:I

.field private final mProxy:Lcom/android/inputmethod/keyboard/PointerTracker$UIProxy;

.field private final mTouchNoiseThresholdDistanceSquared:I

.field private final mTouchNoiseThresholdMillis:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/inputmethod/keyboard/PointerTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->TAG:Ljava/lang/String;

    .line 35
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/keyboard/PointerTracker;->DEBUG_MODE:Z

    .line 94
    new-instance v0, Lcom/android/inputmethod/keyboard/PointerTracker$1;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/PointerTracker$1;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->EMPTY_LISTENER:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-void
.end method

.method public constructor <init>(ILcom/android/inputmethod/keyboard/KeyboardView$UIHandler;Lcom/android/inputmethod/keyboard/KeyDetector;Lcom/android/inputmethod/keyboard/PointerTracker$UIProxy;Landroid/content/res/Resources;)V
    .locals 3
    .parameter "id"
    .parameter "handler"
    .parameter "keyDetector"
    .parameter "proxy"
    .parameter "res"

    .prologue
    const/4 v2, -0x1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v1, Lcom/android/inputmethod/keyboard/PointerTracker;->EMPTY_LISTENER:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 67
    iput v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyHysteresisDistanceSquared:I

    .line 91
    iput v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mPreviousKey:I

    .line 111
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 112
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 113
    :cond_1
    iput p1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    .line 114
    iput-object p4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mProxy:Lcom/android/inputmethod/keyboard/PointerTracker$UIProxy;

    .line 115
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    .line 116
    iput-object p3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    .line 117
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 118
    new-instance v1, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;

    invoke-direct {v1, p3}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;-><init>(Lcom/android/inputmethod/keyboard/KeyDetector;)V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyState:Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;

    .line 119
    invoke-interface {p4}, Lcom/android/inputmethod/keyboard/PointerTracker$UIProxy;->isAccessibilityEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsAccessibilityEnabled:Z

    .line 120
    invoke-interface {p4}, Lcom/android/inputmethod/keyboard/PointerTracker$UIProxy;->hasDistinctMultitouch()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mHasDistinctMultitouch:Z

    .line 121
    const v1, 0x7f08000c

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mConfigSlidingKeyInputEnabled:Z

    .line 122
    const v1, 0x7f0a0007

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDelayBeforeKeyRepeatStart:I

    .line 123
    const v1, 0x7f0a000b

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLongPressKeyTimeout:I

    .line 124
    const v1, 0x7f0a000c

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLongPressShiftKeyTimeout:I

    .line 125
    const v1, 0x7f0a000d

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTouchNoiseThresholdMillis:I

    .line 126
    const/high16 v1, 0x7f0b

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 128
    .local v0, touchNoiseThresholdDistance:F
    mul-float v1, v0, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTouchNoiseThresholdDistanceSquared:I

    .line 130
    return-void
.end method

.method private callListenerOnCancelInput()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCancelInput()V

    .line 183
    return-void
.end method

.method private callListenerOnCodeInput(Lcom/android/inputmethod/keyboard/Key;I[III)V
    .locals 1
    .parameter "key"
    .parameter "primaryCode"
    .parameter "keyCodes"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 159
    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/Key;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCodeInput(I[III)V

    .line 161
    :cond_0
    return-void
.end method

.method private callListenerOnPressAndCheckKeyboardLayoutChange(Lcom/android/inputmethod/keyboard/Key;Z)Z
    .locals 4
    .parameter "key"
    .parameter "withSliding"

    .prologue
    const/4 v3, 0x0

    .line 144
    iget-boolean v1, p1, Lcom/android/inputmethod/keyboard/Key;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    iget v2, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-interface {v1, v2, p2}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onPress(IZ)V

    .line 146
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 147
    .local v0, keyboardLayoutHasBeenChanged:Z
    iput-boolean v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    move v1, v0

    .line 150
    .end local v0           #keyboardLayoutHasBeenChanged:Z
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private callListenerOnRelease(Lcom/android/inputmethod/keyboard/Key;IZ)V
    .locals 1
    .parameter "key"
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 175
    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/Key;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v0, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onRelease(IZ)V

    .line 177
    :cond_0
    return-void
.end method

.method private callListenerOnTextInput(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 166
    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/Key;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    iget-object v1, p1, Lcom/android/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onTextInput(Ljava/lang/CharSequence;)V

    .line 168
    :cond_0
    return-void
.end method

.method private detectAndSendKey(III)V
    .locals 7
    .parameter "index"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 564
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v1

    .line 565
    .local v1, key:Lcom/android/inputmethod/keyboard/Key;
    if-nez v1, :cond_0

    .line 566
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnCancelInput()V

    .line 595
    :goto_0
    return-void

    .line 569
    :cond_0
    iget-object v0, v1, Lcom/android/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 570
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnTextInput(Lcom/android/inputmethod/keyboard/Key;)V

    .line 571
    iget v0, v1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-direct {p0, v1, v0, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/android/inputmethod/keyboard/Key;IZ)V

    goto :goto_0

    .line 573
    :cond_1
    iget v2, v1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 574
    .local v2, code:I
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyDetector;->newCodeArray()[I

    move-result-object v3

    .line 575
    .local v3, codes:[I
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v0, p2, p3, v3}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    .line 579
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Keyboard;->isManualTemporaryUpperCase()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v1, Lcom/android/inputmethod/keyboard/Key;->mManualTemporaryUpperCaseCode:I

    if-eqz v0, :cond_2

    .line 581
    iget v2, v1, Lcom/android/inputmethod/keyboard/Key;->mManualTemporaryUpperCaseCode:I

    .line 582
    aput v2, v3, v6

    .line 588
    :cond_2
    array-length v0, v3

    const/4 v4, 0x2

    if-lt v0, v4, :cond_3

    aget v0, v3, v6

    if-eq v0, v2, :cond_3

    aget v0, v3, v5

    if-ne v0, v2, :cond_3

    .line 589
    aget v0, v3, v6

    aput v0, v3, v5

    .line 590
    aput v2, v3, v6

    :cond_3
    move-object v0, p0

    move v4, p2

    move v5, p3

    .line 592
    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnCodeInput(Lcom/android/inputmethod/keyboard/Key;I[III)V

    .line 593
    invoke-direct {p0, v1, v2, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/android/inputmethod/keyboard/Key;IZ)V

    goto :goto_0
.end method

.method private isMinorMoveBounce(III)Z
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "newKey"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 516
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyHysteresisDistanceSquared:I

    if-gez v1, :cond_1

    .line 517
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "keyboard and/or hysteresis not set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 518
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyState:Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->getKeyIndex()I

    move-result v0

    .line 519
    .local v0, curKey:I
    if-ne p3, v0, :cond_2

    move v1, v4

    .line 524
    :goto_0
    return v1

    .line 521
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 522
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/android/inputmethod/keyboard/Key;->squaredDistanceToEdge(II)I

    move-result v1

    iget v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyHysteresisDistanceSquared:I

    if-ge v1, v2, :cond_3

    move v1, v4

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v3

    .line 524
    goto :goto_0
.end method

.method private static isModifierCode(I)Z
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 210
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, -0x2

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isModifierInternal(I)Z
    .locals 2
    .parameter "keyIndex"

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 216
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierCode(I)Z

    move-result v1

    goto :goto_0
.end method

.method private isOnModifierKey(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierInternal(I)Z

    move-result v0

    return v0
.end method

.method private isValidKeyIndex(I)Z
    .locals 1
    .parameter "keyIndex"

    .prologue
    .line 202
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCancelEventInternal()V
    .locals 3

    .prologue
    .line 487
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->cancelKeyTimers()V

    .line 488
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->cancelPopupPreview()V

    .line 489
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->showKeyPreviewAndUpdateKeyGraphics(I)V

    .line 490
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 491
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyState:Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->getKeyIndex()I

    move-result v0

    .line 492
    .local v0, keyIndex:I
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mProxy:Lcom/android/inputmethod/keyboard/PointerTracker$UIProxy;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/android/inputmethod/keyboard/PointerTracker$UIProxy;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 494
    :cond_0
    return-void
.end method

.method private onDownEventInternal(IIJ)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 322
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyState:Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->onDownKey(IIJ)I

    move-result v0

    .line 325
    .local v0, keyIndex:I
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mConfigSlidingKeyInputEnabled:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierInternal(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    instance-of v1, v1, Lcom/android/inputmethod/keyboard/MiniKeyboardKeyDetector;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsAccessibilityEnabled:Z

    if-eqz v1, :cond_4

    :cond_0
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsAllowedSlidingKeyInput:Z

    .line 328
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 329
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 330
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsRepeatableKey:Z

    .line 331
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 332
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnPressAndCheckKeyboardLayoutChange(Lcom/android/inputmethod/keyboard/Key;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyState:Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->onDownKey(IIJ)I

    move-result v0

    .line 339
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 342
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/inputmethod/keyboard/Key;->mRepeatable:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsAccessibilityEnabled:Z

    if-nez v1, :cond_2

    .line 343
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->repeatKey(I)V

    .line 344
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    iget v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDelayBeforeKeyRepeatStart:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->startKeyRepeatTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 345
    iput-boolean v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsRepeatableKey:Z

    .line 347
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->startLongPressTimer(I)V

    .line 349
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->showKeyPreviewAndUpdateKeyGraphics(I)V

    .line 350
    return-void

    :cond_4
    move v1, v2

    .line 325
    goto :goto_0
.end method

.method private onUpEventInternal(IIJ)V
    .locals 6
    .parameter "pointX"
    .parameter "pointY"
    .parameter "eventTime"

    .prologue
    .line 452
    move v2, p1

    .line 453
    .local v2, x:I
    move v3, p2

    .line 454
    .local v3, y:I
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->cancelKeyTimers()V

    .line 455
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->cancelPopupPreview()V

    .line 456
    const/4 v4, -0x1

    invoke-direct {p0, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->showKeyPreviewAndUpdateKeyGraphics(I)V

    .line 457
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 458
    iget-boolean v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v4, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyState:Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;

    .line 461
    .local v1, keyState:Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;
    invoke-virtual {v1, v2, v3, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->onUpKey(IIJ)I

    move-result v0

    .line 462
    .local v0, keyIndex:I
    invoke-direct {p0, v2, v3, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isMinorMoveBounce(III)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 464
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->getKeyIndex()I

    move-result v0

    .line 465
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->getKeyX()I

    move-result v2

    .line 466
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->getKeyY()I

    move-result v3

    .line 468
    :cond_2
    iget-boolean v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsRepeatableKey:Z

    if-nez v4, :cond_3

    .line 469
    invoke-direct {p0, v0, v2, v3}, Lcom/android/inputmethod/keyboard/PointerTracker;->detectAndSendKey(III)V

    .line 472
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 473
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mProxy:Lcom/android/inputmethod/keyboard/PointerTracker$UIProxy;

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    aget-object v5, v5, v0

    invoke-interface {v4, v5}, Lcom/android/inputmethod/keyboard/PointerTracker$UIProxy;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    goto :goto_0
.end method

.method private showKeyPreviewAndUpdateKeyGraphics(I)V
    .locals 2
    .parameter "keyIndex"

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->updateKeyGraphics(I)V

    .line 534
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mHasDistinctMultitouch:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifier()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsAccessibilityEnabled:Z

    if-nez v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mProxy:Lcom/android/inputmethod/keyboard/PointerTracker$UIProxy;

    const/4 v1, -0x1

    invoke-interface {v0, v1, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$UIProxy;->showPreview(ILcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 539
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mProxy:Lcom/android/inputmethod/keyboard/PointerTracker$UIProxy;

    invoke-interface {v0, p1, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$UIProxy;->showPreview(ILcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_0
.end method

.method private startLongPressTimer(I)V
    .locals 4
    .parameter "keyIndex"

    .prologue
    .line 544
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsAccessibilityEnabled:Z

    if-eqz v1, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 548
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    iget v1, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 549
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    iget v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLongPressShiftKeyTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3, p1, p0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->startLongPressShiftTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_0

    .line 550
    :cond_2
    iget v1, v0, Lcom/android/inputmethod/keyboard/Key;->mManualTemporaryUpperCaseCode:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/Keyboard;->isManualTemporaryUpperCase()Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    :cond_3
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isInMomentaryAutoModeSwitchState()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 557
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    iget v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLongPressKeyTimeout:I

    mul-int/lit8 v2, v2, 0x3

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3, p1, p0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->startLongPressTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_0

    .line 559
    :cond_4
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    iget v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLongPressKeyTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3, p1, p0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->startLongPressTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_0
.end method

.method private updateKeyGraphics(I)V
    .locals 4
    .parameter "keyIndex"

    .prologue
    .line 242
    iget v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mPreviousKey:I

    .line 243
    .local v1, oldKeyIndex:I
    iput p1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mPreviousKey:I

    .line 244
    if-eq p1, v1, :cond_1

    .line 245
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    const/4 v2, 0x1

    move v0, v2

    .line 248
    .local v0, inside:Z
    :goto_0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/keyboard/Key;->onReleased(Z)V

    .line 249
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mProxy:Lcom/android/inputmethod/keyboard/PointerTracker$UIProxy;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lcom/android/inputmethod/keyboard/PointerTracker$UIProxy;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 251
    .end local v0           #inside:Z
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/Key;->onPressed()V

    .line 253
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mProxy:Lcom/android/inputmethod/keyboard/PointerTracker$UIProxy;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    aget-object v3, v3, p1

    invoke-interface {v2, v3}, Lcom/android/inputmethod/keyboard/PointerTracker$UIProxy;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 256
    :cond_1
    return-void

    .line 247
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getKey(I)Lcom/android/inputmethod/keyboard/Key;
    .locals 1
    .parameter "keyIndex"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastX()I
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyState:Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->getLastX()I

    move-result v0

    return v0
.end method

.method public getLastY()I
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyState:Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->getLastY()I

    move-result v0

    return v0
.end method

.method public getPreviewText(Lcom/android/inputmethod/keyboard/Key;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "key"

    .prologue
    .line 598
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isInSlidingKeyInput()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    return v0
.end method

.method public isModifier()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyState:Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->getKeyIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierInternal(I)Z

    move-result v0

    return v0
.end method

.method public isOnShiftKey(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 229
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSpaceKey(I)Z
    .locals 3
    .parameter "keyIndex"

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 234
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCancelEvent(IIJLcom/android/inputmethod/keyboard/PointerTrackerQueue;)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"
    .parameter "queue"

    .prologue
    .line 481
    if-eqz p5, :cond_0

    .line 482
    invoke-virtual {p5, p0}, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;->remove(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 483
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->onCancelEventInternal()V

    .line 484
    return-void
.end method

.method public onDownEvent(IIJLcom/android/inputmethod/keyboard/PointerTrackerQueue;)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"
    .parameter "queue"

    .prologue
    .line 296
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyState:Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;

    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->getUpTime()J

    move-result-wide v5

    sub-long v0, p3, v5

    .line 297
    .local v0, deltaT:J
    iget v5, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTouchNoiseThresholdMillis:I

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_1

    .line 298
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyState:Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;

    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->getLastX()I

    move-result v5

    sub-int v3, p1, v5

    .line 299
    .local v3, dx:I
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyState:Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;

    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->getLastY()I

    move-result v5

    sub-int v4, p2, v5

    .line 300
    .local v4, dy:I
    mul-int v5, v3, v3

    mul-int v6, v4, v4

    add-int v2, v5, v6

    .line 301
    .local v2, distanceSquared:I
    iget v5, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTouchNoiseThresholdDistanceSquared:I

    if-ge v2, v5, :cond_1

    .line 302
    sget-boolean v5, Lcom/android/inputmethod/keyboard/PointerTracker;->DEBUG_MODE:Z

    if-eqz v5, :cond_0

    .line 303
    sget-object v5, Lcom/android/inputmethod/keyboard/PointerTracker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDownEvent: ignore potential noise: time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " distance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->setAlreadyProcessed()V

    .line 319
    .end local v2           #distanceSquared:I
    .end local v3           #dx:I
    .end local v4           #dy:I
    :goto_0
    return-void

    .line 310
    :cond_1
    if-eqz p5, :cond_3

    .line 311
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->isOnModifierKey(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 314
    invoke-virtual {p5, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;->releaseAllPointers(J)V

    .line 316
    :cond_2
    invoke-virtual {p5, p0}, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;->add(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 318
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEventInternal(IIJ)V

    goto :goto_0
.end method

.method public onMoveEvent(IIJLcom/android/inputmethod/keyboard/PointerTrackerQueue;)V
    .locals 18
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"
    .parameter "queue"

    .prologue
    .line 356
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    move v13, v0

    if-eqz v13, :cond_0

    .line 427
    :goto_0
    return-void

    .line 358
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyState:Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;

    move-object v8, v0

    .line 360
    .local v8, keyState:Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;
    invoke-virtual {v8}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->getLastX()I

    move-result v10

    .line 361
    .local v10, lastX:I
    invoke-virtual {v8}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->getLastY()I

    move-result v11

    .line 362
    .local v11, lastY:I
    move-object v0, v8

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->onMoveKey(II)I

    move-result v7

    .line 363
    .local v7, keyIndex:I
    invoke-virtual {v8}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->getKeyIndex()I

    move-result v13

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v12

    .line 364
    .local v12, oldKey:Lcom/android/inputmethod/keyboard/Key;
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 365
    if-nez v12, :cond_3

    .line 371
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnPressAndCheckKeyboardLayoutChange(Lcom/android/inputmethod/keyboard/Key;Z)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 372
    move-object v0, v8

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->onMoveKey(II)I

    move-result v7

    .line 373
    :cond_1
    move-object v0, v8

    move v1, v7

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->onMoveToNewKey(III)I

    .line 374
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->startLongPressTimer(I)V

    .line 426
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyState:Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->getKeyIndex()I

    move-result v13

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->showKeyPreviewAndUpdateKeyGraphics(I)V

    goto :goto_0

    .line 375
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/inputmethod/keyboard/PointerTracker;->isMinorMoveBounce(III)Z

    move-result v13

    if-nez v13, :cond_2

    .line 379
    const/4 v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 380
    iget v13, v12, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/android/inputmethod/keyboard/Key;IZ)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->cancelLongPressTimers()V

    .line 382
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsAllowedSlidingKeyInput:Z

    move v13, v0

    if-eqz v13, :cond_5

    .line 386
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnPressAndCheckKeyboardLayoutChange(Lcom/android/inputmethod/keyboard/Key;Z)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 387
    move-object v0, v8

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->onMoveKey(II)I

    move-result v7

    .line 388
    :cond_4
    move-object v0, v8

    move v1, v7

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->onMoveToNewKey(III)I

    .line 389
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->startLongPressTimer(I)V

    goto :goto_1

    .line 394
    :cond_5
    sub-int v5, p1, v10

    .line 395
    .local v5, dx:I
    sub-int v6, p2, v11

    .line 396
    .local v6, dy:I
    mul-int v13, v5, v5

    mul-int v14, v6, v6

    add-int v9, v13, v14

    .line 397
    .local v9, lastMoveSquared:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyQuarterWidthSquared:I

    move v13, v0

    if-lt v9, v13, :cond_7

    .line 398
    sget-boolean v13, Lcom/android/inputmethod/keyboard/PointerTracker;->DEBUG_MODE:Z

    if-eqz v13, :cond_6

    .line 399
    sget-object v13, Lcom/android/inputmethod/keyboard/PointerTracker;->TAG:Ljava/lang/String;

    const-string v14, "onMoveEvent: sudden move is translated to up[%d,%d]/down[%d,%d] events"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_6
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move-wide/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEventInternal(IIJ)V

    .line 402
    invoke-direct/range {p0 .. p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEventInternal(IIJ)V

    goto/16 :goto_0

    .line 404
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->setAlreadyProcessed()V

    .line 405
    const/4 v13, -0x1

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->showKeyPreviewAndUpdateKeyGraphics(I)V

    goto/16 :goto_0

    .line 411
    .end local v5           #dx:I
    .end local v6           #dy:I
    .end local v9           #lastMoveSquared:I
    :cond_8
    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/inputmethod/keyboard/PointerTracker;->isMinorMoveBounce(III)Z

    move-result v13

    if-nez v13, :cond_2

    .line 414
    const/4 v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 415
    iget v13, v12, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/android/inputmethod/keyboard/Key;IZ)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mHandler:Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->cancelLongPressTimers()V

    .line 417
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsAllowedSlidingKeyInput:Z

    move v13, v0

    if-eqz v13, :cond_9

    .line 418
    move-object v0, v8

    move v1, v7

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->onMoveToNewKey(III)I

    goto/16 :goto_1

    .line 420
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->setAlreadyProcessed()V

    .line 421
    const/4 v13, -0x1

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->showKeyPreviewAndUpdateKeyGraphics(I)V

    goto/16 :goto_0
.end method

.method public onTouchEvent(IIIJLcom/android/inputmethod/keyboard/PointerTrackerQueue;)V
    .locals 6
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"
    .parameter "queue"

    .prologue
    .line 272
    packed-switch p1, :pswitch_data_0

    .line 288
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    .line 274
    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveEvent(IIJLcom/android/inputmethod/keyboard/PointerTrackerQueue;)V

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    .line 278
    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEvent(IIJLcom/android/inputmethod/keyboard/PointerTrackerQueue;)V

    goto :goto_0

    :pswitch_3
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    .line 282
    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEvent(IIJLcom/android/inputmethod/keyboard/PointerTrackerQueue;)V

    goto :goto_0

    :pswitch_4
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    .line 285
    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/PointerTracker;->onCancelEvent(IIJLcom/android/inputmethod/keyboard/PointerTrackerQueue;)V

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onUpEvent(IIJLcom/android/inputmethod/keyboard/PointerTrackerQueue;)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"
    .parameter "queue"

    .prologue
    .line 434
    if-eqz p5, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifier()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {p5, p0, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;->releaseAllPointersExcept(Lcom/android/inputmethod/keyboard/PointerTracker;J)V

    .line 442
    :goto_0
    invoke-virtual {p5, p0}, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;->remove(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 444
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEventInternal(IIJ)V

    .line 445
    return-void

    .line 440
    :cond_1
    invoke-virtual {p5, p0, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTrackerQueue;->releaseAllPointersOlderThan(Lcom/android/inputmethod/keyboard/PointerTracker;J)V

    goto :goto_0
.end method

.method public onUpEventForRelease(IIJ)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 448
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEventInternal(IIJ)V

    .line 449
    return-void
.end method

.method public releaseKey()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->updateKeyGraphics(I)V

    .line 239
    return-void
.end method

.method public repeatKey(I)V
    .locals 3
    .parameter "keyIndex"

    .prologue
    .line 497
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 498
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v0, :cond_0

    .line 499
    iget v1, v0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key;->mY:I

    invoke-direct {p0, p1, v1, v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->detectAndSendKey(III)V

    .line 501
    :cond_0
    return-void
.end method

.method public setAccessibilityEnabled(Z)V
    .locals 0
    .parameter "accessibilityEnabled"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsAccessibilityEnabled:Z

    .line 138
    return-void
.end method

.method public setAlreadyProcessed()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 260
    return-void
.end method

.method public setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;[Lcom/android/inputmethod/keyboard/Key;F)V
    .locals 2
    .parameter "keyboard"
    .parameter "keys"
    .parameter "keyHysteresisDistance"

    .prologue
    .line 186
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    .line 187
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 188
    :cond_1
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    .line 189
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    .line 190
    mul-float v1, p3, p3

    float-to-int v1, v1

    iput v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyHysteresisDistanceSquared:I

    .line 191
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Keyboard;->getKeyWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x4

    .line 192
    .local v0, keyQuarterWidth:I
    mul-int v1, v0, v0

    iput v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyQuarterWidthSquared:I

    .line 194
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 195
    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 134
    return-void
.end method
