.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$SHA256;
.super Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;
.source "OpenSSLMessageDigestJDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHA256"
.end annotation


# static fields
.field private static final EVP_MD:I

.field private static final SIZE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 132
    const-string v0, "sha256"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$SHA256;->EVP_MD:I

    .line 133
    sget v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$SHA256;->EVP_MD:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_MD_size(I)I

    move-result v0

    sput v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$SHA256;->SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 135
    const-string v0, "SHA-256"

    sget v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$SHA256;->EVP_MD:I

    sget v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$SHA256;->SIZE:I

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;-><init>(Ljava/lang/String;IILorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$1;)V

    .line 136
    return-void
.end method
