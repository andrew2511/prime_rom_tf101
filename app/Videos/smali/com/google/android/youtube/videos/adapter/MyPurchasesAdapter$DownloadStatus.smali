.class public final enum Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;
.super Ljava/lang/Enum;
.source "MyPurchasesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

.field public static final enum COMPLETED:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

.field public static final enum FAILED:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

.field public static final enum MISSING:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

.field public static final enum PENDING:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

.field public static final enum RUNNING:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->PENDING:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    .line 33
    new-instance v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->RUNNING:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    .line 34
    new-instance v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->COMPLETED:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    .line 35
    new-instance v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->FAILED:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    .line 36
    new-instance v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    const-string v1, "MISSING"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->MISSING:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    sget-object v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->PENDING:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->RUNNING:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->COMPLETED:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->FAILED:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->MISSING:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->$VALUES:[Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 31
    const-class v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    return-object p0
.end method

.method public static values()[Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->$VALUES:[Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    invoke-virtual {v0}, [Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    return-object v0
.end method
