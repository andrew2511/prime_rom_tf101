.class public Ltwitter4j/http/AccessToken;
.super Ltwitter4j/http/OAuthToken;
.source "AccessToken.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x73cdb85869c93e33L


# instance fields
.field private screenName:Ljava/lang/String;

.field private userId:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ltwitter4j/http/OAuthToken;-><init>(Ljava/lang/String;)V

    .line 47
    const-string v1, "screen_name"

    invoke-virtual {p0, v1}, Ltwitter4j/http/AccessToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/http/AccessToken;->screenName:Ljava/lang/String;

    .line 48
    const-string v1, "user_id"

    invoke-virtual {p0, v1}, Ltwitter4j/http/AccessToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, sUserId:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ltwitter4j/http/AccessToken;->userId:I

    .line 50
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "token"
    .parameter "tokenSecret"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ltwitter4j/http/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 1
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/http/AccessToken;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 88
    :goto_0
    return v2

    .line 79
    :cond_0
    instance-of v2, p1, Ltwitter4j/http/AccessToken;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    .line 80
    :cond_1
    invoke-super {p0, p1}, Ltwitter4j/http/OAuthToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    .line 82
    :cond_2
    move-object v0, p1

    check-cast v0, Ltwitter4j/http/AccessToken;

    move-object v1, v0

    .line 84
    .local v1, that:Ltwitter4j/http/AccessToken;
    iget v2, p0, Ltwitter4j/http/AccessToken;->userId:I

    iget v3, v1, Ltwitter4j/http/AccessToken;->userId:I

    if-eq v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    .line 85
    :cond_3
    iget-object v2, p0, Ltwitter4j/http/AccessToken;->screenName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ltwitter4j/http/AccessToken;->screenName:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/http/AccessToken;->screenName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v2, v4

    .line 86
    goto :goto_0

    .line 85
    :cond_5
    iget-object v2, v1, Ltwitter4j/http/AccessToken;->screenName:Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_6
    move v2, v5

    .line 88
    goto :goto_0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-super {p0, p1}, Ltwitter4j/http/OAuthToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ltwitter4j/http/AccessToken;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Ltwitter4j/http/OAuthToken;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Ltwitter4j/http/OAuthToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Ltwitter4j/http/AccessToken;->userId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Ltwitter4j/http/OAuthToken;->hashCode()I

    move-result v0

    .line 94
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/http/AccessToken;->screenName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltwitter4j/http/AccessToken;->screenName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int v0, v1, v2

    .line 95
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/http/AccessToken;->userId:I

    add-int v0, v1, v2

    .line 96
    return v0

    .line 94
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "AccessToken{screenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/http/AccessToken;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/http/AccessToken;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
