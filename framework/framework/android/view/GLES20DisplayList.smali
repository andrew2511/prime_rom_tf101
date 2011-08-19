.class Landroid/view/GLES20DisplayList;
.super Landroid/view/DisplayList;
.source "GLES20DisplayList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GLES20DisplayList$DisplayListFinalizer;
    }
.end annotation


# instance fields
.field hostView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvas:Landroid/view/GLES20Canvas;

.field private mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

.field mNativeDisplayList:I

.field private mRecorded:Z

.field private mStarted:Z

.field private mValid:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/view/DisplayList;-><init>()V

    .line 27
    iput-boolean v0, p0, Landroid/view/GLES20DisplayList;->mStarted:Z

    .line 28
    iput-boolean v0, p0, Landroid/view/GLES20DisplayList;->mRecorded:Z

    .line 29
    iput-boolean v0, p0, Landroid/view/GLES20DisplayList;->mValid:Z

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/GLES20DisplayList;->hostView:Ljava/lang/ref/WeakReference;

    .line 41
    return-void
.end method


# virtual methods
.method end()V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20Canvas;

    if-eqz v0, :cond_1c

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GLES20DisplayList;->mStarted:Z

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GLES20DisplayList;->mRecorded:Z

    .line 79
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v0}, Landroid/view/GLES20Canvas;->getDisplayList()I

    move-result v0

    iput v0, p0, Landroid/view/GLES20DisplayList;->mNativeDisplayList:I

    .line 80
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v1, p0, Landroid/view/GLES20DisplayList;->mNativeDisplayList:I

    invoke-static {v0, v1}, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->getFinalizer(Landroid/view/GLES20DisplayList$DisplayListFinalizer;I)Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    .line 82
    :cond_1c
    return-void
.end method

.method invalidate()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Landroid/view/GLES20DisplayList;->mStarted:Z

    .line 64
    iput-boolean v0, p0, Landroid/view/GLES20DisplayList;->mRecorded:Z

    .line 65
    iput-boolean v0, p0, Landroid/view/GLES20DisplayList;->mValid:Z

    .line 66
    return-void
.end method

.method isReady()Z
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/view/GLES20DisplayList;->mStarted:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroid/view/GLES20DisplayList;->mRecorded:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isValid()Z
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, Landroid/view/GLES20DisplayList;->mValid:Z

    return v0
.end method

.method start()Landroid/view/HardwareCanvas;
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 45
    iget-boolean v0, p0, Landroid/view/GLES20DisplayList;->mStarted:Z

    if-eqz v0, :cond_d

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording has already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_d
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20Canvas;

    if-eqz v0, :cond_22

    .line 50
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20Canvas;

    check-cast v0, Landroid/view/GLES20RecordingCanvas;

    invoke-virtual {v0}, Landroid/view/GLES20RecordingCanvas;->reset()V

    .line 54
    :goto_18
    iput-boolean v1, p0, Landroid/view/GLES20DisplayList;->mStarted:Z

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GLES20DisplayList;->mRecorded:Z

    .line 56
    iput-boolean v1, p0, Landroid/view/GLES20DisplayList;->mValid:Z

    .line 58
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20Canvas;

    return-object v0

    .line 52
    :cond_22
    new-instance v0, Landroid/view/GLES20RecordingCanvas;

    invoke-direct {v0, v1}, Landroid/view/GLES20RecordingCanvas;-><init>(Z)V

    iput-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20Canvas;

    goto :goto_18
.end method
