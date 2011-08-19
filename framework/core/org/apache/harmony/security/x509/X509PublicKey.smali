.class public Lorg/apache/harmony/security/x509/X509PublicKey;
.super Ljava/lang/Object;
.source "X509PublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final encoded:[B

.field private final keyBytes:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[B)V
    .registers 4
    .parameter "algorithm"
    .parameter "encoded"
    .parameter "keyBytes"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->algorithm:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->encoded:[B

    .line 33
    iput-object p3, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->keyBytes:[B

    .line 34
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->encoded:[B

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    const-string v0, "X.509"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "algorithm = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", params unparsed, unparsed keybits = \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
