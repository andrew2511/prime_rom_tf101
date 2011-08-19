.class public Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;
.super Ljava/lang/Object;
.source "MagicPlaylistRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mPlaylistRequest:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;

    invoke-direct {v0}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;->mPlaylistRequest:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;

    return-void
.end method


# virtual methods
.method public addSeed(Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;)Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;
    .locals 2
    .parameter "seed"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;->mPlaylistRequest:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;

    iget-object v0, v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->mSeeds:Ljava/util/List;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;->mPlaylistRequest:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->mSeeds:Ljava/util/List;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;->mPlaylistRequest:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;

    iget-object v0, v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->mSeeds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-object p0
.end method

.method public build()Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;->mPlaylistRequest:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->mIncludeAllEntries:Z

    .line 77
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;->mPlaylistRequest:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;

    .line 78
    .local v0, returnVal:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;->mPlaylistRequest:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;

    .line 79
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;

    invoke-direct {v0}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;->mPlaylistRequest:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;

    .line 37
    return-void
.end method

.method public setDesiredNumberOfEntries(I)Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;
    .locals 1
    .parameter "numEntries"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;->mPlaylistRequest:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;

    iput p1, v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->mNumEntries:I

    .line 66
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;
    .locals 1
    .parameter "name"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;->mPlaylistRequest:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;

    iput-object p1, v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->mName:Ljava/lang/String;

    .line 44
    return-object p0
.end method
