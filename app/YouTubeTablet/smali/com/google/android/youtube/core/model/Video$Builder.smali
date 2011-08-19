.class public final Lcom/google/android/youtube/core/model/Video$Builder;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Lcom/google/android/youtube/core/model/ModelBuilder;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/google/android/youtube/core/model/ModelBuilder",
        "<",
        "Lcom/google/android/youtube/core/model/Video;",
        ">;"
    }
.end annotation


# instance fields
.field private adultContent:Z

.field private availabilityEnd:Ljava/util/Date;

.field private availabilityStart:Ljava/util/Date;

.field private captionTracksUri:Landroid/net/Uri;

.field private category:Ljava/lang/String;

.field private claimed:Z

.field private commentsUri:Landroid/net/Uri;

.field private credits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private dislikesCount:I

.field private downloadUri720p:Landroid/net/Uri;

.field private duration:I

.field private editUri:Landroid/net/Uri;

.field private episodeNumber:Ljava/lang/String;

.field private favoriteCount:I

.field private genres:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Video$Genre;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private likesCount:I

.field private mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

.field private monetize:Z

.field private monetizeExceptionCountries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private owner:Ljava/lang/String;

.field private posterUri:Landroid/net/Uri;

.field private pricing:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/PricingStructure;",
            ">;"
        }
    .end annotation
.end field

.field private publishedDate:Ljava/util/Date;

.field private rateUri:Landroid/net/Uri;

.field private relatedUri:Landroid/net/Uri;

.field private releaseDate:Ljava/util/Date;

.field private releaseMediums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private restrictedCountries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private seasonTitle:Ljava/lang/String;

.field private seasonUri:Landroid/net/Uri;

.field private showTitle:Ljava/lang/String;

.field private showUri:Landroid/net/Uri;

.field private state:Lcom/google/android/youtube/core/model/Video$State;

.field private streamUri240p:Landroid/net/Uri;

.field private streamUri360p:Landroid/net/Uri;

.field private streamUri405p:Landroid/net/Uri;

.field private streamUri480p:Landroid/net/Uri;

.field private streamUri720p:Landroid/net/Uri;

.field private tags:Ljava/lang/String;

.field private thumbnailUri:Landroid/net/Uri;

.field private title:Ljava/lang/String;

.field private trailerForUri:Landroid/net/Uri;

.field private trailersUri:Landroid/net/Uri;

.field private viewCount:I

.field private watchUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 850
    sget-object v0, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->state:Lcom/google/android/youtube/core/model/Video$State;

    return-void
.end method

.method private buildEpisode()Lcom/google/android/youtube/core/model/Video$Episode;
    .locals 14

    .prologue
    .line 964
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    iget-object v7, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showTitle:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showUri:Landroid/net/Uri;

    iget-object v11, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonTitle:Ljava/lang/String;

    iget-object v12, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonUri:Landroid/net/Uri;

    iget-object v13, p0, Lcom/google/android/youtube/core/model/Video$Builder;->episodeNumber:Ljava/lang/String;

    invoke-direct/range {v0 .. v13}, Lcom/google/android/youtube/core/model/Video$Episode;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildMovie()Lcom/google/android/youtube/core/model/Video$Movie;
    .locals 9

    .prologue
    .line 939
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    iget-object v7, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/youtube/core/model/Video$Movie;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method

.method private buildTrailer()Lcom/google/android/youtube/core/model/Video$Trailer;
    .locals 10

    .prologue
    .line 951
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Trailer;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    iget-object v7, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailerForUri:Landroid/net/Uri;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/youtube/core/model/Video$Trailer;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method

