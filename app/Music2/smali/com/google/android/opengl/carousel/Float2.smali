.class final Lcom/google/android/opengl/carousel/Float2;
.super Ljava/lang/Object;
.source "Float2.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .parameter "initX"
    .parameter "initY"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/google/android/opengl/carousel/Float2;->x:F

    .line 16
    iput p2, p0, Lcom/google/android/opengl/carousel/Float2;->y:F

    .line 17
    return-void
.end method


# virtual methods
.method public set(FF)V
    .locals 0
    .parameter "newX"
    .parameter "newY"

    .prologue
    .line 20
    iput p1, p0, Lcom/google/android/opengl/carousel/Float2;->x:F

    .line 21
    iput p2, p0, Lcom/google/android/opengl/carousel/Float2;->y:F

    .line 22
    return-void
.end method
