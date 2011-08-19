.class public Lgov/nist/javax/sip/header/Via;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "Via.java"

# interfaces
.implements Ljavax/sip/header/ViaHeader;
.implements Lgov/nist/javax/sip/header/ViaHeaderExt;


# static fields
.field public static final BRANCH:Ljava/lang/String; = "branch"

.field public static final MADDR:Ljava/lang/String; = "maddr"

.field public static final RECEIVED:Ljava/lang/String; = "received"

.field public static final RPORT:Ljava/lang/String; = "rport"

.field public static final TTL:Ljava/lang/String; = "ttl"

.field private static final serialVersionUID:J = 0x494c77f8c8b074d2L


# instance fields
.field protected comment:Ljava/lang/String;

.field private rPortFlag:Z

.field protected sentBy:Lgov/nist/core/HostPort;

.field protected sentProtocol:Lgov/nist/javax/sip/header/Protocol;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 104
    const-string v0, "Via"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/header/Via;->rPortFlag:Z

    .line 105
    new-instance v0, Lgov/nist/javax/sip/header/Protocol;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Protocol;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    .line 106
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 534
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Via;

    .line 535
    .local v0, retval:Lgov/nist/javax/sip/header/Via;
    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    if-eqz v1, :cond_14

    .line 536
    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Protocol;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/Protocol;

    iput-object v1, v0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    .line 537
    :cond_14
    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    if-eqz v1, :cond_22

    .line 538
    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    invoke-virtual {v1}, Lgov/nist/core/HostPort;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/HostPort;

    iput-object v1, v0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    .line 539
    :cond_22
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Via;->getRPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_32

    .line 540
    const-string v1, "rport"

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Via;->getRPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;I)V

    .line 541
    :cond_32
    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Via;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "buffer"

    .prologue
    .line 260
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Protocol;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 261
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    invoke-virtual {v0, p1}, Lgov/nist/core/HostPort;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 263
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 264
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 267
    :cond_21
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->comment:Ljava/lang/String;

    if-eqz v0, :cond_3c

    .line 268
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    :cond_3c
    iget-boolean v0, p0, Lgov/nist/javax/sip/header/Via;->rPortFlag:Z

    if-eqz v0, :cond_45

    const-string v0, ";rport"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    :cond_45
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "other"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    if-ne p1, p0, :cond_6

    move v2, v5

    .line 120
    :goto_5
    return v2

    .line 112
    :cond_6
    instance-of v2, p1, Ljavax/sip/header/ViaHeader;

    if-eqz v2, :cond_4c

    .line 113
    move-object v0, p1

    check-cast v0, Ljavax/sip/header/ViaHeader;

    move-object v1, v0

    .line 114
    .local v1, o:Ljavax/sip/header/ViaHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Via;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljavax/sip/header/ViaHeader;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljavax/sip/header/ViaHeader;->getTransport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Via;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljavax/sip/header/ViaHeader;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Via;->getPort()I

    move-result v2

    invoke-interface {v1}, Ljavax/sip/header/ViaHeader;->getPort()I

    move-result v3

    if-ne v2, v3, :cond_4a

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/header/Via;->equalParameters(Ljavax/sip/header/Parameters;)Z

    move-result v2

    if-eqz v2, :cond_4a

    move v2, v5

    goto :goto_5

    :cond_4a
    move v2, v4

    goto :goto_5

    .end local v1           #o:Ljavax/sip/header/ViaHeader;
    :cond_4c
    move v2, v4

    .line 120
    goto :goto_5
.end method

.method public getBranch()Ljava/lang/String;
    .registers 2

    .prologue
    .line 513
    const-string v0, "branch"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Via;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getHop()Ljavax/sip/address/Hop;
    .registers 5

    .prologue
    .line 157
    new-instance v0, Lgov/nist/javax/sip/stack/HopImpl;

    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    invoke-virtual {v1}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/core/Host;->getHostname()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    invoke-virtual {v2}, Lgov/nist/core/HostPort;->getPort()I

    move-result v2

    iget-object v3, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Protocol;->getTransport()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lgov/nist/javax/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    .local v0, hop:Lgov/nist/javax/sip/stack/HopImpl;
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    if-nez v1, :cond_7

    move-object v1, v2

    .line 305
    :goto_6
    return-object v1

    .line 301
    :cond_7
    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    invoke-virtual {v1}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    move-result-object v0

    .line 302
    .local v0, host:Lgov/nist/core/Host;
    if-nez v0, :cond_11

    move-object v1, v2

    .line 303
    goto :goto_6

    .line 305
    :cond_11
    invoke-virtual {v0}, Lgov/nist/core/Host;->getHostname()Ljava/lang/String;

    move-result-object v1

    goto :goto_6