.method private buildVideo(Lcom/google/android/youtube/core/model/Video$Pro;)Lcom/google/android/youtube/core/model/Video;
    .locals 35
    .parameter "pro"

    .prologue
    .line 902
    new-instance v1, Lcom/google/android/youtube/core/model/Video;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->id:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri240p:Landroid/net/Uri;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri360p:Landroid/net/Uri;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri405p:Landroid/net/Uri;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri480p:Landroid/net/Uri;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri720p:Landroid/net/Uri;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->downloadUri720p:Landroid/net/Uri;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->watchUri:Landroid/net/Uri;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri:Landroid/net/Uri;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->editUri:Landroid/net/Uri;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->commentsUri:Landroid/net/Uri;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->relatedUri:Landroid/net/Uri;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->rateUri:Landroid/net/Uri;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->captionTracksUri:Landroid/net/Uri;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->title:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->duration:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->viewCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->favoriteCount:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->likesCount:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->dislikesCount:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->owner:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate:Ljava/util/Date;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->category:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->tags:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->description:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->adultContent:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->state:Lcom/google/android/youtube/core/model/Video$State;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->claimed:Z

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->monetize:Z

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries:Ljava/util/Set;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    move-object/from16 v34, v0

    move-object/from16 v33, p1

    invoke-direct/range {v1 .. v34}, Lcom/google/android/youtube/core/model/Video;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;IIIIILjava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/youtube/core/model/Video$State;Ljava/util/Set;ZZLjava/util/Set;Lcom/google/android/youtube/core/model/Video$Pro;Ljava/util/List;)V

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1339
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->id:Ljava/lang/String;

    .line 1340
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri240p:Landroid/net/Uri;

    .line 1341
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri360p:Landroid/net/Uri;

    .line 1342
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri405p:Landroid/net/Uri;

    .line 1343
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri480p:Landroid/net/Uri;

    .line 1344
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri720p:Landroid/net/Uri;

    .line 1345
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->downloadUri720p:Landroid/net/Uri;

    .line 1346
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->watchUri:Landroid/net/Uri;

    .line 1347
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 1348
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->editUri:Landroid/net/Uri;

    .line 1349
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->commentsUri:Landroid/net/Uri;

    .line 1350
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->relatedUri:Landroid/net/Uri;

    .line 1351
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->rateUri:Landroid/net/Uri;

    .line 1352
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->captionTracksUri:Landroid/net/Uri;

    .line 1353
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->title:Ljava/lang/String;

    .line 1354
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->duration:I

    .line 1355
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->viewCount:I

    .line 1356
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->favoriteCount:I

    .line 1357
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->likesCount:I

    .line 1358
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->dislikesCount:I

    .line 1359
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->owner:Ljava/lang/String;

    .line 1360
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate:Ljava/util/Date;

    .line 1361
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->category:Ljava/lang/String;

    .line 1362
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->tags:Ljava/lang/String;

    .line 1363
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->description:Ljava/lang/String;

    .line 1364
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->adultContent:Z

    .line 1365
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->state:Lcom/google/android/youtube/core/model/Video$State;

    .line 1366
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    .line 1367
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->claimed:Z

    .line 1368
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetize:Z

    .line 1369
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries:Ljava/util/Set;

    .line 1370
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    .line 1372
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$MediaType;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

    .line 1373
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    .line 1374
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    .line 1375
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    .line 1376
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    .line 1377
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    .line 1378
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    .line 1379
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    .line 1380
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    .line 1381
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showTitle:Ljava/lang/String;

    .line 1382
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showUri:Landroid/net/Uri;

    .line 1383
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonTitle:Ljava/lang/String;

    .line 1384
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonUri:Landroid/net/Uri;

    .line 1385
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->episodeNumber:Ljava/lang/String;

    .line 1386
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailerForUri:Landroid/net/Uri;

    .line 1387
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1283
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video$Builder;->build()Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1288
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri240p:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1289
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri360p:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1290
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri405p:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1291
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri480p:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1292
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri720p:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1293
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->downloadUri720p:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1294
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->watchUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1295
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1296
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->editUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1297
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->commentsUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1298
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->relatedUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1299
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->rateUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1300
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->captionTracksUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1301
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1302
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->duration:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1303
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->viewCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1304
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->favoriteCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1305
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->likesCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1306
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->dislikesCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1307
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->owner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1308
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1309
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1310
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->tags:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1311
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1312
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->adultContent:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1313
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->state:Lcom/google/android/youtube/core/model/Video$State;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1314
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1315
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->claimed:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1316
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetize:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1317
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1318
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1320
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1321
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1322
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1323
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1324
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1325
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1326
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1327
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1328
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1329
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1330
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1331
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1332
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1333
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->episodeNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1334
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailerForUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1335
    return-void
.end method


