.class Lcom/google/android/finsky/layout/PromoStrip$1;
.super Ljava/lang/Object;
.source "PromoStrip.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/PromoStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/PromoStrip;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/PromoStrip;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/finsky/layout/PromoStrip$1;->this$0:Lcom/google/android/finsky/layout/PromoStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 265
    iget-object v3, p0, Lcom/google/android/finsky/layout/PromoStrip$1;->this$0:Lcom/google/android/finsky/layout/PromoStrip;

    invoke-static {v3}, Lcom/google/android/finsky/layout/PromoStrip;->access$000(Lcom/google/android/finsky/layout/PromoStrip;)I

    move-result v3

    int-to-float v2, v3

    .line 266
    .local v2, totalDistance:F
    const/high16 v3, 0x4000

    iget-object v4, p0, Lcom/google/android/finsky/layout/PromoStrip$1;->this$0:Lcom/google/android/finsky/layout/PromoStrip;

    iget v4, v4, Lcom/google/android/finsky/layout/PromoStrip;->mDeceleration:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 267
    .local v0, absVelocity:F
    iget-object v3, p0, Lcom/google/android/finsky/layout/PromoStrip$1;->this$0:Lcom/google/android/finsky/layout/PromoStrip;

    iget v3, v3, Lcom/google/android/finsky/layout/PromoStrip;->mDeceleration:F

    div-float v1, v0, v3

    .line 268
    .local v1, duration:F
    iget-object v3, p0, Lcom/google/android/finsky/layout/PromoStrip$1;->this$0:Lcom/google/android/finsky/layout/PromoStrip;

    neg-float v4, v0

    invoke-virtual {v3, v4, v1}, Lcom/google/android/finsky/layout/PromoStrip;->runScrollAnimation(FF)V

    .line 269
    return-void
.end method
