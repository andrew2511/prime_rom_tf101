.class public Lcom/amazon/system/drawing/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 44
    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 45
    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 46
    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 47
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 70
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 62
    iput p2, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 63
    iput p3, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 64
    iput p4, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/amazon/system/drawing/Rectangle;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iget v0, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 75
    iget v0, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 76
    iget v0, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 77
    iget v0, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 78
    return-void
.end method


# virtual methods
.method public add(Lcom/amazon/system/drawing/Rectangle;)V
    .locals 7
    .parameter "r"

    .prologue
    .line 157
    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v5, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 158
    .local v2, newx:I
    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v5, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 159
    .local v3, newy:I
    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v5, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v4, v5

    iget v5, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v6, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v1, v4, v2

    .line 160
    .local v1, neww:I
    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v5, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v4, v5

    iget v5, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v6, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v0, v4, v3

    .line 161
    .local v0, newh:I
    iput v2, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 162
    iput v3, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 163
    iput v1, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 164
    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 165
    return-void
.end method

.method public cloneRectangle()Lcom/amazon/system/drawing/Rectangle;
    .locals 5

    .prologue
    .line 246
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget v1, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public contains(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 93
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v1, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    if-le p2, v0, :cond_0

    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v1, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expand(II)V
    .locals 2
    .parameter "tx"
    .parameter "ty"

    .prologue
    .line 149
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 150
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 151
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 152
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 153
    return-void
.end method

.method public getHeight()D
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 99
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public intersection(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 171
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v1, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v0, v1

    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    if-le v0, v1, :cond_0

    .line 174
    iget v0, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 187
    :goto_0
    iget v1, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v2, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    if-le v1, v2, :cond_2

    .line 190
    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 201
    :goto_1
    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v2, v3

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v4, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 202
    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v3, v4

    iget v4, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v5, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 204
    new-instance v4, Lcom/amazon/system/drawing/Rectangle;

    sub-int/2addr v2, v0

    sub-int/2addr v3, v1

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    move-object v0, v4

    :goto_2
    return-object v0

    .line 176
    :cond_0
    iget v0, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v1, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    if-gt v0, v1, :cond_1

    iget v0, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    if-le v0, v1, :cond_1

    .line 179
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    goto :goto_0

    .line 184
    :cond_1
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0, v4, v4, v3, v3}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    goto :goto_2

    .line 192
    :cond_2
    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    if-gt v1, v2, :cond_3

    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v2, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    if-le v1, v2, :cond_3

    .line 194
    iget v1, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    goto :goto_1

    .line 198
    :cond_3
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0, v4, v4, v3, v3}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    if-gtz v0, :cond_1

    .line 127
    :cond_0
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minDistance(II)D
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/amazon/system/drawing/Rectangle;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    .line 238
    :goto_0
    return-wide v2

    .line 218
    :cond_0
    const/4 v0, 0x0

    .line 219
    .local v0, dx:I
    const/4 v1, 0x0

    .line 220
    .local v1, dy:I
    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    if-ge p1, v2, :cond_3

    .line 222
    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    sub-int v0, v2, p1

    .line 229
    :cond_1
    :goto_1
    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    if-ge p2, v2, :cond_4

    .line 231
    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    sub-int v1, v2, p2

    .line 238
    :cond_2
    :goto_2
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    goto :goto_0

    .line 224
    :cond_3
    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v2, v3

    if-le p1, v2, :cond_1

    .line 226
    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v2, v3

    sub-int v0, p1, v2

    goto :goto_1

    .line 233
    :cond_4
    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v2, v3

    if-le p2, v2, :cond_2

    .line 235
    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v2, v3

    sub-int v1, p2, v2

    goto :goto_2
.end method

.method public setLocation(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 119
    iput p1, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 120
    iput p2, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 121
    return-void
.end method

.method public translate(II)V
    .locals 1
    .parameter "tx"
    .parameter "ty"

    .prologue
    .line 143
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 144
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 145
    return-void
.end method

.method public union(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;
    .locals 7
    .parameter "r"

    .prologue
    .line 134
    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v5, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 135
    .local v2, newx:I
    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v5, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 136
    .local v3, newy:I
    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v5, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v4, v5

    iget v5, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v6, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v1, v4, v2

    .line 137
    .local v1, neww:I
    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v5, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v4, v5

    iget v5, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v6, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v0, v4, v3

    .line 138
    .local v0, newh:I
    new-instance v4, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v4, v2, v3, v1, v0}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    return-object v4
.end method
