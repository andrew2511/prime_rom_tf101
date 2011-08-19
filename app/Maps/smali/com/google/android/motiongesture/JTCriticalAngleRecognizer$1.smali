.class synthetic Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$1;
.super Ljava/lang/Object;
.source "JTCriticalAngleRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$motiongesture$JTCriticalAngleRecognizer$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->values()[Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$1;->$SwitchMap$com$google$android$motiongesture$JTCriticalAngleRecognizer$State:[I

    :try_start_0
    sget-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$1;->$SwitchMap$com$google$android$motiongesture$JTCriticalAngleRecognizer$State:[I

    sget-object v1, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->INITIAL:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    invoke-virtual {v1}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$1;->$SwitchMap$com$google$android$motiongesture$JTCriticalAngleRecognizer$State:[I

    sget-object v1, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->WAITING_FOR_PROXIMITY:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    invoke-virtual {v1}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$1;->$SwitchMap$com$google$android$motiongesture$JTCriticalAngleRecognizer$State:[I

    sget-object v1, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->WAITING_FOR_PROXIMITY_EXPIRED:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    invoke-virtual {v1}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$1;->$SwitchMap$com$google$android$motiongesture$JTCriticalAngleRecognizer$State:[I

    sget-object v1, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->WAITING_FOR_ANGLE:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    invoke-virtual {v1}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$1;->$SwitchMap$com$google$android$motiongesture$JTCriticalAngleRecognizer$State:[I

    sget-object v1, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->GESTURE_DETECTED:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    invoke-virtual {v1}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$1;->$SwitchMap$com$google$android$motiongesture$JTCriticalAngleRecognizer$State:[I

    sget-object v1, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->GESTURE_ENDED:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    invoke-virtual {v1}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
