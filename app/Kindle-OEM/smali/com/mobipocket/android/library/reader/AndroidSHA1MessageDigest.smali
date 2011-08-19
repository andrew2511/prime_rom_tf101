.class public Lcom/mobipocket/android/library/reader/AndroidSHA1MessageDigest;
.super Ljava/lang/Object;
.source "AndroidSHA1MessageDigest.java"

# interfaces
.implements Lcom/amazon/system/security/IMessageDigest;


# instance fields
.field md:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/android/library/reader/AndroidSHA1MessageDigest;->md:Ljava/security/MessageDigest;

    .line 23
    return-void
.end method


# virtual methods
.method public digest()[B
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mobipocket/android/library/reader/AndroidSHA1MessageDigest;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    .line 33
    iget-object v0, p0, Lcom/mobipocket/android/library/reader/AndroidSHA1MessageDigest;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/mobipocket/android/library/reader/AndroidSHA1MessageDigest;->md:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 39
    return-object v0
.end method

.method public update([B)V
    .locals 1
    .parameter "input"

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/mobipocket/android/library/reader/AndroidSHA1MessageDigest;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 52
    :cond_0
    return-void
.end method
