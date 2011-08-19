.class abstract Lcom/android/gallery3d/ui/BasicTexture;
.super Ljava/lang/Object;
.source "BasicTexture.java"

# interfaces
.implements Lcom/android/gallery3d/ui/Texture;


# static fields
.field private static sAllTextures:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/gallery3d/ui/BasicTexture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sInFinalizer:Ljava/lang/ThreadLocal;


# instance fields
.field protected mCanvasRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/gallery3d/ui/GLCanvas;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeight:I

.field protected mId:I

.field protected mState:I

.field private mTextureHeight:I

.field private mTextureWidth:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    .line 49
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/gallery3d/ui/BasicTexture;-><init>(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 62
    return-void
.end method

.method protected constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 3
    .parameter "canvas"
    .parameter "id"
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    .line 41
    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    .line 46
    iput-object v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mCanvasRef:Ljava/lang/ref/WeakReference;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 53
    iput p2, p0, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    .line 54
    iput p3, p0, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    .line 55
    sget-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/android/gallery3d/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private freeResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-object v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mCanvasRef:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    move-object v0, v2

    .line 136
    .local v0, canvas:Lcom/android/gallery3d/ui/GLCanvas;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-interface {v0, p0}, Lcom/android/gallery3d/ui/GLCanvas;->unloadTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z

    .line 139
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    .line 140
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 141
    return-void

    .line 135
    .end local v0           #canvas:Lcom/android/gallery3d/ui/GLCanvas;
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mCanvasRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/GLCanvas;

    move-object v0, v1

    goto :goto_0
.end method

.method public static inFinalizer()Z
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static yieldAllTextures()V
    .locals 4

    .prologue
    .line 158
    sget-object v2, Lcom/android/gallery3d/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 159
    :try_start_0
    sget-object v3, Lcom/android/gallery3d/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/BasicTexture;

    .line 160
    .local v1, t:Lcom/android/gallery3d/ui/BasicTexture;
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BasicTexture;->yield()V

    goto :goto_0

    .line 162
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Lcom/android/gallery3d/ui/BasicTexture;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v5

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    .line 105
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 108
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    .line 109
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const-class v1, Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    .line 147
    sget-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    return v0
.end method

.method public getTextureHeight()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureHeight:I

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    return v0
.end method

.method public isLoaded(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 2
    .parameter "canvas"

    .prologue
    const/4 v1, 0x1

    .line 116
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mCanvasRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/gallery3d/ui/BasicTexture;->freeResource()V

    .line 123
    return-void
.end method

.method protected setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 65
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mCanvasRef:Ljava/lang/ref/WeakReference;

    .line 68
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected setSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    .line 76
    iput p2, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    .line 77
    invoke-static {p1}, Lcom/android/gallery3d/util/Utils;->nextPowerOf2(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureWidth:I

    .line 78
    invoke-static {p2}, Lcom/android/gallery3d/util/Utils;->nextPowerOf2(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureHeight:I

    .line 79
    return-void
.end method

.method public yield()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/gallery3d/ui/BasicTexture;->freeResource()V

    .line 132
    return-void
.end method
