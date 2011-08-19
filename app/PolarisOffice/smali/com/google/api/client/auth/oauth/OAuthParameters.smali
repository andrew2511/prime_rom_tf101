.class public final Lcom/google/api/client/auth/oauth/OAuthParameters;
.super Ljava/lang/Object;
.source "OAuthParameters.java"


# static fields
.field private static final ESCAPER:Lcom/google/api/client/escape/PercentEscaper;

.field private static final RANDOM:Ljava/security/SecureRandom;


# instance fields
.field public callback:Ljava/lang/String;

.field public consumerKey:Ljava/lang/String;

.field public nonce:Ljava/lang/String;

.field public realm:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public signatureMethod:Ljava/lang/String;

.field public signer:Lcom/google/api/client/auth/oauth/OAuthSigner;

.field public timestamp:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public verifier:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/api/client/auth/oauth/OAuthParameters;->RANDOM:Ljava/security/SecureRandom;

    .line 95
    new-instance v0, Lcom/google/api/client/escape/PercentEscaper;

    const-string v1, "-_.~"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/auth/oauth/OAuthParameters;->ESCAPER:Lcom/google/api/client/escape/PercentEscaper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "buf"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 202
    if-eqz p3, :cond_0

    .line 203
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/google/api/client/auth/oauth/OAuthParameters;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_0
    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 222
    sget-object v0, Lcom/google/api/client/auth/oauth/OAuthParameters;->ESCAPER:Lcom/google/api/client/escape/PercentEscaper;

    invoke-virtual {v0, p0}, Lcom/google/api/client/escape/PercentEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private putParameter(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, parameters:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-void

    .line 217
    :cond_0
    invoke-static {p3}, Lcom/google/api/client/auth/oauth/OAuthParameters;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private putParameterIfValueNotNull(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, parameters:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 211
    invoke-direct {p0, p1, p2, p3}, Lcom/google/api/client/auth/oauth/OAuthParameters;->putParameter(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    return-void
.end method


# virtual methods
.method public computeNonce()V
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/google/api/client/auth/oauth/OAuthParameters;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->nonce:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public computeSignature(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;)V
    .locals 23
    .parameter "requestMethod"
    .parameter "requestUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/auth/oauth/OAuthParameters;->signer:Lcom/google/api/client/auth/oauth/OAuthSigner;

    move-object/from16 v19, v0

    .line 124
    .local v19, signer:Lcom/google/api/client/auth/oauth/OAuthSigner;
    invoke-interface/range {v19 .. v19}, Lcom/google/api/client/auth/oauth/OAuthSigner;->getSignatureMethod()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/api/client/auth/oauth/OAuthParameters;->signatureMethod:Ljava/lang/String;

    .line 126
    .local v18, signatureMethod:Ljava/lang/String;
    new-instance v13, Ljava/util/TreeMap;

    invoke-direct {v13}, Ljava/util/TreeMap;-><init>()V

    .line 127
    .local v13, parameters:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v21, "oauth_callback"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/auth/oauth/OAuthParameters;->callback:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/client/auth/oauth/OAuthParameters;->putParameterIfValueNotNull(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v21, "oauth_consumer_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/auth/oauth/OAuthParameters;->consumerKey:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/client/auth/oauth/OAuthParameters;->putParameterIfValueNotNull(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v21, "oauth_nonce"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/auth/oauth/OAuthParameters;->nonce:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/client/auth/oauth/OAuthParameters;->putParameterIfValueNotNull(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v21, "oauth_signature_method"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v21

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/client/auth/oauth/OAuthParameters;->putParameterIfValueNotNull(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v21, "oauth_timestamp"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/auth/oauth/OAuthParameters;->timestamp:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/client/auth/oauth/OAuthParameters;->putParameterIfValueNotNull(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v21, "oauth_token"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/auth/oauth/OAuthParameters;->token:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/client/auth/oauth/OAuthParameters;->putParameterIfValueNotNull(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v21, "oauth_verifier"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/auth/oauth/OAuthParameters;->verifier:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/client/auth/oauth/OAuthParameters;->putParameterIfValueNotNull(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v21, "oauth_version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/auth/oauth/OAuthParameters;->version:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/client/auth/oauth/OAuthParameters;->putParameterIfValueNotNull(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/GenericUrl;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 139
    .local v6, fieldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    .line 140
    .local v20, value:Ljava/lang/Object;
    if-eqz v20, :cond_0

    .line 141
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v4

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/client/auth/oauth/OAuthParameters;->putParameter(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    .end local v6           #fieldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20           #value:Ljava/lang/Object;
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v14, parametersBuf:Ljava/lang/StringBuilder;
    const/4 v7, 0x1

    .line 147
    .local v7, first:Z
    invoke-virtual {v13}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 148
    .local v5, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v7, :cond_3

    .line 149
    const/4 v7, 0x0

    .line 153
    :goto_2
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 155
    .local v20, value:Ljava/lang/String;
    if-eqz v20, :cond_2

    .line 156
    const/16 v21, 0x3d

    move-object v0, v14

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 151
    .end local v20           #value:Ljava/lang/String;
    :cond_3
    const/16 v21, 0x26

    move-object v0, v14

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 159
    .end local v5           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 161
    .local v11, normalizedParameters:Ljava/lang/String;
    new-instance v10, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v10}, Lcom/google/api/client/http/GenericUrl;-><init>()V

    .line 162
    .local v10, normalized:Lcom/google/api/client/http/GenericUrl;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/api/client/http/GenericUrl;->scheme:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v10

    iput-object v0, v1, Lcom/google/api/client/http/GenericUrl;->scheme:Ljava/lang/String;

    .line 163
    .local v16, scheme:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/api/client/http/GenericUrl;->host:Ljava/lang/String;

    move-object v8, v0

    iput-object v8, v10, Lcom/google/api/client/http/GenericUrl;->host:Ljava/lang/String;

    .line 164
    .local v8, host:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/api/client/http/GenericUrl;->path:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v10

    iput-object v0, v1, Lcom/google/api/client/http/GenericUrl;->path:Ljava/lang/String;

    .line 165
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/api/client/http/GenericUrl;->port:I

    move v15, v0

    .line 166
    .local v15, port:I
    const-string v21, "http"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    const/16 v21, 0x50

    move v0, v15

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    :cond_5
    const-string v21, "https"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    const/16 v21, 0x1bb

    move v0, v15

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 168
    :cond_6
    const/4 v15, -0x1

    .line 170
    :cond_7
    iput v15, v10, Lcom/google/api/client/http/GenericUrl;->port:I

    .line 171
    invoke-virtual {v10}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v12

    .line 173
    .local v12, normalizedPath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v4, buf:Ljava/lang/StringBuilder;
    invoke-static/range {p1 .. p1}, Lcom/google/api/client/auth/oauth/OAuthParameters;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x26

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    invoke-static {v12}, Lcom/google/api/client/auth/oauth/OAuthParameters;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x26

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {v11}, Lcom/google/api/client/auth/oauth/OAuthParameters;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 178
    .local v17, signatureBaseString:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/google/api/client/auth/oauth/OAuthSigner;->computeSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/api/client/auth/oauth/OAuthParameters;->signature:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public computeTimestamp()V
    .locals 4

    .prologue
    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->timestamp:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public getAuthorizationHeader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OAuth"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "realm"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->realm:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "oauth_callback"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->callback:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "oauth_consumer_key"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->consumerKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "oauth_nonce"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->nonce:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "oauth_signature"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->signature:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v1, "oauth_signature_method"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->signatureMethod:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "oauth_timestamp"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->timestamp:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "oauth_token"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->token:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "oauth_verifier"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->verifier:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "oauth_version"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->version:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public signRequestsUsingAuthorizationHeader(Lcom/google/api/client/http/HttpTransport;)V
    .locals 5
    .parameter "transport"

    .prologue
    .line 230
    iget-object v3, p1, Lcom/google/api/client/http/HttpTransport;->intercepters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/http/HttpExecuteIntercepter;

    .line 231
    .local v1, intercepter:Lcom/google/api/client/http/HttpExecuteIntercepter;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/google/api/client/auth/oauth/OAuthAuthorizationHeaderIntercepter;

    if-ne v3, v4, :cond_0

    .line 232
    check-cast v1, Lcom/google/api/client/auth/oauth/OAuthAuthorizationHeaderIntercepter;

    .end local v1           #intercepter:Lcom/google/api/client/http/HttpExecuteIntercepter;
    iput-object p0, v1, Lcom/google/api/client/auth/oauth/OAuthAuthorizationHeaderIntercepter;->oauthParameters:Lcom/google/api/client/auth/oauth/OAuthParameters;

    .line 241
    :goto_0
    return-void

    .line 237
    :cond_1
    new-instance v2, Lcom/google/api/client/auth/oauth/OAuthAuthorizationHeaderIntercepter;

    invoke-direct {v2}, Lcom/google/api/client/auth/oauth/OAuthAuthorizationHeaderIntercepter;-><init>()V

    .line 239
    .local v2, newIntercepter:Lcom/google/api/client/auth/oauth/OAuthAuthorizationHeaderIntercepter;
    iput-object p0, v2, Lcom/google/api/client/auth/oauth/OAuthAuthorizationHeaderIntercepter;->oauthParameters:Lcom/google/api/client/auth/oauth/OAuthParameters;

    .line 240
    iget-object v3, p1, Lcom/google/api/client/http/HttpTransport;->intercepters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
