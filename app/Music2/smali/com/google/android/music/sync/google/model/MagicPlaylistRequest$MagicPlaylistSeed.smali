.class public Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;
.super Lcom/google/api/client/json/GenericJson;
.source "MagicPlaylistRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MagicPlaylistSeed"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;,
        Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;
    }
.end annotation


# instance fields
.field public mSeedType:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "seedType"
    .end annotation
.end field

.field public mSeedValue:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "seed"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 123
    return-void
.end method

.method public static newBuilder()Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;

    invoke-direct {v0}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;-><init>()V

    return-object v0
.end method
