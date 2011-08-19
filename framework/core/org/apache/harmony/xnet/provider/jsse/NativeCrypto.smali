.class public final Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;
.super Ljava/lang/Object;
.source "NativeCrypto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;
    }
.end annotation


# static fields
.field private static final JAVA_NET_SOCKETIMPL_FD:Ljava/lang/reflect/Field; = null

.field private static final JAVA_NET_SOCKET_IMPL:Ljava/lang/reflect/Field; = null

.field public static final OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RAND_SEED_LENGTH_IN_BYTES:I = 0x400

.field public static SSL_MODE_HANDSHAKE_CUTTHROUGH:J = 0x0L

.field public static SSL_OP_NO_COMPRESSION:J = 0x0L

.field public static SSL_OP_NO_SSLv3:J = 0x0L

.field public static SSL_OP_NO_TICKET:J = 0x0L

.field public static SSL_OP_NO_TLSv1:J = 0x0L

.field public static final SSL_VERIFY_FAIL_IF_NO_PEER_CERT:I = 0x2

.field public static final SSL_VERIFY_NONE:I = 0x0

.field public static final SSL_VERIFY_PEER:I = 0x1

.field public static final STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_CIPHER_SUITES:[Ljava/lang/String; = null

.field private static final SUPPORTED_COMPRESSION_METHODS:[Ljava/lang/String; = null

.field private static final SUPPORTED_COMPRESSION_METHOD_NULL:Ljava/lang/String; = "NULL"

.field private static final SUPPORTED_COMPRESSION_METHOD_ZLIB:Ljava/lang/String; = "ZLIB"

.field private static final SUPPORTED_PROTOCOL_SSLV3:Ljava/lang/String; = "SSLv3"

.field private static final SUPPORTED_PROTOCOL_TLSV1:Ljava/lang/String; = "TLSv1"

.field public static TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    .line 45
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->clinit()V

    .line 130
    :try_start_4
    const-class v2, Ljava/net/Socket;

    const-string v3, "impl"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->JAVA_NET_SOCKET_IMPL:Ljava/lang/reflect/Field;

    .line 131
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->JAVA_NET_SOCKET_IMPL:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 132
    const-class v2, Ljava/net/SocketImpl;

    const-string v3, "fd"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->JAVA_NET_SOCKETIMPL_FD:Ljava/lang/reflect/Field;

    .line 133
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->JAVA_NET_SOCKETIMPL_FD:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_1e5

    .line 154
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    .line 156
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    .line 183
    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    sput-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Ljava/lang/String;

    .line 188
    const-string v2, "SSL_RSA_WITH_RC4_128_MD5"

    const-string v3, "RC4-MD5"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v2, "SSL_RSA_WITH_RC4_128_SHA"

    const-string v3, "RC4-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v2, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const-string v3, "AES128-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v2, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const-string v3, "AES256-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v2, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    const-string v3, "ECDH-ECDSA-RC4-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v2, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    const-string v3, "ECDH-ECDSA-AES128-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v2, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    const-string v3, "ECDH-ECDSA-AES256-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v2, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    const-string v3, "ECDH-RSA-RC4-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v2, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    const-string v3, "ECDH-RSA-AES128-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v2, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    const-string v3, "ECDH-RSA-AES256-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    const-string v3, "ECDHE-ECDSA-RC4-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const-string v3, "ECDHE-ECDSA-AES128-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const-string v3, "ECDHE-ECDSA-AES256-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v2, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    const-string v3, "ECDHE-RSA-RC4-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v2, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v3, "ECDHE-RSA-AES128-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v2, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const-string v3, "ECDHE-RSA-AES256-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v2, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v3, "DHE-RSA-AES128-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v2, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const-string v3, "DHE-RSA-AES256-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v2, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    const-string v3, "DHE-DSS-AES128-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v2, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    const-string v3, "DHE-DSS-AES256-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v2, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    const-string v3, "DES-CBC3-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v2, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const-string v3, "ECDH-ECDSA-DES-CBC3-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v2, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    const-string v3, "ECDH-RSA-DES-CBC3-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v2, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const-string v3, "ECDHE-ECDSA-DES-CBC3-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v2, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const-string v3, "ECDHE-RSA-DES-CBC3-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v2, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const-string v3, "EDH-RSA-DES-CBC3-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v2, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    const-string v3, "EDH-DSS-DES-CBC3-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v2, "SSL_RSA_WITH_DES_CBC_SHA"

    const-string v3, "DES-CBC-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v2, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    const-string v3, "EDH-RSA-DES-CBC-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v2, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    const-string v3, "EDH-DSS-DES-CBC-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v2, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    const-string v3, "EXP-RC4-MD5"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v2, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const-string v3, "EXP-DES-CBC-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v2, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const-string v3, "EXP-EDH-RSA-DES-CBC-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v2, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    const-string v3, "EXP-EDH-DSS-DES-CBC-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v2, "SSL_RSA_WITH_NULL_MD5"

    const-string v3, "NULL-MD5"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v2, "SSL_RSA_WITH_NULL_SHA"

    const-string v3, "NULL-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v2, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    const-string v3, "ECDH-ECDSA-NULL-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v2, "TLS_ECDH_RSA_WITH_NULL_SHA"

    const-string v3, "ECDH-RSA-NULL-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v2, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    const-string v3, "ECDHE-ECDSA-NULL-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v2, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    const-string v3, "ECDHE-RSA-NULL-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v2, "SSL_DH_anon_WITH_RC4_128_MD5"

    const-string v3, "ADH-RC4-MD5"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v2, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    const-string v3, "ADH-AES128-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v2, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    const-string v3, "ADH-AES256-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v2, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    const-string v3, "ADH-DES-CBC3-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v2, "SSL_DH_anon_WITH_DES_CBC_SHA"

    const-string v3, "ADH-DES-CBC-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v2, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    const-string v3, "AECDH-RC4-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v2, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    const-string v3, "AECDH-AES128-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v2, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    const-string v3, "AECDH-AES256-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v2, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    const-string v3, "AECDH-DES-CBC3-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v2, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    const-string v3, "EXP-ADH-RC4-MD5"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v2, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    const-string v3, "EXP-ADH-DES-CBC-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v2, "TLS_ECDH_anon_WITH_NULL_SHA"

    const-string v3, "AECDH-NULL-SHA"

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    .line 280
    .local v1, size:I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    .line 281
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 282
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 286
    const-wide/16 v2, 0x40

    sput-wide v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_MODE_HANDSHAKE_CUTTHROUGH:J

    .line 289
    const-wide/16 v2, 0x4000

    sput-wide v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_OP_NO_TICKET:J

    .line 290
    const-wide/32 v2, 0x20000

    sput-wide v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_OP_NO_COMPRESSION:J

    .line 291
    const-wide/32 v2, 0x2000000

    sput-wide v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_OP_NO_SSLv3:J

    .line 292
    const-wide/32 v2, 0x4000000

    sput-wide v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_OP_NO_TLSv1:J

    .line 474
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ZLIB"

    aput-object v4, v2, v3

    const-string v3, "NULL"

    aput-object v3, v2, v5

    sput-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SUPPORTED_COMPRESSION_METHODS:[Ljava/lang/String;

    return-void

    .line 134
    .end local v1           #size:I
    :catch_1e5
    move-exception v2

    move-object v0, v2

    .line 135
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    return-void
.end method

.method public static native EVP_DigestFinal(I[BI)I
.end method

.method public static native EVP_DigestInit(I)I
.end method

.method public static native EVP_DigestUpdate(I[BII)V
.end method

.method public static native EVP_MD_CTX_copy(I)I
.end method

.method public static native EVP_MD_CTX_destroy(I)V
.end method

.method public static native EVP_MD_block_size(I)I
.end method

.method public static native EVP_MD_size(I)I
.end method

.method public static native EVP_PKEY_free(I)V
.end method

.method public static native EVP_PKEY_new_DSA([B[B[B[B[B)I
.end method

.method public static native EVP_PKEY_new_RSA([B[B[B[B[B)I
.end method

.method public static native EVP_VerifyFinal(I[BIII)I
.end method

.method public static native EVP_VerifyInit(Ljava/lang/String;)I
.end method

.method public static native EVP_VerifyUpdate(I[BII)V
.end method

.method public static native EVP_get_digestbyname(Ljava/lang/String;)I
.end method

.method public static native RAND_load_file(Ljava/lang/String;J)I
.end method

.method public static native RAND_seed([B)V
.end method

.method public static native SSL_CTX_free(I)V
.end method

.method public static native SSL_CTX_new()I
.end method

.method public static native SSL_SESSION_cipher(I)Ljava/lang/String;
.end method

.method public static native SSL_SESSION_compress_meth(II)Ljava/lang/String;
.end method

.method public static native SSL_SESSION_free(I)V
.end method

.method public static native SSL_SESSION_get_time(I)J
.end method

.method public static native SSL_SESSION_get_version(I)Ljava/lang/String;
.end method

.method public static native SSL_SESSION_session_id(I)[B
.end method

.method public static native SSL_check_private_key(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_clear_mode(IJ)J
.end method

.method public static native SSL_clear_options(IJ)J
.end method

.method public static native SSL_do_handshake(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/net/SocketTimeoutException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public static native SSL_free(I)V
.end method

.method public static native SSL_get_certificate(I)[[B
.end method

.method public static native SSL_get_mode(I)J
.end method

.method public static native SSL_get_options(I)J
.end method

.method public static native SSL_get_peer_cert_chain(I)[[B
.end method

.method public static native SSL_get_servername(I)Ljava/lang/String;
.end method

.method public static native SSL_interrupt(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native SSL_new(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_read(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;[BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native SSL_read_byte(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native SSL_renegotiate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_set_cipher_lists(I[Ljava/lang/String;)V
.end method

.method public static native SSL_set_client_CA_list(I[[B)V
.end method

.method public static native SSL_set_mode(IJ)J
.end method

.method public static native SSL_set_options(IJ)J
.end method

.method public static native SSL_set_session(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_set_session_creation_enabled(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_set_tlsext_host_name(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_set_verify(II)V
.end method

.method public static native SSL_shutdown(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native SSL_use_PrivateKey(I[B)V
.end method

.method public static native SSL_use_certificate(I[[B)V
.end method

.method public static native SSL_write(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native SSL_write_byte(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "standard"
    .parameter "openssl"

    .prologue
    .line 160
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method public static checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter "cipherSuites"

    .prologue
    .line 447
    if-nez p0, :cond_a

    .line 448
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "cipherSuites == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 451
    :cond_a
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_6b

    .line 452
    aget-object v0, p0, v1

    .line 453
    .local v0, cipherSuite:Ljava/lang/String;
    if-nez v0, :cond_31

    .line 454
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cipherSuites["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] == null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 456
    :cond_31
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 451
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 459
    :cond_3c
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 462
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 466
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cipherSuite "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 468
    .end local v0           #cipherSuite:Ljava/lang/String;
    :cond_6b
    return-object p0
.end method

.method public static checkEnabledCompressionMethods([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter "methods"

    .prologue
    const/4 v3, 0x1

    .line 486
    if-nez p0, :cond_b

    .line 487
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "methods == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 489
    :cond_b
    array-length v2, p0

    if-ge v2, v3, :cond_22

    array-length v2, p0

    sub-int/2addr v2, v3

    aget-object v2, p0, v2

    const-string v3, "NULL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 491
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "last method must be NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 493
    :cond_22
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    array-length v2, p0

    if-ge v0, v2, :cond_7b

    .line 494
    aget-object v1, p0, v0

    .line 495
    .local v1, method:Ljava/lang/String;
    if-nez v1, :cond_49

    .line 496
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "methods["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] == null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 498
    :cond_49
    const-string v2, "ZLIB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    const-string v2, "NULL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    .line 500
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 493
    :cond_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 504
    .end local v1           #method:Ljava/lang/String;
    :cond_7b
    return-object p0
.end method

.method public static checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter "protocols"

    .prologue
    .line 412
    if-nez p0, :cond_a

    .line 413
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "protocols == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 415
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_63

    .line 416
    aget-object v1, p0, v0

    .line 417
    .local v1, protocol:Ljava/lang/String;
    if-nez v1, :cond_31

    .line 418
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "protocols["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] == null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 420
    :cond_31
    const-string v2, "SSLv3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    const-string v2, "TLSv1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 422
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "protocol "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 415
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 426
    .end local v1           #protocol:Ljava/lang/String;
    :cond_63
    return-object p0
.end method

.method private static native clinit()V
.end method

.method public static native d2i_SSL_SESSION([B)I
.end method

.method public static encodeCertificates([Ljava/security/cert/Certificate;)[[B
    .registers 4
    .parameter "certificates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 346
    array-length v2, p0

    new-array v0, v2, [[B

    .line 347
    .local v0, certificateBytes:[[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 348
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 350
    :cond_12
    return-object v0
.end method

.method public static encodeIssuerX509Principals([Ljava/security/cert/X509Certificate;)[[B
    .registers 4
    .parameter "certificates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 361
    array-length v2, p0

    new-array v1, v2, [[B

    .line 362
    .local v1, principalBytes:[[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_16

    .line 363
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 365
    :cond_16
    return-object v1
.end method

.method public static getDefaultCipherSuites()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 297
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SSL_RSA_WITH_RC4_128_MD5"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SSL_RSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TLS_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TLS_RSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "SSL_RSA_WITH_DES_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static final getDefaultCompressionMethods()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 482
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NULL"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;
    .registers 5
    .parameter "socket"

    .prologue
    .line 143
    :try_start_0
    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->JAVA_NET_SOCKET_IMPL:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/SocketImpl;

    .line 144
    .local v2, socketImpl:Ljava/net/SocketImpl;
    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->JAVA_NET_SOCKETIMPL_FD:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileDescriptor;
    :try_end_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_10} :catch_11

    .line 145
    .local v1, fd:Ljava/io/FileDescriptor;
    return-object v1

    .line 146
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v2           #socketImpl:Ljava/net/SocketImpl;
    :catch_11
    move-exception v3

    move-object v0, v3

    .line 147
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public static getSupportedCipherSuites()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 337
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getSupportedCompressionMethods()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 478
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SUPPORTED_COMPRESSION_METHODS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getSupportedProtocols()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 383
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SSLv3"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TLSv1"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static native i2d_SSL_SESSION(I)[B
.end method

.method public static setEnabledCipherSuites(I[Ljava/lang/String;)V
    .registers 8
    .parameter "ssl"
    .parameter "cipherSuites"

    .prologue
    .line 432
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    .line 433
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v4, opensslSuites:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    array-length v5, p1

    if-ge v2, v5, :cond_2a

    .line 435
    aget-object v0, p1, v2

    .line 436
    .local v0, cipherSuite:Ljava/lang/String;
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 434
    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 439
    :cond_19
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 440
    .local v3, openssl:Ljava/lang/String;
    if-nez v3, :cond_28

    move-object v1, v0

    .line 441
    .local v1, cs:Ljava/lang/String;
    :goto_24
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .end local v1           #cs:Ljava/lang/String;
    :cond_28
    move-object v1, v3

    .line 440
    goto :goto_24

    .line 443
    .end local v0           #cipherSuite:Ljava/lang/String;
    .end local v3           #openssl:Ljava/lang/String;
    :cond_2a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-static {p0, v5}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_cipher_lists(I[Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public static setEnabledCompressionMethods(I[Ljava/lang/String;)V
    .registers 12
    .parameter "ssl"
    .parameter "methods"

    .prologue
    .line 508
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledCompressionMethods([Ljava/lang/String;)[Ljava/lang/String;

    .line 512
    sget-wide v4, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_OP_NO_COMPRESSION:J

    .line 513
    .local v4, optionsToSet:J
    const-wide/16 v2, 0x0

    .line 514
    .local v2, optionsToClear:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    array-length v6, p1

    if-ge v0, v6, :cond_30

    .line 515
    aget-object v1, p1, v0

    .line 516
    .local v1, method:Ljava/lang/String;
    const-string v6, "NULL"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 514
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 518
    :cond_18
    const-string v6, "ZLIB"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 519
    sget-wide v6, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_OP_NO_COMPRESSION:J

    const-wide/16 v8, -0x1

    xor-long/2addr v6, v8

    and-long/2addr v4, v6

    .line 520
    sget-wide v6, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_OP_NO_COMPRESSION:J

    or-long/2addr v2, v6

    goto :goto_15

    .line 523
    :cond_2a
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 527
    .end local v1           #method:Ljava/lang/String;
    :cond_30
    invoke-static {p0, v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_options(IJ)J

    .line 528
    invoke-static {p0, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_clear_options(IJ)J

    .line 529
    return-void
.end method

.method public static setEnabledProtocols(I[Ljava/lang/String;)V
    .registers 14
    .parameter "ssl"
    .parameter "protocols"

    .prologue
    const-wide/16 v10, -0x1

    .line 387
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    .line 391
    sget-wide v6, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_OP_NO_SSLv3:J

    sget-wide v8, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_OP_NO_TLSv1:J

    or-long v3, v6, v8

    .line 392
    .local v3, optionsToSet:J
    const-wide/16 v1, 0x0

    .line 393
    .local v1, optionsToClear:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    array-length v6, p1

    if-ge v0, v6, :cond_3b

    .line 394
    aget-object v5, p1, v0

    .line 395
    .local v5, protocol:Ljava/lang/String;
    const-string v6, "SSLv3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 396
    sget-wide v6, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_OP_NO_SSLv3:J

    xor-long/2addr v6, v10

    and-long/2addr v3, v6

    .line 397
    sget-wide v6, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_OP_NO_SSLv3:J

    or-long/2addr v1, v6

    .line 393
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 398
    :cond_25
    const-string v6, "TLSv1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 399
    sget-wide v6, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_OP_NO_TLSv1:J

    xor-long/2addr v6, v10

    and-long/2addr v3, v6

    .line 400
    sget-wide v6, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_OP_NO_TLSv1:J

    or-long/2addr v1, v6

    goto :goto_22

    .line 403
    :cond_35
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 407
    .end local v5           #protocol:Ljava/lang/String;
    :cond_3b
    invoke-static {p0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_options(IJ)J

    .line 408
    invoke-static {p0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_clear_options(IJ)J

    .line 409
    return-void
.end method

.method private static native verifySignature([B[BLjava/lang/String;[B[B)I
.end method

.method public static verifySignature([B[BLjava/lang/String;Ljava/security/interfaces/RSAPublicKey;)Z
    .registers 8
    .parameter "message"
    .parameter "signature"
    .parameter "algorithm"
    .parameter "key"

    .prologue
    const/4 v3, 0x1

    .line 107
    invoke-interface {p3}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 108
    .local v1, modulus:[B
    invoke-interface {p3}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 110
    .local v0, exponent:[B
    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->verifySignature([B[BLjava/lang/String;[B[B)I

    move-result v2

    if-ne v2, v3, :cond_19

    move v2, v3

    :goto_18
    return v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_18
.end method
