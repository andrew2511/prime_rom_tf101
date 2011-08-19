.class public final enum Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;
.super Ljava/lang/Enum;
.source "DownloadOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/DownloadOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScheduledBy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

.field public static final enum KEEP_ON_DEVICE:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

.field public static final enum PREDICTIVE:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

.field public static final enum STREAMING:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

.field public static final enum USER_PLAYLIST:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    const-string v1, "STREAMING"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->STREAMING:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    .line 47
    new-instance v0, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    const-string v1, "USER_PLAYLIST"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->USER_PLAYLIST:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    .line 52
    new-instance v0, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    const-string v1, "KEEP_ON_DEVICE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->KEEP_ON_DEVICE:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    .line 57
    new-instance v0, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    const-string v1, "PREDICTIVE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->PREDICTIVE:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->STREAMING:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->USER_PLAYLIST:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->KEEP_ON_DEVICE:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->PREDICTIVE:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->$VALUES:[Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;
    .locals 1
    .parameter "name"

    .prologue
    .line 38
    const-class v0, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    return-object p0
.end method

.method public static values()[Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->$VALUES:[Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    invoke-virtual {v0}, [Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    return-object v0
.end method


# virtual methods
.method public isPassiveDownload()Z
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->USER_PLAYLIST:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->KEEP_ON_DEVICE:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->PREDICTIVE:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
