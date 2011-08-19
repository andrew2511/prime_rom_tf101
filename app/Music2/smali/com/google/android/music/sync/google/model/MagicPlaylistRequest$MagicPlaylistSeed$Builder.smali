.class public Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;
.super Ljava/lang/Object;
.source "MagicPlaylistRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mSeed:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;

    invoke-direct {v0}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;->mSeed:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;->mSeed:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;

    .line 118
    .local v0, returnVal:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;->mSeed:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;

    .line 119
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;

    invoke-direct {v0}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;->mSeed:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;

    .line 94
    return-void
.end method

.method public setSeedType(Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;)Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;
    .locals 2
    .parameter "type"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;->mSeed:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;

    invoke-static {p1}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->access$000(Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;)I

    move-result v1

    iput v1, v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;->mSeedType:I

    .line 101
    return-object p0
.end method

.method public setSeedValue(Ljava/lang/String;)Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;->mSeed:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;

    iput-object p1, v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;->mSeedValue:Ljava/lang/String;

    .line 109
    return-object p0
.end method
