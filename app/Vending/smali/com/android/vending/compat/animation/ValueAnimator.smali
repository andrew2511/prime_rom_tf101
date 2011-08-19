.class public Lcom/android/vending/compat/animation/ValueAnimator;
.super Lcom/android/vending/compat/animation/Animator;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/compat/animation/ValueAnimator$1;,
        Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;,
        Lcom/android/vending/compat/animation/ValueAnimator$AnimationHandler;
    }
.end annotation


# static fields
.field private static sAnimationHandler:Lcom/android/vending/compat/animation/ValueAnimator$AnimationHandler;

.field private static final sAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/compat/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultInterpolator:Lcom/android/vending/compat/animation/TimeInterpolator;

.field private static final sDelayedAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/compat/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDoubleEvaluator:Lcom/android/vending/compat/animation/TypeEvaluator;

.field private static final sEndingAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/compat/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFloatEvaluator:Lcom/android/vending/compat/animation/TypeEvaluator;

.field private static sFrameDelay:J

.field private static final sIntEvaluator:Lcom/android/vending/compat/animation/TypeEvaluator;

.field private static final sPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/compat/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private static final sReadyAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/compat/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentIteration:I

.field private mDelayStartTime:J

.field private mDuration:J

.field mInitialized:Z

.field private mInterpolator:Lcom/android/vending/compat/animation/TimeInterpolator;

.field private mPlayingBackwards:Z

.field private mPlayingState:I

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mSeekTime:J

.field private mStartDelay:J

.field private mStartTime:J

.field private mStartedDelay:Z

.field private mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Lcom/android/vending/compat/animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/vending/compat/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/vending/compat/animation/ValueAnimator;->sAnimations:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/vending/compat/animation/ValueAnimator;->sPendingAnimations:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Lcom/android/vending/compat/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Lcom/android/vending/compat/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/vending/compat/animation/ValueAnimator;->sDefaultInterpolator:Lcom/android/vending/compat/animation/TimeInterpolator;

    .line 87
    new-instance v0, Lcom/android/vending/compat/animation/IntEvaluator;

    invoke-direct {v0}, Lcom/android/vending/compat/animation/IntEvaluator;-><init>()V

    sput-object v0, Lcom/android/vending/compat/animation/ValueAnimator;->sIntEvaluator:Lcom/android/vending/compat/animation/TypeEvaluator;

    .line 88
    new-instance v0, Lcom/android/vending/compat/animation/FloatEvaluator;

    invoke-direct {v0}, Lcom/android/vending/compat/animation/FloatEvaluator;-><init>()V

    sput-object v0, Lcom/android/vending/compat/animation/ValueAnimator;->sFloatEvaluator:Lcom/android/vending/compat/animation/TypeEvaluator;

    .line 89
    new-instance v0, Lcom/android/vending/compat/animation/DoubleEvaluator;

    invoke-direct {v0}, Lcom/android/vending/compat/animation/DoubleEvaluator;-><init>()V

    sput-object v0, Lcom/android/vending/compat/animation/ValueAnimator;->sDoubleEvaluator:Lcom/android/vending/compat/animation/TypeEvaluator;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/vending/compat/animation/ValueAnimator;->sEndingAnims:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/vending/compat/animation/ValueAnimator;->sDelayedAnims:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/vending/compat/animation/ValueAnimator;->sReadyAnims:Ljava/util/ArrayList;

    .line 149
    const-wide/16 v0, 0xa

    sput-wide v0, Lcom/android/vending/compat/animation/ValueAnimator;->sFrameDelay:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-direct {p0}, Lcom/android/vending/compat/animation/Animator;-><init>()V

    .line 70
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mSeekTime:J

    .line 95
    iput-boolean v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 101
    iput v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mCurrentIteration:I

    .line 106
    iput-boolean v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mStartedDelay:Z

    .line 122
    iput v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingState:I

    .line 136
    iput-boolean v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mInitialized:Z

    .line 143
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mDuration:J

    .line 146
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mStartDelay:J

    .line 153
    iput v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mRepeatCount:I

    .line 160
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mRepeatMode:I

    .line 167
    sget-object v0, Lcom/android/vending/compat/animation/ValueAnimator;->sDefaultInterpolator:Lcom/android/vending/compat/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mInterpolator:Lcom/android/vending/compat/animation/TimeInterpolator;

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 211
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/vending/compat/animation/ValueAnimator;->sAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/vending/compat/animation/ValueAnimator;->sDelayedAnims:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/vending/compat/animation/ValueAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/vending/compat/animation/ValueAnimator;->endAnimation()V

    return-void
