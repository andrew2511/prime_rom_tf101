.class final enum Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;
.super Ljava/lang/Enum;
.source "JTCriticalAngleRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

.field public static final enum GESTURE_DETECTED:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

.field public static final enum GESTURE_ENDED:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

.field public static final enum INITIAL:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

.field public static final enum WAITING_FOR_ANGLE:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

.field public static final enum WAITING_FOR_PROXIMITY:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

.field public static final enum WAITING_FOR_PROXIMITY_EXPIRED:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    const-string v1, "INITIAL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->INITIAL:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    .line 49
    new-instance v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    const-string v1, "WAITING_FOR_PROXIMITY"

    invoke-direct {v0, v1, v4}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->WAITING_FOR_PROXIMITY:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    .line 50
    new-instance v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    const-string v1, "WAITING_FOR_PROXIMITY_EXPIRED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->WAITING_FOR_PROXIMITY_EXPIRED:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    .line 51
    new-instance v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    const-string v1, "WAITING_FOR_ANGLE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->WAITING_FOR_ANGLE:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    .line 52
    new-instance v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    const-string v1, "GESTURE_DETECTED"

    invoke-direct {v0, v1, v7}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->GESTURE_DETECTED:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    .line 53
    new-instance v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    const-string v1, "GESTURE_ENDED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->GESTURE_ENDED:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    sget-object v1, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->INITIAL:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->WAITING_FOR_PROXIMITY:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->WAITING_FOR_PROXIMITY_EXPIRED:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->WAITING_FOR_ANGLE:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->GESTURE_DETECTED:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->GESTURE_ENDED:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->$VALUES:[Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;
    .locals 1
    .parameter

    .prologue
    .line 47
    const-class v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    return-object p0
.end method

.method public static values()[Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->$VALUES:[Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    invoke-virtual {v0}, [Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    return-object v0
.end method
