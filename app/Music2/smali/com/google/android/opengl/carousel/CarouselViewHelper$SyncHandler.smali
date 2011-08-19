.class Lcom/google/android/opengl/carousel/CarouselViewHelper$SyncHandler;
.super Landroid/os/Handler;
.source "CarouselViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/carousel/CarouselViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselViewHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$SyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 112
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 113
    .local v1, id:I
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$SyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->access$000(Lcom/google/android/opengl/carousel/CarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselView;->getCardCount()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 114
    const-string v0, "CarouselViewHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Index out of range for set, card:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local p0
    :goto_0
    return-void

    .line 118
    .restart local p0
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$SyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->access$000(Lcom/google/android/opengl/carousel/CarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/opengl/carousel/CarouselView;->setTextureForItem(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 124
    .restart local p0
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$SyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->getDetailTextureParameters(I)Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;

    move-result-object v7

    .line 125
    .local v7, params:Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;
    if-eqz v7, :cond_1

    iget v0, v7, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;->textureOffsetX:F

    move v2, v0

    .line 126
    .local v2, x:F
    :goto_1
    if-eqz v7, :cond_2

    iget v0, v7, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;->textureOffsetY:F

    move v3, v0

    .line 127
    .local v3, y:F
    :goto_2
    if-eqz v7, :cond_3

    iget v0, v7, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;->lineOffsetX:F

    move v4, v0

    .line 128
    .local v4, lx:F
    :goto_3
    if-eqz v7, :cond_4

    iget v0, v7, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;->lineOffsetY:F

    move v5, v0

    .line 129
    .local v5, ly:F
    :goto_4
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$SyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->access$000(Lcom/google/android/opengl/carousel/CarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/opengl/carousel/CarouselView;->setDetailTextureForItem(IFFFFLandroid/graphics/Bitmap;)V

    goto :goto_0

    .end local v2           #x:F
    .end local v3           #y:F
    .end local v4           #lx:F
    .end local v5           #ly:F
    :cond_1
    move v2, v6

    .line 125
    goto :goto_1

    .restart local v2       #x:F
    :cond_2
    move v3, v6

    .line 126
    goto :goto_2

    .restart local v3       #y:F
    :cond_3
    move v4, v6

    .line 127
    goto :goto_3

    .restart local v4       #lx:F
    :cond_4
    move v5, v6

    .line 128
    goto :goto_4

    .line 133
    .end local v2           #x:F
    .end local v3           #y:F
    .end local v4           #lx:F
    .end local v7           #params:Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$SyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->access$000(Lcom/google/android/opengl/carousel/CarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/google/android/opengl/carousel/Mesh;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/opengl/carousel/CarouselView;->setGeometryForItem(ILcom/google/android/opengl/carousel/Mesh;)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
