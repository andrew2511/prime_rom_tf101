.class Lcom/google/android/finsky/activities/PurchaseActivity$HeightAnimator;
.super Ljava/lang/Object;
.source "PurchaseActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/PurchaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeightAnimator"
.end annotation


# instance fields
.field mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$HeightAnimator;->mView:Landroid/view/View;

    .line 524
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/google/android/finsky/activities/PurchaseActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 514
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseActivity$HeightAnimator;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animator"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$HeightAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 533
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$HeightAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 534
    return-void
.end method
