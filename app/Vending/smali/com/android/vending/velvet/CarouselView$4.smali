.class Lcom/android/vending/velvet/CarouselView$4;
.super Lcom/android/vending/compat/animation/AnimatorListenerAdapter;
.source "CarouselView.java"


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

.field wasCanceled:Z


# direct methods
.method constructor <init>(Lcom/android/vending/velvet/CarouselView;)V
    .locals 0
    .parameter

    .prologue
    .line 879
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView$4;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-direct {p0}, Lcom/android/vending/compat/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/android/vending/compat/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 884
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/velvet/CarouselView$4;->wasCanceled:Z

    .line 885
    return-void
.end method

.method public onAnimationEnd(Lcom/android/vending/compat/animation/Animator;)V
    .locals 6
    .parameter "animation"

    .prologue
    .line 893
    iget-boolean v1, p0, Lcom/android/vending/velvet/CarouselView$4;->wasCanceled:Z

    if-eqz v1, :cond_0

    .line 902
    :goto_0
    return-void

    .line 897
    :cond_0
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView$4;->this$0:Lcom/android/vending/velvet/CarouselView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/vending/velvet/CarouselView;->access$200(Lcom/android/vending/velvet/CarouselView;I)V

    .line 899
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView$4;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget-object v2, p0, Lcom/android/vending/velvet/CarouselView$4;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget v2, v2, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    float-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/vending/velvet/CarouselView;->clampToThumbnailArraySize(I)I

    move-result v0

    .line 900
    .local v0, indexForCaption:I
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView$4;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget-object v2, p0, Lcom/android/vending/velvet/CarouselView$4;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget-object v2, v2, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget-object v2, v2, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    invoke-static {v1, v2}, Lcom/android/vending/velvet/CarouselView;->access$502(Lcom/android/vending/velvet/CarouselView;Lcom/android/vending/model/Asset;)Lcom/android/vending/model/Asset;

    .line 901
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView$4;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-static {v1}, Lcom/android/vending/velvet/CarouselView;->access$800(Lcom/android/vending/velvet/CarouselView;)V

    goto :goto_0
.end method

.method public onAnimationStart(Lcom/android/vending/compat/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$4;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView$4;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget v1, v1, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    invoke-static {v0, v1}, Lcom/android/vending/velvet/CarouselView;->access$702(Lcom/android/vending/velvet/CarouselView;F)F

    .line 889
    return-void
.end method
