.class public Lcom/google/android/music/animator/Animator;
.super Ljava/lang/Object;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/animator/Animator$1;,
        Lcom/google/android/music/animator/Animator$AnimationHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME:I = 0x1

.field private static final ANIMATION_START:I = 0x0

.field private static final CANCELED:I = 0x2

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field private static final ENDED:I = 0x3

.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field private static final RUNNING:I = 0x1

.field private static final STOPPED:I

.field private static animationHandler:Lcom/google/android/music/animator/Animator$AnimationHandler;

.field private static animations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/animator/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultInterpolator:Landroid/view/animation/Interpolator;

.field private static delayedAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/animator/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private static doubleEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

.field private static endingAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/animator/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private static floatEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

.field private static intEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

.field private static mFrameDelay:J

.field private static pendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/animator/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private static readyAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/animator/Animator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentIteration:I

.field private delayStartTime:J

.field private mAnimatedValue:Ljava/lang/Object;

.field private mDuration:J

.field private mEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/animator/AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mStartDelay:J

.field private mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/animator/AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mValueFrom:Ljava/lang/Object;

.field private mValueTo:Ljava/lang/Object;

.field private mValueType:Ljava/lang/Class;

.field private playingBackwards:Z

.field private playingState:I

.field private startTime:J

.field private startedDelay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/music/animator/Animator;->animations:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/music/animator/Animator;->pendingAnimations:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/google/android/music/animator/Animator;->defaultInterpolator:Landroid/view/animation/Interpolator;

    .line 70
    new-instance v0, Lcom/google/android/music/animator/IntEvaluator;

    invoke-direct {v0}, Lcom/google/android/music/animator/IntEvaluator;-><init>()V

    sput-object v0, Lcom/google/android/music/animator/Animator;->intEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

    .line 71
    new-instance v0, Lcom/google/android/music/animator/FloatEvaluator;

    invoke-direct {v0}, Lcom/google/android/music/animator/FloatEvaluator;-><init>()V

    sput-object v0, Lcom/google/android/music/animator/Animator;->floatEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

    .line 72
    new-instance v0, Lcom/google/android/music/animator/DoubleEvaluator;

    invoke-direct {v0}, Lcom/google/android/music/animator/DoubleEvaluator;-><init>()V

    sput-object v0, Lcom/google/android/music/animator/Animator;->doubleEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/music/animator/Animator;->endingAnims:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/music/animator/Animator;->delayedAnims:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/music/animator/Animator;->readyAnims:Ljava/util/ArrayList;

    .line 130
    const-wide/16 v0, 0xa

    sput-wide v0, Lcom/google/android/music/animator/Animator;->mFrameDelay:J

    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 3
    .parameter "duration"
    .parameter "valueFrom"
    .parameter "valueTo"

    .prologue
    .line 253
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/music/animator/Animator;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 254
    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 3
    .parameter "duration"
    .parameter "valueFrom"
    .parameter "valueTo"

    .prologue
    .line 231
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/music/animator/Animator;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 232
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3
    .parameter "duration"
    .parameter "valueFrom"
    .parameter "valueTo"

    .prologue
    .line 242
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/music/animator/Animator;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 243
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "duration"
    .parameter "valueFrom"
    .parameter "valueTo"

    .prologue
    .line 264
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/music/animator/Animator;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 266
    return-void

    .line 264
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method private constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 4
    .parameter "duration"
    .parameter "valueFrom"
    .parameter "valueTo"
    .parameter "valueType"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v2, p0, Lcom/google/android/music/animator/Animator;->playingBackwards:Z

    .line 84
    iput v2, p0, Lcom/google/android/music/animator/Animator;->currentIteration:I

    .line 89
    iput-boolean v2, p0, Lcom/google/android/music/animator/Animator;->startedDelay:Z

    .line 104
    iput v2, p0, Lcom/google/android/music/animator/Animator;->playingState:I

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/animator/Animator;->mStartDelay:J

    .line 134
    iput v2, p0, Lcom/google/android/music/animator/Animator;->mRepeatCount:I

    .line 141
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/music/animator/Animator;->mRepeatMode:I

    .line 148
    sget-object v0, Lcom/google/android/music/animator/Animator;->defaultInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/music/animator/Animator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 161
    iput-object v3, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    .line 166
    iput-object v3, p0, Lcom/google/android/music/animator/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 172
    iput-object v3, p0, Lcom/google/android/music/animator/Animator;->mAnimatedValue:Ljava/lang/Object;

    .line 200
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/android/music/animator/Animator;->mDuration:J

    .line 201
    iput-object p2, p0, Lcom/google/android/music/animator/Animator;->mValueFrom:Ljava/lang/Object;

    .line 202
    iput-object p3, p0, Lcom/google/android/music/animator/Animator;->mValueTo:Ljava/lang/Object;

    .line 203
    iput-object p4, p0, Lcom/google/android/music/animator/Animator;->mValueType:Ljava/lang/Class;

    .line 204
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/music/animator/Animator;->animations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/music/animator/Animator;->delayedAnims:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000()J
    .locals 2

    .prologue
    .line 21
    sget-wide v0, Lcom/google/android/music/animator/Animator;->mFrameDelay:J

    return-wide v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/music/animator/Animator;->pendingAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/animator/Animator;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/google/android/music/animator/Animator;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/music/animator/Animator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/music/animator/Animator;->startAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/animator/Animator;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/animator/Animator;->delayedAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/music/animator/Animator;->readyAnims:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/animator/Animator;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/animator/Animator;->animationFrame(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/music/animator/Animator;->endingAnims:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/animator/Animator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/music/animator/Animator;->endAnimation()V

    return-void
.end method

.method private animationFrame(J)Z
    .locals 9
    .parameter "currentTime"

    .prologue
    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    .line 662
    const/4 v0, 0x0

    .line 664
    .local v0, done:Z
    iget v4, p0, Lcom/google/android/music/animator/Animator;->playingState:I

    if-nez v4, :cond_0

    .line 665
    iput v7, p0, Lcom/google/android/music/animator/Animator;->playingState:I

    .line 666
    iput-wide p1, p0, Lcom/google/android/music/animator/Animator;->startTime:J

    .line 668
    :cond_0
    iget v4, p0, Lcom/google/android/music/animator/Animator;->playingState:I

    packed-switch v4, :pswitch_data_0

    .line 707
    :goto_0
    return v0

    .line 670
    :pswitch_0
    iget-wide v4, p0, Lcom/google/android/music/animator/Animator;->startTime:J

    sub-long v4, p1, v4

    long-to-float v4, v4

    iget-wide v5, p0, Lcom/google/android/music/animator/Animator;->mDuration:J

    long-to-float v5, v5

    div-float v1, v4, v5

    .line 671
    .local v1, fraction:F
    cmpl-float v4, v1, v8

    if-ltz v4, :cond_4

    .line 673
    iget v4, p0, Lcom/google/android/music/animator/Animator;->currentIteration:I

    iget v5, p0, Lcom/google/android/music/animator/Animator;->mRepeatCount:I

    if-lt v4, v5, :cond_1

    iget v4, p0, Lcom/google/android/music/animator/Animator;->mRepeatCount:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 675
    :cond_1
    iget-object v4, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 676
    iget-object v4, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/animator/AnimatorListener;

    .line 677
    .local v3, listener:Lcom/google/android/music/animator/AnimatorListener;
    invoke-interface {v3, p0}, Lcom/google/android/music/animator/AnimatorListener;->onAnimationRepeat(Lcom/google/android/music/animator/Animator;)V

    goto :goto_1

    .line 678
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/google/android/music/animator/AnimatorListener;
    :cond_2
    iget v4, p0, Lcom/google/android/music/animator/Animator;->currentIteration:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/music/animator/Animator;->currentIteration:I

    .line 679
    iget v4, p0, Lcom/google/android/music/animator/Animator;->mRepeatMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 680
    iget-boolean v4, p0, Lcom/google/android/music/animator/Animator;->playingBackwards:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, p0, Lcom/google/android/music/animator/Animator;->playingBackwards:Z

    .line 682
    :cond_3
    sub-float/2addr v1, v8

    .line 683
    iget-wide v4, p0, Lcom/google/android/music/animator/Animator;->startTime:J

    iget-wide v6, p0, Lcom/google/android/music/animator/Animator;->mDuration:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/music/animator/Animator;->startTime:J

    .line 690
    :cond_4
    :goto_3
    iget-boolean v4, p0, Lcom/google/android/music/animator/Animator;->playingBackwards:Z

    if-eqz v4, :cond_5

    .line 691
    sub-float v1, v8, v1

    .line 692
    :cond_5
    invoke-virtual {p0, v1}, Lcom/google/android/music/animator/Animator;->animateValue(F)V

    goto :goto_0

    :cond_6
    move v4, v7

    .line 680
    goto :goto_2

    .line 686
    :cond_7
    const/4 v0, 0x1

    .line 687
    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_3

    .line 697
    .end local v1           #fraction:F
    :pswitch_1
    iget v4, p0, Lcom/google/android/music/animator/Animator;->mRepeatCount:I

    if-lez v4, :cond_8

    iget v4, p0, Lcom/google/android/music/animator/Animator;->mRepeatCount:I

    rem-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_8

    .line 698
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/google/android/music/animator/Animator;->animateValue(F)V

    .line 703
    :goto_4
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 700
    :cond_8
    invoke-virtual {p0, v8}, Lcom/google/android/music/animator/Animator;->animateValue(F)V

    goto :goto_4

    .line 668
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private delayedAnimationFrame(J)Z
    .locals 5
    .parameter "currentTime"

    .prologue
    const/4 v4, 0x1

    .line 632
    iget-boolean v2, p0, Lcom/google/android/music/animator/Animator;->startedDelay:Z

    if-nez v2, :cond_1

    .line 633
    iput-boolean v4, p0, Lcom/google/android/music/animator/Animator;->startedDelay:Z

    .line 634
    iput-wide p1, p0, Lcom/google/android/music/animator/Animator;->delayStartTime:J

    .line 646
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 637
    :cond_1
    iget-wide v2, p0, Lcom/google/android/music/animator/Animator;->delayStartTime:J

    sub-long v0, p1, v2

    .line 638
    .local v0, deltaTime:J
    iget-wide v2, p0, Lcom/google/android/music/animator/Animator;->mStartDelay:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 641
    iget-wide v2, p0, Lcom/google/android/music/animator/Animator;->mStartDelay:J

    sub-long v2, v0, v2

    sub-long v2, p1, v2

    iput-wide v2, p0, Lcom/google/android/music/animator/Animator;->startTime:J

    .line 642
    iput v4, p0, Lcom/google/android/music/animator/Animator;->playingState:I

    move v2, v4

    .line 643
    goto :goto_0
.end method

.method private endAnimation()V
    .locals 3

    .prologue
    .line 602
    sget-object v2, Lcom/google/android/music/animator/Animator;->animations:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 603
    iget-object v2, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 604
    iget-object v2, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/animator/AnimatorListener;

    .line 605
    .local v1, listener:Lcom/google/android/music/animator/AnimatorListener;
    invoke-interface {v1, p0}, Lcom/google/android/music/animator/AnimatorListener;->onAnimationEnd(Lcom/google/android/music/animator/Animator;)V

    goto :goto_0

    .line 606
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/music/animator/AnimatorListener;
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/music/animator/Animator;->playingState:I

    .line 607
    return-void
.end method

.method public static getFrameDelay()J
    .locals 2

    .prologue
    .line 385
    sget-wide v0, Lcom/google/android/music/animator/Animator;->mFrameDelay:J

    return-wide v0
.end method

.method public static setFrameDelay(J)V
    .locals 0
    .parameter "frameDelay"

    .prologue
    .line 415
    sput-wide p0, Lcom/google/android/music/animator/Animator;->mFrameDelay:J

    .line 416
    return-void
.end method

.method private startAnimation()V
    .locals 3

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/google/android/music/animator/Animator;->initAnimation()V

    .line 615
    sget-object v2, Lcom/google/android/music/animator/Animator;->animations:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v2, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 617
    iget-object v2, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/animator/AnimatorListener;

    .line 618
    .local v1, listener:Lcom/google/android/music/animator/AnimatorListener;
    invoke-interface {v1, p0}, Lcom/google/android/music/animator/AnimatorListener;->onAnimationStart(Lcom/google/android/music/animator/Animator;)V

    goto :goto_0

    .line 619
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/music/animator/AnimatorListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/music/animator/AnimatorListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    return-void
.end method

.method public addUpdateListener(Lcom/google/android/music/animator/AnimatorUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/animator/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    return-void
.end method

.method animateValue(F)V
    .locals 5
    .parameter "fraction"

    .prologue
    .line 723
    iget-object v2, p0, Lcom/google/android/music/animator/Animator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 724
    iget-object v2, p0, Lcom/google/android/music/animator/Animator;->mEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

    iget-object v3, p0, Lcom/google/android/music/animator/Animator;->mValueFrom:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/music/animator/Animator;->mValueTo:Ljava/lang/Object;

    invoke-interface {v2, p1, v3, v4}, Lcom/google/android/music/animator/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/animator/Animator;->mAnimatedValue:Ljava/lang/Object;

    .line 725
    iget-object v2, p0, Lcom/google/android/music/animator/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 726
    iget-object v2, p0, Lcom/google/android/music/animator/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 727
    .local v1, numListeners:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 728
    iget-object v2, p0, Lcom/google/android/music/animator/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/animator/AnimatorUpdateListener;

    invoke-interface {v2, p0}, Lcom/google/android/music/animator/AnimatorUpdateListener;->onAnimationUpdate(Lcom/google/android/music/animator/Animator;)V

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 730
    .end local v0           #i:I
    .end local v1           #numListeners:I
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/music/animator/Animator;->playingState:I

    .line 585
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/music/animator/Animator;->playingState:I

    .line 595
    return-void
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mAnimatedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/google/android/music/animator/Animator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/google/android/music/animator/Animator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 364
    iget-wide v0, p0, Lcom/google/android/music/animator/Animator;->mStartDelay:J

    return-wide v0
.end method

.method public getValueFrom()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mValueFrom:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueTo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mValueTo:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mValueType:Ljava/lang/Class;

    return-object v0
.end method

.method initAnimation()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mValueType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/android/music/animator/Animator;->intEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

    :goto_0
    iput-object v0, p0, Lcom/google/android/music/animator/Animator;->mEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

    .line 221
    :cond_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mValueType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/google/android/music/animator/Animator;->doubleEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/music/animator/Animator;->floatEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

    goto :goto_0
.end method

.method public removeListener(Lcom/google/android/music/animator/AnimatorListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 513
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public removeUpdateListener(Lcom/google/android/music/animator/AnimatorUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 527
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/animator/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setEvaluator(Lcom/google/android/music/animator/TypeEvaluator;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 555
    if-eqz p1, :cond_0

    .line 556
    iput-object p1, p0, Lcom/google/android/music/animator/Animator;->mEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

    .line 557
    :cond_0
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 539
    if-eqz p1, :cond_0

    .line 540
    iput-object p1, p0, Lcom/google/android/music/animator/Animator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 541
    :cond_0
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 443
    iput p1, p0, Lcom/google/android/music/animator/Animator;->mRepeatCount:I

    .line 444
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 465
    iput p1, p0, Lcom/google/android/music/animator/Animator;->mRepeatMode:I

    .line 466
    return-void
.end method

.method public setStartDelay(J)V
    .locals 0
    .parameter "startDelay"

    .prologue
    .line 373
    iput-wide p1, p0, Lcom/google/android/music/animator/Animator;->mStartDelay:J

    .line 374
    return-void
.end method

.method public setValueFrom(Ljava/lang/Object;)V
    .locals 0
    .parameter "valueFrom"

    .prologue
    .line 392
    iput-object p1, p0, Lcom/google/android/music/animator/Animator;->mValueFrom:Ljava/lang/Object;

    .line 393
    return-void
.end method

.method public setValueTo(Ljava/lang/Object;)V
    .locals 0
    .parameter "valueTo"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/google/android/music/animator/Animator;->mValueTo:Ljava/lang/Object;

    .line 400
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 567
    sget-object v0, Lcom/google/android/music/animator/Animator;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    sget-object v0, Lcom/google/android/music/animator/Animator;->animationHandler:Lcom/google/android/music/animator/Animator$AnimationHandler;

    if-nez v0, :cond_0

    .line 569
    new-instance v0, Lcom/google/android/music/animator/Animator$AnimationHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/animator/Animator$AnimationHandler;-><init>(Lcom/google/android/music/animator/Animator$1;)V

    sput-object v0, Lcom/google/android/music/animator/Animator;->animationHandler:Lcom/google/android/music/animator/Animator$AnimationHandler;

    .line 573
    :cond_0
    sget-object v0, Lcom/google/android/music/animator/Animator;->animationHandler:Lcom/google/android/music/animator/Animator$AnimationHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/animator/Animator$AnimationHandler;->sendEmptyMessage(I)Z

    .line 574
    return-void
.end method
