.class public Lcom/google/android/music/TransitionableViewWrapper;
.super Ljava/lang/Object;
.source "TransitionableViewWrapper.java"


# instance fields
.field private final mAnimationIn:Landroid/view/animation/Animation;

.field private final mAnimationInListener:Landroid/view/animation/Animation$AnimationListener;

.field private final mAnimationOut:Landroid/view/animation/Animation;

.field private final mAnimationOutListener:Landroid/view/animation/Animation$AnimationListener;

.field private final mView:Landroid/view/View;

.field private mVisibility:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "v"
    .parameter "animIn"
    .parameter "animOut"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/google/android/music/TransitionableViewWrapper$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/TransitionableViewWrapper$1;-><init>(Lcom/google/android/music/TransitionableViewWrapper;)V

    iput-object v0, p0, Lcom/google/android/music/TransitionableViewWrapper;->mAnimationInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 32
    new-instance v0, Lcom/google/android/music/TransitionableViewWrapper$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/TransitionableViewWrapper$2;-><init>(Lcom/google/android/music/TransitionableViewWrapper;)V

    iput-object v0, p0, Lcom/google/android/music/TransitionableViewWrapper;->mAnimationOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 45
    iput-object p1, p0, Lcom/google/android/music/TransitionableViewWrapper;->mView:Landroid/view/View;

    .line 46
    iput-object p2, p0, Lcom/google/android/music/TransitionableViewWrapper;->mAnimationIn:Landroid/view/animation/Animation;

    .line 47
    iget-object v0, p0, Lcom/google/android/music/TransitionableViewWrapper;->mAnimationIn:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/google/android/music/TransitionableViewWrapper;->mAnimationInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 48
    iput-object p3, p0, Lcom/google/android/music/TransitionableViewWrapper;->mAnimationOut:Landroid/view/animation/Animation;

    .line 49
    iget-object v0, p0, Lcom/google/android/music/TransitionableViewWrapper;->mAnimationOut:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/google/android/music/TransitionableViewWrapper;->mAnimationOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/TransitionableViewWrapper;->mVisibility:I

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/TransitionableViewWrapper;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/music/TransitionableViewWrapper;->mView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public getVisibility()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/music/TransitionableViewWrapper;->mVisibility:I

    return v0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/TransitionableViewWrapper;->setVisibility(IZ)V

    .line 59
    return-void
.end method

.method public setVisibility(IZ)V
    .locals 2
    .parameter "visibility"
    .parameter "animate"

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/music/TransitionableViewWrapper;->mVisibility:I

    if-ne p1, v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 65
    :cond_0
    iput p1, p0, Lcom/google/android/music/TransitionableViewWrapper;->mVisibility:I

    .line 66
    if-eqz p2, :cond_2

    .line 67
    iget-object v0, p0, Lcom/google/android/music/TransitionableViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 68
    if-nez p1, :cond_1

    .line 69
    iget-object v0, p0, Lcom/google/android/music/TransitionableViewWrapper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/music/TransitionableViewWrapper;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/TransitionableViewWrapper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/music/TransitionableViewWrapper;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/TransitionableViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
