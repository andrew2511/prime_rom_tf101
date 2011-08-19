.class public Lorg/apache/http/impl/cookie/BasicClientCookie2;
.super Lorg/apache/http/impl/cookie/BasicClientCookie;
.source "BasicClientCookie2.java"

# interfaces
.implements Lorg/apache/http/cookie/SetCookie2;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private commentURL:Ljava/lang/String;

.field private discard:Z

.field private ports:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-super {p0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/cookie/BasicClientCookie2;

    .line 93
    .local v0, clone:Lorg/apache/http/impl/cookie/BasicClientCookie2;
    iget-object v1, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2;->ports:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [I

    iput-object p0, v0, Lorg/apache/http/impl/cookie/BasicClientCookie2;->ports:[I

    .line 94
    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2;->commentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getPorts()[I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2;->ports:[I

    return-object v0
.end method

.method public isExpired(Ljava/util/Date;)Z
    .locals 1
    .parameter "date"

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2;->discard:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->isExpired(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2;->discard:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCommentURL(Ljava/lang/String;)V
    .locals 0
    .parameter "commentURL"

    .prologue
    .line 73
    iput-object p1, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2;->commentURL:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setDiscard(Z)V
    .locals 0
    .parameter "discard"

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2;->discard:Z

    .line 78
    return-void
.end method

.method public setPorts([I)V
    .locals 0
    .parameter "ports"

    .prologue
    .line 64
    iput-object p1, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2;->ports:[I

    .line 65
    return-void
.end method
