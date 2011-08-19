.class Lcom/google/android/opengl/carousel/CarouselView$6;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/opengl/carousel/CarouselView;->setDetailTextureForItem(IFFFFLandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselView;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$loffx:F

.field final synthetic val$loffy:F

.field final synthetic val$n:I

.field final synthetic val$offx:F

.field final synthetic val$offy:F


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselView;IFFFFLandroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView$6;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    iput p2, p0, Lcom/google/android/opengl/carousel/CarouselView$6;->val$n:I

    iput p3, p0, Lcom/google/android/opengl/carousel/CarouselView$6;->val$offx:F

    iput p4, p0, Lcom/google/android/opengl/carousel/CarouselView$6;->val$offy:F

    iput p5, p0, Lcom/google/android/opengl/carousel/CarouselView$6;->val$loffx:F

    iput p6, p0, Lcom/google/android/opengl/carousel/CarouselView$6;->val$loffy:F

    iput-object p7, p0, Lcom/google/android/opengl/carousel/CarouselView$6;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$6;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$400(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselView$6;->val$n:I

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselView$6;->val$offx:F

    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselView$6;->val$offy:F

    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselView$6;->val$loffx:F

    iget v5, p0, Lcom/google/android/opengl/carousel/CarouselView$6;->val$loffy:F

    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselView$6;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/opengl/carousel/CarouselScene;->setDetailTexture(IFFFFLandroid/graphics/Bitmap;)V

    .line 538
    return-void
.end method
