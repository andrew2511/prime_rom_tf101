.class public Lcom/google/android/street/Overlay$Pancake;
.super Ljava/lang/Object;
.source "Overlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/Overlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pancake"
.end annotation


# instance fields
.field public final mDistance:F

.field public final mIsGround:Z

.field public final mNx:F

.field public final mNy:F

.field public final mNz:F

.field public final mPitch:F

.field public final mYaw:F


# direct methods
.method public constructor <init>(FFFFFFZ)V
    .locals 0
    .parameter "nx"
    .parameter "ny"
    .parameter "nz"
    .parameter "distance"
    .parameter "yaw"
    .parameter "pitch"
    .parameter "isGround"

    .prologue
    .line 1787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1788
    iput p1, p0, Lcom/google/android/street/Overlay$Pancake;->mNx:F

    .line 1789
    iput p2, p0, Lcom/google/android/street/Overlay$Pancake;->mNy:F

    .line 1790
    iput p3, p0, Lcom/google/android/street/Overlay$Pancake;->mNz:F

    .line 1791
    iput p4, p0, Lcom/google/android/street/Overlay$Pancake;->mDistance:F

    .line 1792
    iput p5, p0, Lcom/google/android/street/Overlay$Pancake;->mYaw:F

    .line 1793
    iput p6, p0, Lcom/google/android/street/Overlay$Pancake;->mPitch:F

    .line 1794
    iput-boolean p7, p0, Lcom/google/android/street/Overlay$Pancake;->mIsGround:Z

    .line 1795
    return-void
.end method
