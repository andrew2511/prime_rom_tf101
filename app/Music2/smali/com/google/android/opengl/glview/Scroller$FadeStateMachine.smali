.class Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;
.super Ljava/lang/Object;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/Scroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeStateMachine"
.end annotation


# static fields
.field private static final FADE_TIMEOUT_MS:J = 0x1f4L

.field public static final STATE_INVISIBLE:I = 0x0

.field public static final STATE_SELF_HIDING:I = 0x2

.field public static final STATE_VISIBLE:I = 0x1


# instance fields
.field private mAutoFade:Z

.field private mFadeInFactor:F

.field private mFrameTime:J

.field private mNextStateTime:J

.field private mState:I

.field private mTargetFadeInFactor:F


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "autoFade"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mAutoFade:Z

    .line 45
    return-void
.end method


# virtual methods
.method public animate(JF)Z
    .locals 7
    .parameter "frameTime"
    .parameter "dt"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 77
    iput-wide p1, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mFrameTime:J

    .line 78
    iget v0, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mFadeInFactor:F

    iget v1, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mTargetFadeInFactor:F

    invoke-static {v0, v1, p3}, Lcom/google/android/opengl/glview/FloatUtils;->animate(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mFadeInFactor:F

    .line 80
    iget-wide v0, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mFrameTime:J

    iget-wide v2, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mNextStateTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 81
    iget v0, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mState:I

    if-ne v0, v5, :cond_2

    .line 82
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mAutoFade:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, v6}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->setState(I)V

    .line 89
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mTargetFadeInFactor:F

    iget v1, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mFadeInFactor:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mAutoFade:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mState:I

    if-eqz v0, :cond_3

    :cond_1
    move v0, v5

    :goto_1
    return v0

    .line 85
    :cond_2
    iget v0, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mState:I

    if-ne v0, v6, :cond_0

    .line 86
    invoke-virtual {p0, v4}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->setState(I)V

    goto :goto_0

    :cond_3
    move v0, v4

    .line 89
    goto :goto_1
.end method

.method public forceSetFadeInFactor(F)V
    .locals 0
    .parameter "factor"

    .prologue
    .line 67
    iput p1, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mFadeInFactor:F

    iput p1, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mTargetFadeInFactor:F

    .line 68
    return-void
.end method

.method public getFadeInFactor()F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mFadeInFactor:F

    return v0
.end method

.method public setState(I)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 48
    iget v2, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mState:I

    if-ne v2, v3, :cond_2

    move v1, v3

    .line 49
    .local v1, oldVisible:Z
    :goto_0
    if-ne p1, v3, :cond_3

    move v0, v3

    .line 50
    .local v0, newVisible:Z
    :goto_1
    iput p1, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mState:I

    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-wide v2, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mFrameTime:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mNextStateTime:J

    .line 54
    :cond_0
    if-eq v1, v0, :cond_1

    .line 55
    if-eqz v0, :cond_4

    const/high16 v2, 0x3f80

    :goto_2
    invoke-virtual {p0, v2}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->setTextureFadeInFactor(F)V

    .line 57
    :cond_1
    return-void

    .end local v0           #newVisible:Z
    .end local v1           #oldVisible:Z
    :cond_2
    move v1, v4

    .line 48
    goto :goto_0

    .restart local v1       #oldVisible:Z
    :cond_3
    move v0, v4

    .line 49
    goto :goto_1

    .line 55
    .restart local v0       #newVisible:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public setTextureFadeInFactor(F)V
    .locals 0
    .parameter "fadeInFactor"

    .prologue
    .line 60
    iput p1, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mTargetFadeInFactor:F

    .line 61
    return-void
.end method

.method public visible()Z
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
