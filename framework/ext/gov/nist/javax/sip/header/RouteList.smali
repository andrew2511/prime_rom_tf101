.class public Lgov/nist/javax/sip/header/RouteList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "RouteList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/Route;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2f4a3d58ba83ad94L


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 52
    const-class v0, Lgov/nist/javax/sip/header/Route;

    const-string v1, "Route"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 57
    new-instance v0, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    .line 58
    .local v0, retval:Lgov/nist/javax/sip/header/RouteList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/RouteList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/RouteList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 59
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lgov/nist/javax/sip/header/RouteList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    .line 64
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->encode()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .parameter "other"

    .prologue
    const/4 v8, 0x0

    .line 72
    instance-of v6, p1, Lgov/nist/javax/sip/header/RouteList;

    if-nez v6, :cond_7

    move v6, v8

    .line 85
    :goto_6
    return v6

    .line 74
    :cond_7
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/RouteList;

    move-object v5, v0

    .line 75
    .local v5, that:Lgov/nist/javax/sip/header/RouteList;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/RouteList;->size()I

    move-result v6

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RouteList;->size()I

    move-result v7

    if-eq v6, v7, :cond_17

    move v6, v8

    .line 76
    goto :goto_6

    .line 77
    :cond_17
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/RouteList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 78
    .local v1, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lgov/nist/javax/sip/header/Route;>;"
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RouteList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 79
    .local v2, it1:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lgov/nist/javax/sip/header/Route;>;"
    :cond_1f
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 80
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/Route;

    .line 81
    .local v3, route:Lgov/nist/javax/sip/header/Route;
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/Route;

    .line 82
    .local v4, route1:Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/header/Route;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    move v6, v8

    .line 83
    goto :goto_6

    .line 85
    .end local v3           #route:Lgov/nist/javax/sip/header/Route;
    .end local v4           #route1:Lgov/nist/javax/sip/header/Route;
    :cond_39
    const/4 v6, 0x1

    goto :goto_6
.end method
