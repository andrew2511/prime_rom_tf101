.class public final Ltwitter4j/internal/http/HttpResponseEvent;
.super Ljava/lang/Object;
.source "HttpResponseEvent.java"


# instance fields
.field private request:Ltwitter4j/internal/http/HttpRequest;

.field private response:Ltwitter4j/internal/http/HttpResponse;

.field private twitterException:Ltwitter4j/TwitterException;


# direct methods
.method constructor <init>(Ltwitter4j/internal/http/HttpRequest;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/TwitterException;)V
    .locals 0
    .parameter "request"
    .parameter "response"
    .parameter "te"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    .line 45
    iput-object p2, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    .line 46
    iput-object p3, p0, Ltwitter4j/internal/http/HttpResponseEvent;->twitterException:Ltwitter4j/TwitterException;

    .line 47
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

    check-cast v0, Ltwitter4j/internal/http/HttpResponseEvent;

    move-object v1, v0

    .line 87
    .local v1, that:Ltwitter4j/internal/http/HttpResponseEvent;
    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    iget-object v3, v1, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    invoke-virtual {v2, v3}, Ltwitter4j/internal/http/HttpRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    move v2, v4

    .line 88
    goto :goto_0

    .line 87
    :cond_4
    iget-object v2, v1, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    if-nez v2, :cond_3

    .line 89
    :cond_5
    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    iget-object v3, v1, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v2, v4

    .line 90
    goto :goto_0

    .line 89
    :cond_7
    iget-object v2, v1, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    if-nez v2, :cond_6

    :cond_8
    move v2, v5

    .line 92
    goto :goto_0
.end method

.method public getRequest()Ltwitter4j/internal/http/HttpRequest;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    return-object v0
.end method

.method public getResponse()Ltwitter4j/internal/http/HttpResponse;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    return-object v0
.end method

.method public getTwitterException()Ltwitter4j/TwitterException;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseEvent;->twitterException:Ltwitter4j/TwitterException;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    iget-object v1, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpRequest;->hashCode()I

    move-result v1

    move v0, v1

    .line 98
    .local v0, result:I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 99
    return v0

    .end local v0           #result:I
    :cond_0
    move v0, v3

    .line 97
    goto :goto_0

    .restart local v0       #result:I
    :cond_1
    move v2, v3

    .line 98
    goto :goto_1
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    invoke-virtual {v0}, Ltwitter4j/internal/http/HttpRequest;->getAuthorization()Ltwitter4j/http/Authorization;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/http/Authorization;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "HttpResponseEvent{request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
