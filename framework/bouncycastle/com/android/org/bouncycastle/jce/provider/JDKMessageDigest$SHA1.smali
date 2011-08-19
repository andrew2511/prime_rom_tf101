.class public Lcom/android/org/bouncycastle/jce/provider/JDKMessageDigest$SHA1;
.super Lcom/android/org/bouncycastle/jce/provider/JDKMessageDigest;
.source "JDKMessageDigest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JDKMessageDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHA1"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKMessageDigest;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 59
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JDKMessageDigest$SHA1;

    .line 65
    .local v0, d:Lcom/android/org/bouncycastle/jce/provider/JDKMessageDigest$SHA1;
    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKMessageDigest$SHA1;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;)V

    iput-object v1, v0, Lcom/android/org/bouncycastle/jce/provider/JDKMessageDigest$SHA1;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 67
    return-object v0
.end method
