.class Lcom/android/vending/velvet/CarouselView$2;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/velvet/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/velvet/CarouselView;


# direct methods
.method constructor <init>(Lcom/android/vending/velvet/CarouselView;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView$2;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 463
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView$2;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-static {v5}, Lcom/android/vending/velvet/CarouselView;->access$100(Lcom/android/vending/velvet/CarouselView;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView$2;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget-object v6, p0, Lcom/android/vending/velvet/CarouselView$2;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget v6, v6, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    const/high16 v7, 0x3f80

    invoke-virtual {v5, v6, v7}, Lcom/android/vending/velvet/CarouselView;->isOutsideLoadedRange(FF)Z

    move-result v5

    if-nez v5, :cond_0

    .line 473
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView$2;->this$0:Lcom/android/vending/velvet/CarouselView;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/android/vending/velvet/CarouselView;->access$200(Lcom/android/vending/velvet/CarouselView;I)V

    .line 475
    const/high16 v4, 0x3f80

    .line 476
    .local v4, totalDistance:F
    const/high16 v5, 0x4000

    iget-object v6, p0, Lcom/android/vending/velvet/CarouselView$2;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-static {v6}, Lcom/android/vending/velvet/CarouselView;->access$300(Lcom/android/vending/velvet/CarouselView;)F

    move-result v6

    mul-float/2addr v5, v6

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 477
    .local v0, absVelocity:F
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView$2;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-static {v5}, Lcom/android/vending/velvet/CarouselView;->access$300(Lcom/android/vending/velvet/CarouselView;)F

    move-result v5

    div-float v1, v0, v5

    .line 478
    .local v1, duration:F
    const/high16 v5, 0x447a

    mul-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-long v2, v5

    .line 480
    .local v2, durationMs:J
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView$2;->this$0:Lcom/android/vending/velvet/CarouselView;

    neg-float v6, v0

    invoke-static {v5, v6, v2, v3}, Lcom/android/vending/velvet/CarouselView;->access$400(Lcom/android/vending/velvet/CarouselView;FJ)V

    goto :goto_0
.end method
