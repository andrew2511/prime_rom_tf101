.class Lcom/google/android/opengl/carousel/CarouselView$2;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/opengl/carousel/CarouselView;->createCards(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselView;

.field final synthetic val$n:I


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView$2;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    iput p2, p0, Lcom/google/android/opengl/carousel/CarouselView$2;->val$n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 437
    const-string v0, "CarouselView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created cards of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselView$2;->val$n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$2;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$500(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;

    move-result-object v0

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselView$2;->val$n:I

    iput v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardCount:I

    .line 439
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$2;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$400(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselView$2;->val$n:I

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->createCards(I)V

    .line 440
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$2;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$500(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mInitialized:Z

    .line 441
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$2;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$400(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 442
    return-void
.end method