.end method

.method public getMAddr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 454
    const-string v0, "maddr"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Via;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    if-nez v0, :cond_6

    .line 340
    const/4 v0, -0x1

    .line 341
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    invoke-virtual {v0}, Lgov/nist/core/HostPort;->getPort()I

    move-result v0

    goto :goto_5
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    if-nez v0, :cond_6

    .line 397
    const/4 v0, 0x0

    .line 398
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Protocol;->getProtocol()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getProtocolVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    if-nez v0, :cond_6

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Protocol;->getProtocolVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getRPort()I
    .registers 3

    .prologue
    .line 351
    const-string v1, "rport"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/header/Via;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, strRport:Ljava/lang/String;
    if-eqz v0, :cond_19

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 353
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 355
    :goto_18
    return v1

    :cond_19
    const/4 v1, -0x1

    goto :goto_18
.end method

.method public getReceived()Ljava/lang/String;
    .registers 2

    .prologue
    .line 486
    const-string v0, "received"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Via;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSentBy()Lgov/nist/core/HostPort;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    return-object v0
.end method

.method public getSentByField()Ljava/lang/String;
    .registers 2

    .prologue
    .line 549
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    if-eqz v0, :cond_b

    .line 550
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    invoke-virtual {v0}, Lgov/nist/core/HostPort;->encode()Ljava/lang/String;

    move-result-object v0

    .line 551
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getSentProtocol()Lgov/nist/javax/sip/header/Protocol;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    return-object v0
.end method

.method public getSentProtocolField()Ljava/lang/String;
    .registers 2

    .prologue
    .line 558
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    if-eqz v0, :cond_b

    .line 559
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Protocol;->encode()Ljava/lang/String;

    move-result-object v0

    .line 560
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getTTL()I
    .registers 3

    .prologue
    .line 427
    const-string v1, "ttl"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/header/Via;->getParameterAsInt(Ljava/lang/String;)I

    move-result v0

    .line 428
    .local v0, ttl:I
    return v0
.end method

.method public getTransport()Ljava/lang/String;
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    if-nez v0, :cond_6

    .line 366
    const/4 v0, 0x0

    .line 367
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Protocol;->getTransport()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getViaParms()Lgov/nist/core/NameValueList;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->parameters:Lgov/nist/core/NameValueList;

    return-object v0
.end method

.method public hasComment()Z
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->comment:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasPort()Z
    .registers 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/core/HostPort;->hasPort()Z

    move-result v0

    return v0
.end method

.method public removeComment()V
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/header/Via;->comment:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public removePort()V
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    invoke-virtual {v0}, Lgov/nist/core/HostPort;->removePort()V

    .line 200
    return-void
.end method

