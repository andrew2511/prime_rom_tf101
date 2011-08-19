.class Lcom/android/vending/velvet/CarouselView$5;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/velvet/CarouselView;->createAndRunScrollSequencer(FJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/velvet/CarouselView;

.field final synthetic val$velocity:F


# direct methods
.method constructor <init>(Lcom/android/vending/velvet/CarouselView;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 905
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView$5;->this$0:Lcom/android/vending/velvet/CarouselView;

    iput p2, p0, Lcom/android/vending/velvet/CarouselView$5;->val$velocity:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/vending/compat/animation/ValueAnimator;)V
    .locals 6
    .parameter "animation"

    .prologue
    .line 907
    invoke-virtual {p1}, Lcom/android/vending/compat/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x447a

    div-float v0, v2, v3

    .line 908
    .local v0, timePassed:F
    iget v2, p0, Lcom/android/vending/velvet/CarouselView$5;->val$velocity:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/android/vending/velvet/CarouselView$5;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-static {v3}, Lcom/android/vending/velvet/CarouselView;->access$300(Lcom/android/vending/velvet/CarouselView;)F

    move-result v3

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 911
    .local v1, travelled:F
    iget v2, p0, Lcom/android/vending/velvet/CarouselView$5;->val$velocity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 912
    neg-float v1, v1

    .line 915
    :cond_0
    iget-object v2, p0, Lcom/android/vending/velvet/CarouselView$5;->this$0:Lcom/android/vending/velvet/CarouselView;

    monitor-enter v2

    .line 916
    :try_start_0
    iget-object v3, p0, Lcom/android/vending/velvet/CarouselView$5;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView$5;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-static {v4}, Lcom/android/vending/velvet/CarouselView;->access$700(Lcom/android/vending/velvet/CarouselView;)F

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/android/vending/velvet/CarouselView;->isOutsideLoadedRange(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 917
    iget-object v3, p0, Lcom/android/vending/velvet/CarouselView$5;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView$5;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView$5;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-static {v5}, Lcom/android/vending/velvet/CarouselView;->access$700(Lcom/android/vending/velvet/CarouselView;)F

    move-result v5

    invoke-virtual {v4, v5, v1}, Lcom/android/vending/velvet/CarouselView;->clampToLoadedRange(FF)F

    move-result v4

    iput v4, v3, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    .line 918
    invoke-virtual {p1}, Lcom/android/vending/compat/animation/ValueAnimator;->end()V

    .line 923
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    iget-object v2, p0, Lcom/android/vending/velvet/CarouselView$5;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-virtual {v2}, Lcom/android/vending/velvet/CarouselView;->invalidate()V

    .line 925
    return-void

    .line 920
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/vending/velvet/CarouselView$5;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView$5;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-static {v4}, Lcom/android/vending/velvet/CarouselView;->access$700(Lcom/android/vending/velvet/CarouselView;)F

    move-result v4

    add-float/2addr v4, v1

    iput v4, v3, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    .line 921
    iget-object v3, p0, Lcom/android/vending/velvet/CarouselView$5;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView$5;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView$5;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget v5, v5, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    invoke-virtual {v4, v5}, Lcom/android/vending/velvet/CarouselView;->clampToThumbnailArraySize(F)F

    move-result v4

    iput v4, v3, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    goto :goto_0

    .line 923
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
