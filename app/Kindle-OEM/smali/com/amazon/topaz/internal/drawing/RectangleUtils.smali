.class public Lcom/amazon/topaz/internal/drawing/RectangleUtils;
.super Ljava/lang/Object;
.source "RectangleUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static divide(Lcom/amazon/system/drawing/Rectangle;I)Lcom/amazon/system/drawing/Rectangle;
    .locals 5
    .parameter "r1"
    .parameter "k"

    .prologue
    .line 74
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget v1, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    div-int/2addr v1, p1

    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    div-int/2addr v2, p1

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    div-int/2addr v3, p1

    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    div-int/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public static equals(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Z
    .locals 4
    .parameter "r1"
    .parameter "r2"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 159
    :goto_0
    return v0

    .line 149
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    .line 150
    goto :goto_0

    .line 151
    :cond_1
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 152
    goto :goto_0

    .line 153
    :cond_2
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    if-eq v0, v1, :cond_3

    move v0, v2

    .line 154
    goto :goto_0

    .line 155
    :cond_3
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    if-eq v0, v1, :cond_4

    move v0, v2

    .line 156
    goto :goto_0

    .line 157
    :cond_4
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    if-eq v0, v1, :cond_5

    move v0, v2

    .line 158
    goto :goto_0

    :cond_5
    move v0, v3

    .line 159
    goto :goto_0
.end method

.method public static multiply(Lcom/amazon/system/drawing/Rectangle;I)Lcom/amazon/system/drawing/Rectangle;
    .locals 5
    .parameter "r1"
    .parameter "k"

    .prologue
    .line 65
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget v1, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    mul-int/2addr v2, p1

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    mul-int/2addr v3, p1

    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    mul-int/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public static newMargin(I)Lcom/amazon/system/drawing/Rectangle;
    .locals 2
    .parameter "top"

    .prologue
    const/4 v1, 0x0

    .line 109
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0, p0, p0, v1, v1}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public static newMargin(II)Lcom/amazon/system/drawing/Rectangle;
    .locals 2
    .parameter "top"
    .parameter "right"

    .prologue
    const/4 v1, 0x0

    .line 113
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public static newMargin(III)Lcom/amazon/system/drawing/Rectangle;
    .locals 3
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 117
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    const/4 v1, 0x0

    sub-int v2, p2, p0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public static newMargin(IIII)Lcom/amazon/system/drawing/Rectangle;
    .locals 3
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "left"

    .prologue
    .line 122
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    sub-int v1, p1, p3

    sub-int v2, p2, p0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public static rectanglesIntersect(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Z
    .locals 7
    .parameter "r1"
    .parameter "r2"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 164
    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    if-gt v2, v3, :cond_0

    iget v2, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_1

    :cond_0
    iget v2, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    if-gt v2, v3, :cond_4

    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v4, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_4

    :cond_1
    move v0, v6

    .line 166
    .local v0, horizontalIntersection:Z
    :goto_0
    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    if-gt v2, v3, :cond_2

    iget v2, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_3

    :cond_2
    iget v2, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    if-gt v2, v3, :cond_5

    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v4, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_5

    :cond_3
    move v1, v6

    .line 169
    .local v1, verticalIntersection:Z
    :goto_1
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    move v2, v6

    :goto_2
    return v2

    .end local v0           #horizontalIntersection:Z
    .end local v1           #verticalIntersection:Z
    :cond_4
    move v0, v5

    .line 164
    goto :goto_0

    .restart local v0       #horizontalIntersection:Z
    :cond_5
    move v1, v5

    .line 166
    goto :goto_1

    .restart local v1       #verticalIntersection:Z
    :cond_6
    move v2, v5

    .line 169
    goto :goto_2
.end method

.method public static remap(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;
    .locals 6
    .parameter "remappee"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 17
    iget v0, p2, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lcom/amazon/system/drawing/Rectangle;->height:I

    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    if-ne v0, v1, :cond_0

    .line 18
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget v1, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v2, p2, Lcom/amazon/system/drawing/Rectangle;->x:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v3, p2, Lcom/amazon/system/drawing/Rectangle;->y:I

    add-int/2addr v2, v3

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 25
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget v1, p2, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    sub-int/2addr v2, v3

    iget v3, p2, Lcom/amazon/system/drawing/Rectangle;->width:I

    mul-int/2addr v2, v3

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p2, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v4, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    sub-int/2addr v3, v4

    iget v4, p2, Lcom/amazon/system/drawing/Rectangle;->height:I

    mul-int/2addr v3, v4

    iget v4, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v4, p2, Lcom/amazon/system/drawing/Rectangle;->width:I

    mul-int/2addr v3, v4

    iget v4, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    div-int/2addr v3, v4

    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    iget v5, p2, Lcom/amazon/system/drawing/Rectangle;->height:I

    mul-int/2addr v4, v5

    iget v5, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    div-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    goto :goto_0
.end method

.method public static reposition(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;
    .locals 7
    .parameter "r"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 38
    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    sub-int v1, v3, v4

    .line 39
    .local v1, dw:I
    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    sub-int v0, v3, v4

    .line 41
    .local v0, dh:I
    new-instance v2, Lcom/amazon/system/drawing/Rectangle;

    iget v3, p2, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v4, p2, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v5, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v6, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 42
    .local v2, ret:Lcom/amazon/system/drawing/Rectangle;
    if-eqz v1, :cond_0

    .line 43
    iget v3, v2, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v5, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    sub-int/2addr v4, v5

    iget v5, p2, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v6, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    sub-int/2addr v5, v6

    mul-int/2addr v4, v5

    div-int/2addr v4, v1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 47
    :goto_0
    if-eqz v0, :cond_1

    .line 48
    iget v3, v2, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v5, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    sub-int/2addr v4, v5

    iget v5, p2, Lcom/amazon/system/drawing/Rectangle;->height:I

    iget v6, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    sub-int/2addr v5, v6

    mul-int/2addr v4, v5

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    iput v3, v2, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 52
    :goto_1
    return-object v2

    .line 45
    :cond_0
    iget v3, v2, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v4, p2, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v5, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v2, Lcom/amazon/system/drawing/Rectangle;->x:I

    goto :goto_0

    .line 50
    :cond_1
    iget v3, v2, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v4, p2, Lcom/amazon/system/drawing/Rectangle;->height:I

    iget v5, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v2, Lcom/amazon/system/drawing/Rectangle;->y:I

    goto :goto_1
.end method

.method public static setBottom(Lcom/amazon/system/drawing/Rectangle;I)V
    .locals 1
    .parameter "r"
    .parameter "bottom"

    .prologue
    .line 142
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 143
    return-void
.end method

.method public static setLeft(Lcom/amazon/system/drawing/Rectangle;I)V
    .locals 1
    .parameter "r"
    .parameter "left"

    .prologue
    .line 132
    invoke-static {p0}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->x2(Lcom/amazon/system/drawing/Rectangle;)I

    move-result v0

    .line 133
    .local v0, right:I
    iput p1, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 134
    invoke-static {p0, v0}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->setRight(Lcom/amazon/system/drawing/Rectangle;I)V

    .line 135
    return-void
.end method

.method public static setRight(Lcom/amazon/system/drawing/Rectangle;I)V
    .locals 1
    .parameter "r"
    .parameter "right"

    .prologue
    .line 138
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 139
    return-void
.end method

.method public static setTop(Lcom/amazon/system/drawing/Rectangle;I)V
    .locals 1
    .parameter "r"
    .parameter "top"

    .prologue
    .line 126
    invoke-static {p0}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->y2(Lcom/amazon/system/drawing/Rectangle;)I

    move-result v0

    .line 127
    .local v0, bottom:I
    iput p1, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 128
    invoke-static {p0, v0}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->setBottom(Lcom/amazon/system/drawing/Rectangle;I)V

    .line 129
    return-void
.end method

.method public static shiftLeft(Lcom/amazon/system/drawing/Rectangle;I)Lcom/amazon/system/drawing/Rectangle;
    .locals 5
    .parameter "r1"
    .parameter "k"

    .prologue
    .line 83
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget v1, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    shl-int/2addr v1, p1

    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    shl-int/2addr v2, p1

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    shl-int/2addr v3, p1

    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    shl-int/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public static shiftRight(Lcom/amazon/system/drawing/Rectangle;I)Lcom/amazon/system/drawing/Rectangle;
    .locals 5
    .parameter "r1"
    .parameter "k"

    .prologue
    .line 92
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget v1, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    shr-int/2addr v1, p1

    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    shr-int/2addr v2, p1

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    shr-int/2addr v3, p1

    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    shr-int/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public static sum(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;
    .locals 6
    .parameter "r1"
    .parameter "r2"

    .prologue
    .line 56
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget v1, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v2, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v4, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    iget v5, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public static x2(Lcom/amazon/system/drawing/Rectangle;)I
    .locals 2
    .parameter "r"

    .prologue
    .line 101
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v1, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static y2(Lcom/amazon/system/drawing/Rectangle;)I
    .locals 2
    .parameter "r"

    .prologue
    .line 105
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v1, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v0, v1

    return v0
.end method
