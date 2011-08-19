.class public final Lcom/ecareme/pixwe/media/GridLayoutInterface;
.super Lcom/ecareme/pixwe/media/LayoutInterface;
.source "GridLayoutInterface.java"


# instance fields
.field public mNumRows:I

.field public mSpacingX:I

.field public mSpacingY:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "numRows"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/LayoutInterface;-><init>()V

    .line 25
    iput p1, p0, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mNumRows:I

    .line 26
    const/high16 v0, 0x41a0

    sget v1, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingX:I

    .line 27
    const/high16 v0, 0x4220

    sget v1, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingY:I

    .line 28
    return-void
.end method


# virtual methods
.method public getNextSlotIndexForBreak(I)I
    .locals 4
    .parameter "breakSlotIndex"

    .prologue
    .line 35
    iget v2, p0, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mNumRows:I

    .line 36
    .local v2, numRows:I
    rem-int v1, p1, v2

    .line 37
    .local v1, mod:I
    sub-int v0, v2, v1

    .line 38
    .local v0, add:I
    if-lt v0, v2, :cond_0

    .line 39
    sub-int/2addr v0, v2

    .line 40
    :cond_0
    add-int v3, p1, v0

    return v3
.end method

.method public getPositionForSlotIndex(IIILcom/ecareme/pixwe/media/Vector3f;)V
    .locals 5
    .parameter "slotIndex"
    .parameter "itemWidth"
    .parameter "itemHeight"
    .parameter "outPosition"

    .prologue
    .line 44
    iget v1, p0, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mNumRows:I

    .line 45
    .local v1, numRows:I
    move v2, p1

    .line 46
    .local v2, resultSlotIndex:I
    div-int v3, v2, v1

    iget v4, p0, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingX:I

    add-int/2addr v4, p2

    mul-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p4, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    .line 47
    rem-int v3, v2, v1

    iget v4, p0, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingY:I

    add-int/2addr v4, p3

    mul-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p4, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    .line 48
    const/4 v3, 0x1

    sub-int v3, v1, v3

    iget v4, p0, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingY:I

    add-int/2addr v4, p3

    mul-int v0, v3, v4

    .line 49
    .local v0, maxY:I
    iget v3, p4, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    shr-int/lit8 v4, v0, 0x1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, p4, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    .line 50
    const/4 v3, 0x0

    iput v3, p4, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    .line 51
    return-void
.end method

.method public getSpacingForBreak()F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingX:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method