.method public setBranch(Ljava/lang/String;)V
    .registers 4
    .parameter "branch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 525
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    .line 526
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, Via, setBranch(), the branch parameter is null or length 0."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_10
    const-string v0, "branch"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 249
    iput-object p1, p0, Lgov/nist/javax/sip/header/Via;->comment:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setHost(Lgov/nist/core/Host;)V
    .registers 3
    .parameter "host"

    .prologue
    .line 221
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    if-nez v0, :cond_b

    .line 222
    new-instance v0, Lgov/nist/core/HostPort;

    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    .line 224
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    invoke-virtual {v0, p1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 225
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 6
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v2, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    if-nez v2, :cond_b

    .line 283
    new-instance v2, Lgov/nist/core/HostPort;

    invoke-direct {v2}, Lgov/nist/core/HostPort;-><init>()V

    iput-object v2, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    .line 285
    :cond_b
    :try_start_b
    new-instance v1, Lgov/nist/core/Host;

    invoke-direct {v1, p1}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, h:Lgov/nist/core/Host;
    iget-object v2, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    invoke-virtual {v2, v1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16

    .line 290
    return-void

    .line 287
    .end local v1           #h:Lgov/nist/core/Host;
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 288
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, " host parameter is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setMAddr(Ljava/lang/String;)V
    .registers 6
    .parameter "mAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 467
    if-nez p1, :cond_a

    .line 468
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "JAIN-SIP Exception, Via, setMAddr(), the mAddr parameter is null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 472
    :cond_a
    new-instance v0, Lgov/nist/core/Host;

    invoke-direct {v0}, Lgov/nist/core/Host;-><init>()V

    .line 473
    .local v0, host:Lgov/nist/core/Host;
    invoke-virtual {v0, p1}, Lgov/nist/core/Host;->setAddress(Ljava/lang/String;)V

    .line 474
    new-instance v1, Lgov/nist/core/NameValue;

    const-string v2, "maddr"

    invoke-direct {v1, v2, v0}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 475
    .local v1, nameValue:Lgov/nist/core/NameValue;
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/header/Via;->setParameter(Lgov/nist/core/NameValue;)V

    .line 477
    return-void
.end method

.method public setPort(I)V
    .registers 4
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 317
    const/4 v0, -0x1

    if-eq p1, v0, :cond_13

    const/4 v0, 0x1

    if-lt p1, v0, :cond_b

    const v0, 0xffff

    if-le p1, v0, :cond_13

    .line 318
    :cond_b
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "Port value out of range -1, [1..65535]"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_13
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    if-nez v0, :cond_1e

    .line 322
    new-instance v0, Lgov/nist/core/HostPort;

    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    .line 323
    :cond_1e
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    invoke-virtual {v0, p1}, Lgov/nist/core/HostPort;->setPort(I)V

    .line 324
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .registers 4
    .parameter "protocol"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 410
    if-nez p1, :cond_a

    .line 411
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, Via, setProtocol(), the protocol parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    if-nez v0, :cond_15

    .line 416
    new-instance v0, Lgov/nist/javax/sip/header/Protocol;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Protocol;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    .line 418
    :cond_15
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Protocol;->setProtocol(Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method public setProtocolVersion(Ljava/lang/String;)V
    .registers 3
    .parameter "protocolVersion"

    .prologue
    .line 212
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    if-nez v0, :cond_b

    .line 213
    new-instance v0, Lgov/nist/javax/sip/header/Protocol;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Protocol;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    .line 214
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Protocol;->setProtocolVersion(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public setRPort()V
    .registers 2

    .prologue
    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/header/Via;->rPortFlag:Z

    .line 331
    return-void
.end method

.method public setReceived(Ljava/lang/String;)V
    .registers 4
    .parameter "received"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 497
    if-nez p1, :cond_a

    .line 498
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, Via, setReceived(), the received parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_a
    const-string v0, "received"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method public setSentBy(Lgov/nist/core/HostPort;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 240
    iput-object p1, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    .line 241
    return-void
.end method

.method public setSentProtocol(Lgov/nist/javax/sip/header/Protocol;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 232
    iput-object p1, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    .line 233
    return-void
.end method

.method public setTTL(I)V
    .registers 5
    .parameter "ttl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 440
    if-gez p1, :cond_d

    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    .line 441
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, Via, setTTL(), the ttl parameter is < 0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_d
    new-instance v0, Lgov/nist/core/NameValue;

    const-string v1, "ttl"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Via;->setParameter(Lgov/nist/core/NameValue;)V

    .line 445
    return-void
.end method

.method public setTransport(Ljava/lang/String;)V
    .registers 4
    .parameter "transport"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 381
    if-nez p1, :cond_a

    .line 382
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, Via, setTransport(), the transport parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    if-nez v0, :cond_15

    .line 386
    new-instance v0, Lgov/nist/javax/sip/header/Protocol;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Protocol;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    .line 387
    :cond_15
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Protocol;->setTransport(Ljava/lang/String;)V

    .line 388
    return-void
.end method
