.class abstract Ltwitter4j/TwitterBase;
.super Ljava/lang/Object;
.source "TwitterBase.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x34e79201c9363e6cL


# instance fields
.field protected auth:Ltwitter4j/http/Authorization;

.field protected final conf:Ltwitter4j/conf/Configuration;


# direct methods
.method constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 2
    .parameter "conf"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Ltwitter4j/TwitterBase;->conf:Ltwitter4j/conf/Configuration;

    .line 47
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterBase;->initBasicAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "conf"
    .parameter "userId"
    .parameter "password"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Ltwitter4j/TwitterBase;->conf:Ltwitter4j/conf/Configuration;

    .line 52
    invoke-direct {p0, p2, p3}, Ltwitter4j/TwitterBase;->initBasicAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)V
    .locals 0
    .parameter "conf"
    .parameter "auth"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Ltwitter4j/TwitterBase;->conf:Ltwitter4j/conf/Configuration;

    .line 66
    iput-object p2, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    .line 67
    return-void
.end method

.method private initBasicAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "screenName"
    .parameter "password"

    .prologue
    .line 56
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 57
    new-instance v0, Ltwitter4j/http/BasicAuthorization;

    invoke-direct {v0, p1, p2}, Ltwitter4j/http/BasicAuthorization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    .line 59
    :cond_0
    iget-object v0, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    if-nez v0, :cond_1

    .line 60
    invoke-static {}, Ltwitter4j/http/NullAuthorization;->getInstance()Ltwitter4j/http/NullAuthorization;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    .line 62
    :cond_1
    return-void
.end method


# virtual methods
.method protected final ensureAuthorizationEnabled()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    invoke-interface {v0}, Ltwitter4j/http/Authorization;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Authentication credentials are missing. See http://twitter4j.org/configuration.html for the detail."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    return-void
.end method

.method protected final ensureOAuthEnabled()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    instance-of v0, v0, Ltwitter4j/http/OAuthAuthorization;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OAuth required. Authentication credentials are missing. See http://twitter4j.org/configuration.html for the detail."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 109
    :goto_0
    return v2

    .line 103
    :cond_0
    instance-of v2, p1, Ltwitter4j/TwitterBase;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    .line 105
    :cond_1
    move-object v0, p1

    check-cast v0, Ltwitter4j/TwitterBase;

    move-object v1, v0

    .line 107
    .local v1, that:Ltwitter4j/TwitterBase;
    iget-object v2, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    iget-object v3, v1, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v5

    .line 109
    goto :goto_0
.end method

.method public final getAuthorization()Ltwitter4j/http/Authorization;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    return-object v0
.end method

.method public getConfiguration()Ltwitter4j/conf/Configuration;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Ltwitter4j/TwitterBase;->conf:Ltwitter4j/conf/Configuration;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isBasicAuthEnabled()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    instance-of v0, v0, Ltwitter4j/http/BasicAuthorization;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    invoke-interface {v0}, Ltwitter4j/http/Authorization;->isEnabled()Z

    move-result v0

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
    .line 128
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TwitterBase{auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
