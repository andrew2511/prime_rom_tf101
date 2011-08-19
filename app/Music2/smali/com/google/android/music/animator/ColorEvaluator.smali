.class public Lcom/google/android/music/animator/ColorEvaluator;
.super Ljava/lang/Object;
.source "ColorEvaluator.java"

# interfaces
.implements Lcom/google/android/music/animator/TypeEvaluator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    .line 29
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    shr-int/lit8 v5, v9, 0x18

    .line 30
    .local v5, startA:I
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    and-int/lit16 v8, v9, 0xff

    .line 31
    .local v8, startR:I
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    shr-int/lit8 v9, v9, 0x8

    and-int/lit16 v7, v9, 0xff

    .line 32
    .local v7, startG:I
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/lit16 v6, v9, 0xff

    .line 33
    .local v6, startB:I
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    shr-int/lit8 v1, v9, 0x18

    .line 34
    .local v1, endA:I
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    and-int/lit16 v4, v9, 0xff

    .line 35
    .local v4, endR:I
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    shr-int/lit8 v9, v9, 0x8

    and-int/lit16 v3, v9, 0xff

    .line 36
    .local v3, endG:I
    check-cast p3, Ljava/lang/Integer;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/lit16 v2, v9, 0xff

    .line 38
    .local v2, endB:I
    sub-int v9, v1, v5

    int-to-float v9, v9

    mul-float/2addr v9, p1

    float-to-int v9, v9

    add-int/2addr v9, v5

    shl-int/lit8 v9, v9, 0x18

    sub-int v10, v4, v8

    int-to-float v10, v10

    mul-float/2addr v10, p1

    float-to-int v10, v10

    add-int/2addr v10, v8

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    sub-int v10, v3, v7

    int-to-float v10, v10

    mul-float/2addr v10, p1

    float-to-int v10, v10

    add-int/2addr v10, v7

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    sub-int v10, v2, v6

    int-to-float v10, v10

    mul-float/2addr v10, p1

    float-to-int v10, v10

    add-int/2addr v10, v6

    or-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    return-object v9
.end method
