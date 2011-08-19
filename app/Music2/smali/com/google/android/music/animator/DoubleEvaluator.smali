.class public Lcom/google/android/music/animator/DoubleEvaluator;
.super Ljava/lang/Object;
.source "DoubleEvaluator.java"

# interfaces
.implements Lcom/google/android/music/animator/TypeEvaluator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    .line 25
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    float-to-double v3, p1

    check-cast p3, Ljava/lang/Double;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    check-cast p2, Ljava/lang/Double;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method
