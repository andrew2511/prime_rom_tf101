.class public Lgov/nist/javax/sip/address/SipUri;
.super Lgov/nist/javax/sip/address/GenericURI;
.source "SipUri.java"

# interfaces
.implements Ljavax/sip/address/SipURI;
.implements Lgov/nist/javax/sip/address/SipURIExt;


# static fields
.field private static final serialVersionUID:J = 0x6b8cc0d42713c224L


# instance fields
.field protected authority:Lgov/nist/javax/sip/address/Authority;

.field protected qheaders:Lgov/nist/core/NameValueList;

.field protected telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

.field protected uriParms:Lgov/nist/core/NameValueList;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 81
    invoke-direct {p0}, Lgov/nist/javax/sip/address/GenericURI;-><init>()V

    .line 82
    const-string v0, "sip"

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    .line 83
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 84
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 85
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method public clearPassword()V
    .registers 3

    .prologue
    .line 115
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v1, :cond_f

    .line 116
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    move-result-object v0

    .line 117
    .local v0, userInfo:Lgov/nist/javax/sip/address/UserInfo;
    if-eqz v0, :cond_f

    .line 118
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/UserInfo;->clearPassword()V

    .line 120
    .end local v0           #userInfo:Lgov/nist/javax/sip/address/UserInfo;
    :cond_f
    return-void
.end method

.method public clearQheaders()V
    .registers 2

    .prologue
    .line 132
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 133
    return-void
.end method

