.class public final enum Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;
.super Ljava/lang/Enum;
.source "MagicPlaylistResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

.field public static final enum INSUFFICIENT_RESULTS:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

.field public static final enum INTERNAL_SERVER_ERROR:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

.field public static final enum OK:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

.field public static final enum TRY_AGAIN:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->OK:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    .line 25
    new-instance v0, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    const-string v1, "TRY_AGAIN"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->TRY_AGAIN:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    .line 26
    new-instance v0, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    const-string v1, "INSUFFICIENT_RESULTS"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->INSUFFICIENT_RESULTS:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    .line 27
    new-instance v0, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    const-string v1, "INTERNAL_SERVER_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->INTERNAL_SERVER_ERROR:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    sget-object v1, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->OK:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->TRY_AGAIN:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->INSUFFICIENT_RESULTS:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->INTERNAL_SERVER_ERROR:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->$VALUES:[Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;
    .locals 1
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->$VALUES:[Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    invoke-virtual {v0}, [Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    return-object v0
.end method
