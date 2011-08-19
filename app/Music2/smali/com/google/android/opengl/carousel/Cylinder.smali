.class public Lcom/google/android/opengl/carousel/Cylinder;
.super Ljava/lang/Object;
.source "Cylinder.java"


# instance fields
.field mCenter:Lcom/google/android/opengl/carousel/Float3;

.field mRadius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/google/android/opengl/carousel/Float3;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/Float3;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Cylinder;->mCenter:Lcom/google/android/opengl/carousel/Float3;

    .line 9
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/opengl/carousel/Cylinder;->mRadius:F

    .line 12
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .parameter "r"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/google/android/opengl/carousel/Float3;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/Float3;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Cylinder;->mCenter:Lcom/google/android/opengl/carousel/Float3;

    .line 9
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/opengl/carousel/Cylinder;->mRadius:F

    .line 15
    iput p1, p0, Lcom/google/android/opengl/carousel/Cylinder;->mRadius:F

    .line 16
    return-void
.end method
