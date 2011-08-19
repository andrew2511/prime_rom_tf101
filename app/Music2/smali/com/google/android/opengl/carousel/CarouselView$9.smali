.class Lcom/google/android/opengl/carousel/CarouselView$9;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/opengl/carousel/CarouselView;->setLookAt([F[F[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselView;

.field final synthetic val$at:[F

.field final synthetic val$eye:[F

.field final synthetic val$up:[F


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselView;[F[F[F)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 817
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    iput-object p2, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->val$eye:[F

    iput-object p3, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->val$at:[F

    iput-object p4, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->val$up:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$500(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->val$eye:[F

    iput-object v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mEye:[F

    .line 821
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$500(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->val$at:[F

    iput-object v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mAt:[F

    .line 822
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$500(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->val$up:[F

    iput-object v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mUp:[F

    .line 823
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$400(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-static {v1}, Lcom/google/android/opengl/carousel/CarouselView;->access$500(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/GLCamera;->setLookat(Lcom/google/android/opengl/carousel/CarouselSetting;)V

    .line 824
    return-void
.end method
