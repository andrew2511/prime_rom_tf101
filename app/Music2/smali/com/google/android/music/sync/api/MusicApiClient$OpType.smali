.class public final enum Lcom/google/android/music/sync/api/MusicApiClient$OpType;
.super Ljava/lang/Enum;
.source "MusicApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/api/MusicApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/sync/api/MusicApiClient$OpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/sync/api/MusicApiClient$OpType;

.field public static final enum DELETE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

.field public static final enum INSERT:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

.field public static final enum UPDATE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    const-string v1, "INSERT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/sync/api/MusicApiClient$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->INSERT:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    .line 47
    new-instance v0, Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/sync/api/MusicApiClient$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->UPDATE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    .line 48
    new-instance v0, Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/sync/api/MusicApiClient$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->DELETE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    sget-object v1, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->INSERT:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->UPDATE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->DELETE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->$VALUES:[Lcom/google/android/music/sync/api/MusicApiClient$OpType;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClient$OpType;
    .locals 1
    .parameter "name"

    .prologue
    .line 45
    const-class v0, Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/music/sync/api/MusicApiClient$OpType;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->$VALUES:[Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    invoke-virtual {v0}, [Lcom/google/android/music/sync/api/MusicApiClient$OpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    return-object v0
.end method
