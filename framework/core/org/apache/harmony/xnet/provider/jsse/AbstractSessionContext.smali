.class abstract Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
.super Ljava/lang/Object;
.source "AbstractSessionContext.java"

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;
    }
.end annotation


# static fields
.field static final OPEN_SSL:I = 0x1


# instance fields
.field volatile maximumSize:I

.field private final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation
.end field

.field final sslCtxNativePointer:I

.field volatile timeout:I


# direct methods
.method constructor <init>(II)V
    .registers 4
    .parameter "maximumSize"
    .parameter "timeout"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_CTX_new()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sslCtxNativePointer:I

    .line 50
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$1;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    .line 66
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    .line 67
    iput p2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->timeout:I

    .line 68
    return-void
.end method

.method static log(Ljava/lang/Throwable;)V
    .registers 4
    .parameter "t"

    .prologue
    .line 284
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Error converting session."

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    return-void
.end method

.method private sessionIterator()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v1

    .line 75
    :try_start_3
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/net/ssl/SSLSession;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/SSLSession;

    .line 77
    .local v0, array:[Ljavax/net/ssl/SSLSession;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 78
    .end local v0           #array:[Ljavax/net/ssl/SSLSession;
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 290
    :try_start_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sslCtxNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_CTX_free(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 292
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 294
    return-void

    .line 292
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getIds()Ljava/util/Enumeration;
    .registers 3

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessionIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 83
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;

    invoke-direct {v1, p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;-><init>(Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .registers 6
    .parameter "sessionId"

    .prologue
    .line 258
    if-nez p1, :cond_a

    .line 259
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "sessionId == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 261
    :cond_a
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;

    invoke-direct {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;-><init>([B)V

    .line 263
    .local v0, key:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v2

    .line 264
    :try_start_12
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSession;

    .line 265
    .local v1, session:Ljavax/net/ssl/SSLSession;
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_25

    .line 266
    if-eqz v1, :cond_28

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-eqz v2, :cond_28

    move-object v2, v1

    .line 269
    :goto_24
    return-object v2

    .line 265
    .end local v1           #session:Ljavax/net/ssl/SSLSession;
    :catchall_25
    move-exception v3

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v3

    .line 269
    .restart local v1       #session:Ljavax/net/ssl/SSLSession;
    :cond_28
    const/4 v2, 0x0

    goto :goto_24
.end method

.method public final getSessionCacheSize()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    return v0
.end method

.method public final getSessionTimeout()I
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->timeout:I

    return v0
.end method

.method putSession(Ljavax/net/ssl/SSLSession;)V
    .registers 6
    .parameter "session"

    .prologue
    .line 273
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v0

    .line 274
    .local v0, id:[B
    array-length v2, v0

    if-nez v2, :cond_8

    .line 281
    :goto_7
    return-void

    .line 277
    :cond_8
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;

    invoke-direct {v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;-><init>([B)V

    .line 278
    .local v1, key:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v2

    .line 279
    :try_start_10
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    monitor-exit v2

    goto :goto_7

    :catchall_17
    move-exception v3

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v3
.end method

.method protected abstract sessionRemoved(Ljavax/net/ssl/SSLSession;)V
.end method

.method public final setSessionCacheSize(I)V
    .registers 5
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 165
    if-gez p1, :cond_a

    .line 166
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "size < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_a
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    .line 170
    .local v0, oldMaximum:I
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    .line 173
    if-ge p1, v0, :cond_13

    .line 174
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->trimToSize()V

    .line 176
    :cond_13
    return-void
.end method

.method public setSessionTimeout(I)V
    .registers 6
    .parameter "seconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 138
    if-gez p1, :cond_a

    .line 139
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "seconds < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_a
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->timeout:I

    .line 143
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v2

    .line 144
    :try_start_f
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 145
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSession;

    .line 149
    .local v1, session:Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v3

    if-nez v3, :cond_19

    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 151
    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessionRemoved(Ljavax/net/ssl/SSLSession;)V

    goto :goto_19

    .line 154
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    .end local v1           #session:Ljavax/net/ssl/SSLSession;
    :catchall_32
    move-exception v3

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_32

    throw v3

    .restart local v0       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    :cond_35
    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_32

    .line 155
    return-void
.end method

.method toBytes(Ljavax/net/ssl/SSLSession;)[B
    .registers 15
    .parameter "session"

    .prologue
    const/4 v12, 0x0

    .line 185
    instance-of v11, p1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    if-nez v11, :cond_7

    move-object v11, v12

    .line 218
    :goto_6
    return-object v11

    .line 189
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object v10, v0

    .line 191
    .local v10, sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    :try_start_b
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 192
    .local v2, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 194
    .local v5, daos:Ljava/io/DataOutputStream;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 197
    invoke-virtual {v10}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getEncoded()[B

    move-result-object v6

    .line 198
    .local v6, data:[B
    array-length v11, v6

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 199
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 202
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 203
    .local v4, certs:[Ljava/security/cert/Certificate;
    array-length v11, v4

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 205
    move-object v1, v4

    .local v1, arr$:[Ljava/security/cert/Certificate;
    array-length v9, v1

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_2f
    if-ge v8, v9, :cond_41

    aget-object v3, v1, v8

    .line 206
    .local v3, cert:Ljava/security/cert/Certificate;
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    .line 207
    array-length v11, v6

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 208
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 205
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    .line 212
    .end local v3           #cert:Ljava/security/cert/Certificate;
    :cond_41
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_44} :catch_46
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_b .. :try_end_44} :catch_4d

    move-result-object v11

    goto :goto_6

    .line 213
    .end local v1           #arr$:[Ljava/security/cert/Certificate;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #certs:[Ljava/security/cert/Certificate;
    .end local v5           #daos:Ljava/io/DataOutputStream;
    .end local v6           #data:[B
    .end local v8           #i$:I
    .end local v9           #len$:I
    :catch_46
    move-exception v11

    move-object v7, v11

    .line 214
    .local v7, e:Ljava/io/IOException;
    invoke-static {v7}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    move-object v11, v12

    .line 215
    goto :goto_6

    .line 216
    .end local v7           #e:Ljava/io/IOException;
    :catch_4d
    move-exception v11

    move-object v7, v11

    .line 217
    .local v7, e:Ljava/security/cert/CertificateEncodingException;
    invoke-static {v7}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    move-object v11, v12

    .line 218
    goto :goto_6
.end method

.method toSession([BLjava/lang/String;I)Ljavax/net/ssl/SSLSession;
    .registers 18
    .parameter "data"
    .parameter "host"
    .parameter "port"

    .prologue
    .line 228
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 229
    .local v6, bais:Ljava/io/ByteArrayInputStream;
    new-instance v9, Ljava/io/DataInputStream;

    invoke-direct {v9, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 231
    .local v9, dais:Ljava/io/DataInputStream;
    :try_start_a
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 232
    .local v13, type:I
    const/4 v0, 0x1

    if-eq v13, v0, :cond_2e

    .line 233
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    .line 234
    const/4 v0, 0x0

    .line 253
    .end local v13           #type:I
    :goto_2d
    return-object v0

    .line 237
    .restart local v13       #type:I
    :cond_2e
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 238
    .local v12, length:I
    new-array v1, v12, [B

    .line 239
    .local v1, sessionData:[B
    invoke-virtual {v9, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 241
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 242
    .local v8, count:I
    new-array v4, v8, [Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    .line 243
    .local v4, certs:[Lorg/apache/harmony/security/provider/cert/X509CertImpl;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_3e
    if-ge v11, v8, :cond_53

    .line 244
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 245
    new-array v7, v12, [B

    .line 246
    .local v7, certData:[B
    invoke-virtual {v9, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 247
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v0, v7}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    aput-object v0, v4, v11

    .line 243
    add-int/lit8 v11, v11, 0x1

    goto :goto_3e

    .line 250
    .end local v7           #certData:[B
    :cond_53
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;-><init>([BLjava/lang/String;I[Ljava/security/cert/X509Certificate;Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_5d} :catch_5e

    goto :goto_2d

    .line 251
    .end local v1           #sessionData:[B
    .end local v4           #certs:[Lorg/apache/harmony/security/provider/cert/X509CertImpl;
    .end local v8           #count:I
    .end local v11           #i:I
    .end local v12           #length:I
    .end local v13           #type:I
    :catch_5e
    move-exception v0

    move-object v10, v0

    .line 252
    .local v10, e:Ljava/io/IOException;
    invoke-static {v10}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    .line 253
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method protected trimToSize()V
    .registers 7

    .prologue
    .line 122
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v4

    .line 123
    :try_start_3
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v3

    .line 124
    .local v3, size:I
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    if-le v3, v5, :cond_2b

    .line 125
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    sub-int v1, v3, v5

    .line 126
    .local v1, removals:I
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 128
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSession;

    .line 129
    .local v2, session:Ljavax/net/ssl/SSLSession;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 130
    invoke-virtual {p0, v2}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessionRemoved(Ljavax/net/ssl/SSLSession;)V

    .line 131
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1b

    .line 133
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    .end local v1           #removals:I
    .end local v2           #session:Ljavax/net/ssl/SSLSession;
    :cond_2b
    monitor-exit v4

    .line 134
    return-void

    .line 133
    .end local v3           #size:I
    :catchall_2d
    move-exception v5

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v5
.end method
