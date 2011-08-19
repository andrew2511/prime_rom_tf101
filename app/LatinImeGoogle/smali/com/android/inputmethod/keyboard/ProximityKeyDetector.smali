.class public Lcom/android/inputmethod/keyboard/ProximityKeyDetector;
.super Lcom/android/inputmethod/keyboard/KeyDetector;
.source "ProximityKeyDetector.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDistances:[I

.field private final mIndices:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/inputmethod/keyboard/ProximityKeyDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/ProximityKeyDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 23
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyDetector;-><init>()V

    .line 30
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/ProximityKeyDetector;->mDistances:[I

    .line 31
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/ProximityKeyDetector;->mIndices:[I

    return-void
.end method

.method private getNearbyKeyCodes([I)V
    .locals 10
    .parameter "allCodes"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 73
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/ProximityKeyDetector;->getKeys()[Lcom/android/inputmethod/keyboard/Key;

    move-result-object v4

    .line 74
    .local v4, keys:[Lcom/android/inputmethod/keyboard/Key;
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/ProximityKeyDetector;->mIndices:[I

    .line 77
    .local v2, indices:[I
    aget v7, v2, v9

    if-ne v7, v8, :cond_1

    .line 78
    aput v8, p1, v9

    .line 93
    :cond_0
    return-void

    .line 82
    :cond_1
    const/4 v5, 0x0

    .line 83
    .local v5, numCodes:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_0

    array-length v7, p1

    if-ge v5, v7, :cond_0

    .line 84
    aget v1, v2, v3

    .line 85
    .local v1, index:I
    if-eq v1, v8, :cond_0

    .line 87
    aget-object v7, v4, v1

    iget v0, v7, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 89
    .local v0, code:I
    const/16 v7, 0x20

    if-ge v0, v7, :cond_2

    .line 83
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .end local v5           #numCodes:I
    .local v6, numCodes:I
    aput v0, p1, v5

    move v5, v6

    .end local v6           #numCodes:I
    .restart local v5       #numCodes:I
    goto :goto_1
.end method

.method private initializeNearbyKeys()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/ProximityKeyDetector;->mDistances:[I

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 40
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/ProximityKeyDetector;->mIndices:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 41
    return-void
.end method

.method private sortNearbyKeys(IIZ)I
    .locals 6
    .parameter "keyIndex"
    .parameter "distance"
    .parameter "isOnKey"

    .prologue
    .line 52
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/ProximityKeyDetector;->mDistances:[I

    .line 53
    .local v1, distances:[I
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/ProximityKeyDetector;->mIndices:[I

    .line 54
    .local v2, indices:[I
    const/4 v3, 0x0

    .local v3, insertPos:I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_3

    .line 55
    aget v0, v1, v3

    .line 56
    .local v0, comparingDistance:I
    if-lt p2, v0, :cond_0

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_2

    .line 57
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 58
    .local v4, nextPos:I
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 59
    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-static {v1, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-static {v2, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    :cond_1
    aput p2, v1, v3

    .line 65
    aput p1, v2, v3

    move v5, v3

    .line 69
    .end local v0           #comparingDistance:I
    .end local v4           #nextPos:I
    :goto_1
    return v5

    .line 54
    .restart local v0       #comparingDistance:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .end local v0           #comparingDistance:I
    :cond_3
    array-length v5, v1

    goto :goto_1
.end method


# virtual methods
.method public getKeyIndexAndNearbyCodes(II[I)I
    .locals 15
    .parameter "x"
    .parameter "y"
    .parameter "allCodes"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/ProximityKeyDetector;->getKeys()[Lcom/android/inputmethod/keyboard/Key;

    move-result-object v9

    .line 98
    .local v9, keys:[Lcom/android/inputmethod/keyboard/Key;
    invoke-virtual/range {p0 .. p1}, Lcom/android/inputmethod/keyboard/ProximityKeyDetector;->getTouchX(I)I

    move-result v12

    .line 99
    .local v12, touchX:I
    move-object v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/ProximityKeyDetector;->getTouchY(I)I

    move-result v13

    .line 101
    .local v13, touchY:I
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/ProximityKeyDetector;->initializeNearbyKeys()V

    .line 102
    const/4 v11, -0x1

    .line 103
    .local v11, primaryIndex:I
    iget-object v14, p0, Lcom/android/inputmethod/keyboard/ProximityKeyDetector;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v14, v12, v13}, Lcom/android/inputmethod/keyboard/Keyboard;->getNearestKeys(II)[I

    move-result-object v2

    .local v2, arr$:[I
    array-length v10, v2

    .local v10, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v10, :cond_2

    aget v5, v2, v4

    .line 104
    .local v5, index:I
    aget-object v8, v9, v5

    .line 105
    .local v8, key:Lcom/android/inputmethod/keyboard/Key;
    invoke-virtual {v8, v12, v13}, Lcom/android/inputmethod/keyboard/Key;->isInside(II)Z

    move-result v7

    .line 106
    .local v7, isInside:Z
    invoke-virtual {v8, v12, v13}, Lcom/android/inputmethod/keyboard/Key;->squaredDistanceToEdge(II)I

    move-result v3

    .line 107
    .local v3, distance:I
    if-nez v7, :cond_0

    iget-boolean v14, p0, Lcom/android/inputmethod/keyboard/ProximityKeyDetector;->mProximityCorrectOn:Z

    if-eqz v14, :cond_1

    iget v14, p0, Lcom/android/inputmethod/keyboard/ProximityKeyDetector;->mProximityThresholdSquare:I

    if-ge v3, v14, :cond_1

    .line 108
    :cond_0
    invoke-direct {p0, v5, v3, v7}, Lcom/android/inputmethod/keyboard/ProximityKeyDetector;->sortNearbyKeys(IIZ)I

    move-result v6

    .line 109
    .local v6, insertedPosition:I
    if-nez v6, :cond_1

    if-eqz v7, :cond_1

    .line 110
    move v11, v5

    .line 103
    .end local v6           #insertedPosition:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
    .end local v3           #distance:I
    .end local v5           #index:I
    .end local v7           #isInside:Z
    .end local v8           #key:Lcom/android/inputmethod/keyboard/Key;
    :cond_2
    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    array-length v0, v0

    move v14, v0

    if-lez v14, :cond_3

    .line 115
    move-object v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/ProximityKeyDetector;->getNearbyKeyCodes([I)V

    .line 124
    :cond_3
    return v11
.end method

.method protected getMaxNearbyKeys()I
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0xc

    return v0
.end method