# virtual methods
.method public addCredit(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 2
    .parameter "role"
    .parameter "name"

    .prologue
    .line 1199
    const-string v1, "role may not be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    const-string v1, "name may not be null"

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1202
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    .line 1204
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1205
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 1206
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1207
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    return-object p0
.end method

.method public addGenre(Lcom/google/android/youtube/core/model/Video$Genre;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 1
    .parameter "genre"

    .prologue
    .line 1185
    const-string v0, "genre may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1187
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1190
    return-object p0
.end method

.method public addPricing(Lcom/google/android/youtube/core/model/PricingStructure;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 1
    .parameter "structure"

    .prologue
    .line 1274
    const-string v0, "structure may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1276
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1279
    return-object p0
.end method

.method public addReleaseMedium(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 1
    .parameter "releaseMedium"

    .prologue
    .line 1171
    const-string v0, "releaseMedium may not be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1172
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1173
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1176
    return-object p0
.end method

.method public adultContent(Z)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "adultContent"

    .prologue
    .line 1122
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->adultContent:Z

    .line 1123
    return-object p0
.end method

.method public availabilityEnd(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "availabilityEnd"

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    .line 1225
    return-object p0
.end method

.method public availabilityStart(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "availabilityStart"

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    .line 1220
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/Video;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 876
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    :goto_0
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    .line 878
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    :goto_1
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    .line 879
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

    if-nez v0, :cond_2

    .line 880
    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->buildVideo(Lcom/google/android/youtube/core/model/Video$Pro;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    .line 896
    :goto_2
    return-object v0

    .line 876
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 878
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 882
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    :goto_3
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    .line 883
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    :goto_4
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    .line 884
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    :goto_5
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    .line 885
    sget-object v0, Lcom/google/android/youtube/core/model/Video$1;->$SwitchMap$com$google$android$youtube$core$model$Video$MediaType:[I

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Video$MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 896
    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->buildVideo(Lcom/google/android/youtube/core/model/Video$Pro;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    goto :goto_2

    .line 882
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    .line 883
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_4

    .line 884
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_5

    .line 887
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildEpisode()Lcom/google/android/youtube/core/model/Video$Episode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildVideo(Lcom/google/android/youtube/core/model/Video$Pro;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    goto :goto_2

    .line 890
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildTrailer()Lcom/google/android/youtube/core/model/Video$Trailer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildVideo(Lcom/google/android/youtube/core/model/Video$Pro;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    goto :goto_2

    .line 893
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildMovie()Lcom/google/android/youtube/core/model/Video$Movie;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildVideo(Lcom/google/android/youtube/core/model/Video$Pro;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    goto :goto_2

    .line 885
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video$Builder;->build()Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    return-object v0
.end method

.method public captionTracksUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "uri"

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->captionTracksUri:Landroid/net/Uri;

    .line 1059
    return-object p0
.end method

.method public category(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "category"

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->category:Ljava/lang/String;

    .line 1108
    return-object p0
.end method

.method public claimed(Z)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "claimed"

    .prologue
    .line 1146
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->claimed:Z

    .line 1147
    return-object p0
.end method

.method public commentsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "uri"

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->commentsUri:Landroid/net/Uri;

    .line 1044
    return-object p0
.end method

.method public credits(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/google/android/youtube/core/model/Video$Builder;"
        }
    .end annotation

    .prologue
    .line 1194
    .local p1, credits:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    .line 1195
    return-object p0
.end method

.method public description(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "description"

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->description:Ljava/lang/String;

    .line 1118
    return-object p0
.end method

.method public dislikesCount(I)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "dislikesCount"

    .prologue
    .line 1088
    iput p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->dislikesCount:I

    .line 1089
    return-object p0
.end method

.method public downloadUri720p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "uri"

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->downloadUri720p:Landroid/net/Uri;

    .line 1020
    return-object p0
.end method

.method public duration(I)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "seconds"

    .prologue
    .line 1068
    iput p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->duration:I

    .line 1069
    return-object p0
.end method

.method public editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "uri"

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->editUri:Landroid/net/Uri;

    .line 1039
    return-object p0
.end method

.method public episodeNumber(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "number"

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->episodeNumber:Ljava/lang/String;

    .line 1260
    return-object p0
.end method

.method public favoriteCount(I)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "count"

    .prologue
    .line 1078
    iput p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->favoriteCount:I

    .line 1079
    return-object p0
.end method

.method public genres(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Video$Genre;",
            ">;)",
            "Lcom/google/android/youtube/core/model/Video$Builder;"
        }
    .end annotation

    .prologue
    .line 1180
    .local p1, genres:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Video$Genre;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    .line 1181
    return-object p0
.end method

.method public getPublishedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getStreamUri240p()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri240p:Landroid/net/Uri;

    return-object v0
.end method

.method public getThumbnailUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public id(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "id"

    .prologue
    .line 981
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->id:Ljava/lang/String;

    .line 982
    return-object p0
.end method

.method public likesCount(I)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "likesCount"

    .prologue
    .line 1083
    iput p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->likesCount:I

    .line 1084
    return-object p0
.end method

.method public mediaType(Lcom/google/android/youtube/core/model/Video$MediaType;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "mediaType"

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

    .line 1162
    return-object p0
.end method

.method public monetize(Z)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "monetize"

    .prologue
    .line 1151
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetize:Z

    .line 1152
    return-object p0
.end method

.method public monetizeExceptionCountries(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/youtube/core/model/Video$Builder;"
        }
    .end annotation

    .prologue
    .line 1156
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries:Ljava/util/Set;

    .line 1157
    return-object p0
.end method

.method public owner(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "name"

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->owner:Ljava/lang/String;

    .line 1094
    return-object p0
.end method

.method public posterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "posterUri"

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    .line 1230
    return-object p0
.end method

.method public pricing(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/PricingStructure;",
            ">;)",
            "Lcom/google/android/youtube/core/model/Video$Builder;"
        }
    .end annotation

    .prologue
    .line 1269
    .local p1, pricing:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/PricingStructure;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    .line 1270
    return-object p0
.end method

.method public publishedDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "date"

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate:Ljava/util/Date;

    .line 1099
    return-object p0
.end method

.method public rateUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "uri"

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->rateUri:Landroid/net/Uri;

    .line 1054
    return-object p0
.end method

.method public relatedUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "uri"

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->relatedUri:Landroid/net/Uri;

    .line 1049
    return-object p0
.end method

.method public releaseDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "releaseDate"

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    .line 1215
    return-object p0
.end method

.method public releaseMediums(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/youtube/core/model/Video$Builder;"
        }
    .end annotation

    .prologue
    .line 1166
    .local p1, releaseMediums:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    .line 1167
    return-object p0
.end method

.method public restrictedCountries(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/youtube/core/model/Video$Builder;"
        }
    .end annotation

    .prologue
    .line 1141
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    .line 1142
    return-object p0
.end method

.method public seasonTitle(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "seasonTitle"

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonTitle:Ljava/lang/String;

    .line 1250
    return-object p0
.end method

.method public seasonUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "seasonUri"

    .prologue
    .line 1254
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonUri:Landroid/net/Uri;

    .line 1255
    return-object p0
.end method

.method public showTitle(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "showTitle"

    .prologue
    .line 1239
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showTitle:Ljava/lang/String;

    .line 1240
    return-object p0
.end method

.method public showUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "showUri"

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showUri:Landroid/net/Uri;

    .line 1245
    return-object p0
.end method

.method public state(Lcom/google/android/youtube/core/model/Video$State;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 1
    .parameter "state"

    .prologue
    .line 1127
    const-string v0, "state can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->state:Lcom/google/android/youtube/core/model/Video$State;

    .line 1128
    return-object p0
.end method

.method public streamUri240p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "uri"

    .prologue
    .line 990
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri240p:Landroid/net/Uri;

    .line 991
    return-object p0
.end method

.method public streamUri360p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "uri"

    .prologue
    .line 999
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri360p:Landroid/net/Uri;

    .line 1000
    return-object p0
.end method

.method public streamUri405p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "uri"

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri405p:Landroid/net/Uri;

    .line 1005
    return-object p0
.end method

.method public streamUri480p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "uri"

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri480p:Landroid/net/Uri;

    .line 1010
    return-object p0
.end method

.method public streamUri720p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "uri"

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri720p:Landroid/net/Uri;

    .line 1015
    return-object p0
.end method

.method public tags(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "tags"

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->tags:Ljava/lang/String;

    .line 1113
    return-object p0
.end method

.method public thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "uri"

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 1030
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "title"

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->title:Ljava/lang/String;

    .line 1064
    return-object p0
.end method

.method public trailerForUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "trailerForUri"

    .prologue
    .line 1264
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailerForUri:Landroid/net/Uri;

    .line 1265
    return-object p0
.end method

.method public trailersUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "trailersUri"

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    .line 1235
    return-object p0
.end method

.method public viewCount(I)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "count"

    .prologue
    .line 1073
    iput p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->viewCount:I

    .line 1074
    return-object p0
.end method

.method public watchUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .parameter "uri"

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->watchUri:Landroid/net/Uri;

    .line 1025
    return-object p0
.end method
