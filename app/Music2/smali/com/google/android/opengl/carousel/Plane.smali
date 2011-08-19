.class Lcom/google/android/opengl/carousel/Plane;
.super Ljava/lang/Object;
.source "Plane.java"


# instance fields
.field mConstant:F

.field mNormal:Lcom/google/android/opengl/carousel/Float3;

.field mPoint:Lcom/google/android/opengl/carousel/Float3;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/google/android/opengl/carousel/Float3;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/Float3;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Plane;->mPoint:Lcom/google/android/opengl/carousel/Float3;

    .line 9
    new-instance v0, Lcom/google/android/opengl/carousel/Float3;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v1, v2}, Lcom/google/android/opengl/carousel/Float3;-><init>(FFF)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Plane;->mNormal:Lcom/google/android/opengl/carousel/Float3;

    .line 13
    return-void
.end method
