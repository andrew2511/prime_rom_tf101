.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$5;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setupHoneycombEntryAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

.field final synthetic val$endingWidth:I

.field final synthetic val$startingWidth:I


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$5;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    iput p2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$5;->val$startingWidth:I

    iput p3, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$5;->val$endingWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .parameter "animator"

    .prologue
    .line 273
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$5;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    iget-object v1, v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 274
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$5;->val$startingWidth:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v3, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$5;->val$endingWidth:I

    iget v4, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$5;->val$startingWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 277
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$5;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    iget-object v1, v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    return-void
.end method
