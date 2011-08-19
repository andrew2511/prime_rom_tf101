.class Lcom/google/android/opengl/carousel/CarouselView$4;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/opengl/carousel/CarouselView;->setTextureState(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselView;

.field final synthetic val$n:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    iput p2, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->val$n:I

    iput p3, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$400(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->val$n:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->val$state:I

    iput v1, v0, Lcom/google/android/opengl/carousel/Card;->mTextureState:I

    .line 489
    return-void
.end method
