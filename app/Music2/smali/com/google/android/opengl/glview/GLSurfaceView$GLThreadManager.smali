.class Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final kADRENO:Ljava/lang/String; = "Adreno"

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1670
    const-string v0, "GLThreadManager"

    sput-object v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/opengl/glview/GLSurfaceView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1669
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 3

    .prologue
    const/high16 v2, 0x2

    const/4 v1, 0x1

    .line 1753
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_1

    .line 1757
    iput v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    .line 1758
    iget v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    if-lt v0, v2, :cond_0

    .line 1759
    iput-boolean v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1765
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1767
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1734
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v1, :cond_2

    .line 1735
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1736
    const/16 v1, 0x1f01

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1737
    .local v0, renderer:Ljava/lang/String;
    iget v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 1738
    const-string v1, "Q3Dimension MSM7500 "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1740
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1742
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz v1, :cond_1

    const-string v1, "Adreno"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mLimitedGLESContexts:Z

    .line 1748
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1750
    .end local v0           #renderer:Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return-void

    .restart local v0       #renderer:Ljava/lang/String;
    :cond_3
    move v1, v4

    .line 1738
    goto :goto_0

    :cond_4
    move v1, v4

    .line 1742
    goto :goto_1

    .line 1734
    .end local v0           #renderer:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglContextLocked(Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1716
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    .line 1718
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1719
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    .prologue
    .line 1725
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .locals 1

    .prologue
    .line 1729
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1730
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1729
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 1676
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->access$1202(Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;Z)Z

    .line 1677
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1678
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    .line 1680
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1681
    monitor-exit p0

    return-void

    .line 1676
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;)Z
    .locals 2
    .parameter "thread"

    .prologue
    const/4 v1, 0x1

    .line 1691
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    if-nez v0, :cond_1

    .line 1692
    :cond_0
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    .line 1693
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    move v0, v1

    .line 1707
    :goto_0
    return v0

    .line 1696
    :cond_1
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1697
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 1698
    goto :goto_0

    .line 1704
    :cond_2
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    if-eqz v0, :cond_3

    .line 1705
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->requestReleaseEglContextLocked()V

    .line 1707
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
