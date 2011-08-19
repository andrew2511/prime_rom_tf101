.class public Lcom/google/android/gles_jni/EGLDisplayImpl;
.super Ljavax/microedition/khronos/egl/EGLDisplay;
.source "EGLDisplayImpl.java"


# instance fields
.field mEGLDisplay:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "dpy"

    .prologue
    .line 24
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLDisplay;-><init>()V

    .line 25
    iput p1, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:I

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 35
    :goto_5
    return v2

    .line 31
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

    .line 33
    :cond_14
    move-object v0, p1

    check-cast v0, Lcom/google/android/gles_jni/EGLDisplayImpl;

    move-object v1, v0

    .line 35
    .local v1, that:Lcom/google/android/gles_jni/EGLDisplayImpl;
    iget v2, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:I

    iget v3, v1, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:I

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
    .line 41
    iget v0, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:I

    return v0
.end method
