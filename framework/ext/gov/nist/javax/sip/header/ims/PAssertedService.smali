.class public Lgov/nist/javax/sip/header/ims/PAssertedService;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "PAssertedService.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PAssertedServiceHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# instance fields
.field private subAppIds:Ljava/lang/String;

.field private subServiceIds:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    const-string v0, "P-Asserted-Service"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 42
    const-string v0, "P-Asserted-Service"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 110
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/PAssertedService;

    .line 111
    .local v0, retval:Lgov/nist/javax/sip/header/ims/PAssertedService;
    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .registers 4

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    .local v0, retval:Ljava/lang/StringBuffer;
    const-string v1, "urn:urn-7:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PAssertedService;->subServiceIds:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 58
    const-string v1, "3gpp-service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PAssertedService;->getSubserviceIdentifiers()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    :cond_20
    :goto_20
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 63
    :cond_25
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PAssertedService;->subAppIds:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 65
    const-string v1, "3gpp-application"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PAssertedService;->getApplicationIdentifiers()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_20
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "other"

    .prologue
    .line 104
    instance-of v0, p1, Lgov/nist/javax/sip/header/ims/PAssertedServiceHeader;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Lgov/nist/javax/sip/header/SIPHeader;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getApplicationIdentifiers()Ljava/lang/String;
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PAssertedService;->subAppIds:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_13

    .line 80
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PAssertedService;->subAppIds:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PAssertedService;->subAppIds:Ljava/lang/String;

    goto :goto_12
.end method

.method public getSubserviceIdentifiers()Ljava/lang/String;
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PAssertedService;->subServiceIds:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_13

    .line 88
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PAssertedService;->subServiceIds:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PAssertedService;->subServiceIds:Ljava/lang/String;

    goto :goto_12
.end method

.method public setApplicationIdentifiers(Ljava/lang/String;)V
    .registers 2
    .parameter "appids"

    .prologue
    .line 93
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PAssertedService;->subAppIds:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setSubserviceIdentifiers(Ljava/lang/String;)V
    .registers 2
    .parameter "subservices"

    .prologue
    .line 98
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PAssertedService;->subServiceIds:Ljava/lang/String;

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
    .line 73
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
