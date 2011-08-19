.class public Lcom/google/android/gles_jni/EGLContextImpl;
.super Ljavax/microedition/khronos/egl/EGLContext;
.source "EGLContextImpl.java"


# instance fields
.field mEGLContext:I

.field private mGLContext:Lcom/google/android/gles_jni/GLImpl;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "ctx"

    .prologue
    .line 26
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLContext;-><init>()V

    .line 27
    iput p1, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:I

    .line 28
    new-instance v0, Lcom/google/android/gles_jni/GLImpl;

    invoke-direct {v0}, Lcom/google/android/gles_jni/GLImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mGLContext:Lcom/google/android/gles_jni/GLImpl;

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 43
    :goto_5
    return v2

    .line 39
    :cond_6
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_14

    :cond_12
    move v2, v4

    goto :goto_5

    .line 41
    :cond_14
    move-object v0, p1

    check-cast v0, Lcom/google/android/gles_jni/EGLContextImpl;

    move-object v1, v0

    .line 43
    .local v1, that:Lcom/google/android/gles_jni/EGLContextImpl;
    iget v2, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:I

    iget v3, v1, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:I

    if-ne v2, v3, :cond_20

    move v2, v5

    goto :goto_5

    :cond_20
    move v2, v4

    goto :goto_5
.end method

.method public getGL()Ljavax/microedition/khronos/opengles/GL;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mGLContext:Lcom/google/android/gles_jni/GLImpl;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:I

    return v0
.end method
