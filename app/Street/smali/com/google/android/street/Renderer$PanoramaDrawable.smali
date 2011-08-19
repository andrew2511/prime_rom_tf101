.class interface abstract Lcom/google/android/street/Renderer$PanoramaDrawable;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PanoramaDrawable"
.end annotation


# virtual methods
.method public abstract draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/Renderer$RenderStatus;Lcom/google/android/street/Renderer$Transition;)V
.end method

.method public abstract initialize(Lcom/google/android/street/PanoramaConfig;Lcom/google/android/street/TextureCache;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
