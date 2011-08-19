.class public final Lcom/ecareme/pixwe/media/Shared;
.super Ljava/lang/Object;
.source "Shared.java"


# static fields
.field public static final INFINITY:I = 0x7fffffff

.field public static final INVALID:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static argb(FFFF)I
    .locals 4
    .parameter "a"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    const/high16 v3, 0x437f

    .line 28
    mul-float v0, p0, v3

    float-to-int v0, v0

    mul-float v1, p1, v3

    float-to-int v1, v1

    mul-float v2, p2, v3

    float-to-int v2, v2

    mul-float/2addr v3, p3

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 68
    if-ge p0, p1, :cond_1

    .line 69
    move p0, p1

    .line 73
    :cond_0
    :goto_0
    return p0

    .line 70
    :cond_1
    if-le p0, p2, :cond_0

    .line 71
    move p0, p2

    goto :goto_0
.end method

.method public static clamp(JJJ)J
    .locals 1
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 77
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    .line 78
    move-wide p0, p2

    .line 82
    :cond_0
    :goto_0
    return-wide p0

    .line 79
    :cond_1
    cmp-long v0, p0, p4

    if-lez v0, :cond_0

    .line 80
    move-wide p0, p4

    goto :goto_0
.end method

.method public static degreesToExifOrientation(F)I
    .locals 2
    .parameter "normalizedAngle"

    .prologue
    const/4 v1, 0x1

    .line 112
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    move v0, v1

    .line 121
    :goto_0
    return v0

    .line 114
    :cond_0
    const/high16 v0, 0x42b4

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    .line 115
    const/4 v0, 0x6

    goto :goto_0

    .line 116
    :cond_1
    const/high16 v0, 0x4334

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    .line 117
    const/4 v0, 0x3

    goto :goto_0

    .line 118
    :cond_2
    const/high16 v0, 0x4387

    cmpl-float v0, p0, v0

    if-nez v0, :cond_3

    .line 119
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    move v0, v1

    .line 121
    goto :goto_0
.end method

.method public static exifOrientationToDegrees(I)F
    .locals 1
    .parameter "exifOrientation"

    .prologue
    .line 125
    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    .line 126
    const/high16 v0, 0x42b4

    .line 132
    :goto_0
    return v0

    .line 127
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 128
    const/high16 v0, 0x4334

    goto :goto_0

    .line 129
    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    .line 130
    const/high16 v0, 0x4387

    goto :goto_0

    .line 132
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPowerOf2(I)Z
    .locals 1
    .parameter "n"

    .prologue
    .line 32
    neg-int v0, p0

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static midPointIterator(I)I
    .locals 4
    .parameter "i"

    .prologue
    const/4 v3, 0x1

    .line 41
    if-eqz p0, :cond_1

    .line 42
    sub-int v2, p0, v3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v2, 0x1

    .line 43
    .local v1, tick:I
    sub-int v2, p0, v3

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v3

    .line 44
    .local v0, pass:I
    :goto_0
    mul-int v2, v1, v0

    .line 46
    .end local v0           #pass:I
    .end local v1           #tick:I
    :goto_1
    return v2

    .line 43
    .restart local v1       #tick:I
    :cond_0
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 46
    .end local v1           #tick:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 50
    add-int/lit8 p0, p0, -0x1

    .line 51
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 52
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 53
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 54
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 55
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 56
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static normalizePositive(F)F
    .locals 5
    .parameter "angleToRotate"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x43b4

    .line 94
    cmpl-float v2, p0, v4

    if-nez v2, :cond_0

    move v2, v4

    .line 108
    :goto_0
    return v2

    .line 97
    :cond_0
    div-float v1, p0, v3

    .line 98
    .local v1, nf:F
    const/4 v0, 0x0

    .line 99
    .local v0, n:I
    cmpg-float v2, p0, v4

    if-gez v2, :cond_3

    .line 100
    const/high16 v2, 0x3f80

    sub-float v2, v1, v2

    float-to-int v0, v2

    .line 104
    :cond_1
    :goto_1
    int-to-float v2, v0

    mul-float/2addr v2, v3

    sub-float/2addr p0, v2

    .line 105
    cmpl-float v2, p0, v3

    if-nez v2, :cond_2

    .line 106
    const/4 p0, 0x0

    :cond_2
    move v2, p0

    .line 108
    goto :goto_0

    .line 101
    :cond_3
    cmpl-float v2, p0, v3

    if-lez v2, :cond_1

    .line 102
    float-to-int v0, v1

    goto :goto_1
.end method

.method public static prevPowerOf2(I)I
    .locals 2
    .parameter "n"

    .prologue
    .line 60
    invoke-static {p0}, Lcom/ecareme/pixwe/media/Shared;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p0}, Lcom/ecareme/pixwe/media/Shared;->nextPowerOf2(I)I

    move-result v0

    .line 63
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/ecareme/pixwe/media/Shared;->nextPowerOf2(I)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public static scaleToFit(FFFFZ)F
    .locals 3
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "outerWidth"
    .parameter "outerHeight"
    .parameter "clipToFit"

    .prologue
    .line 86
    div-float v0, p2, p0

    .line 87
    .local v0, scaleX:F
    div-float v1, p3, p1

    .line 88
    .local v1, scaleY:F
    if-eqz p4, :cond_1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    :cond_0
    move v2, v0

    :goto_0
    return v2

    :cond_1
    cmpg-float v2, v0, v1

    if-ltz v2, :cond_0

    :cond_2
    move v2, v1

    goto :goto_0
.end method
