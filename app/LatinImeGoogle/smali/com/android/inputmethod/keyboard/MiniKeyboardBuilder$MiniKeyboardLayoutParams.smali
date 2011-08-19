.class Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;
.super Ljava/lang/Object;
.source "MiniKeyboardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MiniKeyboardLayoutParams"
.end annotation


# instance fields
.field public final mKeyWidth:I

.field public final mLeftKeys:I

.field public final mNumColumns:I

.field public final mNumRows:I

.field public final mRightKeys:I

.field public final mRowHeight:I

.field final mTopRowAdjustment:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 14
    .parameter "numKeys"
    .parameter "maxColumns"
    .parameter "keyWidth"
    .parameter "rowHeight"
    .parameter "coordXInParent"
    .parameter "parentKeyboardWidth"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    div-int v11, p6, p3

    move v0, v11

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    .line 56
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Keyboard is too small to hold mini keyboard: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 58
    :cond_0
    move/from16 v0, p3

    move-object v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mKeyWidth:I

    .line 59
    move/from16 v0, p4

    move-object v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mRowHeight:I

    .line 61
    add-int v11, p1, p2

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    div-int v8, v11, p2

    .line 62
    .local v8, numRows:I
    iput v8, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mNumRows:I

    .line 63
    invoke-direct/range {p0 .. p2}, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->getOptimizedColumns(II)I

    move-result v5

    .line 64
    .local v5, numColumns:I
    iput v5, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mNumColumns:I

    .line 66
    const/4 v11, 0x1

    sub-int v11, v5, v11

    div-int/lit8 v6, v11, 0x2

    .line 67
    .local v6, numLeftKeys:I
    sub-int v7, v5, v6

    .line 68
    .local v7, numRightKeys:I
    div-int v3, p5, p3

    .line 69
    .local v3, maxLeftKeys:I
    const/4 v11, 0x1

    sub-int v12, p6, p5

    div-int v12, v12, p3

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 71
    .local v4, maxRightKeys:I
    if-le v6, v3, :cond_5

    .line 72
    move v2, v3

    .line 73
    .local v2, leftKeys:I
    sub-int v10, v5, v3

    .line 83
    .local v10, rightKeys:I
    :goto_0
    mul-int v11, v2, p3

    move v0, v11

    move/from16 v1, p5

    if-lt v0, v1, :cond_1

    if-lez v2, :cond_1

    .line 84
    add-int/lit8 v2, v2, -0x1

    .line 85
    add-int/lit8 v10, v10, 0x1

    .line 89
    :cond_1
    mul-int v11, v10, p3

    add-int v11, v11, p5

    move v0, v11

    move/from16 v1, p6

    if-lt v0, v1, :cond_2

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    add-int/lit8 v10, v10, -0x1

    .line 93
    :cond_2
    iput v2, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mLeftKeys:I

    .line 94
    iput v10, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mRightKeys:I

    .line 97
    if-eqz v2, :cond_3

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    :cond_3
    const/4 v11, 0x1

    move v9, v11

    .line 98
    .local v9, onEdge:Z
    :goto_1
    const/4 v11, 0x2

    if-lt v8, v11, :cond_4

    if-nez v9, :cond_4

    invoke-static {p1, v5}, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->getTopRowEmptySlots(II)I

    move-result v11

    rem-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_8

    .line 99
    :cond_4
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mTopRowAdjustment:I

    .line 105
    :goto_2
    return-void

    .line 74
    .end local v2           #leftKeys:I
    .end local v9           #onEdge:Z
    .end local v10           #rightKeys:I
    :cond_5
    if-le v7, v4, :cond_6

    .line 75
    sub-int v2, v5, v4

    .line 76
    .restart local v2       #leftKeys:I
    move v10, v4

    .restart local v10       #rightKeys:I
    goto :goto_0

    .line 78
    .end local v2           #leftKeys:I
    .end local v10           #rightKeys:I
    :cond_6
    move v2, v6

    .line 79
    .restart local v2       #leftKeys:I
    move v10, v7

    .restart local v10       #rightKeys:I
    goto :goto_0

    .line 97
    :cond_7
    const/4 v11, 0x0

    move v9, v11

    goto :goto_1

    .line 100
    .restart local v9       #onEdge:Z
    :cond_8
    iget v11, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mLeftKeys:I

    iget v12, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mRightKeys:I

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-ge v11, v12, :cond_9

    .line 101
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mTopRowAdjustment:I

    goto :goto_2

    .line 103
    :cond_9
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mTopRowAdjustment:I

    goto :goto_2
