.class final Ltwitter4j/TweetJSONImpl;
.super Ljava/lang/Object;
.source "TweetJSONImpl.java"

# interfaces
.implements Ltwitter4j/Tweet;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3babbbc7515d16c3L


# instance fields
.field private annotations:Ltwitter4j/Annotations;

.field private createdAt:Ljava/util/Date;

.field private fromUser:Ljava/lang/String;

.field private fromUserId:I

.field private geoLocation:Ltwitter4j/GeoLocation;

.field private id:J

.field private isoLanguageCode:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private profileImageUrl:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private toUser:Ljava/lang/String;

.field private toUserId:I


# direct methods
.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 3
    .parameter "tweet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v1, -0x1

    iput v1, p0, Ltwitter4j/TweetJSONImpl;->toUserId:I

    .line 49
    iput-object v2, p0, Ltwitter4j/TweetJSONImpl;->toUser:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Ltwitter4j/TweetJSONImpl;->isoLanguageCode:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Ltwitter4j/TweetJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 60
    iput-object v2, p0, Ltwitter4j/TweetJSONImpl;->annotations:Ltwitter4j/Annotations;

    .line 64
    const-string v1, "text"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/TweetJSONImpl;->text:Ljava/lang/String;

    .line 65
    const-string v1, "to_user_id"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v1

    iput v1, p0, Ltwitter4j/TweetJSONImpl;->toUserId:I

    .line 66
    const-string v1, "to_user"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/TweetJSONImpl;->toUser:Ljava/lang/String;

    .line 67
    const-string v1, "from_user"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/TweetJSONImpl;->fromUser:Ljava/lang/String;

    .line 68
    const-string v1, "id"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v1

    iput-wide v1, p0, Ltwitter4j/TweetJSONImpl;->id:J

    .line 69
    const-string v1, "from_user_id"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v1

    iput v1, p0, Ltwitter4j/TweetJSONImpl;->fromUserId:I

    .line 70
    const-string v1, "iso_language_code"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/TweetJSONImpl;->isoLanguageCode:Ljava/lang/String;

    .line 71
    const-string v1, "source"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/TweetJSONImpl;->source:Ljava/lang/String;

    .line 72
    const-string v1, "profile_image_url"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/TweetJSONImpl;->profileImageUrl:Ljava/lang/String;

    .line 73
    const-string v1, "created_at"

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss z"

    invoke-static {v1, p1, v2}, Ltwitter4j/internal/util/ParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/TweetJSONImpl;->createdAt:Ljava/util/Date;

    .line 74
    const-string v1, "location"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/TweetJSONImpl;->location:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Ltwitter4j/GeoLocation;->getInstance(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/GeoLocation;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/TweetJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 76
    const-string v1, "annotations"

    invoke-virtual {p1, v1}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    :try_start_0
    const-string v1, "annotations"

    invoke-virtual {p1, v1}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    .line 79
    .local v0, annotationsArray:Ltwitter4j/internal/org/json/JSONArray;
    new-instance v1, Ltwitter4j/Annotations;

    invoke-direct {v1, v0}, Ltwitter4j/Annotations;-><init>(Ltwitter4j/internal/org/json/JSONArray;)V

    iput-object v1, p0, Ltwitter4j/TweetJSONImpl;->annotations:Ltwitter4j/Annotations;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0           #annotationsArray:Ltwitter4j/internal/org/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    check-cast p1, Ltwitter4j/Tweet;

    .end local p1
    invoke-virtual {p0, p1}, Ltwitter4j/TweetJSONImpl;->compareTo(Ltwitter4j/Tweet;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/Tweet;)I
    .locals 6
    .parameter "that"

    .prologue
    .line 86
    iget-wide v2, p0, Ltwitter4j/TweetJSONImpl;->id:J

    invoke-interface {p1}, Ltwitter4j/Tweet;->getId()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 87
    .local v0, delta:J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 88
    const/high16 v2, -0x8000

    .line 92
    :goto_0
    return v2

    .line 89
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 90
    const v2, 0x7fffffff

    goto :goto_0

    .line 92
    :cond_1
    long-to-int v2, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 188
    if-ne p0, p1, :cond_0

    move v2, v7

    .line 195
    :goto_0
    return v2

    .line 189
    :cond_0
    instance-of v2, p1, Ltwitter4j/Tweet;

    if-nez v2, :cond_1

    move v2, v6

    goto :goto_0

    .line 191
    :cond_1
    move-object v0, p1

    check-cast v0, Ltwitter4j/Tweet;

    move-object v1, v0

    .line 193
    .local v1, tweet:Ltwitter4j/Tweet;
    iget-wide v2, p0, Ltwitter4j/TweetJSONImpl;->id:J

    invoke-interface {v1}, Ltwitter4j/Tweet;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    move v2, v7

    .line 195
    goto :goto_0
.end method

.method public getAnnotations()Ltwitter4j/Annotations;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->annotations:Ltwitter4j/Annotations;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getFromUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->fromUser:Ljava/lang/String;

    return-object v0
.end method

.method public getFromUserId()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Ltwitter4j/TweetJSONImpl;->fromUserId:I

    return v0
.end method

.method public getGeoLocation()Ltwitter4j/GeoLocation;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Ltwitter4j/TweetJSONImpl;->id:J

    return-wide v0
.end method

.method public getIsoLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->isoLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getToUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->toUser:Ljava/lang/String;

    return-object v0
.end method

.method public getToUserId()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Ltwitter4j/TweetJSONImpl;->toUserId:I

    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 200
    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 201
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/TweetJSONImpl;->toUserId:I

    add-int v0, v1, v2

    .line 202
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->toUser:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->toUser:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int v0, v1, v2

    .line 203
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->fromUser:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 204
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Ltwitter4j/TweetJSONImpl;->id:J

    iget-wide v4, p0, Ltwitter4j/TweetJSONImpl;->id:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 205
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/TweetJSONImpl;->fromUserId:I

    add-int v0, v1, v2

    .line 206
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->isoLanguageCode:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->isoLanguageCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 207
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 208
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 209
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 210
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    invoke-virtual {v2}, Ltwitter4j/GeoLocation;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v1, v2

    .line 211
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->annotations:Ltwitter4j/Annotations;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->annotations:Ltwitter4j/Annotations;

    invoke-virtual {v2}, Ltwitter4j/Annotations;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v1, v2

    .line 212
    return v0

    :cond_0
    move v2, v7

    .line 202
    goto :goto_0

    :cond_1
    move v2, v7

    .line 206
    goto :goto_1

    :cond_2
    move v2, v7

    .line 210
    goto :goto_2

    :cond_3
    move v2, v7

    .line 211
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 217
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TweetJSONImpl{text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", toUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TweetJSONImpl;->toUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", toUser=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->toUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", fromUser=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->fromUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/TweetJSONImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", fromUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TweetJSONImpl;->fromUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isoLanguageCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->isoLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", geoLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", annotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->annotations:Ltwitter4j/Annotations;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
