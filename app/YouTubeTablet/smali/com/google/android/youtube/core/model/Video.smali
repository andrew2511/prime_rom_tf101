.class public final Lcom/google/android/youtube/core/model/Video;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/Video$1;,
        Lcom/google/android/youtube/core/model/Video$Builder;,
        Lcom/google/android/youtube/core/model/Video$MediaType;,
        Lcom/google/android/youtube/core/model/Video$Trailer;,
        Lcom/google/android/youtube/core/model/Video$Episode;,
        Lcom/google/android/youtube/core/model/Video$Movie;,
        Lcom/google/android/youtube/core/model/Video$Pro;,
        Lcom/google/android/youtube/core/model/Video$Genre;,
        Lcom/google/android/youtube/core/model/Video$State;
    }
.end annotation


# instance fields
.field public final adultContent:Z

.field public final captionTracksUri:Landroid/net/Uri;

.field public final category:Ljava/lang/String;

.field public final claimed:Z

.field public final commentsUri:Landroid/net/Uri;

.field public final description:Ljava/lang/String;

.field public final dislikesCount:I

.field public final downloadUri720p:Landroid/net/Uri;

.field public final duration:I

.field public final editUri:Landroid/net/Uri;

.field public final episode:Lcom/google/android/youtube/core/model/Video$Episode;

.field public final favoriteCount:I

.field public final id:Ljava/lang/String;

.field public final is3d:Z

.field public final likesCount:I

.field public final monetize:Z

.field public final monetizeExceptionCountries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final movie:Lcom/google/android/youtube/core/model/Video$Movie;

.field public final owner:Ljava/lang/String;

.field public final pricing:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/PricingStructure;",
            ">;"
        }
    .end annotation
.end field

.field public final pro:Lcom/google/android/youtube/core/model/Video$Pro;

.field public final publishedDate:Ljava/util/Date;

.field public final rateUri:Landroid/net/Uri;

.field public final relatedUri:Landroid/net/Uri;

.field public final restrictedCountries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final state:Lcom/google/android/youtube/core/model/Video$State;

.field public final streamUri240p:Landroid/net/Uri;

.field public final streamUri360p:Landroid/net/Uri;

.field public final streamUri405p:Landroid/net/Uri;

.field public final streamUri480p:Landroid/net/Uri;

.field public final streamUri720p:Landroid/net/Uri;

.field public final tags:Ljava/lang/String;

.field public final thumbnailUri:Landroid/net/Uri;

.field public final title:Ljava/lang/String;

.field public final trailer:Lcom/google/android/youtube/core/model/Video$Trailer;

.field public final viewCount:I

