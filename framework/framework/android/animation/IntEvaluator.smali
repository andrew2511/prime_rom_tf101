.class public Landroid/animation/IntEvaluator;
.super Ljava/lang/Object;
.source "IntEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    .line 39
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 40
    .local v0, startInt:I
    int-to-float v1, v0

    check-cast p3, Ljava/lang/Number;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method