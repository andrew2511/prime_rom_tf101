.class Lcom/google/android/opengl/carousel/CarouselView$7;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/opengl/carousel/CarouselView;->setCardRotation(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselView;

.field final synthetic val$cardRotation:F


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselView;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView$7;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    iput p2, p0, Lcom/google/android/opengl/carousel/CarouselView$7;->val$cardRotation:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$7;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$500(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;

    move-result-object v0

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselView$7;->val$cardRotation:F

    iput v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardRotation:F

    .line 713
    return-void
.end method
