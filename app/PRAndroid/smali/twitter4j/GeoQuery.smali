.class public final Ltwitter4j/GeoQuery;
.super Ljava/lang/Object;
.source "GeoQuery.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CITY:Ljava/lang/String; = "city"

.field public static final NEIGHBORHOOD:Ljava/lang/String; = "neighborhood"

.field private static final serialVersionUID:J = 0xcdda7bca2db6d4aL


# instance fields
.field private accuracy:Ljava/lang/String;

.field private granularity:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private location:Ltwitter4j/GeoLocation;

.field private maxResults:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "ip"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    .line 65
    return-void
.end method

.method public constructor <init>(Ltwitter4j/GeoLocation;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private appendParameter(Ljava/lang/String;DLjava/util/List;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p4, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method private appendParameter(Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p3, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    if-lez p2, :cond_0

    .line 150
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
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
    .line 143
    .local p3, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    if-eqz p2, :cond_0

    .line 144
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v0, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method public accuracy(Ljava/lang/String;)Ltwitter4j/GeoQuery;
    .locals 0
    .parameter "accuracy"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Ltwitter4j/GeoQuery;->setAccuracy(Ljava/lang/String;)V

    .line 89
    return-object p0
.end method

.method asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;
    .locals 5

    .prologue
    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v1, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltwitter4j/internal/http/HttpParameter;>;"
    iget-object v2, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    if-eqz v2, :cond_0

    .line 127
    const-string v2, "lat"

    iget-object v3, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v3}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/GeoQuery;->appendParameter(Ljava/lang/String;DLjava/util/List;)V

    .line 128
    const-string v2, "long"

    iget-object v3, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v3}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/GeoQuery;->appendParameter(Ljava/lang/String;DLjava/util/List;)V

    .line 131
    :cond_0
    iget-object v2, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 132
    const-string v2, "ip"

    iget-object v3, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/GeoQuery;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 135
    :cond_1
    const-string v2, "accuracy"

    iget-object v3, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/GeoQuery;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 136
    const-string v2, "granularity"

    iget-object v3, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/GeoQuery;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 137
    const-string v2, "max_results"

    iget v3, p0, Ltwitter4j/GeoQuery;->maxResults:I

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/GeoQuery;->appendParameter(Ljava/lang/String;ILjava/util/List;)V

    .line 138
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ltwitter4j/internal/http/HttpParameter;

    .line 139
    .local v0, paramArray:[Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ltwitter4j/internal/http/HttpParameter;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 159
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 174
    :goto_0
    return v2

    .line 160
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    .line 162
    :cond_2
    move-object v0, p1

    check-cast v0, Ltwitter4j/GeoQuery;

    move-object v1, v0

    .line 164
    .local v1, geoQuery:Ltwitter4j/GeoQuery;
    iget v2, p0, Ltwitter4j/GeoQuery;->maxResults:I

    iget v3, v1, Ltwitter4j/GeoQuery;->maxResults:I

    if-eq v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    .line 165
    :cond_3
    iget-object v2, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v2, v4

    .line 166
    goto :goto_0

    .line 165
    :cond_5
    iget-object v2, v1, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 167
    :cond_6
    iget-object v2, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v2, v4

    .line 168
    goto :goto_0

    .line 167
    :cond_8
    iget-object v2, v1, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 169
    :cond_9
    iget-object v2, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v2, v4

    .line 170
    goto :goto_0

    .line 169
    :cond_b
    iget-object v2, v1, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 171
    :cond_c
    iget-object v2, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    if-eqz v2, :cond_e

    iget-object v2, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    iget-object v3, v1, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v2, v3}, Ltwitter4j/GeoLocation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    move v2, v4

    .line 172
    goto :goto_0

    .line 171
    :cond_e
    iget-object v2, v1, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    if-nez v2, :cond_d

    :cond_f
    move v2, v5

    .line 174
    goto :goto_0
.end method

.method public getAccuracy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    return-object v0
.end method

.method public getGranularity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ltwitter4j/GeoLocation;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getMaxResults()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Ltwitter4j/GeoQuery;->maxResults:I

    return v0
.end method

.method public granularity(Ljava/lang/String;)Ltwitter4j/GeoQuery;
    .locals 0
    .parameter "granularity"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Ltwitter4j/GeoQuery;->setGranularity(Ljava/lang/String;)V

    .line 106
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    iget-object v1, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v1}, Ltwitter4j/GeoLocation;->hashCode()I

    move-result v1

    move v0, v1

    .line 180
    .local v0, result:I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 181
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v1, v2

    .line 182
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v1, v2

    .line 183
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/GeoQuery;->maxResults:I

    add-int v0, v1, v2

    .line 184
    return v0

    .end local v0           #result:I
    :cond_0
    move v0, v3

    .line 179
    goto :goto_0

    .restart local v0       #result:I
    :cond_1
    move v2, v3

    .line 180
    goto :goto_1

    :cond_2
    move v2, v3

    .line 181
    goto :goto_2

    :cond_3
    move v2, v3

    .line 182
    goto :goto_3
.end method

.method public maxResults(I)Ltwitter4j/GeoQuery;
    .locals 0
    .parameter "maxResults"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Ltwitter4j/GeoQuery;->setMaxResults(I)V

    .line 122
    return-object p0
.end method

.method public setAccuracy(Ljava/lang/String;)V
    .locals 0
    .parameter "accuracy"

    .prologue
    .line 84
    iput-object p1, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setGranularity(Ljava/lang/String;)V
    .locals 0
    .parameter "granularity"

    .prologue
    .line 101
    iput-object p1, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setMaxResults(I)V
    .locals 0
    .parameter "maxResults"

    .prologue
    .line 118
    iput p1, p0, Ltwitter4j/GeoQuery;->maxResults:I

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 189
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "GeoQuery{location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", ip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", accuracy=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", granularity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", maxResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/GeoQuery;->maxResults:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
