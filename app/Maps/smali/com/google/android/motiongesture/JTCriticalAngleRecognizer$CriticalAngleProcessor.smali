.class Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;
.super Ljava/lang/Object;
.source "JTCriticalAngleRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CriticalAngleProcessor"
.end annotation


# instance fields
.field private mAccel:Lcom/google/android/motiongesture/Acceleration;

.field final synthetic this$0:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;


# direct methods
.method private constructor <init>(Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;->this$0:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;-><init>(Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;)V

    return-void
.end method


# virtual methods
.method public addAcceleration(Lcom/google/android/motiongesture/Acceleration;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x3f19999a

    const v4, 0x3ecccccd

    .line 199
    iget-object v0, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;->mAccel:Lcom/google/android/motiongesture/Acceleration;

    if-nez v0, :cond_0

    .line 200
    iput-object p1, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;->mAccel:Lcom/google/android/motiongesture/Acceleration;

    .line 212
    :goto_0
    return-void

    .line 205
    :cond_0
    new-instance v0, Lcom/google/android/motiongesture/Acceleration;

    iget v1, p1, Lcom/google/android/motiongesture/Acceleration;->mX:F

    mul-float/2addr v1, v4

    iget-object v2, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;->mAccel:Lcom/google/android/motiongesture/Acceleration;

    iget v2, v2, Lcom/google/android/motiongesture/Acceleration;->mX:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iget v2, p1, Lcom/google/android/motiongesture/Acceleration;->mY:F

    mul-float/2addr v2, v4

    iget-object v3, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;->mAccel:Lcom/google/android/motiongesture/Acceleration;

    iget v3, v3, Lcom/google/android/motiongesture/Acceleration;->mY:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, p1, Lcom/google/android/motiongesture/Acceleration;->mZ:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;->mAccel:Lcom/google/android/motiongesture/Acceleration;

    iget v4, v4, Lcom/google/android/motiongesture/Acceleration;->mZ:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-wide v4, p1, Lcom/google/android/motiongesture/Acceleration;->mTimeStamp:J

    invoke-direct/range {v0 .. v5}, Lcom/google/android/motiongesture/Acceleration;-><init>(FFFJ)V

    .line 210
    iput-object v0, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;->mAccel:Lcom/google/android/motiongesture/Acceleration;

    goto :goto_0
.end method

.method public isAtCriticalAngle()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 215
    iget-object v0, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;->mAccel:Lcom/google/android/motiongesture/Acceleration;

    if-nez v0, :cond_0

    move v0, v5

    .line 228
    :goto_0
    return v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;->mAccel:Lcom/google/android/motiongesture/Acceleration;

    invoke-virtual {v0}, Lcom/google/android/motiongesture/Acceleration;->getAngleXY()F

    move-result v0

    .line 221
    iget-object v1, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;->mAccel:Lcom/google/android/motiongesture/Acceleration;

    invoke-virtual {v1}, Lcom/google/android/motiongesture/Acceleration;->getAngleYZ()F

    move-result v1

    .line 224
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 228
    iget-object v2, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;->this$0:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;

    const/high16 v3, 0x4248

    const/high16 v4, 0x42f0

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->angleWithinRange(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;->this$0:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;

    const/high16 v2, 0x41a0

    const/high16 v3, 0x42a0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->angleWithinRange(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_0
.end method
