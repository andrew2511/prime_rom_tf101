.class public LaS/a;
.super Lcom/google/android/motiongesture/ShakeGestureRecognizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/motiongesture/ShakeGestureRecognizer;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public processAccelerometerEvent(Lcom/google/android/motiongesture/Acceleration;)V
    .locals 3

    const/high16 v2, 0x4334

    const/high16 v1, 0x4234

    invoke-virtual {p1}, Lcom/google/android/motiongesture/Acceleration;->getAngleXZ()F

    move-result v0

    invoke-virtual {p0, v0, v2, v1}, LaS/a;->angleWithinTolerance(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/motiongesture/Acceleration;->getAngleYZ()F

    move-result v0

    invoke-virtual {p0, v0, v2, v1}, LaS/a;->angleWithinTolerance(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->processAccelerometerEvent(Lcom/google/android/motiongesture/Acceleration;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
