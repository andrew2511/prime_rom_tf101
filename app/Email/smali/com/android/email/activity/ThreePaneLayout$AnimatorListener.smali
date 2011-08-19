.class Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;
.super Ljava/lang/Object;
.source "ThreePaneLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ThreePaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mCancelled:Z

.field private final mLogLabel:Ljava/lang/String;

.field private final mPreviousVisiblePanes:I

.field private final mViewsGone:[Landroid/view/View;

.field private final mViewsInvisible:[Landroid/view/View;

.field private final mViewsVisible:[Landroid/view/View;

.field final synthetic this$0:Lcom/android/email/activity/ThreePaneLayout;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/ThreePaneLayout;Ljava/lang/String;[Landroid/view/View;[Landroid/view/View;[Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter "logLabel"
    .parameter "viewsVisible"
    .parameter "viewsInvisible"
    .parameter "viewsGone"
    .parameter "previousVisiblePanes"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput-object p2, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mLogLabel:Ljava/lang/String;

    .line 534
    iput-object p3, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsVisible:[Landroid/view/View;

    .line 535
    iput-object p4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsInvisible:[Landroid/view/View;

    .line 536
    iput-object p5, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsGone:[Landroid/view/View;

    .line 537
    iput p6, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mPreviousVisiblePanes:I

    .line 538
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 544
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 547
    const-string v0, "cancel"

    invoke-direct {p0, v0}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->log(Ljava/lang/String;)V

    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mCancelled:Z

    .line 549
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 569
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "animation"

    .prologue
    .line 576
    iget-boolean v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mCancelled:Z

    if-eqz v4, :cond_0

    .line 587
    :goto_0
    return-void

    .line 579
    :cond_0
    const-string v4, "end"

    invoke-direct {p0, v4}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->log(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsInvisible:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 581
    .local v3, v:Landroid/view/View;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 583
    .end local v3           #v:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsGone:[Landroid/view/View;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 584
    .restart local v3       #v:Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 586
    .end local v3           #v:Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$000(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mPreviousVisiblePanes:I

    invoke-interface {v4, v5}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onVisiblePanesChanged(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 565
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 6
    .parameter "animation"

    .prologue
    .line 556
    const-string v4, "start"

    invoke-direct {p0, v4}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->log(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsVisible:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 558
    .local v3, v:Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 560
    .end local v3           #v:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$000(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mPreviousVisiblePanes:I

    invoke-interface {v4, v5}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onVisiblePanesChanged(I)V

    .line 561
    return-void
.end method
