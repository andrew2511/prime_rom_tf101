.class Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;
.super Landroid/os/Handler;
.source "CarouselViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/carousel/CarouselViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselViewHelper;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    .line 74
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 75
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const v6, 0x3d0900

    const/4 v5, 0x0

    .line 79
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 80
    .local v1, id:I
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    invoke-static {v3}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->access$000(Lcom/google/android/opengl/carousel/CarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/opengl/carousel/CarouselView;->getCardCount()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 81
    const-string v3, "CarouselViewHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Index out of range for get, card:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    const v4, 0xf4240

    if-lt v3, v4, :cond_2

    iget v3, p1, Landroid/os/Message;->what:I

    if-le v3, v6, :cond_3

    .line 86
    :cond_2
    const-string v3, "CarouselViewHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    const v4, 0x1e8480

    if-ge v3, v4, :cond_4

    .line 91
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    invoke-virtual {v3, v1}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->getTexture(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 93
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    invoke-static {v3}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->access$100(Lcom/google/android/opengl/carousel/CarouselViewHelper;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 95
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    iget v3, p1, Landroid/os/Message;->what:I

    const v4, 0x2dc6c0

    if-ge v3, v4, :cond_5

    .line 97
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    invoke-virtual {v3, v1}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->getDetailTexture(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    invoke-static {v3}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->access$100(Lcom/google/android/opengl/carousel/CarouselViewHelper;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 101
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_5
    iget v3, p1, Landroid/os/Message;->what:I

    if-ge v3, v6, :cond_0

    .line 103
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    invoke-virtual {v3, v1}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->getGeometry(I)Lcom/google/android/opengl/carousel/Mesh;

    move-result-object v2

    .line 104
    .local v2, mesh:Lcom/google/android/opengl/carousel/Mesh;
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    invoke-static {v3}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->access$100(Lcom/google/android/opengl/carousel/CarouselViewHelper;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
