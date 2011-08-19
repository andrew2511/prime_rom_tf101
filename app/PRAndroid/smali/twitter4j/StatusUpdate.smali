.class public final Ltwitter4j/StatusUpdate;
.super Ljava/lang/Object;
.source "StatusUpdate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x31e5caa537ab7fbcL


# instance fields
.field private annotations:Ltwitter4j/Annotations;

.field private displayCoordinates:Z

.field private inReplyToStatusId:J

.field private location:Ltwitter4j/GeoLocation;

.field private placeId:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    .line 42
    iput-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    .line 43
    iput-object v2, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    .line 45
    iput-object v2, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    .line 49
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    .line 50
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
    .line 160
    .local p4, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
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
    .line 164
    .local p4, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
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
    .line 154
    .local p3, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    if-eqz p2, :cond_0

    .line 155
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v0, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method public addAnnotation(Ltwitter4j/Annotation;)V
    .locals 1
    .parameter "annotation"

    .prologue
    .line 120
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ltwitter4j/Annotations;

    invoke-direct {v0}, Ltwitter4j/Annotations;-><init>()V

    iput-object v0, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    .line 123
    :cond_0
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    invoke-virtual {v0, p1}, Ltwitter4j/Annotations;->addAnnotation(Ltwitter4j/Annotation;)V

    .line 124
    return-void
.end method

.method public annotation(Ltwitter4j/Annotation;)Ltwitter4j/StatusUpdate;
    .locals 0
    .parameter "annotation"

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->addAnnotation(Ltwitter4j/Annotation;)V

    .line 128
    return-object p0
.end method

.method public annotations(Ltwitter4j/Annotations;)Ltwitter4j/StatusUpdate;
    .locals 0
    .parameter "annotations"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setAnnotations(Ltwitter4j/Annotations;)V

    .line 116
    return-object p0
.end method

.method asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;
    .locals 6

    .prologue
    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v1, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltwitter4j/internal/http/HttpParameter;>;"
    const-string v2, "status"

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 134
    const-wide/16 v2, -0x1

    iget-wide v4, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 135
    const-string v2, "in_reply_to_status_id"

    iget-wide v3, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 137
    :cond_0
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-eqz v2, :cond_1

    .line 138
    const-string v2, "lat"

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v3}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;DLjava/util/List;)V

    .line 139
    const-string v2, "long"

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v3}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;DLjava/util/List;)V

    .line 142
    :cond_1
    const-string v2, "place_id"

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 143
    iget-boolean v2, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    if-nez v2, :cond_2

    .line 144
    const-string v2, "display_coordinates"

    const-string v3, "false"

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 146
    :cond_2
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    invoke-virtual {v2}, Ltwitter4j/Annotations;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 147
    const-string v2, "annotations"

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    invoke-virtual {v3}, Ltwitter4j/Annotations;->asParameterValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 149
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ltwitter4j/internal/http/HttpParameter;

    .line 150
    .local v0, paramArray:[Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ltwitter4j/internal/http/HttpParameter;

    return-object p0
.end method

.method public displayCoordinates(Z)Ltwitter4j/StatusUpdate;
    .locals 0
    .parameter "displayCoordinates"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setDisplayCoordinates(Z)V

    .line 103
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 169
    if-ne p0, p1, :cond_0

    move v2, v7

    .line 184
    :goto_0
    return v2

    .line 170
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

    .line 172
    :cond_2
    move-object v0, p1

    check-cast v0, Ltwitter4j/StatusUpdate;

    move-object v1, v0

    .line 174
    .local v1, that:Ltwitter4j/StatusUpdate;
    iget-boolean v2, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    iget-boolean v3, v1, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    if-eq v2, v3, :cond_3

    move v2, v6

    goto :goto_0

    .line 175
    :cond_3
    iget-wide v2, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    iget-wide v4, v1, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v2, v6

    goto :goto_0

    .line 176
    :cond_4
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    iget-object v3, v1, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v2, v3}, Ltwitter4j/GeoLocation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v2, v6

    .line 177
    goto :goto_0

    .line 176
    :cond_6
    iget-object v2, v1, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-nez v2, :cond_5

    .line 178
    :cond_7
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v2, v6

    .line 179
    goto :goto_0

    .line 178
    :cond_9
    iget-object v2, v1, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 180
    :cond_a
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    if-eqz v2, :cond_c

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    iget-object v3, v1, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    invoke-virtual {v2, v3}, Ltwitter4j/Annotations;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    move v2, v6

    .line 181
    goto :goto_0

    .line 180
    :cond_c
    iget-object v2, v1, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    if-nez v2, :cond_b

    .line 182
    :cond_d
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v2, v6

    goto :goto_0

    :cond_e
    move v2, v7

    .line 184
    goto :goto_0
.end method

.method public getAnnotations()Ltwitter4j/Annotations;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    return-object v0
.end method

.method public getInReplyToStatusId()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    return-wide v0
.end method

.method public getLocation()Ltwitter4j/GeoLocation;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 189
    iget-object v1, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 190
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    iget-wide v4, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 191
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v2}, Ltwitter4j/GeoLocation;->hashCode()I

    move-result v2

    :goto_0
    add-int v0, v1, v2

    .line 192
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 193
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    add-int v0, v1, v2

    .line 194
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    invoke-virtual {v2}, Ltwitter4j/Annotations;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v1, v2

    .line 195
    return v0

    :cond_0
    move v2, v7

    .line 191
    goto :goto_0

    :cond_1
    move v2, v7

    .line 192
    goto :goto_1

    :cond_2
    move v2, v7

    .line 193
    goto :goto_2

    :cond_3
    move v2, v7

    .line 194
    goto :goto_3
.end method

.method public inReplyToStatusId(J)Ltwitter4j/StatusUpdate;
    .locals 0
    .parameter "inReplyToStatusId"

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Ltwitter4j/StatusUpdate;->setInReplyToStatusId(J)V

    .line 66
    return-object p0
.end method

.method public isDisplayCoordinates()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    return v0
.end method

.method public location(Ltwitter4j/GeoLocation;)Ltwitter4j/StatusUpdate;
    .locals 0
    .parameter "location"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setLocation(Ltwitter4j/GeoLocation;)V

    .line 78
    return-object p0
.end method

.method public placeId(Ljava/lang/String;)Ltwitter4j/StatusUpdate;
    .locals 0
    .parameter "placeId"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setPlaceId(Ljava/lang/String;)V

    .line 91
    return-object p0
.end method

.method public setAnnotations(Ltwitter4j/Annotations;)V
    .locals 0
    .parameter "annotations"

    .prologue
    .line 111
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    .line 112
    return-void
.end method

.method public setDisplayCoordinates(Z)V
    .locals 0
    .parameter "displayCoordinates"

    .prologue
    .line 99
    iput-boolean p1, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    .line 100
    return-void
.end method

.method public setInReplyToStatusId(J)V
    .locals 0
    .parameter "inReplyToStatusId"

    .prologue
    .line 61
    iput-wide p1, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    .line 62
    return-void
.end method

.method public setLocation(Ltwitter4j/GeoLocation;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 74
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    .line 75
    return-void
.end method

.method public setPlaceId(Ljava/lang/String;)V
    .locals 0
    .parameter "placeId"

    .prologue
    .line 86
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 200
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "StatusUpdate{status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", inReplyToStatusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", placeId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", displayCoordinates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", annotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
