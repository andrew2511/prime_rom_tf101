.class Landroid/view/GLES20Canvas$CanvasFinalizer;
.super Ljava/lang/Object;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GLES20Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CanvasFinalizer"
.end annotation


# instance fields
.field mRenderer:I


# direct methods
.method private constructor <init>(I)V
    .registers 2
    .parameter "renderer"

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput p1, p0, Landroid/view/GLES20Canvas$CanvasFinalizer;->mRenderer:I

    .line 134
    return-void
.end method

.method static getFinalizer(Landroid/view/GLES20Canvas$CanvasFinalizer;I)Landroid/view/GLES20Canvas$CanvasFinalizer;
    .registers 3
    .parameter "oldFinalizer"
    .parameter "renderer"

    .prologue
    .line 125
    if-nez p0, :cond_8

    .line 126
    new-instance v0, Landroid/view/GLES20Canvas$CanvasFinalizer;

    invoke-direct {v0, p1}, Landroid/view/GLES20Canvas$CanvasFinalizer;-><init>(I)V

    .line 129
    :goto_7
    return-object v0

    .line 128
    :cond_8
    invoke-direct {p0, p1}, Landroid/view/GLES20Canvas$CanvasFinalizer;->replaceNativeObject(I)V

    move-object v0, p0

    .line 129
    goto :goto_7
.end method

.method private replaceNativeObject(I)V
    .registers 3
    .parameter "newRenderer"

    .prologue
    .line 137
    iget v0, p0, Landroid/view/GLES20Canvas$CanvasFinalizer;->mRenderer:I

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/view/GLES20Canvas$CanvasFinalizer;->mRenderer:I

    if-eq p1, v0, :cond_d

    .line 138
    iget v0, p0, Landroid/view/GLES20Canvas$CanvasFinalizer;->mRenderer:I

    #calls: Landroid/view/GLES20Canvas;->nDestroyRenderer(I)V
    invoke-static {v0}, Landroid/view/GLES20Canvas;->access$000(I)V

    .line 140
    :cond_d
    iput p1, p0, Landroid/view/GLES20Canvas$CanvasFinalizer;->mRenderer:I

    .line 141
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Landroid/view/GLES20Canvas$CanvasFinalizer;->replaceNativeObject(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    .line 148
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 150
    return-void

    .line 148
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
