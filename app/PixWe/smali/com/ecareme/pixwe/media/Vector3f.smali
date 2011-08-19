.class public final Lcom/ecareme/pixwe/media/Vector3f;
.super Ljava/lang/Object;
.source "Vector3f.java"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lcom/ecareme/pixwe/media/Vector3f;->set(FFF)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/ecareme/pixwe/media/Vector3f;)V
    .locals 1
    .parameter "vector"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget v0, p1, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    iput v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    .line 34
    iget v0, p1, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    iput v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    .line 35
    iget v0, p1, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    iput v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    .line 36
    return-void
.end method


# virtual methods
.method public add(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 74
    iget v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    .line 75
    iget v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    .line 76
    iget v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    .line 77
    return-void
.end method

.method public add(Lcom/ecareme/pixwe/media/Vector3f;)V
    .locals 2
    .parameter "vector"

    .prologue
    .line 51
    iget v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    iget v1, p1, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    .line 52
    iget v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    iget v1, p1, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    .line 53
    iget v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    iget v1, p1, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    .line 54
    return-void
.end method

.method public equals(Lcom/ecareme/pixwe/media/Vector3f;)Z
    .locals 2
    .parameter "vector"

    .prologue
    .line 63
    iget v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    iget v1, p1, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    iget v1, p1, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    iget v1, p1, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scale(FFF)V
    .locals 1
    .parameter "spreadValueX"
    .parameter "spreadValueY"
    .parameter "spreadValueZ"

    .prologue
    .line 80
    iget v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    .line 81
    iget v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    .line 82
    iget v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    .line 83
    return-void
.end method

.method public set(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 45
    iput p1, p0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    .line 46
    iput p2, p0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    .line 47
    iput p3, p0, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    .line 48
    return-void
.end method

.method public set(Lcom/ecareme/pixwe/media/Vector3f;)V
    .locals 1
    .parameter "vector"

    .prologue
    .line 39
    iget v0, p1, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    iput v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    .line 40
    iget v0, p1, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    iput v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    .line 41
    iget v0, p1, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    iput v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    .line 42
    return-void
.end method

.method public subtract(Lcom/ecareme/pixwe/media/Vector3f;)V
    .locals 2
    .parameter "vector"

    .prologue
    .line 57
    iget v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    iget v1, p1, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    .line 58
    iget v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    iget v1, p1, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    .line 59
    iget v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    iget v1, p1, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
