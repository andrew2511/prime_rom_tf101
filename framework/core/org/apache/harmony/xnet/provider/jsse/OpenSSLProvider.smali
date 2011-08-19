.class public final Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;
.super Ljava/security/Provider;
.source "OpenSSLProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 24
    const-string v0, "AndroidOpenSSL"

    const-wide/high16 v1, 0x3ff0

    const-string v3, "Android\'s OpenSSL-backed security provider"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 26
    const-string v0, "SSLContext.SSL"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v0, "SSLContext.SSLv3"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v0, "SSLContext.TLS"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v0, "SSLContext.TLSv1"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v0, "SSLContext.Default"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "MessageDigest.SHA-1"

    const-string v1, "org.apache.harmony.xnet.provider.jsse.OpenSSLMessageDigestJDK$SHA1"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "Alg.Alias.MessageDigest.SHA1"

    const-string v1, "SHA-1"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "Alg.Alias.MessageDigest.SHA"

    const-string v1, "SHA-1"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v0, "Alg.Alias.MessageDigest.1.3.14.3.2.26"

    const-string v1, "SHA-1"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "MessageDigest.SHA-256"

    const-string v1, "org.apache.harmony.xnet.provider.jsse.OpenSSLMessageDigestJDK$SHA256"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "Alg.Alias.MessageDigest.SHA256"

    const-string v1, "SHA-256"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.1"

    const-string v1, "SHA-256"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "MessageDigest.SHA-384"

    const-string v1, "org.apache.harmony.xnet.provider.jsse.OpenSSLMessageDigestJDK$SHA384"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "Alg.Alias.MessageDigest.SHA384"

    const-string v1, "SHA-384"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.2"

    const-string v1, "SHA-384"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "MessageDigest.SHA-512"

    const-string v1, "org.apache.harmony.xnet.provider.jsse.OpenSSLMessageDigestJDK$SHA512"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "Alg.Alias.MessageDigest.SHA512"

    const-string v1, "SHA-512"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.3"

    const-string v1, "SHA-512"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "MessageDigest.MD5"

    const-string v1, "org.apache.harmony.xnet.provider.jsse.OpenSSLMessageDigestJDK$MD5"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "Alg.Alias.MessageDigest.1.2.840.113549.2.5"

    const-string v1, "MD5"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method
