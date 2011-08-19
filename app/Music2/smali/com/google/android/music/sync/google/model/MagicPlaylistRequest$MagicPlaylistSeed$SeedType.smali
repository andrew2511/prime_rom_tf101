.class public final enum Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
.super Ljava/lang/Enum;
.source "MagicPlaylistRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeedType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

.field public static final enum ALBUM:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

.field public static final enum ARTIST:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

.field public static final enum TRACK:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;


# instance fields
.field private mOrdinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    new-instance v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    const-string v1, "TRACK"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->TRACK:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    .line 125
    new-instance v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    const-string v1, "ARTIST"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->ARTIST:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    .line 126
    new-instance v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    const-string v1, "ALBUM"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->ALBUM:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    .line 123
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    sget-object v1, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->TRACK:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->ARTIST:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->ALBUM:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->$VALUES:[Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "ordinal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 131
    iput p3, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->mOrdinal:I

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget v0, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->mOrdinal:I

    return v0
.end method

.method public static fromOrdinal(I)Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    .locals 5
    .parameter "ordinal"

    .prologue
    .line 135
    invoke-static {}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->values()[Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 136
    .local v3, seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    iget v4, v3, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->mOrdinal:I

    if-ne v4, p0, :cond_0

    move-object v4, v3

    .line 140
    .end local v3           #seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    :goto_1
    return-object v4

    .line 135
    .restart local v3       #seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v3           #seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isValidOrdinal(I)Z
    .locals 2
    .parameter "ordinal"

    .prologue
    const/4 v1, 0x1

    .line 144
    if-eqz p0, :cond_0

    if-eq p0, v1, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    .locals 1
    .parameter "name"

    .prologue
    .line 123
    const-class v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->$VALUES:[Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    invoke-virtual {v0}, [Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    return-object v0
.end method
