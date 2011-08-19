.class public Lgov/nist/javax/sip/header/ims/Privacy;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Privacy.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PrivacyHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# instance fields
.field private privacy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 65
    const-string v0, "Privacy"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "privacy"

    .prologue
    .line 74
    invoke-direct {p0}, Lgov/nist/javax/sip/header/ims/Privacy;-><init>()V

    .line 75
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 141
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/Privacy;

    .line 142
    .local v0, retval:Lgov/nist/javax/sip/header/ims/Privacy;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 143
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    iput-object v1, v0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    .line 144
    :cond_e
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "other"

    .prologue
    .line 130
    instance-of v2, p1, Lgov/nist/javax/sip/header/ims/PrivacyHeader;

    if-eqz v2, :cond_15

    .line 132
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/ims/PrivacyHeader;

    move-object v1, v0

    .line 133
    .local v1, o:Lgov/nist/javax/sip/header/ims/PrivacyHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/Privacy;->getPrivacy()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lgov/nist/javax/sip/header/ims/PrivacyHeader;->getPrivacy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 135
    .end local v1           #o:Lgov/nist/javax/sip/header/ims/PrivacyHeader;
    :goto_14
    return v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public getPrivacy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    return-object v0
.end method

.method public setPrivacy(Ljava/lang/String;)V
    .registers 4
    .parameter "privacy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 110
    if-eqz p1, :cond_6

    const-string v0, ""

    if-ne p1, v0, :cond_e

    .line 111
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,  Privacy, setPrivacy(), privacy value is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_e
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    .line 116
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
    .line 123
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
