.class public Lgov/nist/javax/sip/address/TelURLImpl;
.super Lgov/nist/javax/sip/address/GenericURI;
.source "TelURLImpl.java"

# interfaces
.implements Ljavax/sip/address/TelURL;


# static fields
.field private static final serialVersionUID:J = 0x5182f5fa8162d832L


# instance fields
.field protected telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Lgov/nist/javax/sip/address/GenericURI;-><init>()V

    .line 52
    const-string v0, "tel"

    iput-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->scheme:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 176
    invoke-super {p0}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/TelURLImpl;

    .line 177
    .local v0, retval:Lgov/nist/javax/sip/address/TelURLImpl;
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    if-eqz v1, :cond_14

    .line 178
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/TelephoneNumber;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/address/TelephoneNumber;

    iput-object p0, v0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 179
    :cond_14
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/TelURLImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "buffer"

    .prologue
    .line 166
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 167
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 168
    return-object p1
.end method

.method public getIsdnSubAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->getIsdnSubaddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "parameterName"

    .prologue
    .line 183
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->getParameterNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lgov/nist/core/NameValueList;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->getParameters()Lgov/nist/core/NameValueList;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneContext()Ljava/lang/String;
    .registers 2

    .prologue
    .line 220
    const-string v0, "phone-context"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/TelURLImpl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostDial()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->getPostDial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public isGlobal()Z
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->isGlobal()Z

    move-result v0

    return v0
.end method

.method public isSipURI()Z
    .registers 2

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public removeParameter(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 199
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->removeParameter(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public setGlobal(Z)V
    .registers 3
    .parameter "global"

    .prologue
    .line 115
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setGlobal(Z)V

    .line 116
    return-void
.end method

.method public setIsdnSubAddress(Ljava/lang/String;)V
    .registers 3
    .parameter "isdnSubAddress"

    .prologue
    .line 125
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setIsdnSubaddress(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 187
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1, p2}, Lgov/nist/javax/sip/address/TelephoneNumber;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public setPhoneContext(Ljava/lang/String;)V
    .registers 3
    .parameter "phoneContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 208
    if-nez p1, :cond_8

    .line 209
    const-string v0, "phone-context"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/TelURLImpl;->removeParameter(Ljava/lang/String;)V

    .line 213
    :goto_7
    return-void

    .line 211
    :cond_8
    const-string v0, "phone-context"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/address/TelURLImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .registers 3
    .parameter "telephoneNumber"

    .prologue
    .line 142
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public setPostDial(Ljava/lang/String;)V
    .registers 3
    .parameter "postDial"

    .prologue
    .line 134
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setPostDial(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public setTelephoneNumber(Lgov/nist/javax/sip/address/TelephoneNumber;)V
    .registers 2
    .parameter "telephoneNumber"

    .prologue
    .line 60
    iput-object p1, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/address/TelURLImpl;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/TelephoneNumber;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
