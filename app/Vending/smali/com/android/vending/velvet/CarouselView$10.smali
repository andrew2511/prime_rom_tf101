.class Lcom/android/vending/velvet/CarouselView$10;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/velvet/CarouselView;->createAndRunFadeInSequencer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/velvet/CarouselView;

.field final synthetic val$toFadeIn:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/android/vending/velvet/CarouselView;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1278
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView$10;->this$0:Lcom/android/vending/velvet/CarouselView;

    iput-object p2, p0, Lcom/android/vending/velvet/CarouselView$10;->val$toFadeIn:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/vending/compat/animation/ValueAnimator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 1281
    invoke-virtual {p1}, Lcom/android/vending/compat/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1282
    .local v0, animatedValue:F
    iget-object v3, p0, Lcom/android/vending/velvet/CarouselView$10;->val$toFadeIn:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .line 1283
    .local v2, stageThumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;
    iput v0, v2, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mFadeInAlpha:F

    goto :goto_0

    .line 1286
    .end local v2           #stageThumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :cond_0
    iget-object v3, p0, Lcom/android/vending/velvet/CarouselView$10;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-virtual {v3}, Lcom/android/vending/velvet/CarouselView;->invalidate()V

    .line 1287
    return-void
.end method
