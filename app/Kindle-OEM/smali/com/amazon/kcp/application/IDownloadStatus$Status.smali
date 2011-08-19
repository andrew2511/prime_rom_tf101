.class public final enum Lcom/amazon/kcp/application/IDownloadStatus$Status;
.super Ljava/lang/Enum;
.source "IDownloadStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/IDownloadStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/application/IDownloadStatus$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/application/IDownloadStatus$Status;

.field public static final enum DownloadFailed:Lcom/amazon/kcp/application/IDownloadStatus$Status;

.field public static final enum Downloaded:Lcom/amazon/kcp/application/IDownloadStatus$Status;

.field public static final enum Downloading:Lcom/amazon/kcp/application/IDownloadStatus$Status;

.field public static final enum NoStatus:Lcom/amazon/kcp/application/IDownloadStatus$Status;

.field public static final enum Queued:Lcom/amazon/kcp/application/IDownloadStatus$Status;

.field public static final enum SyncFailed:Lcom/amazon/kcp/application/IDownloadStatus$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/amazon/kcp/application/IDownloadStatus$Status;

    const-string v1, "NoStatus"

    invoke-direct {v0, v1, v3}, Lcom/amazon/kcp/application/IDownloadStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IDownloadStatus$Status;->NoStatus:Lcom/amazon/kcp/application/IDownloadStatus$Status;

    .line 25
    new-instance v0, Lcom/amazon/kcp/application/IDownloadStatus$Status;

    const-string v1, "SyncFailed"

    invoke-direct {v0, v1, v4}, Lcom/amazon/kcp/application/IDownloadStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IDownloadStatus$Status;->SyncFailed:Lcom/amazon/kcp/application/IDownloadStatus$Status;

    .line 29
    new-instance v0, Lcom/amazon/kcp/application/IDownloadStatus$Status;

    const-string v1, "DownloadFailed"

    invoke-direct {v0, v1, v5}, Lcom/amazon/kcp/application/IDownloadStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IDownloadStatus$Status;->DownloadFailed:Lcom/amazon/kcp/application/IDownloadStatus$Status;

    .line 33
    new-instance v0, Lcom/amazon/kcp/application/IDownloadStatus$Status;

    const-string v1, "Downloaded"

    invoke-direct {v0, v1, v6}, Lcom/amazon/kcp/application/IDownloadStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IDownloadStatus$Status;->Downloaded:Lcom/amazon/kcp/application/IDownloadStatus$Status;

    .line 37
    new-instance v0, Lcom/amazon/kcp/application/IDownloadStatus$Status;

    const-string v1, "Downloading"

    invoke-direct {v0, v1, v7}, Lcom/amazon/kcp/application/IDownloadStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IDownloadStatus$Status;->Downloading:Lcom/amazon/kcp/application/IDownloadStatus$Status;

    .line 41
    new-instance v0, Lcom/amazon/kcp/application/IDownloadStatus$Status;

    const-string v1, "Queued"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/application/IDownloadStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IDownloadStatus$Status;->Queued:Lcom/amazon/kcp/application/IDownloadStatus$Status;

    .line 16
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/amazon/kcp/application/IDownloadStatus$Status;

    sget-object v1, Lcom/amazon/kcp/application/IDownloadStatus$Status;->NoStatus:Lcom/amazon/kcp/application/IDownloadStatus$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kcp/application/IDownloadStatus$Status;->SyncFailed:Lcom/amazon/kcp/application/IDownloadStatus$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/kcp/application/IDownloadStatus$Status;->DownloadFailed:Lcom/amazon/kcp/application/IDownloadStatus$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/kcp/application/IDownloadStatus$Status;->Downloaded:Lcom/amazon/kcp/application/IDownloadStatus$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazon/kcp/application/IDownloadStatus$Status;->Downloading:Lcom/amazon/kcp/application/IDownloadStatus$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/amazon/kcp/application/IDownloadStatus$Status;->Queued:Lcom/amazon/kcp/application/IDownloadStatus$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/kcp/application/IDownloadStatus$Status;->$VALUES:[Lcom/amazon/kcp/application/IDownloadStatus$Status;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/application/IDownloadStatus$Status;
    .locals 1
    .parameter

    .prologue
    .line 16
    const-class v0, Lcom/amazon/kcp/application/IDownloadStatus$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/IDownloadStatus$Status;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/application/IDownloadStatus$Status;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/amazon/kcp/application/IDownloadStatus$Status;->$VALUES:[Lcom/amazon/kcp/application/IDownloadStatus$Status;

    invoke-virtual {v0}, [Lcom/amazon/kcp/application/IDownloadStatus$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/application/IDownloadStatus$Status;

    return-object v0
.end method
