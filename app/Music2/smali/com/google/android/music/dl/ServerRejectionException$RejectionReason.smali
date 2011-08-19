.class public final enum Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;
.super Ljava/lang/Enum;
.source "ServerRejectionException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/ServerRejectionException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RejectionReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

.field public static final enum ANOTHER_STREAM_BEING_PLAYED:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

.field public static final enum DEVICE_NOT_AUTHORIZED:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

.field public static final enum STREAM_RATE_LIMIT_REACHED:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    const-string v1, "ANOTHER_STREAM_BEING_PLAYED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->ANOTHER_STREAM_BEING_PLAYED:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    .line 16
    new-instance v0, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    const-string v1, "STREAM_RATE_LIMIT_REACHED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->STREAM_RATE_LIMIT_REACHED:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    .line 17
    new-instance v0, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    const-string v1, "DEVICE_NOT_AUTHORIZED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->DEVICE_NOT_AUTHORIZED:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    sget-object v1, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->ANOTHER_STREAM_BEING_PLAYED:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->STREAM_RATE_LIMIT_REACHED:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->DEVICE_NOT_AUTHORIZED:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->$VALUES:[Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    return-object p0
.end method

.method public static values()[Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->$VALUES:[Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    invoke-virtual {v0}, [Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    return-object v0
.end method
