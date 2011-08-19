.class Lcom/android/vending/compat/animation/KeyframeSet;
.super Ljava/lang/Object;
.source "KeyframeSet.java"


# instance fields
.field mKeyframes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/compat/animation/Keyframe;",
            ">;"
        }
    .end annotation
.end field

.field private mNumKeyframes:I


# direct methods
.method public varargs constructor <init>([Lcom/android/vending/compat/animation/Keyframe;)V
    .locals 2
    .parameter "keyframes"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/compat/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    .line 22
    iget-object v0, p0, Lcom/android/vending/compat/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    iget-object v0, p0, Lcom/android/vending/compat/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/vending/compat/animation/KeyframeSet;->mNumKeyframes:I

    .line 24
    return-void
.end method

.method public static varargs ofFloat([F)Lcom/android/vending/compat/animation/KeyframeSet;
    .locals 8
    .parameter "values"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 42
    array-length v2, p0

    .line 43
    .local v2, numKeyframes:I
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v1, v3, [Lcom/android/vending/compat/animation/Keyframe;

    .line 44
    .local v1, keyframes:[Lcom/android/vending/compat/animation/Keyframe;
    if-ne v2, v6, :cond_1

    .line 45
    new-instance v4, Lcom/android/vending/compat/animation/Keyframe;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Object;

    invoke-direct {v4, v7, v3}, Lcom/android/vending/compat/animation/Keyframe;-><init>(FLjava/lang/Object;)V

    aput-object v4, v1, v5

    .line 46
    new-instance v3, Lcom/android/vending/compat/animation/Keyframe;

    const/high16 v4, 0x3f80

    aget v5, p0, v5

    invoke-direct {v3, v4, v5}, Lcom/android/vending/compat/animation/Keyframe;-><init>(FF)V

    aput-object v3, v1, v6

    .line 53
    :cond_0
    new-instance v3, Lcom/android/vending/compat/animation/KeyframeSet;

    invoke-direct {v3, v1}, Lcom/android/vending/compat/animation/KeyframeSet;-><init>([Lcom/android/vending/compat/animation/Keyframe;)V

    return-object v3

    .line 48
    :cond_1
    new-instance v3, Lcom/android/vending/compat/animation/Keyframe;

    aget v4, p0, v5

    invoke-direct {v3, v7, v4}, Lcom/android/vending/compat/animation/Keyframe;-><init>(FF)V

    aput-object v3, v1, v5

    .line 49
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 50
    new-instance v3, Lcom/android/vending/compat/animation/Keyframe;

    int-to-float v4, v0

    sub-int v5, v2, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    aget v5, p0, v0

    invoke-direct {v3, v4, v5}, Lcom/android/vending/compat/animation/Keyframe;-><init>(FF)V

    aput-object v3, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs ofInt([I)Lcom/android/vending/compat/animation/KeyframeSet;
    .locals 8
    .parameter "values"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 27
    array-length v2, p0

    .line 28
    .local v2, numKeyframes:I
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v1, v3, [Lcom/android/vending/compat/animation/Keyframe;

    .line 29
    .local v1, keyframes:[Lcom/android/vending/compat/animation/Keyframe;
    if-ne v2, v6, :cond_1

    .line 30
    new-instance v4, Lcom/android/vending/compat/animation/Keyframe;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Object;

    invoke-direct {v4, v7, v3}, Lcom/android/vending/compat/animation/Keyframe;-><init>(FLjava/lang/Object;)V

    aput-object v4, v1, v5

    .line 31
    new-instance v3, Lcom/android/vending/compat/animation/Keyframe;

    const/high16 v4, 0x3f80

    aget v5, p0, v5

    invoke-direct {v3, v4, v5}, Lcom/android/vending/compat/animation/Keyframe;-><init>(FI)V

    aput-object v3, v1, v6

    .line 38
    :cond_0
    new-instance v3, Lcom/android/vending/compat/animation/KeyframeSet;

    invoke-direct {v3, v1}, Lcom/android/vending/compat/animation/KeyframeSet;-><init>([Lcom/android/vending/compat/animation/Keyframe;)V

    return-object v3

    .line 33
    :cond_1
    new-instance v3, Lcom/android/vending/compat/animation/Keyframe;

    aget v4, p0, v5

    invoke-direct {v3, v7, v4}, Lcom/android/vending/compat/animation/Keyframe;-><init>(FI)V

    aput-object v3, v1, v5

    .line 34
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 35
    new-instance v3, Lcom/android/vending/compat/animation/Keyframe;

    int-to-float v4, v0

    sub-int v5, v2, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    aget v5, p0, v0

    invoke-direct {v3, v4, v5}, Lcom/android/vending/compat/animation/Keyframe;-><init>(FI)V

    aput-object v3, v1, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getValue(FLcom/android/vending/compat/animation/TypeEvaluator;)Ljava/lang/Object;
    .locals 9
    .parameter "fraction"
    .parameter "evaluator"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 117
    const/4 v5, 0x0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_1

    .line 118
    iget-object v5, p0, Lcom/android/vending/compat/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vending/compat/animation/Keyframe;

    .line 119
    .local v4, prevKeyframe:Lcom/android/vending/compat/animation/Keyframe;
    iget-object v5, p0, Lcom/android/vending/compat/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/compat/animation/Keyframe;

    .line 120
    .local v3, nextKeyframe:Lcom/android/vending/compat/animation/Keyframe;
    invoke-virtual {v3}, Lcom/android/vending/compat/animation/Keyframe;->getInterpolator()Lcom/android/vending/compat/animation/TimeInterpolator;

    move-result-object v1

    .line 121
    .local v1, interpolator:Lcom/android/vending/compat/animation/TimeInterpolator;
    if-eqz v1, :cond_0

    .line 122
    invoke-interface {v1, p1}, Lcom/android/vending/compat/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 124
    :cond_0
    invoke-virtual {v4}, Lcom/android/vending/compat/animation/Keyframe;->getFraction()F

    move-result v5

    sub-float v5, p1, v5

    invoke-virtual {v3}, Lcom/android/vending/compat/animation/Keyframe;->getFraction()F

    move-result v6

    invoke-virtual {v4}, Lcom/android/vending/compat/animation/Keyframe;->getFraction()F

    move-result v7

    sub-float/2addr v6, v7

    div-float v2, v5, v6

    .line 126
    .local v2, intervalFraction:F
    invoke-virtual {v4}, Lcom/android/vending/compat/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/vending/compat/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p2, v2, v5, v6}, Lcom/android/vending/compat/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 156
    .end local v1           #interpolator:Lcom/android/vending/compat/animation/TimeInterpolator;
    .end local v2           #intervalFraction:F
    .end local v3           #nextKeyframe:Lcom/android/vending/compat/animation/Keyframe;
    .end local p0
    :goto_0
    return-object v5

    .line 128
    .end local v4           #prevKeyframe:Lcom/android/vending/compat/animation/Keyframe;
    .restart local p0
    :cond_1
    const/high16 v5, 0x3f80

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_3

    .line 129
    iget-object v5, p0, Lcom/android/vending/compat/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/vending/compat/animation/KeyframeSet;->mNumKeyframes:I

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vending/compat/animation/Keyframe;

    .line 130
    .restart local v4       #prevKeyframe:Lcom/android/vending/compat/animation/Keyframe;
    iget-object v5, p0, Lcom/android/vending/compat/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/vending/compat/animation/KeyframeSet;->mNumKeyframes:I

    sub-int/2addr v6, v8

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/compat/animation/Keyframe;

    .line 131
    .restart local v3       #nextKeyframe:Lcom/android/vending/compat/animation/Keyframe;
    invoke-virtual {v3}, Lcom/android/vending/compat/animation/Keyframe;->getInterpolator()Lcom/android/vending/compat/animation/TimeInterpolator;

    move-result-object v1

    .line 132
    .restart local v1       #interpolator:Lcom/android/vending/compat/animation/TimeInterpolator;
    if-eqz v1, :cond_2

    .line 133
    invoke-interface {v1, p1}, Lcom/android/vending/compat/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 135
    :cond_2
    invoke-virtual {v4}, Lcom/android/vending/compat/animation/Keyframe;->getFraction()F

    move-result v5

    sub-float v5, p1, v5

    invoke-virtual {v3}, Lcom/android/vending/compat/animation/Keyframe;->getFraction()F

    move-result v6

    invoke-virtual {v4}, Lcom/android/vending/compat/animation/Keyframe;->getFraction()F

    move-result v7

    sub-float/2addr v6, v7

    div-float v2, v5, v6

    .line 137
    .restart local v2       #intervalFraction:F
    invoke-virtual {v4}, Lcom/android/vending/compat/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/vending/compat/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p2, v2, v5, v6}, Lcom/android/vending/compat/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 140
    .end local v1           #interpolator:Lcom/android/vending/compat/animation/TimeInterpolator;
    .end local v2           #intervalFraction:F
    .end local v3           #nextKeyframe:Lcom/android/vending/compat/animation/Keyframe;
    .end local v4           #prevKeyframe:Lcom/android/vending/compat/animation/Keyframe;
    :cond_3
    iget-object v5, p0, Lcom/android/vending/compat/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vending/compat/animation/Keyframe;

    .line 141
    .restart local v4       #prevKeyframe:Lcom/android/vending/compat/animation/Keyframe;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    iget v5, p0, Lcom/android/vending/compat/animation/KeyframeSet;->mNumKeyframes:I

    if-ge v0, v5, :cond_6

    .line 142
    iget-object v5, p0, Lcom/android/vending/compat/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/compat/animation/Keyframe;

    .line 143
    .restart local v3       #nextKeyframe:Lcom/android/vending/compat/animation/Keyframe;
    invoke-virtual {v3}, Lcom/android/vending/compat/animation/Keyframe;->getFraction()F

    move-result v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_5

    .line 144
    invoke-virtual {v3}, Lcom/android/vending/compat/animation/Keyframe;->getInterpolator()Lcom/android/vending/compat/animation/TimeInterpolator;

    move-result-object v1

    .line 145
    .restart local v1       #interpolator:Lcom/android/vending/compat/animation/TimeInterpolator;
    if-eqz v1, :cond_4

    .line 146
    invoke-interface {v1, p1}, Lcom/android/vending/compat/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 148
    :cond_4
    invoke-virtual {v4}, Lcom/android/vending/compat/animation/Keyframe;->getFraction()F

    move-result v5

    sub-float v5, p1, v5

    invoke-virtual {v3}, Lcom/android/vending/compat/animation/Keyframe;->getFraction()F

    move-result v6

    invoke-virtual {v4}, Lcom/android/vending/compat/animation/Keyframe;->getFraction()F

    move-result v7

    sub-float/2addr v6, v7

    div-float v2, v5, v6

    .line 150
    .restart local v2       #intervalFraction:F
    invoke-virtual {v4}, Lcom/android/vending/compat/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/vending/compat/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p2, v2, v5, v6}, Lcom/android/vending/compat/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 153
    .end local v1           #interpolator:Lcom/android/vending/compat/animation/TimeInterpolator;
    .end local v2           #intervalFraction:F
    :cond_5
    move-object v4, v3

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    .end local v3           #nextKeyframe:Lcom/android/vending/compat/animation/Keyframe;
    :cond_6
    iget-object v5, p0, Lcom/android/vending/compat/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/vending/compat/animation/KeyframeSet;->mNumKeyframes:I

    sub-int/2addr v6, v8

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/vending/compat/animation/Keyframe;

    invoke-virtual {p0}, Lcom/android/vending/compat/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0
.end method
