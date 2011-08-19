.class public abstract Ljava/security/Identity;
.super Ljava/lang/Object;
.source "Identity.java"

# interfaces
.implements Ljava/security/Principal;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x321904f09f5e92d3L


# instance fields
.field private certificates:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/security/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private info:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private publicKey:Ljava/security/PublicKey;

.field private scope:Ljava/security/IdentityScope;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "no additional info"

    iput-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "no additional info"

    iput-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/IdentityScope;)V
    .registers 3
    .parameter "name"
    .parameter "scope"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    .line 77
    if-eqz p2, :cond_a

    .line 78
    invoke-virtual {p2, p0}, Ljava/security/IdentityScope;->addIdentity(Ljava/security/Identity;)V

    .line 79
    iput-object p2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    .line 81
    :cond_a
    return-void
.end method

.method private static checkKeysEqual(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z
    .registers 7
    .parameter "pk1"
    .parameter "pk2"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 128
    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, format1:Ljava/lang/String;
    if-eqz p1, :cond_1c

    invoke-interface {p1}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    .local v1, format2:Ljava/lang/String;
    if-eqz v1, :cond_1e

    move v2, v3

    :goto_f
    if-eqz v0, :cond_20

    :goto_11
    xor-int/2addr v2, v3

    if-nez v2, :cond_1c

    if-eqz v0, :cond_22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .end local v1           #format2:Ljava/lang/String;
    :cond_1c
    move v2, v4

    .line 136
    :goto_1d
    return v2

    .restart local v1       #format2:Ljava/lang/String;
    :cond_1e
    move v2, v4

    .line 130
    goto :goto_f

    :cond_20
    move v3, v4

    goto :goto_11

    .line 136
    :cond_22
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto :goto_1d
.end method


# virtual methods
.method public addCertificate(Ljava/security/Certificate;)V
    .registers 6
    .parameter "certificate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 101
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_b

    .line 102
    const-string v2, "addIdentityCertificate"

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 104
    :cond_b
    invoke-interface {p1}, Ljava/security/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 105
    .local v0, certPK:Ljava/security/PublicKey;
    iget-object v2, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-eqz v2, :cond_23

    .line 106
    iget-object v2, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    invoke-static {v2, v0}, Ljava/security/Identity;->checkKeysEqual(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 107
    new-instance v2, Ljava/security/KeyManagementException;

    const-string v3, "Cert\'s public key does not match Identity\'s public key"

    invoke-direct {v2, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_23
    iput-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    .line 112
    :cond_25
    iget-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v2, :cond_30

    .line 113
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    .line 115
    :cond_30
    iget-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public certificates()[Ljava/security/Certificate;
    .registers 3

    .prologue
    .line 185
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v1, :cond_8

    .line 186
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/security/Certificate;

    .line 190
    :goto_7
    return-object v1

    .line 188
    :cond_8
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Ljava/security/Certificate;

    .line 189
    .local v0, ret:[Ljava/security/Certificate;
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    move-object v1, v0

    .line 190
    goto :goto_7
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x1

    .line 353
    if-ne p0, p1, :cond_5

    move v2, v4

    .line 363
    :goto_4
    return v2

    .line 356
    :cond_5
    instance-of v2, p1, Ljava/security/Identity;

    if-nez v2, :cond_b

    .line 357
    const/4 v2, 0x0

    goto :goto_4

    .line 359
    :cond_b
    move-object v0, p1

    check-cast v0, Ljava/security/Identity;

    move-object v1, v0

    .line 360
    .local v1, i:Ljava/security/Identity;
    iget-object v2, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    iget-object v3, v1, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    iget-object v3, v1, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    move v2, v4

    .line 361
    goto :goto_4

    .line 363
    :cond_25
    invoke-virtual {p0, v1}, Ljava/security/Identity;->identityEquals(Ljava/security/Identity;)Z

    move-result v2

    goto :goto_4
.end method

.method public getInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 375
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public final getScope()Ljava/security/IdentityScope;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, hash:I
    iget-object v1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 394
    iget-object v1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 396
    :cond_c
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v1, :cond_17

    .line 397
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v1}, Ljava/security/IdentityScope;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 399
    :cond_17
    return v0
.end method

.method protected identityEquals(Ljava/security/Identity;)Z
    .registers 5
    .parameter "identity"

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    iget-object v1, p1, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v2

    .line 218
    :goto_c
    return v0

    .line 214
    :cond_d
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-nez v0, :cond_19

    .line 215
    iget-object v0, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-nez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_c

    :cond_17
    move v0, v2

    goto :goto_c

    .line 218
    :cond_19
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    iget-object v1, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    invoke-static {v0, v1}, Ljava/security/Identity;->checkKeysEqual(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v0

    goto :goto_c
.end method

.method public removeCertificate(Ljava/security/Certificate;)V
    .registers 5
    .parameter "certificate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 161
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 162
    const-string v1, "removeIdentityCertificate"

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 164
    :cond_b
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-eqz v1, :cond_24

    .line 166
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 167
    new-instance v1, Ljava/security/KeyManagementException;

    const-string v2, "Certificate not found"

    invoke-direct {v1, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_1f
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 172
    :cond_24
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 317
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 318
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 319
    const-string v1, "setIdentityInfo"

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 321
    :cond_b
    iput-object p1, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 273
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_b

    .line 274
    const-string v2, "setIdentityPublicKey"

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 277
    :cond_b
    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v2, :cond_23

    if-eqz p1, :cond_23

    .line 278
    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v2, p1}, Ljava/security/IdentityScope;->getIdentity(Ljava/security/PublicKey;)Ljava/security/Identity;

    move-result-object v0

    .line 280
    .local v0, i:Ljava/security/Identity;
    if-eqz v0, :cond_23

    if-eq v0, p0, :cond_23

    .line 281
    new-instance v2, Ljava/security/KeyManagementException;

    const-string v3, "key already used in scope"

    invoke-direct {v2, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    .end local v0           #i:Ljava/security/Identity;
    :cond_23
    iput-object p1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    .line 285
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    .line 286
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 421
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 422
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_b

    .line 423
    const-string v2, "printIdentity"

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 425
    :cond_b
    iget-object v2, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    if-nez v2, :cond_3a

    const-string v2, ""

    move-object v0, v2

    .line 426
    .local v0, s:Ljava/lang/String;
    :goto_12
    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v2, :cond_39

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v3}, Ljava/security/IdentityScope;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    :cond_39
    return-object v0

    .line 425
    .end local v0           #s:Ljava/lang/String;
    :cond_3a
    iget-object v2, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    move-object v0, v2

    goto :goto_12
.end method

.method public toString(Z)Ljava/lang/String;
    .registers 5
    .parameter "detailed"

    .prologue
    .line 233
    invoke-virtual {p0}, Ljava/security/Identity;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, s:Ljava/lang/String;
    if-eqz p1, :cond_1f

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    :cond_1f
    return-object v0
.end method