.end method

.method static synthetic access$1100()J
    .locals 2

    .prologue
    .line 26
    sget-wide v0, Lcom/android/vending/compat/animation/ValueAnimator;->sFrameDelay:J

    return-wide v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/vending/compat/animation/ValueAnimator;->sPendingAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/vending/compat/animation/ValueAnimator;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/vending/compat/animation/ValueAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/vending/compat/animation/ValueAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/vending/compat/animation/ValueAnimator;->startAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/vending/compat/animation/ValueAnimator;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/vending/compat/animation/ValueAnimator;->delayedAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/vending/compat/animation/ValueAnimator;->sReadyAnims:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/vending/compat/animation/ValueAnimator;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/vending/compat/animation/ValueAnimator;->animationFrame(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/vending/compat/animation/ValueAnimator;->sEndingAnims:Ljava/util/ArrayList;

    return-object v0
.end method

.method private animationFrame(J)Z
    .locals 11
    .parameter "currentTime"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/high16 v8, 0x3f80

    .line 1071
    const/4 v0, 0x0

    .line 1073
    .local v0, done:Z
    iget v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingState:I

    if-nez v4, :cond_0

    .line 1074
    iput v9, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingState:I

    .line 1075
    iget-wide v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mSeekTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 1076
    iput-wide p1, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mStartTime:J

    .line 1083
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingState:I

    packed-switch v4, :pswitch_data_0

    .line 1127
    :goto_1
    return v0

    .line 1078
    :cond_1
    iget-wide v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mSeekTime:J

    sub-long v4, p1, v4

    iput-wide v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mStartTime:J

    .line 1080
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mSeekTime:J

    goto :goto_0

    .line 1086
    :pswitch_0
    iget-wide v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mStartTime:J

    sub-long v4, p1, v4

    long-to-float v4, v4

    iget-wide v5, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mDuration:J

    long-to-float v5, v5

    div-float v1, v4, v5

    .line 1087
    .local v1, fraction:F
    cmpl-float v4, v1, v8

    if-ltz v4, :cond_5

    .line 1088
    iget v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mCurrentIteration:I

    iget v5, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mRepeatCount:I

    if-lt v4, v5, :cond_2

    iget v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mRepeatCount:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    .line 1090
    :cond_2
    iget-object v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1091
    iget-object v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/compat/animation/Animator$AnimatorListener;

    .line 1092
    .local v3, listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    invoke-interface {v3, p0}, Lcom/android/vending/compat/animation/Animator$AnimatorListener;->onAnimationRepeat(Lcom/android/vending/compat/animation/Animator;)V

    goto :goto_2

    .line 1095
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    :cond_3
    iget v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mCurrentIteration:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mCurrentIteration:I

    .line 1096
    iget v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mRepeatMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 1097
    iget-boolean v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v4, :cond_7

    move v4, v10

    :goto_3
    iput-boolean v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1100
    :cond_4
    sub-float/2addr v1, v8

    .line 1101
    iget-wide v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mStartTime:J

    iget-wide v6, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mDuration:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mStartTime:J

    .line 1107
    :cond_5
    :goto_4
    iget-boolean v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v4, :cond_6

    .line 1108
    sub-float v1, v8, v1

    .line 1110
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/vending/compat/animation/ValueAnimator;->animateValue(F)V

    goto :goto_1

    :cond_7
    move v4, v9

    .line 1097
    goto :goto_3

    .line 1103
    :cond_8
    const/4 v0, 0x1

    .line 1104
    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_4

    .line 1115
    .end local v1           #fraction:F
    :pswitch_1
    iget v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mRepeatCount:I

    if-lez v4, :cond_9

    iget v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mRepeatCount:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v9, :cond_9

    .line 1116
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/vending/compat/animation/ValueAnimator;->animateValue(F)V

    .line 1122
    :goto_5
    :pswitch_2
    const/4 v0, 0x1

    .line 1123
    iput v10, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingState:I

    goto :goto_1

    .line 1118
    :cond_9
    invoke-virtual {p0, v8}, Lcom/android/vending/compat/animation/ValueAnimator;->animateValue(F)V

    goto :goto_5

    .line 1083
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private delayedAnimationFrame(J)Z
    .locals 5
    .parameter "currentTime"

    .prologue
    const/4 v4, 0x1

    .line 1038
    iget v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    move v2, v4

    .line 1055
    :goto_0
    return v2

    .line 1042
    :cond_1
    iget-boolean v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mStartedDelay:Z

    if-nez v2, :cond_3

    .line 1043
    iput-boolean v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mStartedDelay:Z

    .line 1044
    iput-wide p1, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mDelayStartTime:J

    .line 1055
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1046
    :cond_3
    iget-wide v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mDelayStartTime:J

    sub-long v0, p1, v2

    .line 1047
    .local v0, deltaTime:J
    iget-wide v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mStartDelay:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 1050
    iget-wide v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mStartDelay:J

    sub-long v2, v0, v2

    sub-long v2, p1, v2

    iput-wide v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mStartTime:J

    .line 1051
    iput v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingState:I

    move v2, v4

    .line 1052
    goto :goto_0
.end method

.method private endAnimation()V
    .locals 4

    .prologue
    .line 998
    sget-object v3, Lcom/android/vending/compat/animation/ValueAnimator;->sAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 999
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingState:I

    .line 1000
    iget-object v3, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1001
    iget-object v3, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1003
    .local v2, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/compat/animation/Animator$AnimatorListener;

    .line 1004
    .local v1, listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Lcom/android/vending/compat/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/android/vending/compat/animation/Animator;)V

    goto :goto_0

    .line 1007
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    .end local v2           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    :cond_0
    return-void
