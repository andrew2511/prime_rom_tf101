.class public Lcom/android/inputmethod/keyboard/MiniKeyboardKeyDetector;
.super Lcom/android/inputmethod/keyboard/KeyDetector;
.source "MiniKeyboardKeyDetector.java"


# instance fields
.field private final mSlideAllowanceSquare:I

.field private final mSlideAllowanceSquareTop:I


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .parameter "slideAllowance"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyDetector;-><init>()V

    .line 27
    mul-float v0, p1, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardKeyDetector;->mSlideAllowanceSquare:I

    .line 29
    iget v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardKeyDetector;->mSlideAllowanceSquare:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardKeyDetector;->mSlideAllowanceSquareTop:I

    .line 30
    return-void
.end method


# virtual methods
.method public getKeyIndexAndNearbyCodes(II[I)I
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "allCodes"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardKeyDetector;->getKeys()[Lcom/android/inputmethod/keyboard/Key;

    move-result-object v3

    .line 40
    .local v3, keys:[Lcom/android/inputmethod/keyboard/Key;
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/MiniKeyboardKeyDetector;->getTouchX(I)I

    move-result v6

    .line 41
    .local v6, touchX:I
    invoke-virtual {p0, p2}, Lcom/android/inputmethod/keyboard/MiniKeyboardKeyDetector;->getTouchY(I)I

    move-result v7

    .line 43
    .local v7, touchY:I
    const/4 v5, -0x1

    .line 44
    .local v5, nearestIndex:I
    if-gez p2, :cond_1

    iget v8, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardKeyDetector;->mSlideAllowanceSquareTop:I

    move v4, v8

    .line 45
    .local v4, nearestDist:I
    :goto_0
    array-length v2, v3

    .line 46
    .local v2, keyCount:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 47
    aget-object v8, v3, v1

    invoke-virtual {v8, v6, v7}, Lcom/android/inputmethod/keyboard/Key;->squaredDistanceToEdge(II)I

    move-result v0

    .line 48
    .local v0, dist:I
    if-ge v0, v4, :cond_0

    .line 49
    move v5, v1

    .line 50
    move v4, v0

    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 44
    .end local v0           #dist:I
    .end local v1           #index:I
    .end local v2           #keyCount:I
    .end local v4           #nearestDist:I
    :cond_1
    iget v8, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardKeyDetector;->mSlideAllowanceSquare:I

    move v4, v8

    goto :goto_0

    .line 54
    .restart local v1       #index:I
    .restart local v2       #keyCount:I
    .restart local v4       #nearestDist:I
    :cond_2
    if-eqz p3, :cond_3

    const/4 v8, -0x1

    if-eq v5, v8, :cond_3

    .line 55
    const/4 v8, 0x0

    aget-object v9, v3, v5

    iget v9, v9, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    aput v9, p3, v8

    .line 56
    :cond_3
    return v5
.end method

.method protected getMaxNearbyKeys()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method
