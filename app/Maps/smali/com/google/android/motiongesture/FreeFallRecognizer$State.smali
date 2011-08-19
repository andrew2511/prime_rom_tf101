.class final enum Lcom/google/android/motiongesture/FreeFallRecognizer$State;
.super Ljava/lang/Enum;
.source "FreeFallRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/motiongesture/FreeFallRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/motiongesture/FreeFallRecognizer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/motiongesture/FreeFallRecognizer$State;

.field public static final enum FALLING:Lcom/google/android/motiongesture/FreeFallRecognizer$State;

.field public static final enum GESTURE_DETECTED:Lcom/google/android/motiongesture/FreeFallRecognizer$State;

.field public static final enum NOT_FALLING:Lcom/google/android/motiongesture/FreeFallRecognizer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    const-string v1, "NOT_FALLING"

    invoke-direct {v0, v1, v2}, Lcom/google/android/motiongesture/FreeFallRecognizer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/motiongesture/FreeFallRecognizer$State;->NOT_FALLING:Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    .line 37
    new-instance v0, Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    const-string v1, "FALLING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/motiongesture/FreeFallRecognizer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/motiongesture/FreeFallRecognizer$State;->FALLING:Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    .line 38
    new-instance v0, Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    const-string v1, "GESTURE_DETECTED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/motiongesture/FreeFallRecognizer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/motiongesture/FreeFallRecognizer$State;->GESTURE_DETECTED:Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    sget-object v1, Lcom/google/android/motiongesture/FreeFallRecognizer$State;->NOT_FALLING:Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/motiongesture/FreeFallRecognizer$State;->FALLING:Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/motiongesture/FreeFallRecognizer$State;->GESTURE_DETECTED:Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/motiongesture/FreeFallRecognizer$State;->$VALUES:[Lcom/google/android/motiongesture/FreeFallRecognizer$State;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/motiongesture/FreeFallRecognizer$State;
    .locals 1
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    return-object p0
.end method

.method public static values()[Lcom/google/android/motiongesture/FreeFallRecognizer$State;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/motiongesture/FreeFallRecognizer$State;->$VALUES:[Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    invoke-virtual {v0}, [Lcom/google/android/motiongesture/FreeFallRecognizer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    return-object v0
.end method
