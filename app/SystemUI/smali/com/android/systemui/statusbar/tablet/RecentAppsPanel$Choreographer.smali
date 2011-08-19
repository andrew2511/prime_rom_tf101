.class Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;
.super Ljava/lang/Object;
.source "RecentAppsPanel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Choreographer"
.end annotation


# instance fields
.field final HYPERSPACE_OFFRAMP:I

.field mContentAnim:Landroid/animation/AnimatorSet;

.field mContentView:Landroid/view/View;

.field mPanelHeight:I

.field mRootView:Landroid/view/View;

.field mScrimView:Landroid/view/View;

.field mVisible:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "root"
    .parameter "scrim"
    .parameter "content"

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->HYPERSPACE_OFFRAMP:I

    .line 224
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mRootView:Landroid/view/View;

    .line 225
    iput-object p2, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mScrimView:Landroid/view/View;

    .line 226
    iput-object p3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mContentView:Landroid/view/View;

    .line 227
    return-void
.end method


# virtual methods
.method createAnimation(Z)V
    .locals 14
    .parameter "appearing"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/high16 v7, 0x4348

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    .line 236
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mContentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v5

    .line 237
    .local v5, y:F
    if-eqz p1, :cond_1

    .line 240
    cmpg-float v6, v5, v7

    if-gez v6, :cond_0

    move v4, v5

    .line 241
    .local v4, start:F
    :goto_0
    const/4 v1, 0x0

    .line 247
    .local v1, end:F
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mContentView:Landroid/view/View;

    const-string v7, "translationY"

    new-array v8, v13, [F

    aput v4, v8, v10

    aput v1, v8, v12

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 249
    .local v3, posAnim:Landroid/animation/Animator;
    if-eqz p1, :cond_2

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x4020

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    :goto_2
    invoke-virtual {v3, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 253
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mContentView:Landroid/view/View;

    const-string v7, "alpha"

    new-array v8, v13, [F

    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mContentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    aput v9, v8, v10

    if-eqz p1, :cond_3

    move v9, v11

    :goto_3
    aput v9, v8, v12

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 255
    .local v2, glowAnim:Landroid/animation/Animator;
    if-eqz p1, :cond_4

    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6, v11}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_4
    invoke-virtual {v2, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 259
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mScrimView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const-string v7, "alpha"

    new-array v8, v13, [I

    if-eqz p1, :cond_5

    move v9, v10

    :goto_5
    aput v9, v8, v10

    if-eqz p1, :cond_6

    const/16 v9, 0xff

    :goto_6
    aput v9, v8, v12

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 262
    .local v0, bgAnim:Landroid/animation/Animator;
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    .line 263
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 267
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_7

    const-wide/16 v7, 0x88

    :goto_7
    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 268
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 269
    return-void

    .end local v0           #bgAnim:Landroid/animation/Animator;
    .end local v1           #end:F
    .end local v2           #glowAnim:Landroid/animation/Animator;
    .end local v3           #posAnim:Landroid/animation/Animator;
    .end local v4           #start:F
    :cond_0
    move v4, v7

    .line 240
    goto :goto_0

    .line 243
    :cond_1
    move v4, v5

    .line 244
    .restart local v4       #start:F
    add-float v1, v5, v7

    .restart local v1       #end:F
    goto :goto_1

    .line 249
    .restart local v3       #posAnim:Landroid/animation/Animator;
    :cond_2
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v7, 0x4020

    invoke-direct {v6, v7}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    goto :goto_2

    .line 253
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 255
    .restart local v2       #glowAnim:Landroid/animation/Animator;
    :cond_4
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_4

    .line 259
    :cond_5
    const/16 v9, 0xff

    goto :goto_5

    :cond_6
    move v9, v10

    goto :goto_6

    .line 267
    .restart local v0       #bgAnim:Landroid/animation/Animator;
    :cond_7
    const-wide/16 v7, 0xfa

    goto :goto_7
.end method

.method jumpTo(Z)V
    .locals 2
    .parameter "appearing"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 284
    return-void

    .line 283
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mPanelHeight:I

    int-to-float v1, v1

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mVisible:Z

    .line 295
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 299
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mVisible:Z

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mRootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 303
    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    .line 304
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 307
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 310
    return-void
.end method

.method public setPanelHeight(I)V
    .locals 0
    .parameter "h"

    .prologue
    .line 288
    iput p1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mPanelHeight:I

    .line 289
    return-void
.end method

.method startAnimation(Z)V
    .locals 3
    .parameter "appearing"

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->createAnimation(Z)V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mContentView:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 279
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->mVisible:Z

    .line 280
    return-void
.end method
