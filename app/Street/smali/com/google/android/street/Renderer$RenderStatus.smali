.class Lcom/google/android/street/Renderer$RenderStatus;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RenderStatus"
.end annotation


# instance fields
.field public mAvailableTextures:F

.field public mTotalTextures:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/street/Renderer$RenderStatus;->mAvailableTextures:F

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/street/Renderer$RenderStatus;->mTotalTextures:I

    .line 137
    return-void
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 145
    iget v0, p0, Lcom/google/android/street/Renderer$RenderStatus;->mTotalTextures:I

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/street/Renderer$RenderStatus;->mAvailableTextures:F

    const v1, 0x461c4000

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/street/Renderer$RenderStatus;->mTotalTextures:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public incAvailableTextures(F)V
    .locals 1
    .parameter "inc"

    .prologue
    .line 140
    iget v0, p0, Lcom/google/android/street/Renderer$RenderStatus;->mTotalTextures:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/street/Renderer$RenderStatus;->mTotalTextures:I

    .line 141
    iget v0, p0, Lcom/google/android/street/Renderer$RenderStatus;->mAvailableTextures:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/street/Renderer$RenderStatus;->mAvailableTextures:F

    .line 142
    return-void
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lcom/google/android/street/Renderer$RenderStatus;->mAvailableTextures:F

    iget v1, p0, Lcom/google/android/street/Renderer$RenderStatus;->mTotalTextures:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
