.class Lcom/google/android/street/Renderer$PixelToYawPitchArgs;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PixelToYawPitchArgs"
.end annotation


# instance fields
.field public mDone:Z

.field public final mIsVehicleRelative:Z

.field public final mX:F

.field public final mY:F

.field public mYawPitchOut:[F


# direct methods
.method constructor <init>(FFZ)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "isVehicleRelative"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Lcom/google/android/street/Renderer$PixelToYawPitchArgs;->mX:F

    .line 123
    iput p2, p0, Lcom/google/android/street/Renderer$PixelToYawPitchArgs;->mY:F

    .line 124
    iput-boolean p3, p0, Lcom/google/android/street/Renderer$PixelToYawPitchArgs;->mIsVehicleRelative:Z

    .line 125
    return-void
.end method
