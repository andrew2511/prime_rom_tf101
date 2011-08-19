.class public Lcom/google/android/gm/AnimatingViewData;
.super Ljava/lang/Object;
.source "AnimatingViewData.java"


# static fields
.field private static sViewDataPool:Lcom/google/android/gm/AnimatingViewData;

.field private static sViewDataPoolCount:I


# instance fields
.field public animatedHeight:I

.field public cancelled:Z

.field public id:J

.field public initialHeight:I

.field private mAnimator:Landroid/animation/Animator;

.field mDataSetObservable:Landroid/database/DataSetObservable;

.field private mNext:Lcom/google/android/gm/AnimatingViewData;

.field private mView:Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;

.field public position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/google/android/gm/AnimatingViewData;->initialHeight:I

    .line 30
    iput v0, p0, Lcom/google/android/gm/AnimatingViewData;->animatedHeight:I

    return-void
.end method

.method public static obtainViewData(Landroid/database/DataSetObservable;J)Lcom/google/android/gm/AnimatingViewData;
    .locals 4
    .parameter "observable"
    .parameter "id"

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/gm/AnimatingViewData;->sViewDataPool:Lcom/google/android/gm/AnimatingViewData;

    .line 44
    .local v0, result:Lcom/google/android/gm/AnimatingViewData;
    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/google/android/gm/AnimatingViewData;

    .end local v0           #result:Lcom/google/android/gm/AnimatingViewData;
    invoke-direct {v0}, Lcom/google/android/gm/AnimatingViewData;-><init>()V

    .line 46
    .restart local v0       #result:Lcom/google/android/gm/AnimatingViewData;
    iput-wide p1, v0, Lcom/google/android/gm/AnimatingViewData;->id:J

    .line 47
    iput-object p0, v0, Lcom/google/android/gm/AnimatingViewData;->mDataSetObservable:Landroid/database/DataSetObservable;

    move-object v1, v0

    .line 55
    .end local v0           #result:Lcom/google/android/gm/AnimatingViewData;
    .local v1, result:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 50
    .end local v1           #result:Ljava/lang/Object;
    .restart local v0       #result:Lcom/google/android/gm/AnimatingViewData;
    :cond_0
    iget-object v2, v0, Lcom/google/android/gm/AnimatingViewData;->mNext:Lcom/google/android/gm/AnimatingViewData;

    sput-object v2, Lcom/google/android/gm/AnimatingViewData;->sViewDataPool:Lcom/google/android/gm/AnimatingViewData;

    .line 51
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gm/AnimatingViewData;->mNext:Lcom/google/android/gm/AnimatingViewData;

    .line 52
    iput-object p0, v0, Lcom/google/android/gm/AnimatingViewData;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 53
    iput-wide p1, v0, Lcom/google/android/gm/AnimatingViewData;->id:J

    .line 54
    sget v2, Lcom/google/android/gm/AnimatingViewData;->sViewDataPoolCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sput v2, Lcom/google/android/gm/AnimatingViewData;->sViewDataPoolCount:I

    move-object v1, v0

    .line 55
    .restart local v1       #result:Ljava/lang/Object;
    goto :goto_0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/google/android/gm/AnimatingViewData;->cancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/AnimatingViewData;->cancelled:Z

    .line 109
    iget-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 111
    :cond_0
    return-void
.end method

.method public endAnimation()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 104
    :cond_0
    return-void
.end method

.method public getView()Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mView:Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;

    return-object v0
.end method

.method public makeDeletingAnimation(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .parameter "animationTime"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 59
    const-string v0, "animatedHeight"

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/google/android/gm/AnimatingViewData;->initialHeight:I

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mAnimator:Landroid/animation/Animator;

    .line 60
    iget-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mAnimator:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    iget-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mAnimator:Landroid/animation/Animator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 62
    iget-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 63
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 80
    sget v0, Lcom/google/android/gm/AnimatingViewData;->sViewDataPoolCount:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 81
    sget-object v0, Lcom/google/android/gm/AnimatingViewData;->sViewDataPool:Lcom/google/android/gm/AnimatingViewData;

    iput-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mNext:Lcom/google/android/gm/AnimatingViewData;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/AnimatingViewData;->cancelled:Z

    .line 83
    sput-object p0, Lcom/google/android/gm/AnimatingViewData;->sViewDataPool:Lcom/google/android/gm/AnimatingViewData;

    .line 84
    sget v0, Lcom/google/android/gm/AnimatingViewData;->sViewDataPoolCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/gm/AnimatingViewData;->sViewDataPoolCount:I

    .line 86
    :cond_0
    return-void
.end method

.method public set(Lcom/google/android/gm/AnimatingViewData;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 73
    iget v0, p1, Lcom/google/android/gm/AnimatingViewData;->position:I

    iput v0, p0, Lcom/google/android/gm/AnimatingViewData;->position:I

    .line 74
    iget-wide v0, p1, Lcom/google/android/gm/AnimatingViewData;->id:J

    iput-wide v0, p0, Lcom/google/android/gm/AnimatingViewData;->id:J

    .line 75
    iget v0, p1, Lcom/google/android/gm/AnimatingViewData;->initialHeight:I

    iput v0, p0, Lcom/google/android/gm/AnimatingViewData;->initialHeight:I

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/AnimatingViewData;->cancelled:Z

    .line 77
    return-void
.end method

.method public setAnimatedHeight(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 68
    iput p1, p0, Lcom/google/android/gm/AnimatingViewData;->animatedHeight:I

    .line 69
    iget-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 70
    return-void
.end method

.method public setView(Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/gm/AnimatingViewData;->mView:Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;

    .line 94
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 98
    return-void
.end method