.field public final watchUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;IIIIILjava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/youtube/core/model/Video$State;Ljava/util/Set;ZZLjava/util/Set;Lcom/google/android/youtube/core/model/Video$Pro;Ljava/util/List;)V
    .locals 3
    .parameter "id"
    .parameter "streamUri240p"
    .parameter "streamUri360p"
    .parameter "streamUri405p"
    .parameter "streamUri480p"
    .parameter "streamUri720p"
    .parameter "downloadUri720p"
    .parameter "watchUri"
    .parameter "thumbnailUri"
    .parameter "editUri"
    .parameter "commentsUri"
    .parameter "relatedUri"
    .parameter "rateUri"
    .parameter "captionTracksUri"
    .parameter "title"
    .parameter "duration"
    .parameter "viewCount"
    .parameter "favoriteCount"
    .parameter "likesCount"
    .parameter "dislikesCount"
    .parameter "owner"
    .parameter "publishedDate"
    .parameter "category"
    .parameter "tags"
    .parameter "description"
    .parameter "adultContent"
    .parameter "state"
    .parameter
    .parameter "claimed"
    .parameter "monetize"
    .parameter
    .parameter "pro"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/youtube/core/model/Video$State;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/youtube/core/model/Video$Pro;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/PricingStructure;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 555
    .local p28, restrictedCountries:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p31, monetizeExceptionCountries:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p33, pricing:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/PricingStructure;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    const-string v2, "youTubeId can\'t be empty"

    invoke-static {p1, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    .line 558
    iput-object p2, p0, Lcom/google/android/youtube/core/model/Video;->streamUri240p:Landroid/net/Uri;

    .line 559
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Video;->streamUri360p:Landroid/net/Uri;

    .line 560
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Video;->streamUri405p:Landroid/net/Uri;

    .line 561
    iput-object p5, p0, Lcom/google/android/youtube/core/model/Video;->streamUri480p:Landroid/net/Uri;

    .line 562
    iput-object p6, p0, Lcom/google/android/youtube/core/model/Video;->streamUri720p:Landroid/net/Uri;

    .line 563
    iput-object p7, p0, Lcom/google/android/youtube/core/model/Video;->downloadUri720p:Landroid/net/Uri;

    .line 564
    iput-object p8, p0, Lcom/google/android/youtube/core/model/Video;->watchUri:Landroid/net/Uri;

    .line 565
    iput-object p9, p0, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    .line 566
    iput-object p10, p0, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    .line 567
    iput-object p11, p0, Lcom/google/android/youtube/core/model/Video;->commentsUri:Landroid/net/Uri;

    .line 568
    iput-object p12, p0, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    .line 569
    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/core/model/Video;->rateUri:Landroid/net/Uri;

    .line 570
    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/core/model/Video;->captionTracksUri:Landroid/net/Uri;

    .line 571
    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    .line 572
    move/from16 v0, p16

    move-object v1, p0

    iput v0, v1, Lcom/google/android/youtube/core/model/Video;->duration:I

    .line 573
    move/from16 v0, p17

    move-object v1, p0

    iput v0, v1, Lcom/google/android/youtube/core/model/Video;->viewCount:I

    .line 574
    move/from16 v0, p18

    move-object v1, p0

    iput v0, v1, Lcom/google/android/youtube/core/model/Video;->favoriteCount:I

    .line 575
    move/from16 v0, p19

    move-object v1, p0

    iput v0, v1, Lcom/google/android/youtube/core/model/Video;->likesCount:I

    .line 576
    move/from16 v0, p20

    move-object v1, p0

    iput v0, v1, Lcom/google/android/youtube/core/model/Video;->dislikesCount:I

    .line 577
    move-object/from16 v0, p21

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    .line 578
    move-object/from16 v0, p22

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/core/model/Video;->publishedDate:Ljava/util/Date;

    .line 579
    move-object/from16 v0, p23

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/core/model/Video;->category:Ljava/lang/String;

    .line 580
    move-object/from16 v0, p24

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/core/model/Video;->tags:Ljava/lang/String;

    .line 581
    move-object/from16 v0, p25

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/core/model/Video;->description:Ljava/lang/String;

    .line 582
    move/from16 v0, p26

    move-object v1, p0

    iput-boolean v0, v1, Lcom/google/android/youtube/core/model/Video;->adultContent:Z

    .line 583
    const-string v2, "state can\'t be null"

    move-object/from16 v0, p27

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/google/android/youtube/core/model/Video$State;

    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    .line 584
    const-string v2, "restrictedCountries may not be null"

    move-object/from16 v0, p28

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/youtube/core/model/Video;->unmodifiable(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/model/Video;->restrictedCountries:Ljava/util/Set;

    .line 586
    move/from16 v0, p29

    move-object v1, p0

    iput-boolean v0, v1, Lcom/google/android/youtube/core/model/Video;->claimed:Z

    .line 587
    move/from16 v0, p30

    move-object v1, p0

    iput-boolean v0, v1, Lcom/google/android/youtube/core/model/Video;->monetize:Z

    .line 588
    move-object/from16 v0, p31

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/core/model/Video;->monetizeExceptionCountries:Ljava/util/Set;

    .line 592
    if-eqz p24, :cond_0

    const-string v2, "yt3d"

    move-object/from16 v0, p24

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/youtube/core/model/Video;->is3d:Z

    .line 593
    move-object/from16 v0, p32

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/core/model/Video;->pro:Lcom/google/android/youtube/core/model/Video$Pro;

    .line 594
    move-object/from16 v0, p32

    instance-of v0, v0, Lcom/google/android/youtube/core/model/Video$Movie;

    move v2, v0

    if-eqz v2, :cond_1

    move-object/from16 v0, p32

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Movie;

    move-object v2, v0

    :goto_1
    iput-object v2, p0, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    .line 595
    move-object/from16 v0, p32

    instance-of v0, v0, Lcom/google/android/youtube/core/model/Video$Trailer;

    move v2, v0

    if-eqz v2, :cond_2

    move-object/from16 v0, p32

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Trailer;

    move-object v2, v0

    :goto_2
    iput-object v2, p0, Lcom/google/android/youtube/core/model/Video;->trailer:Lcom/google/android/youtube/core/model/Video$Trailer;

    .line 596
    move-object/from16 v0, p32

    instance-of v0, v0, Lcom/google/android/youtube/core/model/Video$Episode;

    move v2, v0

    if-eqz v2, :cond_3

    check-cast p32, Lcom/google/android/youtube/core/model/Video$Episode;

    .end local p32
    move-object/from16 v2, p32

    :goto_3
    iput-object v2, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    .line 597
    const-string v2, "pricing may not be null"

    move-object/from16 v0, p33

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/youtube/core/model/Video;->unmodifiable(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/model/Video;->pricing:Ljava/util/List;

    .line 598
    return-void

    .line 592
    .restart local p32
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 594
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 595
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 596
    :cond_3
    const/4 v2, 0x0

    goto :goto_3
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/google/android/youtube/core/model/Video;->unmodifiable(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/google/android/youtube/core/model/Video;->unmodifiable(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 744
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static unmodifiable(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1391
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne p0, v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static unmodifiable(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1395
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    if-ne p0, v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method private static unmodifiable(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1399
    .local p0, set:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-ne p0, v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->buildUpon()Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 5

    .prologue
    .line 748
    new-instance v3, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-direct {v3}, Lcom/google/android/youtube/core/model/Video$Builder;-><init>()V

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->id(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->streamUri240p:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri240p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->streamUri360p:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri360p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->streamUri405p:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri405p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->streamUri480p:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri480p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->streamUri720p:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri720p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->downloadUri720p:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->downloadUri720p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->watchUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->watchUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->commentsUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->commentsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->relatedUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->rateUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->rateUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->captionTracksUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->captionTracksUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/youtube/core/model/Video;->duration:I

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->duration(I)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/youtube/core/model/Video;->viewCount:I

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->viewCount(I)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/youtube/core/model/Video;->favoriteCount:I

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->favoriteCount(I)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/youtube/core/model/Video;->likesCount:I

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->likesCount(I)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/youtube/core/model/Video;->dislikesCount:I

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->dislikesCount(I)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->owner(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->publishedDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->category:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->category(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->tags:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->tags(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->description(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/youtube/core/model/Video;->adultContent:Z

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->adultContent(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->state(Lcom/google/android/youtube/core/model/Video$State;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->restrictedCountries:Ljava/util/Set;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/youtube/core/model/Video;->claimed:Z

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->claimed(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/youtube/core/model/Video;->monetize:Z

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->monetize(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->monetizeExceptionCountries:Ljava/util/Set;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->pricing:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->pricing(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 783
    .local v0, builder:Lcom/google/android/youtube/core/model/Video$Builder;
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isMovie()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    move-object v2, v3

    .line 784
    .local v2, pro:Lcom/google/android/youtube/core/model/Video$Pro;
    :goto_0
    if-eqz v2, :cond_0

    .line 785
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isMovie()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/google/android/youtube/core/model/Video$MediaType;->MOVIE:Lcom/google/android/youtube/core/model/Video$MediaType;

    move-object v1, v3

    .line 787
    .local v1, mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType(Lcom/google/android/youtube/core/model/Video$MediaType;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/youtube/core/model/Video$Pro;->releaseMediums:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/youtube/core/model/Video$Pro;->genres:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->genres(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/youtube/core/model/Video$Pro;->credits:Ljava/util/Map;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->credits(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/youtube/core/model/Video$Pro;->releaseDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/youtube/core/model/Video$Pro;->availabilityStart:Ljava/util/Date;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/youtube/core/model/Video$Pro;->availabilityEnd:Ljava/util/Date;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/youtube/core/model/Video$Pro;->posterUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/youtube/core/model/Video$Pro;->trailersUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 798
    .end local v1           #mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isEpisode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 799
    sget-object v3, Lcom/google/android/youtube/core/model/Video$MediaType;->EPISODE:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType(Lcom/google/android/youtube/core/model/Video$MediaType;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video$Episode;->showTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->showTitle(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video$Episode;->showUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->showUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video$Episode;->seasonTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->seasonTitle(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video$Episode;->seasonUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->seasonUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video$Episode;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->episodeNumber(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 811
    :cond_1
    :goto_2
    return-object v0

    .line 783
    .end local v2           #pro:Lcom/google/android/youtube/core/model/Video$Pro;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isTrailer()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Video;->trailer:Lcom/google/android/youtube/core/model/Video$Trailer;

    move-object v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isEpisode()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    move-object v2, v3

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    move-object v2, v3

    goto/16 :goto_0

    .line 785
    .restart local v2       #pro:Lcom/google/android/youtube/core/model/Video$Pro;
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isTrailer()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/google/android/youtube/core/model/Video$MediaType;->TRAILER:Lcom/google/android/youtube/core/model/Video$MediaType;

    move-object v1, v3

    goto/16 :goto_1

    :cond_6
    sget-object v3, Lcom/google/android/youtube/core/model/Video$MediaType;->EPISODE:Lcom/google/android/youtube/core/model/Video$MediaType;

    move-object v1, v3

    goto/16 :goto_1

    .line 806
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isTrailer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 807
    sget-object v3, Lcom/google/android/youtube/core/model/Video$MediaType;->TRAILER:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType(Lcom/google/android/youtube/core/model/Video$MediaType;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->trailer:Lcom/google/android/youtube/core/model/Video$Trailer;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video$Trailer;->trailerForUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->trailerForUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_2
.end method

.method public couldBeMusicVideo()Z
    .locals 2

    .prologue
    .line 708
    const-string v0, "Music"

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public couldHaveBranding()Z
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->claimed:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 675
    instance-of v2, p1, Lcom/google/android/youtube/core/model/Video;

    if-nez v2, :cond_0

    move v2, v3

    .line 682
    :goto_0
    return v2

    .line 678
    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    .line 679
    goto :goto_0

    .line 681
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    move-object v1, v0

    .line 682
    .local v1, other:Lcom/google/android/youtube/core/model/Video;
    iget-object v2, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEpisode()Z
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMonetized(Ljava/lang/String;)Z
    .locals 2
    .parameter "country"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->monetizeExceptionCountries:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 696
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->monetize:Z

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->monetizeExceptionCountries:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 698
    :goto_0
    return v0

    .line 696
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 698
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->monetize:Z

    goto :goto_0
.end method

.method public isMovie()Z
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrailer()Z
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->trailer:Lcom/google/android/youtube/core/model/Video$Trailer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video[id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
