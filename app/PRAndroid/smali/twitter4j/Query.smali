.class public final Ltwitter4j/Query;
.super Ljava/lang/Object;
.source "Query.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final KILOMETERS:Ljava/lang/String; = "km"

.field public static final MILES:Ljava/lang/String; = "mi"

.field public static final MIXED:Ljava/lang/String; = "mixed"

.field public static final POPULAR:Ljava/lang/String; = "popular"

.field public static final RECENT:Ljava/lang/String; = "recent"

.field private static final serialVersionUID:J = -0x7086ea5335d69f40L


# instance fields
.field private geocode:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private maxId:J

.field private page:I

.field private query:Ljava/lang/String;

.field private resultType:Ljava/lang/String;

.field private rpp:I

.field private since:Ljava/lang/String;

.field private sinceId:J

.field private until:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    .line 46
    iput-wide v2, p0, Ltwitter4j/Query;->maxId:J

    .line 47
    iput v1, p0, Ltwitter4j/Query;->rpp:I

    .line 48
    iput v1, p0, Ltwitter4j/Query;->page:I

    .line 49
    iput-object v0, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    .line 50
    iput-wide v2, p0, Ltwitter4j/Query;->sinceId:J

    .line 51
    iput-object v0, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "query"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    .line 46
    iput-wide v2, p0, Ltwitter4j/Query;->maxId:J

    .line 47
    iput v1, p0, Ltwitter4j/Query;->rpp:I

    .line 48
    iput v1, p0, Ltwitter4j/Query;->page:I

    .line 49
    iput-object v0, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    .line 50
    iput-wide v2, p0, Ltwitter4j/Query;->sinceId:J

    .line 51
    iput-object v0, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private appendParameter(Ljava/lang/String;JLjava/util/List;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p4, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p2

    if-gtz v0, :cond_0

    .line 416
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_0
    return-void
.end method

.method private appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p3, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    if-eqz p2, :cond_0

    .line 410
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v0, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_0
    return-void
.end method


# virtual methods
.method asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;
    .locals 5

    .prologue
    .line 392
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v1, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltwitter4j/internal/http/HttpParameter;>;"
    const-string v2, "q"

    iget-object v3, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 394
    const-string v2, "lang"

    iget-object v3, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 395
    const-string v2, "locale"

    iget-object v3, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 396
    const-string v2, "max_id"

    iget-wide v3, p0, Ltwitter4j/Query;->maxId:J

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 397
    const-string v2, "rpp"

    iget v3, p0, Ltwitter4j/Query;->rpp:I

    int-to-long v3, v3

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 398
    const-string v2, "page"

    iget v3, p0, Ltwitter4j/Query;->page:I

    int-to-long v3, v3

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 399
    const-string v2, "since"

    iget-object v3, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 400
    const-string v2, "since_id"

    iget-wide v3, p0, Ltwitter4j/Query;->sinceId:J

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 401
    const-string v2, "geocode"

    iget-object v3, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 402
    const-string v2, "until"

    iget-object v3, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 403
    const-string v2, "resultType"

    iget-object v3, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 404
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ltwitter4j/internal/http/HttpParameter;

    .line 405
    .local v0, paramArray:[Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ltwitter4j/internal/http/HttpParameter;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 422
    if-ne p0, p1, :cond_0

    move v2, v7

    .line 446
    :goto_0
    return v2

    .line 423
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v6

    goto :goto_0

    .line 425
    :cond_2
    move-object v0, p1

    check-cast v0, Ltwitter4j/Query;

    move-object v1, v0

    .line 427
    .local v1, query1:Ltwitter4j/Query;
    iget-wide v2, p0, Ltwitter4j/Query;->maxId:J

    iget-wide v4, v1, Ltwitter4j/Query;->maxId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    move v2, v6

    goto :goto_0

    .line 428
    :cond_3
    iget v2, p0, Ltwitter4j/Query;->page:I

    iget v3, v1, Ltwitter4j/Query;->page:I

    if-eq v2, v3, :cond_4

    move v2, v6

    goto :goto_0

    .line 429
    :cond_4
    iget v2, p0, Ltwitter4j/Query;->rpp:I

    iget v3, v1, Ltwitter4j/Query;->rpp:I

    if-eq v2, v3, :cond_5

    move v2, v6

    goto :goto_0

    .line 430
    :cond_5
    iget-wide v2, p0, Ltwitter4j/Query;->sinceId:J

    iget-wide v4, v1, Ltwitter4j/Query;->sinceId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    move v2, v6

    goto :goto_0

    .line 431
    :cond_6
    iget-object v2, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v2, v6

    .line 432
    goto :goto_0

    .line 431
    :cond_8
    iget-object v2, v1, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 433
    :cond_9
    iget-object v2, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v2, v6

    .line 434
    goto :goto_0

    .line 433
    :cond_b
    iget-object v2, v1, Ltwitter4j/Query;->lang:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 435
    :cond_c
    iget-object v2, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Query;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    move v2, v6

    .line 436
    goto :goto_0

    .line 435
    :cond_e
    iget-object v2, v1, Ltwitter4j/Query;->locale:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 437
    :cond_f
    iget-object v2, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    move v2, v6

    .line 438
    goto/16 :goto_0

    .line 437
    :cond_11
    iget-object v2, v1, Ltwitter4j/Query;->query:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 439
    :cond_12
    iget-object v2, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Query;->since:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_13
    move v2, v6

    .line 440
    goto/16 :goto_0

    .line 439
    :cond_14
    iget-object v2, v1, Ltwitter4j/Query;->since:Ljava/lang/String;

    if-nez v2, :cond_13

    .line 441
    :cond_15
    iget-object v2, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v2, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Query;->until:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_16
    move v2, v6

    .line 442
    goto/16 :goto_0

    .line 441
    :cond_17
    iget-object v2, v1, Ltwitter4j/Query;->until:Ljava/lang/String;

    if-nez v2, :cond_16

    .line 443
    :cond_18
    iget-object v2, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_19
    move v2, v6

    .line 444
    goto/16 :goto_0

    .line 443
    :cond_1a
    iget-object v2, v1, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    if-nez v2, :cond_19

    :cond_1b
    move v2, v7

    .line 446
    goto/16 :goto_0
.end method

.method public geoCode(Ltwitter4j/GeoLocation;DLjava/lang/String;)Ltwitter4j/Query;
    .locals 0
    .parameter "location"
    .parameter "radius"
    .parameter "unit"

    .prologue
    .line 320
    invoke-virtual {p0, p1, p2, p3, p4}, Ltwitter4j/Query;->setGeoCode(Ltwitter4j/GeoLocation;DLjava/lang/String;)V

    .line 321
    return-object p0
.end method

.method public getGeocode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxId()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Ltwitter4j/Query;->maxId:J

    return-wide v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Ltwitter4j/Query;->page:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getResultType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    return-object v0
.end method

.method public getRpp()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Ltwitter4j/Query;->rpp:I

    return v0
.end method

.method public getSince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    return-object v0
.end method

.method public getSinceId()J
    .locals 2

    .prologue
    .line 266
    iget-wide v0, p0, Ltwitter4j/Query;->sinceId:J

    return-wide v0
.end method

.method public getUntil()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x0

    .line 451
    iget-object v1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    .line 452
    .local v0, result:I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 453
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v1, v2

    .line 454
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Ltwitter4j/Query;->maxId:J

    iget-wide v4, p0, Ltwitter4j/Query;->maxId:J

    ushr-long/2addr v4, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 455
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/Query;->rpp:I

    add-int v0, v1, v2

    .line 456
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/Query;->page:I

    add-int v0, v1, v2

    .line 457
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v1, v2

    .line 458
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Ltwitter4j/Query;->sinceId:J

    iget-wide v4, p0, Ltwitter4j/Query;->sinceId:J

    ushr-long/2addr v4, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 459
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v1, v2

    .line 460
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v1, v2

    .line 461
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v1, v2

    .line 462
    return v0

    .end local v0           #result:I
    :cond_0
    move v0, v6

    .line 451
    goto :goto_0

    .restart local v0       #result:I
    :cond_1
    move v2, v6

    .line 452
    goto :goto_1

    :cond_2
    move v2, v6

    .line 453
    goto :goto_2

    :cond_3
    move v2, v6

    .line 457
    goto :goto_3

    :cond_4
    move v2, v6

    .line 459
    goto :goto_4

    :cond_5
    move v2, v6

    .line 460
    goto :goto_5

    :cond_6
    move v2, v6

    .line 461
    goto :goto_6
.end method

.method public lang(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0
    .parameter "lang"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setLang(Ljava/lang/String;)V

    .line 117
    return-object p0
.end method

.method public locale(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0
    .parameter "locale"

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setLocale(Ljava/lang/String;)V

    .line 146
    return-object p0
.end method

.method public maxId(J)Ltwitter4j/Query;
    .locals 0
    .parameter "maxId"

    .prologue
    .line 174
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Query;->setMaxId(J)V

    .line 175
    return-object p0
.end method

.method public page(I)Ltwitter4j/Query;
    .locals 0
    .parameter "page"

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setPage(I)V

    .line 229
    return-object p0
.end method

.method public query(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0
    .parameter "query"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setQuery(Ljava/lang/String;)V

    .line 90
    return-object p0
.end method

.method public resultType(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0
    .parameter "resultType"

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setResultType(Ljava/lang/String;)V

    .line 388
    return-object p0
.end method

.method public rpp(I)Ltwitter4j/Query;
    .locals 0
    .parameter "rpp"

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setRpp(I)V

    .line 202
    return-object p0
.end method

.method public setGeoCode(Ltwitter4j/GeoLocation;DLjava/lang/String;)V
    .locals 3
    .parameter "location"
    .parameter "radius"
    .parameter "unit"

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0
    .parameter "lang"

    .prologue
    .line 106
    iput-object p1, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .parameter "locale"

    .prologue
    .line 135
    iput-object p1, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setMaxId(J)V
    .locals 0
    .parameter "maxId"

    .prologue
    .line 164
    iput-wide p1, p0, Ltwitter4j/Query;->maxId:J

    .line 165
    return-void
.end method

.method public setPage(I)V
    .locals 0
    .parameter "page"

    .prologue
    .line 218
    iput p1, p0, Ltwitter4j/Query;->page:I

    .line 219
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0
    .parameter "query"

    .prologue
    .line 77
    iput-object p1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setResultType(Ljava/lang/String;)V
    .locals 0
    .parameter "resultType"

    .prologue
    .line 377
    iput-object p1, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public setRpp(I)V
    .locals 0
    .parameter "rpp"

    .prologue
    .line 191
    iput p1, p0, Ltwitter4j/Query;->rpp:I

    .line 192
    return-void
.end method

.method public setSince(Ljava/lang/String;)V
    .locals 0
    .parameter "since"

    .prologue
    .line 247
    iput-object p1, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setSinceId(J)V
    .locals 0
    .parameter "sinceId"

    .prologue
    .line 274
    iput-wide p1, p0, Ltwitter4j/Query;->sinceId:J

    .line 275
    return-void
.end method

.method public setUntil(Ljava/lang/String;)V
    .locals 0
    .parameter "until"

    .prologue
    .line 339
    iput-object p1, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public since(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0
    .parameter "since"

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setSince(Ljava/lang/String;)V

    .line 258
    return-object p0
.end method

.method public sinceId(J)Ltwitter4j/Query;
    .locals 0
    .parameter "sinceId"

    .prologue
    .line 284
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Query;->setSinceId(J)V

    .line 285
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 467
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Query{query=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", lang=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", locale=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", maxId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/Query;->maxId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", rpp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/Query;->rpp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/Query;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", since=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sinceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/Query;->sinceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", geocode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", until=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", resultType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public until(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0
    .parameter "until"

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setUntil(Ljava/lang/String;)V

    .line 350
    return-object p0
.end method
