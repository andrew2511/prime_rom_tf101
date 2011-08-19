.class public Lcom/google/android/motiongesture/Acceleration;
.super Ljava/lang/Object;
.source "Acceleration.java"


# static fields
.field private static final RAD_TO_DEG:D = 57.29577951308232


# instance fields
.field public final mTimeStamp:J

.field public final mX:F

.field public final mY:F

.field public final mZ:F


# direct methods
.method public constructor <init>(FFFJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/google/android/motiongesture/Acceleration;->mX:F

    .line 37
    iput p2, p0, Lcom/google/android/motiongesture/Acceleration;->mY:F

    .line 38
    iput p3, p0, Lcom/google/android/motiongesture/Acceleration;->mZ:F

    .line 39
    iput-wide p4, p0, Lcom/google/android/motiongesture/Acceleration;->mTimeStamp:J

    .line 40
    return-void
.end method


# virtual methods
.method public getAngleXY()F
    .locals 4

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/motiongesture/Acceleration;->mX:F

    float-to-double v0, v0

    iget v2, p0, Lcom/google/android/motiongesture/Acceleration;->mY:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a63c1f8L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getAngleXZ()F
    .locals 4

    .prologue
    .line 53
    iget v0, p0, Lcom/google/android/motiongesture/Acceleration;->mX:F

    float-to-double v0, v0

    iget v2, p0, Lcom/google/android/motiongesture/Acceleration;->mZ:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a63c1f8L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getAngleYZ()F
    .locals 4

    .prologue
    .line 60
    iget v0, p0, Lcom/google/android/motiongesture/Acceleration;->mY:F

    float-to-double v0, v0

    iget v2, p0, Lcom/google/android/motiongesture/Acceleration;->mZ:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a63c1f8L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
