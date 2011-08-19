.class public Lcom/android/email/activity/BannerController;
.super Ljava/lang/Object;
.source "BannerController.java"


# static fields
.field private static final INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field private final mBannerHeight:I

.field private final mBannerView:Landroid/widget/TextView;

.field private mLastAnimator:Landroid/animation/Animator;

.field private mShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/email/activity/BannerController;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 1
    .parameter "context"
    .parameter "bannerView"
    .parameter "bannerHeight"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/android/email/activity/BannerController;->mBannerView:Landroid/widget/TextView;

    .line 45
    iput p3, p0, Lcom/android/email/activity/BannerController;->mBannerHeight:I

    .line 47
    iget v0, p0, Lcom/android/email/activity/BannerController;->mBannerHeight:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/BannerController;->setBannerYAnim(I)V

    .line 48
    return-void
.end method

.method private getBannerY()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/activity/BannerController;->mBannerView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return v0
.end method

.method private slideBanner(I)V
    .locals 7
    .parameter "toY"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 94
    iget-object v2, p0, Lcom/android/email/activity/BannerController;->mLastAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/android/email/activity/BannerController;->mLastAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 98
    :cond_0
    new-array v1, v6, [Landroid/animation/PropertyValuesHolder;

    const-string v2, "bannerYAnim"

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-direct {p0}, Lcom/android/email/activity/BannerController;->getBannerY()I

    move-result v4

    aput v4, v3, v5

    aput p1, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    .line 100
    .local v1, values:[Landroid/animation/PropertyValuesHolder;
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 102
    .local v0, animator:Landroid/animation/ObjectAnimator;
    sget-object v2, Lcom/android/email/activity/BannerController;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 103
    iput-object v0, p0, Lcom/android/email/activity/BannerController;->mLastAnimator:Landroid/animation/Animator;

    .line 104
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 105
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/email/activity/BannerController;->mShown:Z

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/BannerController;->mShown:Z

    .line 90
    iget v0, p0, Lcom/android/email/activity/BannerController;->mBannerHeight:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/BannerController;->slideBanner(I)V

    goto :goto_0
.end method

.method public setBannerYAnim(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/email/activity/BannerController;->mBannerView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 64
    iget-object v0, p0, Lcom/android/email/activity/BannerController;->mBannerView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 65
    return-void
.end method

.method public show(Ljava/lang/String;)Z
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    iget-boolean v0, p0, Lcom/android/email/activity/BannerController;->mShown:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 79
    :goto_0
    return v0

    .line 76
    :cond_0
    iput-boolean v2, p0, Lcom/android/email/activity/BannerController;->mShown:Z

    .line 77
    iget-object v0, p0, Lcom/android/email/activity/BannerController;->mBannerView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-direct {p0, v1}, Lcom/android/email/activity/BannerController;->slideBanner(I)V

    move v0, v2

    .line 79
    goto :goto_0
.end method
