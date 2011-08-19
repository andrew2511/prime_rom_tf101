.class final enum Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;
.super Ljava/lang/Enum;
.source "FaceDownGestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/motiongesture/FaceDownGestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

.field public static final enum FACE_UP:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

.field public static final enum GESTURE_DETECTED:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

.field public static final enum GESTURE_RESET:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

.field public static final enum INITIAL:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

.field public static final enum NOT_FACE_UP:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    const-string v1, "INITIAL"

    invoke-direct {v0, v1, v2}, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->INITIAL:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    .line 40
    new-instance v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    const-string v1, "FACE_UP"

    invoke-direct {v0, v1, v3}, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->FACE_UP:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    .line 41
    new-instance v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    const-string v1, "NOT_FACE_UP"

    invoke-direct {v0, v1, v4}, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->NOT_FACE_UP:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    .line 42
    new-instance v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    const-string v1, "GESTURE_DETECTED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->GESTURE_DETECTED:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    .line 43
    new-instance v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    const-string v1, "GESTURE_RESET"

    invoke-direct {v0, v1, v6}, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->GESTURE_RESET:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    sget-object v1, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->INITIAL:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->FACE_UP:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->NOT_FACE_UP:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->GESTURE_DETECTED:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->GESTURE_RESET:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->$VALUES:[Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;
    .locals 1
    .parameter

    .prologue
    .line 38
    const-class v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    return-object p0
.end method

.method public static values()[Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->$VALUES:[Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    invoke-virtual {v0}, [Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    return-object v0
.end method
