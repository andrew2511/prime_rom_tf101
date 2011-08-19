.class Ltwitter4j/AccountTotalsJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "AccountTotalsJSONImpl.java"

# interfaces
.implements Ltwitter4j/AccountTotals;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1fccc1c12dc755f3L


# instance fields
.field private final favorites:I

.field private final followers:I

.field private final friends:I

.field private final updates:I


# direct methods
.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 1
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltwitter4j/AccountTotalsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/internal/org/json/JSONObject;)V

    .line 56
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 57
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method private constructor <init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 1
    .parameter "res"
    .parameter "json"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 48
    const-string v0, "updates"

    invoke-static {v0, p2}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/AccountTotalsJSONImpl;->updates:I

    .line 49
    const-string v0, "followers"

    invoke-static {v0, p2}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/AccountTotalsJSONImpl;->followers:I

    .line 50
    const-string v0, "favorites"

    invoke-static {v0, p2}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/AccountTotalsJSONImpl;->favorites:I

    .line 51
    const-string v0, "friends"

    invoke-static {v0, p2}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/AccountTotalsJSONImpl;->friends:I

    .line 52
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ltwitter4j/AccountTotalsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/internal/org/json/JSONObject;)V

    .line 62
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 92
    :goto_0
    return v2

    .line 83
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

    .line 85
    :cond_2
    move-object v0, p1

    check-cast v0, Ltwitter4j/AccountTotalsJSONImpl;

    move-object v1, v0

    .line 87
    .local v1, that:Ltwitter4j/AccountTotalsJSONImpl;
    iget v2, p0, Ltwitter4j/AccountTotalsJSONImpl;->favorites:I

    iget v3, v1, Ltwitter4j/AccountTotalsJSONImpl;->favorites:I

    if-eq v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    .line 88
    :cond_3
    iget v2, p0, Ltwitter4j/AccountTotalsJSONImpl;->followers:I

    iget v3, v1, Ltwitter4j/AccountTotalsJSONImpl;->followers:I

    if-eq v2, v3, :cond_4

    move v2, v4

    goto :goto_0

    .line 89
    :cond_4
    iget v2, p0, Ltwitter4j/AccountTotalsJSONImpl;->friends:I

    iget v3, v1, Ltwitter4j/AccountTotalsJSONImpl;->friends:I

    if-eq v2, v3, :cond_5

    move v2, v4

    goto :goto_0

    .line 90
    :cond_5
    iget v2, p0, Ltwitter4j/AccountTotalsJSONImpl;->updates:I

    iget v3, v1, Ltwitter4j/AccountTotalsJSONImpl;->updates:I

    if-eq v2, v3, :cond_6

    move v2, v4

    goto :goto_0

    :cond_6
    move v2, v5

    .line 92
    goto :goto_0
.end method

.method public getFavorites()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Ltwitter4j/AccountTotalsJSONImpl;->favorites:I

    return v0
.end method

.method public getFollowers()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Ltwitter4j/AccountTotalsJSONImpl;->followers:I

    return v0
.end method

.method public getFriends()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Ltwitter4j/AccountTotalsJSONImpl;->friends:I

    return v0
.end method

.method public getUpdates()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Ltwitter4j/AccountTotalsJSONImpl;->updates:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 97
    iget v0, p0, Ltwitter4j/AccountTotalsJSONImpl;->updates:I

    .line 98
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/AccountTotalsJSONImpl;->followers:I

    add-int v0, v1, v2

    .line 99
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/AccountTotalsJSONImpl;->favorites:I

    add-int v0, v1, v2

    .line 100
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/AccountTotalsJSONImpl;->friends:I

    add-int v0, v1, v2

    .line 101
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "AccountTotalsJSONImpl{updates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/AccountTotalsJSONImpl;->updates:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", followers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/AccountTotalsJSONImpl;->followers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", favorites="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/AccountTotalsJSONImpl;->favorites:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", friends="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/AccountTotalsJSONImpl;->friends:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