.method public clearUriParms()V
    .registers 2

    .prologue
    .line 109
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 110
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 713
    invoke-super {p0}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    .line 714
    .local v0, retval:Lgov/nist/javax/sip/address/SipUri;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v1, :cond_14

    .line 715
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/Authority;

    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 716
    :cond_14
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_22

    .line 717
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValueList;

    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 718
    :cond_22
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_30

    .line 719
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValueList;

    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 720
    :cond_30
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    if-eqz v1, :cond_3e

    .line 721
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/TelephoneNumber;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/address/TelephoneNumber;

    iput-object p0, v0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 722
    :cond_3e
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "buffer"

    .prologue
    .line 242
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v0, :cond_14

    .line 244
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 245
    :cond_14
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 246
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 249
    :cond_26
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 250
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 253
    :cond_38
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 20
    .parameter "that"

    .prologue
    .line 155
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_8

    const/4 v15, 0x1

    .line 230
    :goto_7
    return v15

    .line 157
    :cond_8
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/sip/address/SipURI;

    move v15, v0

    if-eqz v15, :cond_256

    .line 158
    move-object/from16 v2, p0

    .line 159
    .local v2, a:Ljavax/sip/address/SipURI;
    move-object/from16 v0, p1

    check-cast v0, Ljavax/sip/address/SipURI;

    move-object v3, v0

    .line 162
    .local v3, b:Ljavax/sip/address/SipURI;
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->isSecure()Z

    move-result v15

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->isSecure()Z

    move-result v16

    xor-int v15, v15, v16

    if-eqz v15, :cond_24

    const/4 v15, 0x0

    goto :goto_7

    .line 166
    :cond_24
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_39

    const/4 v15, 0x1

    :goto_2b
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_3b

    const/16 v16, 0x1

    :goto_33
    xor-int v15, v15, v16

    if-eqz v15, :cond_3e

    const/4 v15, 0x0

    goto :goto_7

    :cond_39
    const/4 v15, 0x0

    goto :goto_2b

    :cond_3b
    const/16 v16, 0x0

    goto :goto_33

    .line 167
    :cond_3e
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_53

    const/4 v15, 0x1

    :goto_45
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_55

    const/16 v16, 0x1

    :goto_4d
    xor-int v15, v15, v16

    if-eqz v15, :cond_58

    const/4 v15, 0x0

    goto :goto_7

    :cond_53
    const/4 v15, 0x0

    goto :goto_45

    :cond_55
    const/16 v16, 0x0

    goto :goto_4d

    .line 169
    :cond_58
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_76

    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_76

    const/4 v15, 0x0

    goto :goto_7

    .line 170
    :cond_76
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_95

    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_95

    const/4 v15, 0x0

    goto/16 :goto_7

    .line 171
    :cond_95
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_ab

    const/4 v15, 0x1

    :goto_9c
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_ad

    const/16 v16, 0x1

    :goto_a4
    xor-int v15, v15, v16

    if-eqz v15, :cond_b0

    const/4 v15, 0x0

    goto/16 :goto_7

    :cond_ab
    const/4 v15, 0x0

    goto :goto_9c

    :cond_ad
    const/16 v16, 0x0

    goto :goto_a4

    .line 172
    :cond_b0
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_c7

    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_c7

    const/4 v15, 0x0

    goto/16 :goto_7

    .line 173
    :cond_c7
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getPort()I

    move-result v15

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getPort()I

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_d7

    const/4 v15, 0x0

    goto/16 :goto_7

    .line 176
    :cond_d7
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getParameterNames()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i:Ljava/util/Iterator;
    :cond_db
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_104

    .line 177
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 179
    .local v14, pname:Ljava/lang/String;
    invoke-interface {v2, v14}, Ljavax/sip/address/SipURI;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 180
    .local v12, p1:Ljava/lang/String;
    invoke-interface {v3, v14}, Ljavax/sip/address/SipURI;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 183
    .local v13, p2:Ljava/lang/String;
    if-eqz v12, :cond_db

    if-eqz v13, :cond_db

    invoke-static {v12}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v13}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_db

    const/4 v15, 0x0

    goto/16 :goto_7

    .line 187
    .end local v12           #p1:Ljava/lang/String;
    .end local v13           #p2:Ljava/lang/String;
    .end local v14           #pname:Ljava/lang/String;
    :cond_104
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_11a

    const/4 v15, 0x1

    :goto_10b
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_11c

    const/16 v16, 0x1

    :goto_113
    xor-int v15, v15, v16

    if-eqz v15, :cond_11f

    const/4 v15, 0x0

    goto/16 :goto_7

    :cond_11a
    const/4 v15, 0x0

    goto :goto_10b

    :cond_11c
    const/16 v16, 0x0

    goto :goto_113

    .line 188
    :cond_11f
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUserParam()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_135

    const/4 v15, 0x1

    :goto_126
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUserParam()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_137

    const/16 v16, 0x1

    :goto_12e
    xor-int v15, v15, v16

    if-eqz v15, :cond_13a

    const/4 v15, 0x0

    goto/16 :goto_7

    :cond_135
    const/4 v15, 0x0

    goto :goto_126

    :cond_137
    const/16 v16, 0x0

    goto :goto_12e

    .line 189
    :cond_13a
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getTTLParam()I

    move-result v15

    const/16 v16, -0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_15b

    const/4 v15, 0x1

    :goto_146
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getTTLParam()I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_15d

    const/16 v16, 0x1

    :goto_154
    xor-int v15, v15, v16

    if-eqz v15, :cond_160

    const/4 v15, 0x0

    goto/16 :goto_7

    :cond_15b
    const/4 v15, 0x0

    goto :goto_146

    :cond_15d
    const/16 v16, 0x0

    goto :goto_154

    .line 190
    :cond_160
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getMethodParam()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_176

    const/4 v15, 0x1

    :goto_167
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getMethodParam()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_178

    const/16 v16, 0x1

    :goto_16f
    xor-int v15, v15, v16

    if-eqz v15, :cond_17b

    const/4 v15, 0x0

    goto/16 :goto_7

    :cond_176
    const/4 v15, 0x0

    goto :goto_167

    :cond_178
    const/16 v16, 0x0

    goto :goto_16f

    .line 191
    :cond_17b
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_191

    const/4 v15, 0x1

    :goto_182
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_193

    const/16 v16, 0x1

    :goto_18a
    xor-int v15, v15, v16

    if-eqz v15, :cond_196

    const/4 v15, 0x0

    goto/16 :goto_7

    :cond_191
    const/4 v15, 0x0

    goto :goto_182

    :cond_193
    const/16 v16, 0x0

    goto :goto_18a

    .line 194
    :cond_196
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1ad

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_1ad

    const/4 v15, 0x0

    goto/16 :goto_7

    .line 195
    :cond_1ad
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_1c4

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1c4

    const/4 v15, 0x0

    goto/16 :goto_7

    .line 197
    :cond_1c4
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_253

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_253

    .line 198
    const/4 v9, 0x0

    .line 200
    .local v9, headerFactory:Ljavax/sip/header/HeaderFactory;
    :try_start_1d9
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    move-result-object v15

    invoke-virtual {v15}, Ljavax/sip/SipFactory;->createHeaderFactory()Ljavax/sip/header/HeaderFactory;
    :try_end_1e0
    .catch Ljavax/sip/PeerUnavailableException; {:try_start_1d9 .. :try_end_1e0} :catch_200

    move-result-object v9

    .line 205
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v11

    :cond_1e5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_253

    .line 206
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 208
    .local v10, hname:Ljava/lang/String;
    invoke-interface {v2, v10}, Ljavax/sip/address/SipURI;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, h1:Ljava/lang/String;
    invoke-interface {v3, v10}, Ljavax/sip/address/SipURI;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 211
    .local v6, h2:Ljava/lang/String;
    if-nez v5, :cond_20a

    if-eqz v6, :cond_20a

    const/4 v15, 0x0

    goto/16 :goto_7

    .line 201
    .end local v5           #h1:Ljava/lang/String;
    .end local v6           #h2:Ljava/lang/String;
    .end local v10           #hname:Ljava/lang/String;
    :catch_200
    move-exception v15

    move-object v4, v15

    .line 202
    .local v4, e:Ljavax/sip/PeerUnavailableException;
    const-string v15, "Cannot get the header factory to parse the header of the sip uris to compare"

    invoke-static {v15, v4}, Lgov/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 203
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 212
    .end local v4           #e:Ljavax/sip/PeerUnavailableException;
    .restart local v5       #h1:Ljava/lang/String;
    .restart local v6       #h2:Ljava/lang/String;
    .restart local v10       #hname:Ljava/lang/String;
    :cond_20a
    if-nez v6, :cond_211

    if-eqz v5, :cond_211

    const/4 v15, 0x0

    goto/16 :goto_7

    .line 214
    :cond_211
    if-nez v5, :cond_215

    if-eqz v6, :cond_1e5

    .line 216
    :cond_215
    :try_start_215
    invoke-static {v5}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v10, v15}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v7

    .line 217
    .local v7, header1:Ljavax/sip/header/Header;
    invoke-static {v6}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v10, v15}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v8

    .line 219
    .local v8, header2:Ljavax/sip/header/Header;
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_228
    .catch Ljava/text/ParseException; {:try_start_215 .. :try_end_228} :catch_22e

    move-result v15

    if-nez v15, :cond_1e5

    const/4 v15, 0x0

    goto/16 :goto_7

    .line 220
    .end local v7           #header1:Ljavax/sip/header/Header;
    .end local v8           #header2:Ljavax/sip/header/Header;
    :catch_22e
    move-exception v15

    move-object v4, v15

    .line 221
    .local v4, e:Ljava/text/ParseException;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot parse one of the header of the sip uris to compare "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v4}, Lgov/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 222
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 228
    .end local v4           #e:Ljava/text/ParseException;
    .end local v5           #h1:Ljava/lang/String;
    .end local v6           #h2:Ljava/lang/String;
    .end local v9           #headerFactory:Ljavax/sip/header/HeaderFactory;
    .end local v10           #hname:Ljava/lang/String;
    :cond_253
    const/4 v15, 0x1

    goto/16 :goto_7

    .line 230
    .end local v2           #a:Ljavax/sip/address/SipURI;
    .end local v3           #b:Ljavax/sip/address/SipURI;
    .end local v11           #i:Ljava/util/Iterator;
    :cond_256
    const/4 v15, 0x0

    goto/16 :goto_7
