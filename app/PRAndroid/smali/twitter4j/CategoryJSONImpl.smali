.class final Ltwitter4j/CategoryJSONImpl;
.super Ljava/lang/Object;
.source "CategoryJSONImpl.java"

# interfaces
.implements Ltwitter4j/Category;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5d0808d20eabf6f6L


# instance fields
.field private name:Ljava/lang/String;

.field private size:I

.field private slug:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 0
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Ltwitter4j/CategoryJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 49
    return-void
.end method

.method public static createCategoriesList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 1
    .parameter "res"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Category;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/CategoryJSONImpl;->createCategoriesList(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public static createCategoriesList(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 6
    .parameter "array"
    .parameter "res"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/org/json/JSONArray;",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Category;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 64
    new-instance v0, Ltwitter4j/ResponseListImpl;

    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v0, v5, p1}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 66
    .local v0, categories:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Category;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 67
    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v3

    .line 68
    .local v3, json:Ltwitter4j/internal/org/json/JSONObject;
    new-instance v1, Ltwitter4j/CategoryJSONImpl;

    invoke-direct {v1, v3}, Ltwitter4j/CategoryJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 69
    .local v1, category:Ltwitter4j/Category;
    invoke-interface {v0, v1}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-static {v1, v3}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v1           #category:Ltwitter4j/Category;
    .end local v3           #json:Ltwitter4j/internal/org/json/JSONObject;
    :cond_0
    invoke-static {v0, p0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-object v0

    .line 74
    .end local v0           #categories:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Category;>;"
    .end local v2           #i:I
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 75
    .local v4, jsone:Ltwitter4j/internal/org/json/JSONException;
    new-instance v5, Ltwitter4j/TwitterException;

    invoke-direct {v5, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 98
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 109
    :goto_0
    return v2

    .line 99
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

    .line 101
    :cond_2
    move-object v0, p1

    check-cast v0, Ltwitter4j/CategoryJSONImpl;

    move-object v1, v0

    .line 103
    .local v1, that:Ltwitter4j/CategoryJSONImpl;
    iget v2, p0, Ltwitter4j/CategoryJSONImpl;->size:I

    iget v3, v1, Ltwitter4j/CategoryJSONImpl;->size:I

    if-eq v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    .line 104
    :cond_3
    iget-object v2, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v2, v4

    .line 105
    goto :goto_0

    .line 104
    :cond_5
    iget-object v2, v1, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 106
    :cond_6
    iget-object v2, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v2, v4

    .line 107
    goto :goto_0

    .line 106
    :cond_8
    iget-object v2, v1, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    if-nez v2, :cond_7

    :cond_9
    move v2, v5

    .line 109
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Ltwitter4j/CategoryJSONImpl;->size:I

    return v0
.end method

.method public getSlug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    iget-object v1, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    .line 115
    .local v0, result:I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 116
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/CategoryJSONImpl;->size:I

    add-int v0, v1, v2

    .line 117
    return v0

    .end local v0           #result:I
    :cond_0
    move v0, v3

    .line 114
    goto :goto_0

    .restart local v0       #result:I
    :cond_1
    move v2, v3

    .line 115
    goto :goto_1
.end method

.method init(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    .line 53
    const-string v0, "slug"

    invoke-virtual {p1, v0}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    .line 54
    const-string v0, "size"

    invoke-static {v0, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/CategoryJSONImpl;->size:I

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 122
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CategoryJSONImpl{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", slug=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/CategoryJSONImpl;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
