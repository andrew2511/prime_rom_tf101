.class Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;
.super Ljava/lang/Object;
.source "NotificationPanel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/NotificationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Choreographer"
.end annotation


# instance fields
.field final HYPERSPACE_OFFRAMP:I

.field mContentAnim:Landroid/animation/AnimatorSet;

.field mVisible:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V
    .locals 1
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->HYPERSPACE_OFFRAMP:I

    .line 349
    return-void
.end method


# virtual methods
.method createAnimation(Z)V
    .locals 12
    .parameter "appearing"

    .prologue
    .line 354
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v8, 0x7f0b0051

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 355
    .local v4, root:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mVisible:Z

    if-eqz v11, :cond_2

    const/16 v11, 0xff

    :goto_0
    aput v11, v9, v10

    const/4 v10, 0x1

    if-eqz p1, :cond_3

    const/16 v11, 0xff

    :goto_1
    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 362
    .local v0, bgAnim:Landroid/animation/Animator;
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v7, v7, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v6

    .line 363
    .local v6, y:F
    if-eqz p1, :cond_4

    .line 366
    const/4 v1, 0x0

    .line 367
    .local v1, end:F
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget v7, v7, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationCount:I

    if-nez v7, :cond_0

    .line 368
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget v7, v7, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrameMissingTranslation:F

    add-float/2addr v1, v7

    .line 370
    :cond_0
    const/high16 v7, 0x42c8

    add-float v5, v7, v1

    .line 376
    .local v5, start:F
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v7, v7, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    const-string v8, "translationY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v5, v9, v10

    const/4 v10, 0x1

    aput v1, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 378
    .local v3, posAnim:Landroid/animation/Animator;
    if-eqz p1, :cond_5

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x3f80

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    :goto_3
    invoke-virtual {v3, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 382
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 383
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->cancel()V

    .line 386
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v7, v7, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v11, v11, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v11

    aput v11, v9, v10

    const/4 v10, 0x1

    if-eqz p1, :cond_6

    const/high16 v11, 0x3f80

    :goto_4
    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 388
    .local v2, fadeAnim:Landroid/animation/Animator;
    if-eqz p1, :cond_7

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v8, 0x4000

    invoke-direct {v7, v8}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_5
    invoke-virtual {v2, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 392
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    .line 393
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 398
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_8

    const/16 v8, 0x88

    :goto_6
    mul-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 399
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 400
    return-void

    .line 355
    .end local v0           #bgAnim:Landroid/animation/Animator;
    .end local v1           #end:F
    .end local v2           #fadeAnim:Landroid/animation/Animator;
    .end local v3           #posAnim:Landroid/animation/Animator;
    .end local v5           #start:F
    .end local v6           #y:F
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 372
    .restart local v0       #bgAnim:Landroid/animation/Animator;
    .restart local v6       #y:F
    :cond_4
    move v5, v6

    .line 373
    .restart local v5       #start:F
    const/high16 v7, 0x42c8

    add-float v1, v6, v7

    .restart local v1       #end:F
    goto/16 :goto_2

    .line 378
    .restart local v3       #posAnim:Landroid/animation/Animator;
    :cond_5
    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v8, 0x3f80

    invoke-direct {v7, v8}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    goto :goto_3

    .line 386
    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    .line 388
    .restart local v2       #fadeAnim:Landroid/animation/Animator;
    :cond_7
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x4000

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_5

    .line 398
    :cond_8
    const/16 v8, 0xfa

    goto :goto_6
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 415
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 419
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mVisible:Z

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setVisibility(I)V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 423
    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    .line 424
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 427
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 430
    return-void
.end method

.method startAnimation(Z)V
    .locals 3
    .parameter "appearing"

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->createAnimation(Z)V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 410
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mVisible:Z

    .line 411
    return-void
.end method
