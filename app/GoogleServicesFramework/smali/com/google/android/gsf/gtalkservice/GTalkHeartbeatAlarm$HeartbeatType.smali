.class final enum Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;
.super Ljava/lang/Enum;
.source "GTalkHeartbeatAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HeartbeatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

.field public static final enum ACTIVE:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

.field public static final enum IDLE:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

.field public static final enum NOSYNC:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

.field public static final enum SYNC:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;->ACTIVE:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    new-instance v0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;->IDLE:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    new-instance v0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    const-string v1, "SYNC"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;->SYNC:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    new-instance v0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    const-string v1, "NOSYNC"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;->NOSYNC:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    sget-object v1, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;->ACTIVE:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;->IDLE:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;->SYNC:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;->NOSYNC:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;->$VALUES:[Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;
    .locals 1
    .parameter

    .prologue
    .line 50
    const-class v0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;->$VALUES:[Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    invoke-virtual {v0}, [Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    return-object v0
.end method