.end method

.method public getAuthority()Lgov/nist/javax/sip/address/Authority;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    return-object v0
.end method

.method public getGrParam()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1051
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "gr"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 735
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getHeaderNames()Ljava/util/Iterator;
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
    .line 748
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 424
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_7

    move-object v0, v1

    .line 426
    :goto_6
    return-object v0

    .line 425
    :cond_7
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v0

    if-nez v0, :cond_11

    move-object v0, v1

    goto :goto_6

    .line 426
    :cond_11
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/core/Host;->encode()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getHostPort()Lgov/nist/core/HostPort;
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v0

    if-nez v0, :cond_e

    .line 403
    :cond_c
    const/4 v0, 0x0

    .line 405
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v0

    goto :goto_d
.end method

.method public getLrParam()Ljava/lang/String;
    .registers 3

    .prologue
    .line 758
    const-string v1, "lr"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/address/SipUri;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    .line 759
    .local v0, haslr:Z
    if-eqz v0, :cond_b

    const-string v1, "true"

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getMAddrParam()Ljava/lang/String;
    .registers 5

    .prologue
    .line 768
    iget-object v2, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v3, "maddr"

    invoke-virtual {v2, v3}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v1

    .line 769
    .local v1, maddr:Lgov/nist/core/NameValue;
    if-nez v1, :cond_c

    .line 770
    const/4 v2, 0x0

    .line 772
    :goto_b
    return-object v2

    .line 771
    :cond_c
    invoke-virtual {v1}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, host:Ljava/lang/String;
    move-object v2, v0

    .line 772
    goto :goto_b
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 326
    const-string v0, "method"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->getParm(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getMethodParam()Ljava/lang/String;
    .registers 2

    .prologue
    .line 782
    const-string v0, "method"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 793
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 794
    .local v0, val:Ljava/lang/Object;
    if-nez v0, :cond_a

    .line 795
    const/4 v1, 0x0

    .line 799
    .end local v0           #val:Ljava/lang/Object;
    :goto_9
    return-object v1

    .line 796
    .restart local v0       #val:Ljava/lang/Object;
    :cond_a
    instance-of v1, v0, Lgov/nist/core/GenericObject;

    if-eqz v1, :cond_15

    .line 797
    check-cast v0, Lgov/nist/core/GenericObject;

    .end local v0           #val:Ljava/lang/Object;
    invoke-virtual {v0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 799
    .restart local v0       #val:Ljava/lang/Object;
    :cond_15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9
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
    .line 813
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lgov/nist/core/NameValueList;
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    return-object v0
.end method

.method public getParm(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "parmname"

    .prologue
    .line 317
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 318
    .local v0, obj:Ljava/lang/Object;
    return-object v0
.end method

.method public getPort()I
    .registers 3

    .prologue
    .line 414
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v0

    .line 415
    .local v0, hp:Lgov/nist/core/HostPort;
    if-nez v0, :cond_8

    .line 416
    const/4 v1, -0x1

    .line 417
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Lgov/nist/core/HostPort;->getPort()I

    move-result v1

    goto :goto_7
.end method

.method public getQheaders()Lgov/nist/core/NameValueList;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getTTLParam()I
    .registers 4

    .prologue
    .line 822
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v2, "ttl"

    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 823
    .local v0, ttl:Ljava/lang/Integer;
    if-eqz v0, :cond_11

    .line 824
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 826
    :goto_10
    return v1

    :cond_11
    const/4 v1, -0x1

    goto :goto_10
.end method

.method public getTelephoneSubscriber()Lgov/nist/javax/sip/address/TelephoneNumber;
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    if-nez v0, :cond_b

    .line 390
    new-instance v0, Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 392
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    return-object v0
.end method

.method public getTransportParam()Ljava/lang/String;
    .registers 3

    .prologue
    .line 835
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_10

    .line 836
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "transport"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 838
    :goto_f
    return-object v0

    .restart local p0
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getUser()Ljava/lang/String;
    .registers 2

    .prologue
    .line 849
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAtHost()Ljava/lang/String;
    .registers 6

    .prologue
    .line 272
    const-string v2, ""

    .line 273
    .local v2, user:Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v3}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 274
    iget-object v3, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v3}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/address/UserInfo;->getUser()Ljava/lang/String;

    move-result-object v2

    .line 276
    :cond_14
    iget-object v3, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v3}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/core/Host;->encode()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, host:Ljava/lang/String;
    const/4 v1, 0x0

    .line 278
    .local v1, s:Ljava/lang/StringBuffer;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 279
    new-instance v1, Ljava/lang/StringBuffer;

    .end local v1           #s:Ljava/lang/StringBuffer;
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 283
    .restart local v1       #s:Ljava/lang/StringBuffer;
    :goto_2c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 281
    :cond_35
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    goto :goto_2c
.end method

