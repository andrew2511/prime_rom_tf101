.class Lcom/google/android/street/ExponentialFilter;
.super Ljava/lang/Object;
.source "ExponentialFilter.java"


# instance fields
.field private final mAlpha:F

.field private final mExponent:I


# direct methods
.method public constructor <init>(FI)V
    .locals 2
    .parameter "alpha"
    .parameter "exponent"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "exponent must be >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alpha must be in [0 .. 1]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    iput p1, p0, Lcom/google/android/street/ExponentialFilter;->mAlpha:F

    .line 72
    iput p2, p0, Lcom/google/android/street/ExponentialFilter;->mExponent:I

    .line 73
    return-void
.end method


# virtual methods
.method public filter([F[F)V
    .locals 6
    .parameter "currentValues"
    .parameter "newValues"

    .prologue
    .line 89
    array-length v4, p2

    array-length v5, p1

    if-eq v4, v5, :cond_0

    .line 90
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "length mismatch"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 92
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_2

    .line 93
    aget v4, p2, v2

    aget v5, p1, v2

    sub-float v1, v4, v5

    .line 94
    .local v1, diff:F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 95
    .local v0, absDiff:F
    const/high16 v4, 0x3f80

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    .line 96
    const/4 v3, 0x1

    .local v3, j:I
    :goto_1
    iget v4, p0, Lcom/google/android/street/ExponentialFilter;->mExponent:I

    if-ge v3, v4, :cond_1

    .line 97
    mul-float/2addr v1, v0

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 100
    .end local v3           #j:I
    :cond_1
    aget v4, p1, v2

    iget v5, p0, Lcom/google/android/street/ExponentialFilter;->mAlpha:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    aput v4, p1, v2

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v0           #absDiff:F
    .end local v1           #diff:F
    :cond_2
    return-void
.end method
