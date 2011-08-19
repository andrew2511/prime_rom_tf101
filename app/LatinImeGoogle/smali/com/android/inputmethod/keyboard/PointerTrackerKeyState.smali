.class Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;
.super Ljava/lang/Object;
.source "PointerTrackerKeyState.java"


# instance fields
.field private mDownTime:J

.field private final mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

.field private mKeyIndex:I

.field private mKeyX:I

.field private mKeyY:I

.field private mLastX:I

.field private mLastY:I

.field private mUpTime:J


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/keyboard/KeyDetector;)V
    .locals 1
    .parameter "keyDetecor"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->mKeyIndex:I

    .line 40
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    .line 41
    return-void
.end method

.method private onMoveKeyInternal(II)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->mLastX:I

    .line 78
    iput p2, p0, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->mLastY:I

    .line 79
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getKeyIndex()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->mKeyIndex:I

    return v0
.end method

.method public getKeyX()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->mKeyX:I

    return v0
.end method

.method public getKeyY()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->mKeyY:I

    return v0
.end method

.method public getLastX()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->mLastX:I

    return v0
.end method

.method public getLastY()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->mLastY:I

    return v0
.end method

.method public getUpTime()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->mUpTime:J

    return-wide v0
.end method

.method public onDownKey(IIJ)I
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 72
    iput-wide p3, p0, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->mDownTime:J

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->onMoveKeyInternal(II)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->onMoveToNewKey(III)I

    move-result v0

    return v0
.end method

.method public onMoveKey(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->onMoveKeyInternal(II)I

    move-result v0

    return v0
.end method

.method public onMoveToNewKey(III)I
    .locals 0
    .parameter "keyIndex"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 87
    iput p1, p0, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->mKeyIndex:I

    .line 88
    iput p2, p0, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->mKeyX:I

    .line 89
    iput p3, p0, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->mKeyY:I

    .line 90
    return p1
.end method

.method public onUpKey(IIJ)I
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 94
    iput-wide p3, p0, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->mUpTime:J

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTrackerKeyState;->onMoveKeyInternal(II)I

    move-result v0

    return v0
.end method