.method public getUserAtHostPort()Ljava/lang/String;
    .registers 7

    .prologue
    .line 291
    const-string v3, ""

    .line 292
    .local v3, user:Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v4}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 293
    iget-object v4, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v4}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/address/UserInfo;->getUser()Ljava/lang/String;

    move-result-object v3

    .line 295
    :cond_14
    iget-object v4, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v4}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/core/Host;->encode()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, host:Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v4}, Lgov/nist/javax/sip/address/Authority;->getPort()I

    move-result v1

    .line 298
    .local v1, port:I
    const/4 v2, 0x0

    .line 299
    .local v2, s:Ljava/lang/StringBuffer;
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 300
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2           #s:Ljava/lang/StringBuffer;
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 304
    .restart local v2       #s:Ljava/lang/StringBuffer;
    :goto_32
    const/4 v4, -0x1

    if-eq v1, v4, :cond_54

    .line 305
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 307
    :goto_47
    return-object v4

    .line 302
    :cond_48
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    goto :goto_32

    .line 307
    :cond_54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_47
.end method

.method public getUserParam()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1012
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_6

    .line 368
    const/4 v0, 0x0

    .line 369
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getPassword()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getUserType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 358
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public hasGrParam()Z
    .registers 3

    .prologue
    .line 1033
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "gr"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasLrParam()Z
    .registers 3

    .prologue
    .line 1023
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "lr"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasParameter(Ljava/lang/String;)Z
    .registers 3
    .parameter "name"

    .prologue
    .line 667
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTransport()Z
    .registers 2

    .prologue
    .line 689
    const-string v0, "transport"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .registers 3

    .prologue
    .line 859
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSipURI()Z
    .registers 2

    .prologue
    .line 867
    const/4 v0, 0x1

    return v0
