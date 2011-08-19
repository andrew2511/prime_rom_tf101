.class public Ltwitter4j/http/BasicAuthorization;
.super Ljava/lang/Object;
.source "BasicAuthorization.java"

# interfaces
.implements Ltwitter4j/http/Authorization;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5156d367cd47ef54L


# instance fields
.field private basic:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "userId"
    .parameter "password"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Ltwitter4j/http/BasicAuthorization;->userId:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Ltwitter4j/http/BasicAuthorization;->password:Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ltwitter4j/http/BasicAuthorization;->encodeBasicAuthenticationString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/BasicAuthorization;->basic:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private encodeBasicAuthenticationString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Ltwitter4j/http/BasicAuthorization;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/http/BasicAuthorization;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/http/BasicAuthorization;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/http/BasicAuthorization;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ltwitter4j/internal/http/BASE64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 79
    if-ne p0, p1, :cond_0

    const/4 v2, 0x1

    .line 84
    :goto_0
    return v2

    .line 80
    :cond_0
    instance-of v2, p1, Ltwitter4j/http/BasicAuthorization;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 82
    :cond_1
    move-object v0, p1

    check-cast v0, Ltwitter4j/http/BasicAuthorization;

    move-object v1, v0

    .line 84
    .local v1, that:Ltwitter4j/http/BasicAuthorization;
    iget-object v2, p0, Ltwitter4j/http/BasicAuthorization;->basic:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/http/BasicAuthorization;->basic:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public getAuthorizationHeader(Ltwitter4j/internal/http/HttpRequest;)Ljava/lang/String;
    .locals 1
    .parameter "req"

    .prologue
    .line 67
    iget-object v0, p0, Ltwitter4j/http/BasicAuthorization;->basic:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ltwitter4j/http/BasicAuthorization;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ltwitter4j/http/BasicAuthorization;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Ltwitter4j/http/BasicAuthorization;->basic:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "BasicAuthorization{userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/http/BasicAuthorization;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", password=\'**********\'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