.end method

.method private getOptimizedColumns(II)I
    .locals 3
    .parameter "numKeys"
    .parameter "maxColumns"

    .prologue
    .line 149
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 150
    .local v0, numColumns:I
    :goto_0
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->getTopRowEmptySlots(II)I

    move-result v1

    iget v2, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mNumRows:I

    if-lt v1, v2, :cond_0

    .line 151
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 153
    :cond_0
    return v0
.end method

.method private static getTopRowEmptySlots(II)I
    .locals 2
    .parameter "numKeys"
    .parameter "numColumns"

    .prologue
    .line 140
    rem-int v0, p0, p1

    .line 141
    .local v0, remainingKeys:I
    if-nez v0, :cond_0

    .line 142
    const/4 v1, 0x0

    .line 144
    :goto_0
    return v1

    :cond_0
    sub-int v1, p1, v0

    goto :goto_0
.end method

.method private isTopRow(I)Z
    .locals 2
    .parameter "rowCount"

    .prologue
    const/4 v1, 0x1

    .line 180
    iget v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mNumRows:I

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getColumnPos(I)I
    .locals 6
    .parameter "n"

    .prologue
    .line 109
    iget v5, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mNumColumns:I

    rem-int v0, p1, v5

    .line 110
    .local v0, col:I
    if-nez v0, :cond_0

    .line 112
    const/4 v5, 0x0

    .line 136
    :goto_0
    return v5

    .line 114
    :cond_0
    const/4 v3, 0x0

    .line 115
    .local v3, pos:I
    const/4 v4, 0x1

    .line 116
    .local v4, right:I
    const/4 v2, 0x0

    .line 117
    .local v2, left:I
    const/4 v1, 0x0

    .line 120
    .local v1, i:I
    :cond_1
    iget v5, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mRightKeys:I

    if-ge v4, v5, :cond_2

    .line 121
    move v3, v4

    .line 122
    add-int/lit8 v4, v4, 0x1

    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 125
    :cond_2
    if-lt v1, v0, :cond_3

    :goto_1
    move v5, v3

    .line 136
    goto :goto_0

    .line 128
    :cond_3
    iget v5, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mLeftKeys:I

    if-ge v2, v5, :cond_4

    .line 129
    add-int/lit8 v2, v2, 0x1

    .line 130
    neg-int v3, v2

    .line 131
    add-int/lit8 v1, v1, 0x1

    .line 133
    :cond_4
    if-lt v1, v0, :cond_1

    goto :goto_1
.end method

.method public getDefaultKeyCoordX()I
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mLeftKeys:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mKeyWidth:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getRowFlags(I)I
    .locals 2
    .parameter "row"

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, rowFlags:I
    if-nez p1, :cond_0

    or-int/lit8 v0, v0, 0x4

    .line 175
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->isTopRow(I)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    .line 176
    :cond_1
    return v0
.end method

.method public getX(II)I
    .locals 3
    .parameter "n"
    .parameter "row"

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->getColumnPos(I)I

    move-result v1

    iget v2, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mKeyWidth:I

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->getDefaultKeyCoordX()I

    move-result v2

    add-int v0, v1, v2

    .line 162
    .local v0, x:I
    invoke-direct {p0, p2}, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->isTopRow(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mTopRowAdjustment:I

    iget v2, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mKeyWidth:I

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 165
    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public getY(I)I
    .locals 2
    .parameter "row"

    .prologue
    .line 169
    iget v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mNumRows:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    iget v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mRowHeight:I

    mul-int/2addr v0, v1

    return v0
.end method
