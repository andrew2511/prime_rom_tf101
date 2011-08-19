.class public final Lgov/nist/javax/sip/header/extensions/SessionExpires;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "SessionExpires.java"

# interfaces
.implements Ljavax/sip/header/ExtensionHeader;
.implements Lgov/nist/javax/sip/header/extensions/SessionExpiresHeader;


# static fields
.field public static final NAME:Ljava/lang/String; = "Session-Expires"

.field public static final REFRESHER:Ljava/lang/String; = "refresher"

.field private static final serialVersionUID:J = 0x79a63e78c9b0a324L


# instance fields
.field public expires:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    const-string v0, "Session-Expires"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .registers 4

    .prologue
    .line 86
    iget v1, p0, Lgov/nist/javax/sip/header/extensions/SessionExpires;->expires:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/header/extensions/SessionExpires;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/extensions/SessionExpires;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_2b
    return-object v0
.end method

.method public getExpires()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lgov/nist/javax/sip/header/extensions/SessionExpires;->expires:I

    return v0
.end method

.method public getRefresher()Ljava/lang/String;
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/SessionExpires;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "refresher"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setExpires(I)V
    .registers 5
    .parameter "expires"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 69
    if-gez p1, :cond_1b

    .line 70
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1b
    iput p1, p0, Lgov/nist/javax/sip/header/extensions/SessionExpires;->expires:I

    .line 72
    return-void
.end method

.method public setRefresher(Ljava/lang/String;)V
    .registers 4
    .parameter "refresher"

    .prologue
    .line 99
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/SessionExpires;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "refresher"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
