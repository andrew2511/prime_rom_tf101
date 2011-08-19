.class public Lcom/android/systemui/statusbar/tablet/NotificationPanel;
.super Landroid/widget/RelativeLayout;
.source "NotificationPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;,
        Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;
    }
.end annotation


# instance fields
.field mChoreo:Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;

.field mContentArea:Landroid/graphics/Rect;

.field mContentFrame:Landroid/view/ViewGroup;

.field mContentFrameMissingTranslation:F

.field mContentParent:Landroid/view/ViewGroup;

.field mModeToggle:Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;

.field mNotificationButton:Landroid/view/View;

.field mNotificationCount:I

.field mNotificationScroller:Landroid/view/View;

.field mSettingsButton:Landroid/view/View;

.field mSettingsView:Landroid/view/View;

.field mShowing:Z

.field mTitleArea:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationCount:I

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;-><init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mChoreo:Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;

    .line 119
    return-void
.end method


# virtual methods
.method addSettingsView()V
    .locals 4

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 331
    .local v0, infl:Landroid/view/LayoutInflater;
    const v1, 0x7f030015

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    .line 332
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 334
    return-void
.end method

.method public isInContentArea(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 308
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mTitleArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mTitleArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 309
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mTitleArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mTitleArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 311
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mTitleArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mTitleArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 313
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    move-object v0, v1

    .line 315
    .local v0, theBottom:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 317
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 318
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1

    .line 313
    .end local v0           #theBottom:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mTitleArea:Landroid/view/View;

    move-object v0, v1

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mModeToggle:Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;

    if-ne p1, v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->swapPanels()V

    .line 211
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 125
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setWillNotDraw(Z)V

    .line 127
    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 129
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mTitleArea:Landroid/view/View;

    .line 130
    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mModeToggle:Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mModeToggle:Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mModeToggle:Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;->setPanel(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mModeToggle:Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mTitleArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;->setTitleArea(Landroid/view/View;)V

    .line 135
    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/view/View;

    .line 136
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationButton:Landroid/view/View;

    .line 138
    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    .line 139
    const v0, 0x7f0b0053

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrameMissingTranslation:F

    .line 143
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    .line 145
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setContentFrameVisible(ZZ)V

    .line 146
    return-void

    :cond_0
    move v0, v2

    .line 145
    goto :goto_0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "vis"

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 179
    if-eqz p2, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->removeSettingsView()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->scrollTo(II)V

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->updatePanelModeButtons()V

    .line 186
    :cond_1
    return-void
.end method

.method removeSettingsView()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    .line 326
    :cond_0
    return-void
.end method

.method public setContentFrameVisible(ZZ)V
    .locals 10
    .parameter "showing"
    .parameter "animate"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v5, 0x3f80

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 228
    if-nez p2, :cond_1

    .line 229
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    move v2, v7

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 230
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 260
    :goto_1
    return-void

    .line 229
    :cond_0
    const/16 v2, 0x8

    goto :goto_0

    .line 235
    :cond_1
    if-eqz p1, :cond_2

    .line 236
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 238
    :cond_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 239
    .local v0, set:Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    const-string v2, "alpha"

    new-array v3, v9, [F

    if-eqz p1, :cond_4

    move v4, v6

    :goto_2
    aput v4, v3, v7

    if-eqz p1, :cond_5

    move v4, v5

    :goto_3
    aput v4, v3, v8

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    const-string v3, "translationY"

    new-array v4, v9, [F

    if-eqz p1, :cond_6

    iget v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrameMissingTranslation:F

    :goto_4
    aput v5, v4, v7

    if-eqz p1, :cond_7

    move v5, v6

    :goto_5
    aput v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 249
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 250
    if-nez p1, :cond_3

    .line 251
    new-instance v1, Lcom/android/systemui/statusbar/tablet/NotificationPanel$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$1;-><init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_4
    move v4, v5

    .line 239
    goto :goto_2

    :cond_5
    move v4, v6

    goto :goto_3

    :cond_6
    move v5, v6

    goto :goto_4

    :cond_7
    iget v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrameMissingTranslation:F

    goto :goto_5
.end method

.method public setNotificationCount(I)V
    .locals 4
    .parameter "n"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 215
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    if-nez v0, :cond_2

    .line 217
    if-lez p1, :cond_1

    move v0, v3

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setContentFrameVisible(ZZ)V

    .line 224
    :cond_0
    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationCount:I

    .line 225
    return-void

    :cond_1
    move v0, v2

    .line 217
    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 220
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationCount:I

    if-lez v0, :cond_3

    move v0, v3

    :goto_2
    if-lez p1, :cond_4

    move v1, v3

    :goto_3
    if-eq v0, v1, :cond_0

    .line 221
    if-lez p1, :cond_5

    move v0, v3

    :goto_4
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setContentFrameVisible(ZZ)V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 220
    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    move v0, v2

    .line 221
    goto :goto_4
.end method

.method public show(ZZ)V
    .locals 2
    .parameter "show"
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 149
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationCount:I

    if-lez v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setContentFrameVisible(ZZ)V

    .line 153
    :cond_1
    if-eqz p2, :cond_5

    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    if-eq v0, p1, :cond_3

    .line 155
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    .line 156
    if-eqz p1, :cond_2

    .line 157
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setVisibility(I)V

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mChoreo:Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->startAnimation(Z)V

    .line 165
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v0, v1

    .line 150
    goto :goto_0

    .line 162
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    .line 163
    if-eqz p1, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setVisibility(I)V

    goto :goto_1

    :cond_6
    const/16 v0, 0x8

    goto :goto_2
.end method

.method public swapPanels()V
    .locals 6

    .prologue
    .line 264
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->addSettingsView()V

    .line 266
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    .line 267
    .local v2, toShow:Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    .line 272
    .local v1, toHide:Landroid/view/View;
    :goto_0
    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 274
    .local v0, a:Landroid/animation/Animator;
    new-instance v3, Lcom/android/systemui/statusbar/tablet/NotificationPanel$2;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$2;-><init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 298
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 299
    return-void

    .line 269
    .end local v0           #a:Landroid/animation/Animator;
    .end local v1           #toHide:Landroid/view/View;
    .end local v2           #toShow:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    .line 270
    .restart local v2       #toShow:Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    .restart local v1       #toHide:Landroid/view/View;
    goto :goto_0

    .line 272
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public updatePanelModeButtons()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 302
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 303
    .local v0, settingsVisible:Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/view/View;

    if-nez v0, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationButton:Landroid/view/View;

    if-eqz v0, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 305
    return-void

    .end local v0           #settingsVisible:Z
    :cond_0
    move v0, v3

    .line 302
    goto :goto_0

    .restart local v0       #settingsVisible:Z
    :cond_1
    move v2, v4

    .line 303
    goto :goto_1

    :cond_2
    move v2, v4

    .line 304
    goto :goto_2
.end method