.end method

.method public static varargs ofFloat([F)Lcom/android/vending/compat/animation/ValueAnimator;
    .locals 1
    .parameter "values"

    .prologue
    .line 242
    new-instance v0, Lcom/android/vending/compat/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/android/vending/compat/animation/ValueAnimator;-><init>()V

    .line 243
    .local v0, anim:Lcom/android/vending/compat/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Lcom/android/vending/compat/animation/ValueAnimator;->setFloatValues([F)V

    .line 244
    return-object v0
.end method

.method public static varargs ofInt([I)Lcom/android/vending/compat/animation/ValueAnimator;
    .locals 1
    .parameter "values"

    .prologue
    .line 225
    new-instance v0, Lcom/android/vending/compat/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/android/vending/compat/animation/ValueAnimator;-><init>()V

    .line 226
    .local v0, anim:Lcom/android/vending/compat/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Lcom/android/vending/compat/animation/ValueAnimator;->setIntValues([I)V

    .line 227
    return-object v0
.end method

.method private start(Z)V
    .locals 10
    .parameter "playBackwards"

    .prologue
    const/4 v9, 0x0

    .line 901
    iput-boolean p1, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 902
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 904
    .local v3, looper:Landroid/os/Looper;
    if-eqz v3, :cond_1

    .line 905
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    move v1, v5

    .line 910
    .local v1, isUiThread:Z
    :goto_0
    iget-wide v5, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    if-eqz v1, :cond_3

    .line 911
    iget-object v5, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 912
    iget-object v5, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 914
    .local v4, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/compat/animation/Animator$AnimatorListener;

    .line 915
    .local v2, listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    invoke-interface {v2, p0}, Lcom/android/vending/compat/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/android/vending/compat/animation/Animator;)V

    goto :goto_1

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #isUiThread:Z
    .end local v2           #listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    .end local v4           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    :cond_0
    move v1, v9

    .line 905
    goto :goto_0

    .line 908
    :cond_1
    const/4 v1, 0x1

    .restart local v1       #isUiThread:Z
    goto :goto_0

    .line 919
    :cond_2
    invoke-virtual {p0}, Lcom/android/vending/compat/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/android/vending/compat/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 921
    :cond_3
    iput v9, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mCurrentIteration:I

    .line 922
    iput v9, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingState:I

    .line 923
    iput-boolean v9, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mStartedDelay:Z

    .line 924
    sget-object v5, Lcom/android/vending/compat/animation/ValueAnimator;->sPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    sget-object v5, Lcom/android/vending/compat/animation/ValueAnimator;->sAnimationHandler:Lcom/android/vending/compat/animation/ValueAnimator$AnimationHandler;

    if-nez v5, :cond_4

    .line 926
    new-instance v5, Lcom/android/vending/compat/animation/ValueAnimator$AnimationHandler;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/vending/compat/animation/ValueAnimator$AnimationHandler;-><init>(Lcom/android/vending/compat/animation/ValueAnimator$1;)V

    sput-object v5, Lcom/android/vending/compat/animation/ValueAnimator;->sAnimationHandler:Lcom/android/vending/compat/animation/ValueAnimator$AnimationHandler;

    .line 930
    :cond_4
    sget-object v5, Lcom/android/vending/compat/animation/ValueAnimator;->sAnimationHandler:Lcom/android/vending/compat/animation/ValueAnimator$AnimationHandler;

    invoke-virtual {v5, v9}, Lcom/android/vending/compat/animation/ValueAnimator$AnimationHandler;->sendEmptyMessage(I)Z

    .line 931
    return-void
.end method

.method private startAnimation()V
    .locals 7

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/android/vending/compat/animation/ValueAnimator;->initAnimation()V

    .line 1015
    sget-object v3, Lcom/android/vending/compat/animation/ValueAnimator;->sAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    iget-wide v3, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1019
    iget-object v3, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1021
    .local v2, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/compat/animation/Animator$AnimatorListener;

    .line 1022
    .local v1, listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Lcom/android/vending/compat/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/android/vending/compat/animation/Animator;)V

    goto :goto_0

    .line 1025
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    .end local v2           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public addUpdateListener(Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    return-void
.end method

.method animateValue(F)V
    .locals 4
    .parameter "fraction"

    .prologue
    .line 1143
    iget-object v3, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mInterpolator:Lcom/android/vending/compat/animation/TimeInterpolator;

    invoke-interface {v3, p1}, Lcom/android/vending/compat/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 1144
    iget-object v3, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mValues:[Lcom/android/vending/compat/animation/PropertyValuesHolder;

    array-length v2, v3

    .line 1145
    .local v2, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1146
    iget-object v3, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mValues:[Lcom/android/vending/compat/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/android/vending/compat/animation/PropertyValuesHolder;->calculateValue(F)Ljava/lang/Object;

    .line 1145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1148
    :cond_0
    iget-object v3, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1149
    iget-object v3, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1150
    .local v1, numListeners:I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1151
    iget-object v3, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v3, p0}, Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Lcom/android/vending/compat/animation/ValueAnimator;)V

    .line 1150
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1154
    .end local v1           #numListeners:I
    :cond_1
    return-void
.end method

.method public cancel()V
    .locals 4

    .prologue
    .line 940
    iget-object v3, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 941
    iget-object v3, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 943
    .local v2, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/compat/animation/Animator$AnimatorListener;

    .line 944
    .local v1, listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Lcom/android/vending/compat/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/android/vending/compat/animation/Animator;)V

    goto :goto_0

    .line 949
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    .end local v2           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    :cond_0
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingState:I

    .line 950
    return-void
.end method

.method public bridge synthetic clone()Lcom/android/vending/compat/animation/Animator;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/vending/compat/animation/ValueAnimator;->clone()Lcom/android/vending/compat/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/android/vending/compat/animation/ValueAnimator;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1158
    invoke-super {p0}, Lcom/android/vending/compat/animation/Animator;->clone()Lcom/android/vending/compat/animation/Animator;

    move-result-object v0

    check-cast v0, Lcom/android/vending/compat/animation/ValueAnimator;

    .line 1159
    .local v0, anim:Lcom/android/vending/compat/animation/ValueAnimator;
    iget-object v7, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 1160
    iget-object v4, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1161
    .local v4, oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/android/vending/compat/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1162
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1163
    .local v2, numListeners:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1164
    iget-object v7, v0, Lcom/android/vending/compat/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1167
    .end local v1           #i:I
    .end local v2           #numListeners:I
    .end local v4           #oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;>;"
    :cond_0
    const-wide/16 v7, -0x1

    iput-wide v7, v0, Lcom/android/vending/compat/animation/ValueAnimator;->mSeekTime:J

    .line 1168
    iput-boolean v9, v0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1169
    iput v9, v0, Lcom/android/vending/compat/animation/ValueAnimator;->mCurrentIteration:I

    .line 1170
    iput-boolean v9, v0, Lcom/android/vending/compat/animation/ValueAnimator;->mInitialized:Z

    .line 1171
    iput v9, v0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingState:I

    .line 1172
    iput-boolean v9, v0, Lcom/android/vending/compat/animation/ValueAnimator;->mStartedDelay:Z

    .line 1173
    iget-object v5, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mValues:[Lcom/android/vending/compat/animation/PropertyValuesHolder;

    .line 1174
    .local v5, oldValues:[Lcom/android/vending/compat/animation/PropertyValuesHolder;
    if-eqz v5, :cond_2

    .line 1175
    array-length v3, v5

    .line 1176
    .local v3, numValues:I
    new-array v7, v3, [Lcom/android/vending/compat/animation/PropertyValuesHolder;

    iput-object v7, v0, Lcom/android/vending/compat/animation/ValueAnimator;->mValues:[Lcom/android/vending/compat/animation/PropertyValuesHolder;

    .line 1177
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 1178
    iget-object v7, v0, Lcom/android/vending/compat/animation/ValueAnimator;->mValues:[Lcom/android/vending/compat/animation/PropertyValuesHolder;

    aget-object v8, v5, v1

    invoke-virtual {v8}, Lcom/android/vending/compat/animation/PropertyValuesHolder;->clone()Lcom/android/vending/compat/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v7, v1

    .line 1177
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1180
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, v0, Lcom/android/vending/compat/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 1181
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_2

    .line 1182
    iget-object v7, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mValues:[Lcom/android/vending/compat/animation/PropertyValuesHolder;

    aget-object v6, v7, v1

    .line 1183
    .local v6, valuesHolder:Lcom/android/vending/compat/animation/PropertyValuesHolder;
    iget-object v7, v0, Lcom/android/vending/compat/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/android/vending/compat/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1186
    .end local v1           #i:I
    .end local v3           #numValues:I
    .end local v6           #valuesHolder:Lcom/android/vending/compat/animation/PropertyValuesHolder;
    :cond_2
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/vending/compat/animation/ValueAnimator;->clone()Lcom/android/vending/compat/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 954
    sget-object v0, Lcom/android/vending/compat/animation/ValueAnimator;->sAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/vending/compat/animation/ValueAnimator;->sPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 956
    iput-boolean v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mStartedDelay:Z

    .line 957
    sget-object v0, Lcom/android/vending/compat/animation/ValueAnimator;->sPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    sget-object v0, Lcom/android/vending/compat/animation/ValueAnimator;->sAnimationHandler:Lcom/android/vending/compat/animation/ValueAnimator$AnimationHandler;

    if-nez v0, :cond_0

    .line 959
    new-instance v0, Lcom/android/vending/compat/animation/ValueAnimator$AnimationHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/vending/compat/animation/ValueAnimator$AnimationHandler;-><init>(Lcom/android/vending/compat/animation/ValueAnimator$1;)V

    sput-object v0, Lcom/android/vending/compat/animation/ValueAnimator;->sAnimationHandler:Lcom/android/vending/compat/animation/ValueAnimator$AnimationHandler;

    .line 961
    :cond_0
    sget-object v0, Lcom/android/vending/compat/animation/ValueAnimator;->sAnimationHandler:Lcom/android/vending/compat/animation/ValueAnimator$AnimationHandler;

    invoke-virtual {v0, v2}, Lcom/android/vending/compat/animation/ValueAnimator$AnimationHandler;->sendEmptyMessage(I)Z

    .line 965
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingState:I

    .line 966
    return-void
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mValues:[Lcom/android/vending/compat/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mValues:[Lcom/android/vending/compat/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mValues:[Lcom/android/vending/compat/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/vending/compat/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    .line 741
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPlayTime()J
    .locals 4

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_1

    .line 569
    :cond_0
    const-wide/16 v0, 0x0

    .line 571
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method initAnimation()V
    .locals 3

    .prologue
    .line 507
    iget-boolean v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mInitialized:Z

    if-nez v2, :cond_1

    .line 508
    iget-object v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mValues:[Lcom/android/vending/compat/animation/PropertyValuesHolder;

    array-length v1, v2

    .line 509
    .local v1, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 510
    iget-object v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mValues:[Lcom/android/vending/compat/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/vending/compat/animation/PropertyValuesHolder;->init()V

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mInitialized:Z

    .line 514
    .end local v0           #i:I
    .end local v1           #numValues:I
    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 971
    iget v0, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentPlayTime(J)V
    .locals 4
    .parameter "playTime"

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/android/vending/compat/animation/ValueAnimator;->initAnimation()V

    .line 551
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 552
    .local v0, currentTime:J
    iget v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 553
    iput-wide p1, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mSeekTime:J

    .line 554
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mPlayingState:I

    .line 556
    :cond_0
    sub-long v2, v0, p1

    iput-wide v2, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mStartTime:J

    .line 557
    invoke-direct {p0, v0, v1}, Lcom/android/vending/compat/animation/ValueAnimator;->animationFrame(J)Z

    .line 558
    return-void
.end method

.method public bridge synthetic setDuration(J)Lcom/android/vending/compat/animation/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/compat/animation/ValueAnimator;->setDuration(J)Lcom/android/vending/compat/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Lcom/android/vending/compat/animation/ValueAnimator;
    .locals 0
    .parameter "duration"

    .prologue
    .line 526
    iput-wide p1, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mDuration:J

    .line 527
    return-object p0
.end method

.method public varargs setFloatValues([F)V
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 362
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mValues:[Lcom/android/vending/compat/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mValues:[Lcom/android/vending/compat/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 366
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/vending/compat/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Lcom/android/vending/compat/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lcom/android/vending/compat/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/vending/compat/animation/ValueAnimator;->setValues([Lcom/android/vending/compat/animation/PropertyValuesHolder;)V

    .line 372
    :goto_1
    iput-boolean v3, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 368
    :cond_3
    iget-object v1, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mValues:[Lcom/android/vending/compat/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 369
    .local v0, valuesHolder:Lcom/android/vending/compat/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Lcom/android/vending/compat/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_1
.end method

.method public varargs setIntValues([I)V
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 334
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mValues:[Lcom/android/vending/compat/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mValues:[Lcom/android/vending/compat/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 338
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/vending/compat/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Lcom/android/vending/compat/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lcom/android/vending/compat/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/vending/compat/animation/ValueAnimator;->setValues([Lcom/android/vending/compat/animation/PropertyValuesHolder;)V

    .line 344
    :goto_1
    iput-boolean v3, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 340
    :cond_3
    iget-object v1, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mValues:[Lcom/android/vending/compat/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 341
    .local v0, valuesHolder:Lcom/android/vending/compat/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Lcom/android/vending/compat/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_1
.end method

.method public setInterpolator(Lcom/android/vending/compat/animation/TimeInterpolator;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 857
    if-eqz p1, :cond_0

    .line 858
    iput-object p1, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mInterpolator:Lcom/android/vending/compat/animation/TimeInterpolator;

    .line 860
    :cond_0
    return-void
.end method

.method public varargs setValues([Lcom/android/vending/compat/animation/PropertyValuesHolder;)V
    .locals 5
    .parameter "values"

    .prologue
    .line 473
    array-length v1, p1

    .line 474
    .local v1, numValues:I
    iput-object p1, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mValues:[Lcom/android/vending/compat/animation/PropertyValuesHolder;

    .line 475
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 476
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 477
    aget-object v2, p1, v0

    .line 478
    .local v2, valuesHolder:Lcom/android/vending/compat/animation/PropertyValuesHolder;
    iget-object v3, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/vending/compat/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    .end local v2           #valuesHolder:Lcom/android/vending/compat/animation/PropertyValuesHolder;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/vending/compat/animation/ValueAnimator;->mInitialized:Z

    .line 482
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 935
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vending/compat/animation/ValueAnimator;->start(Z)V

    .line 936
    return-void
.end method
