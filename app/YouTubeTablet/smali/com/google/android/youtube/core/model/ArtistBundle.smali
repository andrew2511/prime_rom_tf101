.class public final Lcom/google/android/youtube/core/model/ArtistBundle;
.super Ljava/lang/Object;
.source "ArtistBundle.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/ArtistBundle$Related;
    }
.end annotation


# instance fields
.field public final artist:Lcom/google/android/youtube/core/model/Artist;

.field public final artistTape:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/MusicVideo;",
            ">;"
        }
    .end annotation
.end field

.field public final mixTape:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/MusicVideo;",
            ">;"
        }
    .end annotation
.end field

.field public final relatedArtists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/ArtistBundle$Related;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/model/Artist;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter "artist"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/Artist;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/MusicVideo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/MusicVideo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/ArtistBundle$Related;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, mixTape:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;"
    .local p3, artistTape:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;"
    .local p4, relatedArtists:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/ArtistBundle$Related;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "artist may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Artist;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/ArtistBundle;->artist:Lcom/google/android/youtube/core/model/Artist;

    .line 58
    const-string v0, "mixTape may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/ArtistBundle;->mixTape:Ljava/util/List;

    .line 60
    const-string v0, "artistTape may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/ArtistBundle;->artistTape:Ljava/util/List;

    .line 62
    const-string v0, "relatedArtists may not be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/ArtistBundle;->relatedArtists:Ljava/util/List;

    .line 64
    return-void
.end method
