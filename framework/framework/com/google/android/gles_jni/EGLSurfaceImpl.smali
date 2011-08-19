.class public Lcom/google/android/gles_jni/EGLSurfaceImpl;
.super Ljavax/microedition/khronos/egl/EGLSurface;
.source "EGLSurfaceImpl.java"


# instance fields
.field mEGLSurface:I

.field private mNativePixelRef:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLSurface;-><init>()V

    .line 25
    iput v0, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:I

    .line 26
    iput v0, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mNativePixelRef:I

    .line 27
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "surface"

    .prologue
    .line 28
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLSurface;-><init>()V

    .line 29
    iput p1, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mNativePixelRef:I

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 40
    :goto_5
    return v2

    .line 36
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

    .line 38
    :cond_14
    move-object v0, p1

    check-cast v0, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    move-object v1, v0

    .line 40
    .local v1, that:Lcom/google/android/gles_jni/EGLSurfaceImpl;
    iget v2, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:I

    iget v3, v1, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:I

    if-ne v2, v3, :cond_20

    move v2, v5

    goto :goto_5

    :cond_20
    move v2, v4

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:I

    return v0
.end method
