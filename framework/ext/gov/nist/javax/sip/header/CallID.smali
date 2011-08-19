.class public Lgov/nist/javax/sip/header/CallID;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "CallID.java"

# interfaces
.implements Ljavax/sip/header/CallIdHeader;


# static fields
.field private static final serialVersionUID:J = -0x59b36d79798089d4L


# instance fields
.field protected callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    const-string v0, "Call-ID"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "callId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 137
    const-string v0, "Call-ID"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 138
    new-instance v0, Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/CallIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    .line 139
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 142
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CallID;

    .line 143
    .local v0, retval:Lgov/nist/javax/sip/header/CallID;
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    if-eqz v1, :cond_14

    .line 144
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/CallIdentifier;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/header/CallIdentifier;

    iput-object p0, v0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    .line 145
    :cond_14
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/CallID;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "buffer"

    .prologue
    .line 86
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    if-eqz v0, :cond_9

    .line 87
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/CallIdentifier;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 89
    :cond_9
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "other"

    .prologue
    .line 67
    if-ne p0, p1, :cond_4

    const/4 v2, 0x1

    .line 73
    :goto_3
    return v2

    .line 69
    :cond_4
    instance-of v2, p1, Ljavax/sip/header/CallIdHeader;

    if-eqz v2, :cond_19

    .line 70
    move-object v0, p1

    check-cast v0, Ljavax/sip/header/CallIdHeader;

    move-object v1, v0

    .line 71
    .local v1, o:Ljavax/sip/header/CallIdHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_3

    .line 73
    .end local v1           #o:Ljavax/sip/header/CallIdHeader;
    :cond_19
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public getCallId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/CallID;->encodeBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallIdentifer()Lgov/nist/javax/sip/header/CallIdentifier;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    return-object v0
.end method

.method public setCallId(Ljava/lang/String;)V
    .registers 5
    .parameter "cid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 118
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-direct {v1, p1}, Lgov/nist/javax/sip/header/CallIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    .line 122
    return-void

    .line 119
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 120
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/text/ParseException;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setCallIdentifier(Lgov/nist/javax/sip/header/CallIdentifier;)V
    .registers 2
    .parameter "cid"

    .prologue
    .line 129
    iput-object p1, p0, Lgov/nist/javax/sip/header/CallID;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    .line 130
    return-void
.end method
