.class Lcom/google/android/talk/videochat/VideoAnimator$FloatPositionEvaluator;
.super Ljava/lang/Object;
.source "VideoAnimator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatPositionEvaluator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoAnimator;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/videochat/VideoAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoAnimator$FloatPositionEvaluator;->this$0:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/videochat/VideoAnimator;Lcom/google/android/talk/videochat/VideoAnimator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoAnimator$FloatPositionEvaluator;-><init>(Lcom/google/android/talk/videochat/VideoAnimator;)V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    .line 111
    instance-of v3, p2, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;

    if-eqz v3, :cond_0

    instance-of v3, p3, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;

    if-eqz v3, :cond_0

    .line 112
    move-object v0, p2

    check-cast v0, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;

    move-object v2, v0

    .line 113
    .local v2, start:Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;
    move-object v0, p3

    check-cast v0, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;

    move-object v1, v0

    .line 114
    .local v1, end:Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;
    new-instance v3, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;

    iget v4, v2, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;->x:F

    iget v5, v1, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;->x:F

    iget v6, v2, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;->x:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iget v5, v2, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;->y:F

    iget v6, v1, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;->y:F

    iget v7, v2, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;->y:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;-><init>(FF)V

    .line 119
    .end local v1           #end:Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;
    .end local v2           #start:Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
