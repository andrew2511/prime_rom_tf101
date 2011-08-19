.class public Lcom/google/android/apps/books/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constrain(FFF)F
    .locals 1
    .parameter "amount"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 31
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p1

    :goto_0
    return v0

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static constrain(III)I
    .locals 1
    .parameter "amount"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 27
    if-ge p0, p1, :cond_0

    move v0, p1

    :goto_0
    return v0

    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_0
.end method