.end method

.method public isUserTelephoneSubscriber()Z
    .registers 4

    .prologue
    .line 456
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    .local v0, usrtype:Ljava/lang/String;
    if-nez v0, :cond_e

    .line 458
    const/4 v1, 0x0

    .line 459
    :goto_d
    return v1

    :cond_e
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_d
.end method

.method public removeHeader(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 490
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_9

    .line 491
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 492
    :cond_9
    return-void
.end method

.method public removeHeaders()V
    .registers 2

    .prologue
    .line 497
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 498
    return-void
.end method

.method public removeMAddr()V
    .registers 3

    .prologue
    .line 474
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_b

    .line 475
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "maddr"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 476
    :cond_b
    return-void
.end method

.method public removeMethod()V
    .registers 3

    .prologue
    .line 519
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_b

    .line 520
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "method"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 521
    :cond_b
    return-void
.end method

.method public removeParameter(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 697
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 698
    return-void
.end method

.method public removeParameters()V
    .registers 2

    .prologue
    .line 341
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 342
    return-void
.end method

.method public removePort()V
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->removePort()V

    .line 513
    return-void
.end method

.method public removeTTL()V
    .registers 3

    .prologue
    .line 466
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_b

    .line 467
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "ttl"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 468
    :cond_b
    return-void
.end method

.method public removeTransport()V
    .registers 3

    .prologue
    .line 482
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_b

    .line 483
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "transport"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 484
    :cond_b
    return-void
.end method

.method public removeUser()V
    .registers 2

    .prologue
    .line 542
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->removeUserInfo()V

    .line 543
    return-void
.end method

.method public removeUserType()V
    .registers 3

    .prologue
    .line 504
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_b

    .line 505
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 506
    :cond_b
    return-void
.end method

.method public setAuthority(Lgov/nist/javax/sip/address/Authority;)V
    .registers 2
    .parameter "authority"

    .prologue
    .line 562
    iput-object p1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 563
    return-void
.end method

.method public setDefaultParm(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 552
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_12

    .line 553
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 554
    .local v0, nv:Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 556
    .end local v0           #nv:Lgov/nist/core/NameValue;
    :cond_12
    return-void
.end method

.method public setGrParam(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 1042
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "gr"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1043
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 878
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 879
    .local v0, nv:Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 881
    return-void
.end method

.method public setHost(Lgov/nist/core/Host;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 569
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_b

    .line 570
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 571
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setHost(Lgov/nist/core/Host;)V

    .line 572
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 3
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 889
    new-instance v0, Lgov/nist/core/Host;

    invoke-direct {v0, p1}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    .line 890
    .local v0, h:Lgov/nist/core/Host;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->setHost(Lgov/nist/core/Host;)V

    .line 891
    return-void
.end method

.method public setHostPort(Lgov/nist/core/HostPort;)V
    .registers 3
    .parameter "hostPort"

    .prologue
    .line 704
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_b

    .line 705
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 707
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setHostPort(Lgov/nist/core/HostPort;)V

    .line 708
    return-void
.end method

.method public setIsdnSubAddress(Ljava/lang/String;)V
    .registers 3
    .parameter "isdnSubAddress"

    .prologue
    .line 638
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    if-nez v0, :cond_b

    .line 639
    new-instance v0, Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 640
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setIsdnSubaddress(Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method public setLrParam()V
    .registers 4

    .prologue
    .line 901
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "lr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 902
    return-void
.end method

.method public setMAddr(Ljava/lang/String;)V
    .registers 6
    .parameter "mAddr"

    .prologue
    .line 604
    iget-object v2, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v3, "maddr"

    invoke-virtual {v2, v3}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v1

    .line 605
    .local v1, nameValue:Lgov/nist/core/NameValue;
    new-instance v0, Lgov/nist/core/Host;

    invoke-direct {v0}, Lgov/nist/core/Host;-><init>()V

    .line 606
    .local v0, host:Lgov/nist/core/Host;
    invoke-virtual {v0, p1}, Lgov/nist/core/Host;->setAddress(Ljava/lang/String;)V

    .line 607
    if-eqz v1, :cond_16

    .line 608
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    .line 613
    :goto_15
    return-void

    .line 610
    :cond_16
    new-instance v1, Lgov/nist/core/NameValue;

    .end local v1           #nameValue:Lgov/nist/core/NameValue;
    const-string v2, "maddr"

    invoke-direct {v1, v2, v0}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 611
    .restart local v1       #nameValue:Lgov/nist/core/NameValue;
    iget-object v2, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v2, v1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    goto :goto_15
.end method

.method public setMAddrParam(Ljava/lang/String;)V
    .registers 4
    .parameter "maddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 913
    if-nez p1, :cond_a

    .line 914
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bad maddr"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 915
    :cond_a
    const-string v0, "maddr"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/address/SipUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .registers 4
    .parameter "method"

    .prologue
    .line 630
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 631
    return-void
.end method

.method public setMethodParam(Ljava/lang/String;)V
    .registers 3
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 925
    const-string v0, "method"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/address/SipUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 947
    const-string v1, "ttl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 949
    :try_start_8
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_11

    .line 954
    :cond_b
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1, p2}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 955
    return-void

    .line 950
    :catch_11
    move-exception v0

    .line 951
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setPort(I)V
    .registers 3
    .parameter "p"

    .prologue
    .line 655
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_b

    .line 656
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 657
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setPort(I)V

    .line 658
    return-void
.end method

.method public setQHeader(Lgov/nist/core/NameValue;)V
    .registers 3
    .parameter "nameValue"

    .prologue
    .line 675
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 676
    return-void
.end method

.method public setQheaders(Lgov/nist/core/NameValueList;)V
    .registers 2
    .parameter "parms"

    .prologue
    .line 596
    iput-object p1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 597
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .registers 5
    .parameter "scheme"

    .prologue
    .line 92
    const-string v0, "sip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "sips"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_29

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad scheme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_29
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setSecure(Z)V
    .registers 3
    .parameter "secure"

    .prologue
    .line 963
    if-eqz p1, :cond_7

    .line 964
    const-string v0, "sips"

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    .line 967
    :goto_6
    return-void

    .line 966
    :cond_7
    const-string v0, "sip"

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    goto :goto_6
.end method

.method public setTTLParam(I)V
    .registers 5
    .parameter "ttl"

    .prologue
    .line 976
    if-gtz p1, :cond_a

    .line 977
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad ttl value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 978
    :cond_a
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_1e

    .line 979
    new-instance v0, Lgov/nist/core/NameValue;

    const-string v1, "ttl"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 980
    .local v0, nv:Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 982
    .end local v0           #nv:Lgov/nist/core/NameValue;
    :cond_1e
    return-void
.end method

.method public setTelephoneSubscriber(Lgov/nist/javax/sip/address/TelephoneNumber;)V
    .registers 2
    .parameter "tel"

    .prologue
    .line 648
    iput-object p1, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 649
    return-void
.end method

.method public setTransportParam(Ljava/lang/String;)V
    .registers 6
    .parameter "transport"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 995
    if-nez p1, :cond_a

    .line 996
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 997
    :cond_a
    const-string v1, "UDP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "TLS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "TCP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "SCTP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3b

    .line 1001
    :cond_2a
    new-instance v0, Lgov/nist/core/NameValue;

    const-string v1, "transport"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1002
    .local v0, nv:Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 1005
    return-void

    .line 1004
    .end local v0           #nv:Lgov/nist/core/NameValue;
    :cond_3b
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setUriParameter(Lgov/nist/core/NameValue;)V
    .registers 3
    .parameter "nameValue"

    .prologue
    .line 682
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 683
    return-void
.end method

.method public setUriParm(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 588
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    .local v0, nv:Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 590
    return-void
.end method

.method public setUriParms(Lgov/nist/core/NameValueList;)V
    .registers 2
    .parameter "parms"

    .prologue
    .line 578
    iput-object p1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 579
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .registers 3
    .parameter "uname"

    .prologue
    .line 532
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_b

    .line 533
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 536
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setUser(Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public setUserParam(Ljava/lang/String;)V
    .registers 4
    .parameter "usertype"

    .prologue
    .line 622
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 623
    return-void
.end method

.method public setUserPassword(Ljava/lang/String;)V
    .registers 3
    .parameter "password"

    .prologue
    .line 376
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_b

    .line 377
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 378
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setPassword(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 262
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
