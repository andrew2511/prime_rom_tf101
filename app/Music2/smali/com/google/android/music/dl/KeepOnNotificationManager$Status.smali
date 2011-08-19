.class final enum Lcom/google/android/music/dl/KeepOnNotificationManager$Status;
.super Ljava/lang/Enum;
.source "KeepOnNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/KeepOnNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/dl/KeepOnNotificationManager$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

.field public static final enum DONE:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

.field public static final enum DOWNLOADING:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

.field public static final enum NOT_ENABLED:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

.field public static final enum NO_DOWNLOADS:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

.field public static final enum UNKNOWN:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->UNKNOWN:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    .line 93
    new-instance v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    const-string v1, "NOT_ENABLED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->NOT_ENABLED:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    .line 94
    new-instance v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    const-string v1, "NO_DOWNLOADS"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->NO_DOWNLOADS:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    .line 95
    new-instance v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v5}, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DOWNLOADING:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    .line 96
    new-instance v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DONE:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    .line 91
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    sget-object v1, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->UNKNOWN:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->NOT_ENABLED:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->NO_DOWNLOADS:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DOWNLOADING:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DONE:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->$VALUES:[Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/dl/KeepOnNotificationManager$Status;
    .locals 1
    .parameter "name"

    .prologue
    .line 91
    const-class v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    return-object p0
.end method

.method public static values()[Lcom/google/android/music/dl/KeepOnNotificationManager$Status;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->$VALUES:[Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    invoke-virtual {v0}, [Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    return-object v0
.end method
