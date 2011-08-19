.class final Lcom/google/android/opengl/carousel/Float4;
.super Ljava/lang/Object;
.source "Float4.java"


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "initX"
    .parameter "initY"
    .parameter "initZ"
    .parameter "initW"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/google/android/opengl/carousel/Float4;->x:F

    .line 14
    iput p2, p0, Lcom/google/android/opengl/carousel/Float4;->y:F

    .line 15
    iput p3, p0, Lcom/google/android/opengl/carousel/Float4;->z:F

    .line 16
    iput p4, p0, Lcom/google/android/opengl/carousel/Float4;->w:F

    .line 17
    return-void
.end method
