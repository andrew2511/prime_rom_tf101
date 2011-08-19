.class public Lcom/android/email/activity/ThreePaneLayout;
.super Landroid/widget/LinearLayout;
.source "ThreePaneLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/ThreePaneLayout$1;,
        Lcom/android/email/activity/ThreePaneLayout$SavedState;,
        Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;,
        Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;,
        Lcom/android/email/activity/ThreePaneLayout$Callback;
    }
.end annotation


# static fields
.field private static final INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field private final INDEX_GONE:I

.field private final INDEX_INVISIBLE:I

.field private final INDEX_VISIBLE:I

.field private mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

.field private mFirstSizeChangedDone:Z

.field private mFoggedGlass:Landroid/view/View;

.field private mInitialPaneState:I

.field private mLastAnimator:Landroid/animation/Animator;

.field private mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

.field private mLeftPane:Landroid/view/View;

.field private mMailboxListWidth:I

.field private mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

.field private mMessageListWidth:I

.field private mMiddlePane:Landroid/view/View;

.field private mPaneState:I

.field private mRightPane:Landroid/view/View;

.field private mShowHideViews:[[[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/email/activity/ThreePaneLayout;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    .line 144
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76
    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    .line 79
    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_VISIBLE:I

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_INVISIBLE:I

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_GONE:I

    .line 120
    sget-object v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .line 145
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->initView()V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x1

    .line 139
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    .line 79
    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_VISIBLE:I

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_INVISIBLE:I

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_GONE:I

    .line 120
    sget-object v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .line 140
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->initView()V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, -0x1

    .line 134
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    .line 79
    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_VISIBLE:I

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_INVISIBLE:I

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_GONE:I

    .line 120
    sget-object v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .line 135
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->initView()V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    return-object v0
.end method

.method private changePaneState(IZ)V
    .locals 11
    .parameter "newState"
    .parameter "animate"

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isPaneCollapsible()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 334
    const/4 p1, 0x1

    .line 336
    :cond_0
    iget-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mFirstSizeChangedDone:Z

    if-nez v1, :cond_2

    .line 340
    iput p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 426
    :cond_1
    :goto_0
    return-void

    .line 343
    :cond_2
    iget v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    if-eq p1, v1, :cond_1

    .line 347
    iget v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 348
    const/4 p2, 0x0

    .line 351
    :cond_3
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getVisiblePanes()I

    move-result v6

    .line 352
    .local v6, previousVisiblePanes:I
    iput p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    .line 356
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getMeasuredWidth()I

    move-result v10

    .line 363
    .local v10, totalWidth:I
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isPaneCollapsible()Z

    move-result v1

    if-nez v1, :cond_4

    .line 364
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    iget v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMailboxListWidth:I

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 365
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    iget v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListWidth:I

    sub-int v2, v10, v2

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 367
    iget v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v1, :pswitch_data_0

    .line 381
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 370
    :pswitch_0
    const-string v2, "moving to [mailbox list + message list]"

    .line 371
    .local v2, animatorLabel:Ljava/lang/String;
    const/4 v7, 0x0

    .line 372
    .local v7, expectedMailboxLeft:I
    iget v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMailboxListWidth:I

    sub-int v8, v10, v1

    .line 412
    .local v8, expectedMessageListWidth:I
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowHideViews:[[[Landroid/view/View;

    iget v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    aget-object v9, v1, v3

    .line 413
    .local v9, showHideViews:[[Landroid/view/View;
    new-instance v0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    const/4 v1, 0x0

    aget-object v3, v9, v1

    const/4 v1, 0x1

    aget-object v4, v9, v1

    const/4 v1, 0x2

    aget-object v5, v9, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;-><init>(Lcom/android/email/activity/ThreePaneLayout;Ljava/lang/String;[Landroid/view/View;[Landroid/view/View;[Landroid/view/View;I)V

    .line 420
    .local v0, listener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;
    if-eqz p2, :cond_5

    const/16 v1, 0x50

    :goto_2
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    .end local v2           #animatorLabel:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "mailboxListLeftAnim"

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentMailboxLeft()I

    .end local v6           #previousVisiblePanes:I
    move-result v9

    .end local v9           #showHideViews:[[Landroid/view/View;
    aput v9, v5, v6

    const/4 v6, 0x1

    aput v7, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "messageListWidthAnim"

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentMessageListWidth()I

    move-result v7

    .end local v7           #expectedMailboxLeft:I
    aput v7, v5, v6

    const/4 v6, 0x1

    aput v8, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v0, v2}, Lcom/android/email/activity/ThreePaneLayout;->startLayoutAnimation(ILcom/android/email/activity/ThreePaneLayout$AnimatorListener;[Landroid/animation/PropertyValuesHolder;)V

    goto/16 :goto_0

    .line 376
    .end local v0           #listener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;
    .end local v8           #expectedMessageListWidth:I
    .restart local v6       #previousVisiblePanes:I
    :pswitch_1
    const-string v2, "moving to [message list + message view]"

    .line 377
    .restart local v2       #animatorLabel:Ljava/lang/String;
    iget v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMailboxListWidth:I

    neg-int v7, v1

    .line 378
    .restart local v7       #expectedMailboxLeft:I
    iget v8, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListWidth:I

    .line 379
    .restart local v8       #expectedMessageListWidth:I
    goto :goto_1

    .line 385
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v7           #expectedMailboxLeft:I
    .end local v8           #expectedMessageListWidth:I
    :cond_4
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    iget v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMailboxListWidth:I

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 386
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v1, v10}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 388
    iget v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v1, :pswitch_data_1

    .line 408
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 391
    :pswitch_2
    const-string v2, "moving to [mailbox list + message list]"

    .line 392
    .restart local v2       #animatorLabel:Ljava/lang/String;
    const/4 v7, 0x0

    .line 393
    .restart local v7       #expectedMailboxLeft:I
    iget v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMailboxListWidth:I

    sub-int v8, v10, v1

    .line 394
    .restart local v8       #expectedMessageListWidth:I
    goto :goto_1

    .line 397
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v7           #expectedMailboxLeft:I
    .end local v8           #expectedMessageListWidth:I
    :pswitch_3
    const-string v2, "moving to [message list + message view]"

    .line 398
    .restart local v2       #animatorLabel:Ljava/lang/String;
    iget v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMailboxListWidth:I

    neg-int v7, v1

    .line 399
    .restart local v7       #expectedMailboxLeft:I
    iget v8, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListWidth:I

    .line 400
    .restart local v8       #expectedMessageListWidth:I
    goto :goto_1

    .line 403
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v7           #expectedMailboxLeft:I
    .end local v8           #expectedMessageListWidth:I
    :pswitch_4
    const-string v2, "moving to [message view]"

    .line 404
    .restart local v2       #animatorLabel:Ljava/lang/String;
    iget v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMailboxListWidth:I

    iget v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListWidth:I

    add-int/2addr v1, v3

    neg-int v7, v1

    .line 405
    .restart local v7       #expectedMailboxLeft:I
    iget v8, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListWidth:I

    .line 406
    .restart local v8       #expectedMessageListWidth:I
    goto/16 :goto_1

    .line 420
    .restart local v0       #listener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;
    .restart local v9       #showHideViews:[[Landroid/view/View;
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 388
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private getCurrentMailboxLeft()I
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0
.end method

.method private getCurrentMessageListWidth()I
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->setOrientation(I)V

    .line 151
    return-void
.end method

.method private isPaneCollapsible()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mFoggedGlass:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onFirstSizeChanged()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 319
    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    if-eq v0, v2, :cond_0

    .line 320
    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZ)V

    .line 321
    iput v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 323
    :cond_0
    return-void
.end method

.method private setViewWidth(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "value"

    .prologue
    .line 462
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 463
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->requestLayout()V

    .line 464
    return-void
.end method

.method private varargs startLayoutAnimation(ILcom/android/email/activity/ThreePaneLayout$AnimatorListener;[Landroid/animation/PropertyValuesHolder;)V
    .locals 4
    .parameter "duration"
    .parameter "listener"
    .parameter "values"

    .prologue
    .line 493
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    if-eqz v1, :cond_1

    .line 503
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->cancel()V

    .line 506
    :cond_1
    invoke-static {p0, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 508
    .local v0, animator:Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/android/email/activity/ThreePaneLayout;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 509
    if-eqz p2, :cond_2

    .line 510
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 512
    :cond_2
    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    .line 513
    iput-object p2, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    .line 514
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 515
    return-void
.end method


# virtual methods
.method public getLeftPaneId()I
    .locals 1

    .prologue
    .line 432
    const v0, 0x7f0f00bb

    return v0
.end method

.method public getMessageCommandButtons()Lcom/android/email/activity/MessageCommandButtonView;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    return-object v0
.end method

.method public getMiddlePaneId()I
    .locals 1

    .prologue
    .line 439
    const v0, 0x7f0f00bc

    return v0
.end method

.method public getRightPaneId()I
    .locals 1

    .prologue
    .line 446
    const v0, 0x7f0f00be

    return v0
.end method

.method public getVisiblePanes()I
    .locals 2

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, ret:I
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    .line 271
    :cond_2
    return v0
.end method

.method public onBackPressed(Z)Z
    .locals 3
    .parameter "isSystemBackKey"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 282
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isPaneCollapsible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    move v0, v2

    .line 302
    :goto_1
    return v0

    .line 285
    :pswitch_0
    invoke-direct {p0, v2, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZ)V

    move v0, v1

    .line 286
    goto :goto_1

    .line 289
    :cond_0
    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 291
    :pswitch_1
    if-eqz p1, :cond_1

    .line 292
    invoke-direct {p0, v2, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZ)V

    :goto_2
    move v0, v1

    .line 296
    goto :goto_1

    .line 294
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZ)V

    goto :goto_2

    .line 298
    :pswitch_2
    invoke-direct {p0, v2, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZ)V

    move v0, v1

    .line 299
    goto :goto_1

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 289
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 451
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 453
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isPaneCollapsible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-direct {p0, v1, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZ)V

    goto :goto_0

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f00c0
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 155
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 157
    const v1, 0x7f0f00bb

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    .line 158
    const v1, 0x7f0f00bc

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    .line 159
    const v1, 0x7f0f00bf

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageCommandButtonView;

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    .line 162
    const v1, 0x7f0f00c0

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mFoggedGlass:Landroid/view/View;

    .line 163
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mFoggedGlass:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 164
    const v1, 0x7f0f00bd

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    .line 165
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mFoggedGlass:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    :goto_0
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isPaneCollapsible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    new-array v1, v8, [[[Landroid/view/View;

    new-array v2, v8, [[Landroid/view/View;

    new-array v3, v7, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v4, v3, v6

    aput-object v3, v2, v5

    new-array v3, v6, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v4, v3, v5

    aput-object v3, v2, v6

    new-array v3, v6, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    aput-object v4, v3, v5

    aput-object v3, v2, v7

    aput-object v2, v1, v5

    new-array v2, v8, [[Landroid/view/View;

    new-array v3, v8, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v4, v3, v7

    aput-object v3, v2, v5

    new-array v3, v6, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v4, v3, v5

    aput-object v3, v2, v6

    new-array v3, v5, [Landroid/view/View;

    aput-object v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v8, [[Landroid/view/View;

    new-array v3, v5, [Landroid/view/View;

    aput-object v3, v2, v5

    new-array v3, v5, [Landroid/view/View;

    aput-object v3, v2, v6

    new-array v3, v5, [Landroid/view/View;

    aput-object v3, v2, v7

    aput-object v2, v1, v7

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowHideViews:[[[Landroid/view/View;

    .line 214
    :goto_1
    iput v5, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 216
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 217
    .local v0, resources:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMailboxListWidth:I

    .line 219
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListWidth:I

    .line 220
    return-void

    .line 167
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_0
    const v1, 0x7f0f00be

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    goto/16 :goto_0

    .line 192
    :cond_1
    new-array v1, v8, [[[Landroid/view/View;

    new-array v2, v8, [[Landroid/view/View;

    new-array v3, v7, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v4, v3, v6

    aput-object v3, v2, v5

    new-array v3, v7, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mFoggedGlass:Landroid/view/View;

    aput-object v4, v3, v6

    aput-object v3, v2, v6

    new-array v3, v6, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    aput-object v4, v3, v5

    aput-object v3, v2, v7

    aput-object v2, v1, v5

    new-array v2, v8, [[Landroid/view/View;

    new-array v3, v7, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    aput-object v4, v3, v6

    aput-object v3, v2, v5

    new-array v3, v8, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mFoggedGlass:Landroid/view/View;

    aput-object v4, v3, v7

    aput-object v3, v2, v6

    new-array v3, v5, [Landroid/view/View;

    aput-object v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v8, [[Landroid/view/View;

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mFoggedGlass:Landroid/view/View;

    aput-object v4, v3, v8

    aput-object v3, v2, v5

    new-array v3, v6, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v4, v3, v5

    aput-object v3, v2, v6

    new-array v3, v5, [Landroid/view/View;

    aput-object v3, v2, v7

    aput-object v2, v1, v7

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowHideViews:[[[Landroid/view/View;

    goto/16 :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 248
    move-object v0, p1

    check-cast v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;

    move-object v1, v0

    .line 249
    .local v1, ss:Lcom/android/email/activity/ThreePaneLayout$SavedState;
    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 250
    iget v2, v1, Lcom/android/email/activity/ThreePaneLayout$SavedState;->mPaneState:I

    iput v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 251
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/email/activity/ThreePaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 241
    .local v0, ss:Lcom/android/email/activity/ThreePaneLayout$SavedState;
    iget v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    iput v1, v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;->mPaneState:I

    .line 242
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 255
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 256
    iget-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mFirstSizeChangedDone:Z

    if-nez v0, :cond_0

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mFirstSizeChangedDone:Z

    .line 258
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->onFirstSizeChanged()V

    .line 260
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/ThreePaneLayout$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 224
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    :goto_0
    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .line 225
    return-void

    :cond_0
    move-object v0, p1

    .line 224
    goto :goto_0
.end method

.method public setMailboxListLeftAnim(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 472
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->requestLayout()V

    .line 473
    return-void
.end method

.method public setMessageListWidthAnim(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 478
    return-void
.end method

.method public showLeftPane()V
    .locals 2

    .prologue
    .line 309
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZ)V

    .line 310
    return-void
.end method

.method public showRightPane()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 329
    invoke-direct {p0, v0, v0}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZ)V

    .line 330
    return-void
.end method
