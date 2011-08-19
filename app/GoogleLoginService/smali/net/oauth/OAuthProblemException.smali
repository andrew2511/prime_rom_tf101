.class public Lnet/oauth/OAuthProblemException;
.super Lnet/oauth/OAuthException;
.source "OAuthProblemException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lnet/oauth/OAuthException;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oauth/OAuthProblemException;->parameters:Ljava/util/Map;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "problem"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lnet/oauth/OAuthException;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oauth/OAuthProblemException;->parameters:Ljava/util/Map;

    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lnet/oauth/OAuthProblemException;->parameters:Ljava/util/Map;

    const-string v1, "oauth_problem"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public getHttpStatusCode()I
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lnet/oauth/OAuthProblemException;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "HTTP status"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, code:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 96
    const/16 v1, 0xc8

    .line 100
    .end local v0           #code:Ljava/lang/Object;
    :goto_0
    return v1

    .line 97
    .restart local v0       #code:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 98
    check-cast v0, Ljava/lang/Number;

    .end local v0           #code:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    .line 100
    .restart local v0       #code:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 53
    invoke-super {p0}, Lnet/oauth/OAuthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, msg:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 78
    :goto_0
    return-object v3

    .line 56
    :cond_0
    invoke-virtual {p0}, Lnet/oauth/OAuthProblemException;->getProblem()Ljava/lang/String;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_1

    move-object v3, v1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lnet/oauth/OAuthProblemException;->getParameters()Ljava/util/Map;

    move-result-object v3

    const-string v4, "HTTP response"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 60
    .local v2, response:Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 63
    .local v0, eol:I
    if-gez v0, :cond_2

    .line 64
    const-string v3, "\r"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 66
    :cond_2
    if-ltz v0, :cond_3

    .line 67
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 69
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    move-object v3, v1

    .line 71
    goto :goto_0

    .line 74
    .end local v0           #eol:I
    :cond_4
    invoke-virtual {p0}, Lnet/oauth/OAuthProblemException;->getHttpStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 75
    .local v2, response:Ljava/lang/Integer;
    if-eqz v2, :cond_5

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 78
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lnet/oauth/OAuthProblemException;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getProblem()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lnet/oauth/OAuthProblemException;->getParameters()Ljava/util/Map;

    move-result-object v0

    const-string v1, "oauth_problem"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 82
    invoke-virtual {p0}, Lnet/oauth/OAuthProblemException;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method
