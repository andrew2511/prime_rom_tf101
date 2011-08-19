.class final Ltwitter4j/TrendJSONImpl;
.super Ljava/lang/Object;
.source "TrendJSONImpl.java"

# interfaces
.implements Ltwitter4j/Trend;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1aba5f6b262a250aL


# instance fields
.field private name:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 1
    .parameter "json"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Ltwitter4j/TrendJSONImpl;->url:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Ltwitter4j/TrendJSONImpl;->query:Ljava/lang/String;

    .line 46
    const-string v0, "name"

    invoke-static {v0, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TrendJSONImpl;->name:Ljava/lang/String;

    .line 47
    const-string v0, "url"

    invoke-static {v0, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TrendJSONImpl;->url:Ljava/lang/String;

    .line 48
    const-string v0, "query"

    invoke-static {v0, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TrendJSONImpl;->query:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 85
    :goto_0
    return v2

    .line 75
    :cond_0
    instance-of v2, p1, Ltwitter4j/Trend;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    .line 77
    :cond_1
    move-object v0, p1

    check-cast v0, Ltwitter4j/Trend;

    move-object v1, v0

    .line 79
    .local v1, trend:Ltwitter4j/Trend;
    iget-object v2, p0, Ltwitter4j/TrendJSONImpl;->name:Ljava/lang/String;

    invoke-interface {v1}, Ltwitter4j/Trend;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    .line 80
    :cond_2
    iget-object v2, p0, Ltwitter4j/TrendJSONImpl;->query:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltwitter4j/TrendJSONImpl;->query:Ljava/lang/String;

    invoke-interface {v1}, Ltwitter4j/Trend;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    move v2, v4

    .line 81
    goto :goto_0

    .line 80
    :cond_4
    invoke-interface {v1}, Ltwitter4j/Trend;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 82
    :cond_5
    iget-object v2, p0, Ltwitter4j/TrendJSONImpl;->url:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ltwitter4j/TrendJSONImpl;->url:Ljava/lang/String;

    invoke-interface {v1}, Ltwitter4j/Trend;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v2, v4

    .line 83
    goto :goto_0

    .line 82
    :cond_7
    invoke-interface {v1}, Ltwitter4j/Trend;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    :cond_8
    move v2, v5

    .line 85
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Ltwitter4j/TrendJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Ltwitter4j/TrendJSONImpl;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ltwitter4j/TrendJSONImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    iget-object v1, p0, Ltwitter4j/TrendJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 91
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TrendJSONImpl;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltwitter4j/TrendJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int v0, v1, v2

    .line 92
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TrendJSONImpl;->query:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/TrendJSONImpl;->query:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 93
    return v0

    :cond_0
    move v2, v3

    .line 91
    goto :goto_0

    :cond_1
    move v2, v3

    .line 92
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 98
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TrendJSONImpl{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TrendJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TrendJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", query=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TrendJSONImpl;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
