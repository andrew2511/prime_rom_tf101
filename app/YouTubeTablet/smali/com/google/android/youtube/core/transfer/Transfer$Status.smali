.class public final enum Lcom/google/android/youtube/core/transfer/Transfer$Status;
.super Ljava/lang/Enum;
.source "Transfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/transfer/Transfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/core/transfer/Transfer$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/transfer/Transfer$Status;

.field public static final enum COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

.field public static final enum FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

.field public static final enum PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

.field public static final enum RUNNING:Lcom/google/android/youtube/core/transfer/Transfer$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/google/android/youtube/core/transfer/Transfer$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/Transfer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 16
    new-instance v0, Lcom/google/android/youtube/core/transfer/Transfer$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/transfer/Transfer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/transfer/Transfer$Status;->RUNNING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 17
    new-instance v0, Lcom/google/android/youtube/core/transfer/Transfer$Status;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/transfer/Transfer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 18
    new-instance v0, Lcom/google/android/youtube/core/transfer/Transfer$Status;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/transfer/Transfer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->RUNNING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/youtube/core/transfer/Transfer$Status;->$VALUES:[Lcom/google/android/youtube/core/transfer/Transfer$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/transfer/Transfer$Status;
    .locals 1
    .parameter

    .prologue
    .line 14
    const-class v0, Lcom/google/android/youtube/core/transfer/Transfer$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/core/transfer/Transfer$Status;

    return-object p0
.end method

.method public static values()[Lcom/google/android/youtube/core/transfer/Transfer$Status;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/youtube/core/transfer/Transfer$Status;->$VALUES:[Lcom/google/android/youtube/core/transfer/Transfer$Status;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/transfer/Transfer$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/transfer/Transfer$Status;

    return-object v0
.end method
